uint64_t sub_1004254F4(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  v6[3] = type metadata accessor for AudioAsset();
  v6[4] = &off_100A82B98;
  v6[0] = v3;
  v4 = v3;
  return sub_100192A10(v6);
}

void sub_100425574(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  v5 = *(a1 + OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapAsset);
  *(a1 + OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapAsset) = *a3;
  v6 = v4;

  v7 = *(a1 + OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapView);
  v8 = *(v7 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset);
  *(v7 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset) = v4;
  v9 = v6;

  sub_1007195FC();
  *(v7 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_isInteractive) = 1;
  sub_1007199B8();
}

uint64_t sub_100425634(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  v5 = *(a1 + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_asset);
  *(a1 + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_asset) = *a3;
  v6 = v4;

  v7 = OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_linkView;
  v8 = *(a1 + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_linkView);
  if (v8)
  {
    [v8 removeFromSuperview];
  }

  v9 = objc_allocWithZone(type metadata accessor for LPLinkAssetView());
  v10 = v6;
  v11 = sub_1008A32C0(v10);

  v12 = *(a1 + v7);
  *(a1 + v7) = v11;
  v13 = v11;

  [*(a1 + OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView) addSubview:v13];
  sub_100013178(0.0);
}

void sub_10042572C(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  v5 = *(a1 + qword_100B2F6F0);
  *(a1 + qword_100B2F6F0) = *a3;
  v6 = v4;

  sub_1002AB720();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_assetLoadingDelegate;
    swift_unknownObjectWeakLoadStrong();
    v10 = *(v9 + 8);
    v11 = a1 + qword_100B2F6E8;
    *(a1 + qword_100B2F6E8 + 8) = v10;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      v13 = *(a1 + qword_100B2F5A0);
      v14 = swift_unknownObjectRetain();
      sub_100731E3C(v14, v12);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    *(a1 + qword_100B2F5A8 + 8) = &off_100A6CD48;
    swift_unknownObjectWeakAssign();
    sub_1002AB62C(v8[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset]);
  }
}

void sub_1004258B8(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  v5 = *(a1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_multiPinMapAsset);
  *(a1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_multiPinMapAsset) = *a3;
  v6 = v4;

  sub_100074C10(v6, 1u);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = a1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_fullScreenMapCellDelegate;
    *(a1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_fullScreenMapCellDelegate + 8) = &off_100A6CD28;
    swift_unknownObjectWeakAssign();
    v10 = *(a1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList);
    swift_unknownObjectWeakLoadStrong();
    *(v10 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate + 8) = *(v9 + 8);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v11 = *&v8[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry];
    *(a1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_journalEntry) = v11;
    swift_retain_n();

    *(v10 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry) = v11;
    swift_retain_n();

    sub_10035A0D4();

    LOBYTE(v11) = v8[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_textExists];

    *(a1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_entryIsDeletable) = v11;
    *(v10 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_entryIsDeletable) = v11;
  }
}

void sub_100425A74(_BYTE *a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  v5 = qword_100B31138;
  v6 = *&a1[qword_100B31138];
  *&a1[qword_100B31138] = *a3;
  if (!v6)
  {
    v10 = v4;
    v11 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_5:
    v12 = v11;
    sub_100808EC4(v12);

    goto LABEL_6;
  }

  type metadata accessor for PhotoAsset();
  v7 = v4;
  v8 = v6;
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {

    goto LABEL_7;
  }

  v11 = *&a1[v5];
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_6:

  v8 = v6;
LABEL_7:

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = Strong + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_assetLoadingDelegate;
    swift_unknownObjectWeakLoadStrong();
    v16 = *(v15 + 8);
    v17 = &a1[qword_100B31130];
    *&a1[qword_100B31130 + 8] = v16;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 1);
      v19 = *&a1[qword_100B2F5A0];
      v20 = swift_unknownObjectRetain();
      sub_10025EE48(v20, v18);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    *&a1[qword_100B2F5A8 + 8] = &off_100A6CD48;
    swift_unknownObjectWeakAssign();
    a1[qword_100B2F5B0] = v14[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = a1;
    static UIView.Invalidating.subscript.setter();
  }
}

uint64_t sub_100425C94(uint64_t a1, uint64_t a2, void **a3, void *a4, void *a5)
{
  v7 = *a3;
  v8 = *(a1 + *a4);
  *(a1 + *a4) = *a3;
  v9 = v7;

  v10 = *(a1 + *a5);
  sub_10032ED40(v9);
  sub_1003AF784();

  *(v10 + OBJC_IVAR____TtC7Journal14MediaAssetView_delegate + 8) = &off_100A6A690;

  return swift_unknownObjectWeakAssign();
}

void sub_100425D88(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  v4 = *(a1 + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_thirdPartyMediaAsset);
  *(a1 + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_thirdPartyMediaAsset) = *a3;
  v5 = v3;

  sub_10029D3D8(v5);
}

void sub_100425DF4(_BYTE *a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  v5 = *&a1[qword_100B31210];
  *&a1[qword_100B31210] = *a3;
  v6 = v4;

  sub_100873110();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_assetLoadingDelegate;
    swift_unknownObjectWeakLoadStrong();
    v10 = *(v9 + 8);
    v11 = &a1[qword_100B31200];
    *&a1[qword_100B31200 + 8] = v10;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 1);
      v13 = *&a1[qword_100B2F5A0];
      v14 = swift_unknownObjectRetain();
      sub_100815B74(v14, v12);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    *&a1[qword_100B2F5A8 + 8] = &off_100A6CD48;
    swift_unknownObjectWeakAssign();
    v15 = qword_100B2F5B0;
    v16 = a1[qword_100B2F5B0];
    a1[qword_100B2F5B0] = v8[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = a1;
    static UIView.Invalidating.subscript.setter();
    if (v16 != a1[v15])
    {
      [*&v17[qword_100B31208] setHidden:?];
    }
  }
}

void sub_100425FFC(uint64_t a1, uint64_t a2, void **a3, void *a4, void *a5, uint64_t *a6, void (*a7)(void))
{
  v11 = *a3;
  v12 = *(a1 + *a4);
  *(a1 + *a4) = *a3;
  v13 = v11;

  v14 = *(a1 + *a5);
  v15 = *a6;
  v16 = *&v14[*a6];
  *&v14[v15] = v11;
  v17 = v13;
  v18 = v14;

  a7();
}

void sub_1004260E4(uint64_t a1, uint64_t a2, void **a3, void *a4, void *a5, void *a6, void (*a7)(void))
{
  v11 = *a3;
  v12 = *(a1 + *a4);
  *(a1 + *a4) = *a3;
  v13 = v11;

  v14 = *(a1 + *a5);
  v15 = *(v14 + *a6);
  *(v14 + *a6) = v11;
  v16 = v13;

  a7();
}

void sub_10042618C(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  v5 = *(a1 + OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAsset);
  *(a1 + OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAsset) = *a3;
  v4 = v3;
}

uint64_t sub_1004261DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47[2] = a8;
  v12 = type metadata accessor for AssetType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v47[1] = a6;
    v47[3] = a2;
    v47[4] = a1;
    v17 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
    v18 = result;
    v19 = swift_beginAccess();
    v20 = *&v18[v17];
    __chkstk_darwin(v19);
    v47[-2] = a3;

    v21 = sub_100068DDC(sub_1000695D4, &v47[-4], v20);

    if (!v21)
    {

      return 0;
    }

    (*(v13 + 16))(v15, v21 + OBJC_IVAR____TtC7Journal5Asset_type, v12);
    v22 = (*(v13 + 88))(v15, v12);
    v23 = v18;
    if (v22 == enum case for AssetType.photo(_:))
    {
      type metadata accessor for PhotoAsset();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = v21;
      }

      v48 = v24;
      type metadata accessor for FullScreenPhotoCollectionViewCell();
    }

    else if (v22 == enum case for AssetType.livePhoto(_:))
    {
      type metadata accessor for LivePhotoAsset();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v26 = v21;
      }

      v48 = v24;
      type metadata accessor for FullScreenLivePhotoCollectionViewCell();
    }

    else if (v22 == enum case for AssetType.video(_:))
    {
      type metadata accessor for VideoAsset();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v27 = v21;
      }

      v48 = v24;
      type metadata accessor for FullScreenVideoCollectionViewCell();
    }

    else if (v22 == enum case for AssetType.music(_:))
    {
      type metadata accessor for MusicAsset();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v28 = v21;
      }

      v48 = v24;
      type metadata accessor for FullScreenMusicCollectionViewCell();
    }

    else if (v22 == enum case for AssetType.podcast(_:))
    {
      type metadata accessor for PodcastAsset();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v29 = v21;
      }

      v48 = v24;
      type metadata accessor for FullScreenPodcastCollectionViewCell();
    }

    else if (v22 == enum case for AssetType.audio(_:))
    {
      type metadata accessor for AudioAsset();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v31 = v21;
      }

      v48 = v24;
      type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell();
    }

    else
    {
      if (v22 == enum case for AssetType.visit(_:) || v22 == enum case for AssetType.multiPinMap(_:))
      {
        type metadata accessor for MultiPinMapAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v33 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenMultiPinMapCollectionViewCell();
        v30 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        goto LABEL_25;
      }

      if (v22 == enum case for AssetType.genericMap(_:))
      {
        type metadata accessor for GenericMapAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v32 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenGenericMapCollectionViewCell();
      }

      else if (v22 == enum case for AssetType.link(_:))
      {
        type metadata accessor for LinkAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v34 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenLinkCollectionViewCell();
      }

      else if (v22 == enum case for AssetType.contact(_:))
      {
        type metadata accessor for ContactAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v35 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenContactCollectionViewCell();
      }

      else if (v22 == enum case for AssetType.workoutIcon(_:))
      {
        type metadata accessor for WorkoutIconAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v36 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenWorkoutCollectionViewCell();
      }

      else if (v22 == enum case for AssetType.workoutRoute(_:))
      {
        type metadata accessor for WorkoutRouteAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v37 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenRouteCollectionViewCell();
      }

      else if (v22 == enum case for AssetType.stateOfMind(_:))
      {
        type metadata accessor for StateOfMindAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v38 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenStateOfMindCollectionViewCell();
      }

      else if (v22 == enum case for AssetType.motionActivity(_:))
      {
        type metadata accessor for MotionActivityAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v39 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenMotionActivityCollectionViewCell();
      }

      else if (v22 == enum case for AssetType.thirdPartyMedia(_:))
      {
        type metadata accessor for ThirdPartyMediaAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v40 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenThirdPartyMediaCollectionViewCell();
      }

      else
      {
        if (v22 != enum case for AssetType.confetti(_:))
        {
          if (qword_100ACFD70 != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          sub_10000617C(v42, qword_100AE40D0);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&_mh_execute_header, v43, v44, "dequeueing unknown cell", v45, 2u);
          }

          v48 = v21;
          type metadata accessor for FullScreenUnknownAssetCollectionViewCell();
          type metadata accessor for Asset();
          v46 = v21;
          v30 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

          (*(v13 + 8))(v15, v12);
          return v30;
        }

        type metadata accessor for ConfettiAsset();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v41 = v21;
        }

        v48 = v24;
        type metadata accessor for FullScreenConfettiCollectionViewCell();
      }
    }

    v30 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

LABEL_25:
    return v30;
  }

  return result;
}

id sub_100426A50(uint64_t a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_assetLoadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry] = 0;
  v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldSave] = 0;
  sub_1000065A8(0, &qword_100ADC670);
  UIViewController.ViewLoading.init()();
  type metadata accessor for GalleryCollectionViewLayout();
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100AE4210);
  UIViewController.ViewLoading.init()();
  sub_1000F24EC(&unk_100AE4220);
  UIViewController.ViewLoading.init()();
  v7 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_textExists;
  v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_textExists] = 0;
  v8 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
  *&v3[v8] = [objc_allocWithZone(UIPageControl) init];
  v9 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_dateFooterLabel;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_footerStackView;
  *&v3[v10] = [objc_allocWithZone(UIStackView) init];
  *&v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_zoomSliderBarItem] = 0;
  *&v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_backwardScrollPaddle] = 0;
  *&v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_forwardScrollPaddle] = 0;
  v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_didUpdateNavBarOnWillDisplay] = 0;
  v11 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_didDeleteItemsObserver;
  v12 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  *&v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_imageryIndexes] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset] = 0;
  v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden] = 0;
  v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_hasAppeared] = 0;
  v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldDeleteEntryOnDismiss] = 0;
  v13 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_initIndexPath;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v3[v13], a1, v14);
  *&v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets] = a2;
  v3[v7] = a3;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for FullScreenCollectionViewController();
  v16 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  if (qword_100ACFFC8 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v18 selector:? name:? object:?];

  (*(v15 + 8))(a1, v14);
  return v18;
}

id sub_100426E0C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FullScreenCollectionViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for FullScreenCollectionViewController()
{
  result = qword_100AE41E0;
  if (!qword_100AE41E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004271D0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AE4340);
  __chkstk_darwin(v2 - 8);
  v4 = &v90 - v3;
  v5 = type metadata accessor for FullScreenCollectionViewController();
  v96.receiver = v0;
  v96.super_class = v5;
  objc_msgSendSuper2(&v96, "viewDidLoad");
  sub_10042B820();
  sub_10042BBDC();
  sub_10042C280();
  sub_10042375C();
  sub_1004284D0();
  sub_10042C888();
  sub_10042CF68(0);
  sub_1004321C4();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v6 = v94;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor:v8];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v9 = v94;
  [v94 setDelegate:v0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v10 = v94;
  [v94 setShowsHorizontalScrollIndicator:0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v11 = v94;
  [v94 setShowsVerticalScrollIndicator:0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v12 = v94;
  [v94 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v13 = v94;
  [v94 setClipsToBounds:0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v14 = v94;
  [v94 setAllowsSelection:0];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v15 = v94;
  [v94 setAllowsFocus:1];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v16 = v94;
  [v94 setContentInsetAdjustmentBehavior:2];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v17 = v94;
  [v94 setAlwaysBounceVertical:0];

  v18 = [v1 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_34;
  }

  v19 = v18;
  [v18 setAccessibilityViewIsModal:1];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = v20;
  v22 = [v7 secondarySystemBackgroundColor];
  [v21 setBackgroundColor:v22];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v24 = v23;
  [v23 setClipsToBounds:1];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v26 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v27 = v94;
  [v26 addSubview:v94];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v28;
  v92 = v7;
  v93 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v30 = v94;
  [v29 addSubview:v94];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_footerStackView;
  [v31 addSubview:*&v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_footerStackView]];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v34 = v94;
  sub_100013178(0.0);

  [*&v1[v33] setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = *&v1[v33];
  v91 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_dateFooterLabel;
  [v35 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_dateFooterLabel]];
  [*&v1[v33] addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl]];
  [*&v1[v33] setAlignment:3];
  [*&v1[v33] setAxis:1];
  [*&v1[v33] setSpacing:20.0];
  [*&v1[v33] setLayoutMarginsRelativeArrangement:1];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v36 = v94;
  v37 = *&v1[v33];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [v36 bottomAnchor];
  v39 = [v37 topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setConstant:0.0];
  [v40 setActive:1];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v41 = v94;
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  v43 = [v94 superview];
  if (v43)
  {
    v44 = v43;
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = [v41 topAnchor];
    v46 = [v44 topAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    [v47 setConstant:0.0];
    if (v47)
    {
      [v47 setActive:1];
    }

    v48 = &selRef_setSuggestedName_;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v47 = 0;
    v44 = v41;
    v48 = &selRef_setSuggestedName_;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v49 = v94;
  v50 = [v94 p_ivar_lyt[467]];
  if (v50)
  {
    v51 = v50;
    [v49 v48[278]];
    v52 = [v49 leadingAnchor];
    v53 = [v51 leadingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    [v54 setConstant:0.0];
    if (v54)
    {
      [v54 setActive:1];
    }

    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v54 = 0;
    v51 = v49;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v55 = v94;
  v56 = [v94 p_ivar_lyt[467]];
  if (v56)
  {
    v57 = v56;
    [v55 v48[278]];
    v58 = [v55 trailingAnchor];
    v59 = [v57 trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    [v60 setConstant:0.0];
    if (v60)
    {
      [v60 setActive:1];
    }

    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v60 = 0;
    v57 = v55;
  }

  v61 = *&v1[v33];
  v62 = [v61 p_ivar_lyt[467]];
  if (v62)
  {
    v63 = v62;
    [v61 v48[278]];
    v64 = [v61 leadingAnchor];
    v65 = [v63 leadingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    [v66 setConstant:0.0];
    if (v66)
    {
      [v66 setActive:1];
    }

    v67 = v93;

    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v66 = 0;
    v63 = v61;
    v67 = v93;
  }

  v68 = *&v1[v33];
  v69 = [v68 p_ivar_lyt[467]];
  if (v69)
  {
    v70 = v69;
    [v68 v48[278]];
    v71 = [v68 trailingAnchor];
    v72 = [v70 trailingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];

    [v73 setConstant:0.0];
    if (v73)
    {
      [v73 setActive:1];
    }

    v75 = v91;
    v74 = v92;
  }

  else
  {
    v73 = 0;
    v70 = v68;
    v75 = v91;
    v74 = v92;
  }

  v76 = *&v1[v33];
  v77 = sub_10031BD74(0, 0.0);

  v78 = *&v1[v75];
  v79 = objc_opt_self();
  v80 = v78;
  v81 = [v79 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v80 setFont:v81];

  [*&v1[v75] setTextAlignment:1];
  v82 = *&v1[v75];
  v83 = [v74 secondaryLabelColor];
  [v82 setTextColor:v83];

  [*&v1[v75] setNumberOfLines:2];
  sub_10042F364();
  v84 = objc_opt_self();
  v85 = [v84 defaultCenter];
  [v85 addObserver:v1 selector:"handleAppWillMoveToForeground" name:UIApplicationDidBecomeActiveNotification object:0];

  v86 = [v84 defaultCenter];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100356B90();
  NSNotificationCenter.addObserver<A>(of:for:using:)();

  v87 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v87 - 8) + 56))(v67, 0, 1, v87);
  v88 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_didDeleteItemsObserver;
  swift_beginAccess();
  sub_100439C1C(v67, &v1[v88]);
  swift_endAccess();
  sub_1000065A8(0, &qword_100AE4350);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = 0u;
  v95 = 0u;
  v89 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  [v1 addKeyCommand:v89];
}

uint64_t sub_100428214(_OWORD *a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = *a1;
  return _swift_task_switch(sub_10042823C, 0, 0);
}

uint64_t sub_10042823C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10042832C;
    v4 = v0[6];
    v3 = v0[7];

    return sub_10042AD98(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10042832C()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_1004284D0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE4298);
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  sub_100439288();
  v25 = sub_1000069F4(&qword_100AD4B40, &type metadata accessor for UUID);
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A59220);
  v9 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v27 = v1;
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    v20 = v26;
LABEL_14:
    v30 = v12;
    sub_1000F24EC(&qword_100AD4D90);
    sub_10000B58C(&qword_100AE42B0, &qword_100AD4D90);
    Collection<>.uniqued()();

    LOBYTE(v30) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v21 = v30;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v20 + 8))(v8, v6);
  }

  v29 = v11;
  v30 = _swiftEmptyArrayStorage;
  v13 = v11 & ~(v11 >> 63);

  result = sub_100199D3C(0, v13, 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v23 = v8;
    v24 = v6;
    v15 = 0;
    v12 = v30;
    v28 = v10 & 0xC000000000000001;
    v16 = (v3 + 16);
    do
    {
      if (v28)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*v16)(v5, v17 + OBJC_IVAR____TtC7Journal5Asset_id, v2);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v16)(v5, *(v10 + 8 * v15 + 32) + OBJC_IVAR____TtC7Journal5Asset_id, v2);
      }

      v30 = v12;
      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_100199D3C(v18 > 1, v19 + 1, 1);
        v12 = v30;
      }

      ++v15;
      *(v12 + 2) = v19 + 1;
      (*(v3 + 32))(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v5, v2);
    }

    while (v29 != v15);

    v20 = v26;
    v8 = v23;
    v6 = v24;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

size_t sub_100428950()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE4298);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  sub_100439288();
  sub_1000069F4(&qword_100AD4B40, &type metadata accessor for UUID);
  v10 = v2;
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A59248);
  v11 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v13)
  {
LABEL_13:
    LOBYTE(v29) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v22 = v29;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v7 + 8))(v9, v6);
  }

  v26 = v1;
  v28 = v13;
  v29 = _swiftEmptyArrayStorage;
  v14 = v13 & ~(v13 >> 63);

  result = sub_100199D3C(0, v14, 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v23 = v9;
    v24 = v7;
    v25 = v6;
    v16 = 0;
    v17 = v29;
    v27 = v12 & 0xC000000000000001;
    v18 = (v3 + 16);
    do
    {
      if (v27)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*v18)(v5, v19 + OBJC_IVAR____TtC7Journal5Asset_id, v10);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v18)(v5, *(v12 + 8 * v16 + 32) + OBJC_IVAR____TtC7Journal5Asset_id, v10);
      }

      v29 = v17;
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_100199D3C(v20 > 1, v21 + 1, 1);
        v17 = v29;
      }

      ++v16;
      *(v17 + 2) = v21 + 1;
      (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v5, v10);
    }

    while (v28 != v16);

    v6 = v25;
    v9 = v23;
    v7 = v24;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_100428E40(char a1)
{
  v2 = v1;
  v41.receiver = v1;
  v41.super_class = type metadata accessor for FullScreenCollectionViewController();
  objc_msgSendSuper2(&v41, "viewDidAppear:", a1 & 1);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v4 = [aBlock visibleCells];

  sub_1000065A8(0, &qword_100ADE560);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v7 = 0;
  v34 = v5 & 0xC000000000000001;
  v33 = v5;
  do
  {
    if (v34)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    type metadata accessor for FullScreenLivePhotoCollectionViewCell();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v6;
      v8 = *(v11 + qword_100B2F5A0);
      v13 = *(v11 + qword_100B2F5B0);
      v14 = v13 ^ 1;
      v8[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLiveSymbol] = v13 ^ 1;
      if ((v13 & 1) != 0 || (v15 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView, (v16 = *&v8[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView]) == 0))
      {
        v20 = v8;
      }

      else
      {
        v17 = v8;
        if ([v16 isHidden])
        {
          v18 = *&v8[v15];
          if (v18)
          {
            [v18 setAlpha:0.0];
            v19 = *&v8[v15];
            if (v19)
            {
              [v19 setHidden:0];
            }
          }
        }
      }

      v21 = objc_opt_self();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v14;
      v39 = sub_1002AC488;
      v40 = v23;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_100006C7C;
      v38 = &unk_100A6D0C0;
      v24 = _Block_copy(&aBlock);

      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v14;
      v39 = sub_1002AC494;
      v40 = v26;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_10003264C;
      v38 = &unk_100A6D110;
      v27 = _Block_copy(&aBlock);

      [v21 animateWithDuration:0 delay:v24 options:v27 animations:0.0 completion:0.0];
      _Block_release(v27);
      _Block_release(v24);

      v6 = v12;
      v5 = v33;
    }

    else
    {
      v8 = v10;
    }

    ++v7;
  }

  while (v6 != v7);
LABEL_20:

  v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_hasAppeared] = 1;
  v28 = [v2 navigationController];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 interactivePopGestureRecognizer];

    if (v30)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v31 = aBlock;
      v32 = [aBlock panGestureRecognizer];

      [v30 requireGestureRecognizerToFail:v32];
    }
  }
}

void sub_10042935C(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FullScreenCollectionViewController();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  if (([v1 isMovingFromParentViewController] & 1) != 0 || (objc_msgSend(v1, "isBeingDismissed") & 1) != 0 || (v3 = objc_msgSend(v1, "navigationController")) != 0 && (v4 = v3, v5 = objc_msgSend(v3, "isBeingDismissed"), v4, v5))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (!*(*(Strong + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry) + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset))
      {
        sub_100663B8C(2u);
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1004294A8(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Notification();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FullScreenCollectionViewController();
  v29.receiver = v2;
  v29.super_class = v14;
  objc_msgSendSuper2(&v29, "viewDidDisappear:", a1 & 1);
  if (([v2 isMovingFromParentViewController] & 1) != 0 || (objc_msgSend(v2, "isBeingDismissed") & 1) != 0 || (v15 = objc_msgSend(v2, "navigationController")) != 0 && (v16 = v15, v17 = objc_msgSend(v15, "isBeingDismissed"), v16, v17))
  {
    v18 = [objc_opt_self() defaultCenter];
    if (qword_100ACFFC0 != -1)
    {
      swift_once();
    }

    v27 = 0u;
    v28 = 0u;
    v19 = qword_100B2FBB0;
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v13, v10);
    [v18 postNotification:isa];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = *(Strong + OBJC_IVAR____TtC7Journal20CanvasViewController_focusedTextViewBeforeFullScreenAssetAppeared);
      if (v22 == 2)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        *v9 = v22 & 1;
        swift_storeEnumTagMultiPayload();
        v27 = 0u;
        v28 = 0u;
        sub_1003B5E4C(v9, &v27);
        swift_unknownObjectRelease();
        sub_100004F84(&v27, &qword_100AD13D0);
        sub_100439B24(v9, type metadata accessor for CanvasContentInputType);
      }
    }

    if (v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldDeleteEntryOnDismiss] == 1)
    {
      v23 = *&v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry];
      if (v23)
      {
        v24 = type metadata accessor for TaskPriority();
        (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
        type metadata accessor for MainActor();
        swift_retain_n();
        v25 = static MainActor.shared.getter();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = &protocol witness table for MainActor;
        v26[4] = v23;
        sub_1003E9628(0, 0, v6, &unk_100956570, v26);
      }
    }
  }
}

id sub_100429904()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_footerStackView];
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = 20.0;
  if (v3 == 2)
  {
    v4 = 80.0;
  }

  [v1 setDirectionalLayoutMargins:{10.0, v4, 10.0, v4}];

  v6.receiver = v0;
  v6.super_class = type metadata accessor for FullScreenCollectionViewController();
  return objc_msgSendSuper2(&v6, "updateViewConstraints");
}

void sub_100429A0C(void *a1@<X8>)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v6 - 8);
  v8 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v137 - v10;
  v12 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = *(v1 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);

  v15 = [v14 currentPage];
  if (v13 >> 62)
  {
    v110 = v15;
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_38:
      if (v15 == enum case for AssetType.motionActivity(_:))
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    v16 = v15;
    v15 = v110;
    if ((v110 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_47:

      goto LABEL_48;
    }
  }

  if (v15 >= v16)
  {
    goto LABEL_47;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_43:
      if (v15 == enum case for AssetType.confetti(_:))
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v46 = String.init(localized:table:bundle:locale:comment:)();
        object = v120;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
        v32 = v121;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
LABEL_35:
        v49 = String.init(localized:table:bundle:locale:comment:)();
        v50 = v109;
        goto LABEL_50;
      }

      v138 = a1;
      (*(v2 + 8))(v8, v13);
LABEL_49:
      v123 = objc_opt_self();
      v124 = [v123 mainBundle];
      v157._object = 0x80000001008F2AB0;
      v125._object = 0x80000001008F2A90;
      v157._countAndFlagsBits = 0xD00000000000001ELL;
      v125._countAndFlagsBits = 0xD000000000000011;
      v126._countAndFlagsBits = 0;
      v126._object = 0xE000000000000000;
      v127 = NSLocalizedString(_:tableName:bundle:value:comment:)(v125, 0, v124, v126, v157);
      object = v127._object;

      v128 = [v123 mainBundle];
      v158._object = 0x80000001008F2B10;
      v129._countAndFlagsBits = 0xD000000000000030;
      v129._object = 0x80000001008F2AD0;
      v158._countAndFlagsBits = 0xD00000000000004DLL;
      v130._countAndFlagsBits = 0;
      v130._object = 0xE000000000000000;
      v131 = NSLocalizedString(_:tableName:bundle:value:comment:)(v129, 0, v128, v130, v158);
      countAndFlagsBits = v131._countAndFlagsBits;
      v32 = v131._object;

      v132 = [v123 mainBundle];
      v159._object = 0x80000001008F2BC0;
      v133._countAndFlagsBits = 0xD000000000000056;
      v133._object = 0x80000001008F2B60;
      v159._countAndFlagsBits = 0xD000000000000091;
      v46 = v127._countAndFlagsBits;
      v134._countAndFlagsBits = 0;
      v134._object = 0xE000000000000000;
      v135 = NSLocalizedString(_:tableName:bundle:value:comment:)(v133, 0, v132, v134, v159);
      v49 = v135._countAndFlagsBits;
      v50 = v135._object;

      a1 = v138;
      goto LABEL_50;
    }

    v17 = *(v13 + 8 * v15 + 32);
  }

  v18 = v17;

  if (!v18)
  {
LABEL_48:
    v138 = a1;
    v122 = type metadata accessor for AssetType();
    (*(*(v122 - 8) + 56))(v11, 1, 1, v122);
    sub_100004F84(v11, &qword_100AE4290);
    v11 = 0;
    goto LABEL_49;
  }

  v19 = OBJC_IVAR____TtC7Journal5Asset_type;
  v13 = type metadata accessor for AssetType();
  v2 = *(v13 - 8);
  (*(v2 + 16))(v11, &v18[v19], v13);
  (*(v2 + 56))(v11, 0, 1, v13);
  sub_100439218(v11, v8);
  LODWORD(v15) = (*(v2 + 88))(v8, v13);
  v137 = v18;
  if (v15 == enum case for AssetType.photo(_:) || v15 == enum case for AssetType.livePhoto(_:))
  {
    v36 = objc_opt_self();
    v37 = [v36 mainBundle];
    v141._object = 0x80000001008F3C90;
    v38._countAndFlagsBits = 0x502065766F6D6552;
    v38._object = 0xEC0000006F746F68;
    v141._countAndFlagsBits = 0xD000000000000019;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v141);
    v25 = v40._countAndFlagsBits;
    object = v40._object;

    v41 = [v36 mainBundle];
    v142._object = 0x80000001008F3CE0;
    v42._countAndFlagsBits = 0xD00000000000002BLL;
    v42._object = 0x80000001008F3CB0;
    v142._countAndFlagsBits = 0xD000000000000048;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v142);
    countAndFlagsBits = v44._countAndFlagsBits;
    v32 = v44._object;

    v33 = [v36 mainBundle];
    v136 = 0x80000001008F3D90;
    v34 = 0xD000000000000051;
    v35 = 0x80000001008F3D30;
    goto LABEL_13;
  }

  if (v15 != enum case for AssetType.video(_:))
  {
    if (v15 == enum case for AssetType.music(_:))
    {
      v51 = objc_opt_self();
      v52 = [v51 mainBundle];
      v143._object = 0x80000001008F3780;
      v53._countAndFlagsBits = 0x532065766F6D6552;
      v53._object = 0xEB00000000676E6FLL;
      v143._countAndFlagsBits = 0xD000000000000018;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v143);
      v25 = v55._countAndFlagsBits;
      object = v55._object;

      v56 = [v51 mainBundle];
      v144._object = 0x80000001008F37D0;
      v57._countAndFlagsBits = 0xD00000000000002ALL;
      v57._object = 0x80000001008F37A0;
      v144._countAndFlagsBits = 0xD000000000000047;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, v56, v58, v144);
      countAndFlagsBits = v59._countAndFlagsBits;
      v32 = v59._object;

      v60 = "emoved from this entry.";
      v61 = 0x80000001008F3880;
      v62 = [v51 mainBundle];
LABEL_18:
      v33 = v62;
      v136 = v61;
      v34 = 0xD000000000000050;
      v35 = v60 | 0x8000000000000000;
      v45 = 0xD000000000000085;
      goto LABEL_14;
    }

    if (v15 == enum case for AssetType.podcast(_:))
    {
      v63 = objc_opt_self();
      v64 = [v63 mainBundle];
      v145._object = 0x80000001008F35F0;
      v65._countAndFlagsBits = 0x502065766F6D6552;
      v65._object = 0xEE0074736163646FLL;
      v145._countAndFlagsBits = 0xD00000000000001BLL;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v65, 0, v64, v66, v145);
      v25 = v67._countAndFlagsBits;
      object = v67._object;

      v68 = [v63 mainBundle];
      v146._object = 0x80000001008F3640;
      v69._countAndFlagsBits = 0xD00000000000002DLL;
      v69._object = 0x80000001008F3610;
      v146._countAndFlagsBits = 0xD00000000000004ALL;
      v70._countAndFlagsBits = 0;
      v70._object = 0xE000000000000000;
      v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v146);
      countAndFlagsBits = v71._countAndFlagsBits;
      v32 = v71._object;

      v33 = [v63 mainBundle];
      v136 = 0x80000001008F36F0;
      v34 = 0xD000000000000053;
      v35 = 0x80000001008F3690;
      v45 = 0xD00000000000008BLL;
      goto LABEL_14;
    }

    if (v15 == enum case for AssetType.audio(_:))
    {
      v72 = objc_opt_self();
      v73 = [v72 mainBundle];
      v147._object = 0x80000001008F3930;
      v74._countAndFlagsBits = 0xD000000000000016;
      v74._object = 0x80000001008F3910;
      v147._countAndFlagsBits = 0xD000000000000023;
      v75._countAndFlagsBits = 0;
      v75._object = 0xE000000000000000;
      v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, 0, v73, v75, v147);
      v25 = v76._countAndFlagsBits;
      object = v76._object;

      v77 = [v72 mainBundle];
      v148._object = 0x80000001008F39A0;
      v78._countAndFlagsBits = 0xD000000000000035;
      v78._object = 0x80000001008F3960;
      v148._countAndFlagsBits = 0xD000000000000052;
      v79._countAndFlagsBits = 0;
      v79._object = 0xE000000000000000;
      v80 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v148);
      countAndFlagsBits = v80._countAndFlagsBits;
      v32 = v80._object;

      v33 = [v72 mainBundle];
      v136 = 0x80000001008F3A60;
      v34 = 0xD00000000000005BLL;
      v35 = 0x80000001008F3A00;
      v45 = 0xD00000000000009BLL;
      goto LABEL_14;
    }

    if (v15 == enum case for AssetType.multiPinMap(_:))
    {
      v81 = objc_opt_self();
      v82 = [v81 mainBundle];
      v149._object = 0x80000001008F3310;
      v83._countAndFlagsBits = 0x4D2065766F6D6552;
      v149._countAndFlagsBits = 0xD000000000000017;
      v83._object = 0xEA00000000007061;
      v84._countAndFlagsBits = 0;
      v84._object = 0xE000000000000000;
      v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v149);
      v25 = v85._countAndFlagsBits;
      object = v85._object;

      v86 = [v81 mainBundle];
      v150._object = 0x80000001008F3330;
      v87._countAndFlagsBits = 0xD000000000000029;
      v87._object = 0x80000001008ECA70;
      v150._countAndFlagsBits = 0xD000000000000046;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, v150);
      countAndFlagsBits = v89._countAndFlagsBits;
      v32 = v89._object;

      v33 = [v81 mainBundle];
      v136 = 0x80000001008F33D0;
      v34 = 0xD00000000000004FLL;
      v35 = 0x80000001008F3380;
      v45 = 0xD000000000000083;
      goto LABEL_14;
    }

    if (v15 == enum case for AssetType.link(_:))
    {
      v90 = objc_opt_self();
      v91 = [v90 mainBundle];
      v151._object = 0x80000001008F3180;
      v92._countAndFlagsBits = 0x4C2065766F6D6552;
      v92._object = 0xEB000000006B6E69;
      v151._countAndFlagsBits = 0xD000000000000018;
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      v94 = NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, v91, v93, v151);
      v25 = v94._countAndFlagsBits;
      object = v94._object;

      v95 = [v90 mainBundle];
      v152._object = 0x80000001008F31D0;
      v96._countAndFlagsBits = 0xD00000000000002ALL;
      v96._object = 0x80000001008F31A0;
      v152._countAndFlagsBits = 0xD000000000000047;
      v97._countAndFlagsBits = 0;
      v97._object = 0xE000000000000000;
      v98 = NSLocalizedString(_:tableName:bundle:value:comment:)(v96, 0, v95, v97, v152);
      countAndFlagsBits = v98._countAndFlagsBits;
      v32 = v98._object;

      v60 = "emoved from this entry.";
      v61 = 0x80000001008F3280;
      v62 = [v90 mainBundle];
      goto LABEL_18;
    }

    v11 = v18;
    if (v15 == enum case for AssetType.contact(_:))
    {
      v99 = objc_opt_self();
      v100 = [v99 mainBundle];
      v153._object = 0x80000001008F2FD0;
      v101._object = 0x80000001008F2FB0;
      v153._countAndFlagsBits = 0xD00000000000001ELL;
      v101._countAndFlagsBits = 0xD000000000000011;
      v102._countAndFlagsBits = 0;
      v102._object = 0xE000000000000000;
      v103 = NSLocalizedString(_:tableName:bundle:value:comment:)(v101, 0, v100, v102, v153);
      v138 = v103._countAndFlagsBits;
      object = v103._object;

      v104 = [v99 mainBundle];
      v154._object = 0x80000001008F3030;
      v105._countAndFlagsBits = 0xD000000000000030;
      v105._object = 0x80000001008F2FF0;
      v154._countAndFlagsBits = 0xD00000000000004DLL;
      v106._countAndFlagsBits = 0;
      v106._object = 0xE000000000000000;
      v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v105, 0, v104, v106, v154);
      countAndFlagsBits = v107._countAndFlagsBits;
      v32 = v107._object;

      v33 = [v99 mainBundle];
      v136 = 0x80000001008F30E0;
      v34 = 0xD000000000000056;
      v35 = 0x80000001008F3080;
      v45 = 0xD000000000000091;
LABEL_40:
      v46 = v138;
      goto LABEL_15;
    }

    if (v15 == enum case for AssetType.workoutIcon(_:) || v15 == enum case for AssetType.workoutRoute(_:))
    {
LABEL_39:
      v111 = objc_opt_self();
      v112 = [v111 mainBundle];
      v155._object = 0x80000001008F3460;
      v113._countAndFlagsBits = 0x412065766F6D6552;
      v113._object = 0xEF79746976697463;
      v155._countAndFlagsBits = 0xD00000000000001CLL;
      v114._countAndFlagsBits = 0;
      v114._object = 0xE000000000000000;
      v115 = NSLocalizedString(_:tableName:bundle:value:comment:)(v113, 0, v112, v114, v155);
      v138 = v115._countAndFlagsBits;
      object = v115._object;

      v116 = [v111 mainBundle];
      v156._object = 0x80000001008F34B0;
      v117._countAndFlagsBits = 0xD00000000000002ELL;
      v117._object = 0x80000001008F3480;
      v156._countAndFlagsBits = 0xD00000000000004BLL;
      v118._countAndFlagsBits = 0;
      v118._object = 0xE000000000000000;
      v119 = NSLocalizedString(_:tableName:bundle:value:comment:)(v117, 0, v116, v118, v156);
      countAndFlagsBits = v119._countAndFlagsBits;
      v32 = v119._object;

      v33 = [v111 mainBundle];
      v136 = 0x80000001008F3560;
      v34 = 0xD000000000000054;
      v35 = 0x80000001008F3500;
      v45 = 0xD00000000000008DLL;
      goto LABEL_40;
    }

    if (v15 == enum case for AssetType.stateOfMind(_:))
    {
      if (qword_100AD0450 != -1)
      {
        swift_once();
      }

      v46 = qword_100B30480;
      object = *algn_100B30488;

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      v32 = v108;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  v139._object = 0x80000001008F3B00;
  v22._countAndFlagsBits = 0x562065766F6D6552;
  v22._object = 0xEC0000006F656469;
  v139._countAndFlagsBits = 0xD000000000000019;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v139);
  v25 = v24._countAndFlagsBits;
  object = v24._object;

  v27 = [v20 mainBundle];
  v140._object = 0x80000001008F3B50;
  v28._countAndFlagsBits = 0xD00000000000002BLL;
  v28._object = 0x80000001008F3B20;
  v140._countAndFlagsBits = 0xD000000000000048;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v140);
  countAndFlagsBits = v30._countAndFlagsBits;
  v32 = v30._object;

  v33 = [v20 mainBundle];
  v136 = 0x80000001008F3C00;
  v34 = 0xD000000000000051;
  v35 = 0x80000001008F3BA0;
LABEL_13:
  v45 = 0xD000000000000087;
LABEL_14:
  v46 = v25;
  v11 = v137;
LABEL_15:
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v34, 0, v33, v47, *(&v136 - 1));
  v49 = v48._countAndFlagsBits;
  v50 = v48._object;

LABEL_50:
  *a1 = v46;
  a1[1] = object;
  a1[2] = countAndFlagsBits;
  a1[3] = v32;
  a1[4] = v49;
  a1[5] = v50;
}

uint64_t sub_10042AD98(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v3[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v6;
  v3[15] = v5;

  return _swift_task_switch(sub_10042AED4, v6, v5);
}

uint64_t sub_10042AED4()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry);
  if (v2)
  {
    v3 = v0[12];
    v4 = v0[8];
    v5 = v0[9];
    sub_1000082B4(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v3, &qword_100AD1420);
    v6 = (*(v5 + 48))(v3, 1, v4);
    v7 = v0[12];
    if (v6 == 1)
    {
      sub_100004F84(v0[12], &qword_100AD1420);
      v1 = v0[7];
    }

    else
    {
      v8 = v0[8];
      v9 = v0[9];
      v10 = v49[5];
      v11 = UUID.uuidString.getter();
      v13 = v12;
      (*(v9 + 8))(v7, v8);
      v0 = v49;
      LOBYTE(v8) = sub_1006274B4(v11, v13, v10);

      v1 = v49[7];
      if (v8)
      {

        sub_100432860(0);

        v14 = v49[1];

        return v14();
      }
    }
  }

  v16 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v19 = 0;
    v20 = v0[9];
    v21 = v0[6];
    v52 = v17 & 0xFFFFFFFFFFFFFF8;
    v53 = v17 & 0xC000000000000001;
    v51 = v17 + 32;
    v22 = v21 + 56;
    v46 = (v20 + 16);
    v47 = v20;
    v48 = (v20 + 32);
    v50 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v53)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v52 + 16))
        {
          goto LABEL_39;
        }

        v23 = *(v51 + 8 * v19);
      }

      v24 = v23;
      if (__OFADD__(v19++, 1))
      {
        break;
      }

      v26 = OBJC_IVAR____TtC7Journal5Asset_id;
      v17 = &v23[OBJC_IVAR____TtC7Journal5Asset_id];
      v27 = UUID.uuidString.getter();
      v29 = v28;
      if (*(v21 + 16))
      {
        v30 = v27;
        v0 = i;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v31 = Hasher._finalize()();
        v32 = -1 << *(v21 + 32);
        v17 = v31 & ~v32;
        if ((*(v22 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v33 = ~v32;
          while (1)
          {
            v34 = (*(v21 + 48) + 16 * v17);
            v35 = *v34 == v30 && v34[1] == v29;
            if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v33;
            if (((*(v22 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          v37 = v49[10];
          v36 = v49[11];
          v38 = v49[8];

          (*v46)(v37, &v24[v26], v38);

          v39 = *v48;
          (*v48)(v36, v37, v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_100055CEC(0, *(v50 + 2) + 1, 1, v50);
          }

          i = v0;
          v41 = *(v50 + 2);
          v40 = *(v50 + 3);
          v17 = v41 + 1;
          if (v41 >= v40 >> 1)
          {
            v50 = sub_100055CEC(v40 > 1, v41 + 1, 1, v50);
          }

          v42 = v49[11];
          v43 = v49[8];
          *(v50 + 2) = v17;
          v39(v50 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41, v42, v43);
        }

        else
        {
LABEL_27:

          i = v0;
        }
      }

      else
      {
      }

      if (v19 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_35:

  v44 = sub_100891384(v50);
  v49[16] = v44;

  v45 = swift_task_alloc();
  v49[17] = v45;
  *v45 = v49;
  v45[1] = sub_10042B3D4;

  return sub_1004315D4(v44);
}

uint64_t sub_10042B3D4()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10042B518, v3, v2);
}

uint64_t sub_10042B518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10042B594()
{
  v0 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100423270(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100004F84(v2, &unk_100ADFB90);
  }

  (*(v4 + 32))(v6, v2, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v8 = v13[1];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [v8 cellForItemAtIndexPath:isa];

  if (v10)
  {
    ObjectType = swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      (*(v12 + 8))(ObjectType, v12);
    }
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10042B820()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&unk_100AD4780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100941D70;
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0D50 != -1)
  {
    swift_once();
  }

  v7 = sub_10000617C(v2, qword_100B31700);
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  *(v6 + 32) = UIColor.init(resource:)();
  if (qword_100AD0D48 != -1)
  {
    swift_once();
  }

  v9 = sub_10000617C(v2, qword_100B316E8);
  v8(v5, v9, v2);
  *(v6 + 40) = UIColor.init(resource:)();
  if (qword_100AD0D40 != -1)
  {
    swift_once();
  }

  v10 = sub_10000617C(v2, qword_100B316D0);
  v8(v5, v10, v2);
  *(v6 + 48) = UIColor.init(resource:)();
  static UnitPoint.top.getter();
  v12 = v11;
  v14 = v13;
  static UnitPoint.bottom.getter();
  v16 = v15;
  v18 = v17;
  v19 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v6;
  v20 = v19;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = 0;
  v21 = v20;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v12;
  v26 = v14;
  v22 = v21;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v16;
  v26 = v18;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v22;
  v23 = v1;
  return static UIViewController.ViewLoading.subscript.setter();
}

id sub_10042BBDC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = objc_allocWithZone(type metadata accessor for GalleryCollectionViewLayout());
  v6 = sub_100209C3C(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v6;
  v7 = v1;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v8 = v22;
  v9 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_initIndexPath;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4, &v7[v9], v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  sub_100209E78(v4);

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v12 = v22;
  v13 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset;
  v14 = v7[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
  v15 = v22[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_shouldHideNavigationBarAndPageControlForImageryAsset];
  v22[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_shouldHideNavigationBarAndPageControlForImageryAsset] = v14;
  if (v14 != v15)
  {
    v16 = sub_10020A0E4();
    [v12 invalidateLayoutWithContext:v16];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v17 = v22;
  v18 = [objc_allocWithZone(UICollectionView) initWithFrame:v22 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v18;
  v19 = v7;
  static UIViewController.ViewLoading.subscript.setter();
  if (v7[v13] == 1)
  {
    return sub_10042BEF8();
  }

  else
  {
    return sub_10042C0BC();
  }
}

id sub_10042BEF8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    goto LABEL_6;
  }

  v3 = v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden];
  v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden] = 1;
  if ((v3 & 1) == 0)
  {
    [v0 setNeedsStatusBarAppearanceUpdate];
  }

  v4 = [v0 navigationItem];
  [v4 _setPreferredNavigationBarVisibility:2];

  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() blackColor];
    [v6 setBackgroundColor:v7];

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [v8 setHidden:1];

LABEL_6:
    [*&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_footerStackView] setHidden:1];
    [*&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_backwardScrollPaddle] setNeedsUpdateConfiguration];
    return [*&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_forwardScrollPaddle] setNeedsUpdateConfiguration];
  }

  __break(1u);
  return result;
}

id sub_10042C0BC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    goto LABEL_6;
  }

  v3 = v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden];
  v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden] = 0;
  if (v3 == 1)
  {
    [v0 setNeedsStatusBarAppearanceUpdate];
  }

  v4 = [v0 navigationItem];
  [v4 _setPreferredNavigationBarVisibility:0];

  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() secondarySystemBackgroundColor];
    [v6 setBackgroundColor:v7];

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [v8 setHidden:0];

LABEL_6:
    [*&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_footerStackView] setHidden:0];
    [*&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_backwardScrollPaddle] setNeedsUpdateConfiguration];
    return [*&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_forwardScrollPaddle] setNeedsUpdateConfiguration];
  }

  __break(1u);
  return result;
}

id sub_10042C280()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
  v7 = *(v1 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);
  v8 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v7 setNumberOfPages:v10];
  v11 = *(v1 + v6);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_initIndexPath, v2);
  v12 = v11;
  v13 = IndexPath.item.getter();
  (*(v3 + 8))(v5, v2);
  [v12 setCurrentPage:v13];

  [*(v1 + v6) setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = *(v1 + v6);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 labelColor];
  [v16 setCurrentPageIndicatorTintColor:v17];

  v18 = *(v1 + v6);
  v19 = [v15 grayColor];
  v20 = [v19 colorWithAlphaComponent:0.5];

  [v18 setPageIndicatorTintColor:v20];
  [*(v1 + v6) addTarget:v1 action:"pageControlTapped" forControlEvents:4096];
  [*(v1 + v6) setAccessibilityContainerType:4];
  [*(v1 + v6) setHidesForSinglePage:1];
  return [*(v1 + v6) setBackgroundStyle:0];
}

uint64_t sub_10042C598()
{
  v1 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);

  v10 = [v9 currentPage];
  if (!(v8 >> 62))
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < v11)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          goto LABEL_17;
        }

        if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = *(v8 + 8 * v10 + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_19:
        v11 = v10;
        v10 = v9;
        if ((v9 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    v21 = type metadata accessor for AssetType();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    sub_100004F84(v6, &qword_100AE4290);
    return 0;
  }

  v9 = v10;
  v10 = _CocoaArrayWrapper.endIndex.getter();
  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_17:
  v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v13 = v12;

  v14 = OBJC_IVAR____TtC7Journal5Asset_type;
  v15 = type metadata accessor for AssetType();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, &v13[v14], v15);

  v17 = 1;
  (*(v16 + 56))(v6, 0, 1, v15);
  sub_100439218(v6, v3);
  v18 = (*(v16 + 88))(v3, v15);
  if (v18 != enum case for AssetType.photo(_:) && v18 != enum case for AssetType.livePhoto(_:) && v18 != enum case for AssetType.video(_:))
  {
    (*(v16 + 8))(v3, v15);
    return 0;
  }

  return v17;
}

void sub_10042C888()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode:2];

  v3 = [v1 navigationItem];
  v4 = [v3 standardAppearance];
  if (!v4 || (v5 = v4, v6 = [v4 _titleControlHidden], v5, (v6 & 1) == 0))
  {
    v7 = [v3 standardAppearance];
    if (!v7)
    {
      v7 = [objc_allocWithZone(UINavigationBarAppearance) init];
    }

    v8 = v7;
    [v7 _setTitleControlHidden:1];
    [v3 setStandardAppearance:v8];

    v3 = v8;
  }

  v9 = [v1 navigationItem];
  [v9 setLeftItemsSupplementBackButton:1];

  v10 = [v1 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 5)
  {
    sub_1000065A8(0, &qword_100AD4420);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = objc_allocWithZone(type metadata accessor for ZoomSliderBarButtonItem());
    v14 = sub_100831444(v12);
    v15 = *&v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_zoomSliderBarItem];
    *&v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_zoomSliderBarItem] = v14;
  }

  else
  {
    v16 = [v1 navigationItem];
    sub_1000065A8(0, &qword_100AD4420);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v16 setBackAction:{v18, 0, 0, 0, sub_100439208, v17}];

    v15 = v18;
  }
}

void sub_10042CB80(void *a1)
{
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([a1 sender])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      sub_1000065A8(0, &qword_100AE4288);
      if (swift_dynamicCast())
      {
        v11 = v19[1];
        sub_100423270(v4);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {

          sub_100004F84(v4, &unk_100ADFB90);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          v12 = *&v22[0];
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v14 = [v12 cellForItemAtIndexPath:isa];

          if (v14)
          {
            ObjectType = swift_getObjectType();
            v16 = swift_conformsToProtocol2();
            if (v16)
            {
              v17 = v16;
              [v11 value];
              (*(v17 + 64))(1, ObjectType, v17, v18);
            }

            else
            {
            }

            (*(v6 + 8))(v8, v5);
          }

          else
          {
            (*(v6 + 8))(v8, v5);
          }
        }
      }

      else
      {
      }
    }

    else
    {

      sub_100004F84(v22, &qword_100AD13D0);
    }
  }
}

void sub_10042CF10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100432860(0);
  }
}

void sub_10042CF68(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v143 = v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v142 = v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v8 - 8);
  v10 = v138 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v16 = *&v1[v15];
  v17 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
  v18 = *&v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl];

  v19 = [v18 currentPage];
  if (!(v16 >> 62))
  {
    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v19 & 0x8000000000000000) == 0)
    {
      while (v19 < v20)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          goto LABEL_18;
        }

        if (v19 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v21 = *(v16 + 8 * v19 + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_20:
        v20 = v19;
        v19 = v18;
        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    goto LABEL_22;
  }

  v18 = v19;
  v19 = _CocoaArrayWrapper.endIndex.getter();
  if ((v19 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_18:
  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v22 = v21;

  v146 = v22;
  type metadata accessor for Asset();
  sub_1000F24EC(&qword_100AE4268);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v149 = 0;
    v147 = 0u;
    v148 = 0u;
    goto LABEL_23;
  }

  if (!*(&v148 + 1))
  {
LABEL_23:
    sub_100004F84(&v147, &unk_100AE4258);
    goto LABEL_24;
  }

  sub_100018480(&v147, v150);
  v23 = v151;
  v24 = v152;
  sub_10000CA14(v150, v151);
  v25 = sub_100479F00(v23, v24);
  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = *&v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_dateFooterLabel];
      LODWORD(v141) = a1;
      v29 = v17;
      v30 = v28;
      v31 = String._bridgeToObjectiveC()();

      [v30 setText:v31];

      v17 = v29;
      a1 = v141;

      sub_10000BA7C(v150);
      goto LABEL_25;
    }
  }

  sub_10000BA7C(v150);
LABEL_24:
  v32 = *&v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_dateFooterLabel];
  v33 = String._bridgeToObjectiveC()();
  [v32 setText:v33];

LABEL_25:
  *&v147 = _swiftEmptyArrayStorage;
  v34 = *&v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_zoomSliderBarItem];
  v145 = v2;
  if (v34)
  {
    v144 = v17;
    v35 = v34;
    sub_100423270(v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      sub_100004F84(v10, &unk_100ADFB90);
LABEL_39:
      v17 = v144;
      goto LABEL_40;
    }

    (*(v12 + 32))(v14, v10, v11);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v36 = v150[0];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v38 = [v36 cellForItemAtIndexPath:isa];

    if (v38)
    {
      LODWORD(v141) = a1;
      ObjectType = swift_getObjectType();
      v40 = swift_conformsToProtocol2();
      if (v40)
      {
        v41 = v40;
        *&v42 = COERCE_DOUBLE((*(v40 + 40))(ObjectType, v40));
        if ((v43 & 1) == 0)
        {
          v44 = *&v42;
          v45 = (*(v41 + 48))(ObjectType, v41);
          if ((v46 & 1) == 0)
          {
            v140 = v45;
            *&v47 = COERCE_DOUBLE((*(v41 + 56))(ObjectType, v41));
            if ((v48 & 1) == 0)
            {
              HIDWORD(v109) = HIDWORD(v44);
              v110 = *&v140;
              v111 = *&v47;
              v112 = OBJC_IVAR____TtC7Journal23ZoomSliderBarButtonItem_slider;
              *&v109 = v44;
              [*&v35[OBJC_IVAR____TtC7Journal23ZoomSliderBarButtonItem_slider] setMinimumValue:v109];
              *&v113 = v110;
              [*&v35[v112] setMaximumValue:v113];
              *&v114 = v111;
              a1 = v141;
              [*&v35[v112] setValue:v141 & 1 animated:v114];
              v115 = v35;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              (*(v12 + 8))(v14, v11);
              goto LABEL_38;
            }
          }
        }

        (*(v12 + 8))(v14, v11);
      }

      else
      {

        (*(v12 + 8))(v14, v11);
      }

      a1 = v141;
    }

    else
    {
      (*(v12 + 8))(v14, v11);
    }

LABEL_38:
    v2 = v145;
    goto LABEL_39;
  }

LABEL_40:
  v49 = &selRef_setRegion_;
  v50 = [v2 navigationItem];
  v144 = sub_1000065A8(0, &qword_100AD43B0);
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v50 setLeftBarButtonItems:v51 animated:a1 & 1];

  v52 = swift_allocObject();
  *(v52 + 16) = _swiftEmptyArrayStorage;
  v53 = *&v2[v15];
  v54 = *&v2[v17];

  v55 = [v54 currentPage];
  if (!(v53 >> 62))
  {
    v56 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v55 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_92:

    goto LABEL_93;
  }

  v133 = v55;
  v134 = _CocoaArrayWrapper.endIndex.getter();
  if (v134 < 0)
  {
    __break(1u);
    goto LABEL_87;
  }

  v56 = v134;
  v55 = v133;
  if ((v133 & 0x8000000000000000) != 0)
  {
    goto LABEL_92;
  }

LABEL_42:
  if (v55 >= v56)
  {
    goto LABEL_92;
  }

  if ((v53 & 0xC000000000000001) != 0)
  {
LABEL_87:
    v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_46;
  }

  if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_89;
  }

  v57 = *(v53 + 8 * v55 + 32);
LABEL_46:
  v58 = v57;

  v59 = *&v58[OBJC_IVAR____TtC7Journal5Asset_context];
  if (v59)
  {
    v60 = *&v58[OBJC_IVAR____TtC7Journal5Asset_assetMO];
    if (v60)
    {
      LODWORD(v141) = a1;
      v61 = v60;
      v62 = v59;
      v63 = [v61 entry];
      if (v63)
      {
        __chkstk_darwin(v63);
        v65 = v64;
        NSManagedObjectContext.performAndWait<A>(_:)();

        v49 = &selRef_setRegion_;
        a1 = v141;
        if (v150[0])
        {
LABEL_62:

          goto LABEL_93;
        }
      }

      else
      {

        a1 = v141;
      }
    }
  }

  if (!*&v58[OBJC_IVAR____TtC7Journal5Asset_assetMO])
  {
    goto LABEL_62;
  }

  v150[0] = *&v58[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  type metadata accessor for JournalEntryAssetMO();
  if ((MinimumSupportedVersion.isEditingSupported.getter() & 1) == 0)
  {
    goto LABEL_62;
  }

  type metadata accessor for AudioAsset();
  v66 = swift_dynamicCastClass();
  v140 = v58;
  if (!v66)
  {
    goto LABEL_63;
  }

  v67 = sub_1000A98A0();
  if (!v68)
  {
    goto LABEL_63;
  }

  v69 = v67;
  v70 = v68;

  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v69 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {
LABEL_63:
    type metadata accessor for StateOfMindAsset();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for WorkoutIconAsset();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for WorkoutRouteAsset();
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for MusicAsset();
          v116 = swift_dynamicCastClass();
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          if (!v116)
          {
            v141 = String.init(localized:table:bundle:locale:comment:)();
            v139 = v125;
            v126 = String._bridgeToObjectiveC()();
            v127 = [objc_opt_self() systemImageNamed:v126];

            [v145 isEditing];
            sub_1000065A8(0, &qword_100AD4420);
            swift_allocObject();
            swift_unknownObjectWeakInit();
            v128 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            v129 = String._bridgeToObjectiveC()();

            [v128 setAccessibilityLabel:v129];

            v130 = sub_10042EC04(v128);
            sub_1006ADC88(v130);
            v131 = sub_10042ECF8();
            v132 = sub_10042EC04(v131);

            sub_1006ADC88(v132);
            goto LABEL_76;
          }

          v141 = String.init(localized:table:bundle:locale:comment:)();
          v139 = v117;
          v118 = String._bridgeToObjectiveC()();
          v119 = [objc_opt_self() systemImageNamed:v118];

          [v145 isEditing];
          sub_1000065A8(0, &qword_100AD4420);
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v120 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v121 = String._bridgeToObjectiveC()();

          [v120 setAccessibilityLabel:v121];

          v122 = sub_10042EC04(v120);
          sub_1006ADC88(v122);
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          if (qword_100AD0938 != -1)
          {
            swift_once();
          }

          v123 = qword_100B30E10;
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v124 = v123;
LABEL_75:
          v107 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          v108 = sub_10042F1A8(v107, v52);

          swift_beginAccess();
          sub_1006ADC88(v108);
          swift_endAccess();
LABEL_76:

          v49 = &selRef_setRegion_;
          goto LABEL_93;
        }
      }

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v141 = String.init(localized:table:bundle:locale:comment:)();
      v139 = v99;
      v100 = String._bridgeToObjectiveC()();
      v101 = [objc_opt_self() systemImageNamed:v100];

      [v145 isEditing];
      sub_1000065A8(0, &qword_100AD4420);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v102 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v103 = String._bridgeToObjectiveC()();

      [v102 setAccessibilityLabel:v103];

      v104 = sub_10042EC04(v102);
      sub_1006ADC88(v104);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      if (qword_100AD0948 != -1)
      {
        swift_once();
      }

      v105 = qword_100ACF988;
      v106 = qword_100B30E20;
      if (v105 == -1)
      {
LABEL_74:
        [objc_opt_self() isHealthDataAvailable];
        swift_allocObject();
        swift_unknownObjectWeakInit();
        goto LABEL_75;
      }

LABEL_90:
      swift_once();
      goto LABEL_74;
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v141 = String.init(localized:table:bundle:locale:comment:)();
    v139 = v90;
    v91 = String._bridgeToObjectiveC()();
    v92 = [objc_opt_self() systemImageNamed:v91];

    [v145 isEditing];
    sub_1000065A8(0, &qword_100AD4420);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v93 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v94 = String._bridgeToObjectiveC()();

    [v93 setAccessibilityLabel:v94];

    v95 = sub_10042EC04(v93);
    sub_1006ADC88(v95);
    if (qword_100AD04C8 == -1)
    {
LABEL_65:
      v96 = qword_100AD0968;

      if (v96 != -1)
      {
        swift_once();
      }

      v97 = qword_100ACF988;
      v98 = qword_100B30E40;
      if (v97 == -1)
      {
        goto LABEL_74;
      }

      goto LABEL_90;
    }

LABEL_89:
    swift_once();
    goto LABEL_65;
  }

  LODWORD(v141) = a1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v138[0] = v72;
  v73 = String._bridgeToObjectiveC()();
  v139 = objc_opt_self();
  v74 = [v139 systemImageNamed:v73];

  [v145 isEditing];
  v138[1] = sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v76 = String._bridgeToObjectiveC()();

  [v75 setAccessibilityLabel:v76];

  v77 = sub_10042EC04(v75);
  sub_1006ADC88(v77);
  v78 = sub_10042ECF8();
  v79 = sub_10042EC04(v78);

  sub_1006ADC88(v79);
  sub_1000F24EC(&unk_100AD4780);
  v138[0] = swift_allocObject();
  *(v138[0] + 16) = xmmword_100941D60;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v80 = String._bridgeToObjectiveC()();
  v81 = v139;
  v82 = [v139 systemImageNamed:v80];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v84 = v138[0];
  *(v138[0] + 32) = v83;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v143 = String.init(localized:table:bundle:locale:comment:)();
  v85 = String._bridgeToObjectiveC()();
  v86 = [v81 systemImageNamed:v85];

  [v145 isEditing];
  sub_1000065A8(0, &unk_100AD4D00);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v84 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v153.value.super.isa = 0;
  v153.is_nil = 0;
  v88 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v87, 0, v153, 0, 0xFFFFFFFFFFFFFFFFLL, v84, v137).super.super.isa;
  v89 = objc_allocWithZone(type metadata accessor for MoreMenuBarButtonItem());
  sub_100246AD0(v88);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v52 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v52 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  LOBYTE(a1) = v141;
  v49 = &selRef_setRegion_;
LABEL_93:
  v135 = [v145 v49[104]];
  swift_beginAccess();
  v136 = Array._bridgeToObjectiveC()().super.isa;
  [v135 setRightBarButtonItems:v136 animated:a1 & 1];
}

double *sub_10042EC04(void *a1)
{
  if (([a1 attributes] & 4) != 0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000065A8(0, &qword_100AD43B0);
  v2 = a1;
  v6.value.super.isa = 0;
  v6.is_nil = a1;
  v7.value.super.super.isa = 0;
  v3 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v6, v7, v8).super.super.isa;
  v4 = [v2 accessibilityLabel];
  [(objc_class *)v3 setAccessibilityLabel:v4];

  sub_1000F24EC(&unk_100AD4780);
  result = swift_allocObject();
  *(result + 1) = xmmword_100941D50;
  *(result + 4) = v3;
  return result;
}

id sub_10042ECF8()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = *&v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl];

  v7 = [v6 currentPage];
  if (v5 >> 62)
  {
    v6 = v7;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v10 = v9;

    sub_1000F24EC(&unk_100AD4780);
    v11 = swift_allocObject();
    *(v11 + 1) = xmmword_100941D50;
    *(v11 + 4) = v10;
    v12 = v10;
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < v8)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          goto LABEL_10;
        }

        if (v7 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v5 + 8 * v7 + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_12:
        v8 = v7;
        v7 = v6;
        if ((v6 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    v12 = 0;
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = objc_allocWithZone(type metadata accessor for AssetActivityItemsConfiguration());
  v14 = sub_1001F3F38(v11);

  result = [v1 view];
  if (result)
  {
    v16 = result;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_opt_self() systemImageNamed:v17];

    sub_1000065A8(0, &qword_100AD4420);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v14;
    v21 = v14;
    v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v23 = String._bridgeToObjectiveC()();

    [v22 setTitle:v23];

    v24 = v22;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v25 = String._bridgeToObjectiveC()();

    [v24 setAccessibilityLabel:v25];

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double *sub_10042F1A8(void *a1, uint64_t a2)
{
  if (([a1 attributes] & 4) != 0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000065A8(0, &qword_100AD43B0);
  v4 = a1;
  v14.value.super.isa = 0;
  v14.is_nil = a1;
  v15.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v14, v15, v16).super.super.isa;
  [(objc_class *)isa setImage:0];
  [(objc_class *)isa setMenuRepresentation:v4];
  v6 = isa;
  v7 = [v4 accessibilityLabel];
  [(objc_class *)v6 setAccessibilityLabel:v7];

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000F24EC(&unk_100AD4780);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100941D60;
    v11 = [objc_opt_self() fixedSpaceItem];
    result = v10;
    *(v10 + 32) = v11;
    v13 = (v10 + 40);
  }

  else
  {
    result = swift_allocObject();
    *(result + 1) = xmmword_100941D50;
    v13 = (result + 4);
  }

  *v13 = v6;
  return result;
}

void sub_10042F364()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = [v0 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = [objc_allocWithZone(UIButton) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = v5;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v7 = String._bridgeToObjectiveC()();

    [v6 setToolTip:v7];

    [v6 setPreferredBehavioralStyle:1];
    [v6 addTarget:v0 action:"scrollBackward" forControlEvents:0x2000];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = sub_100438FF8;
    v55 = v8;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_10016B4D8;
    v53 = &unk_100A6CF08;
    v9 = _Block_copy(&aBlock);

    [v6 setConfigurationUpdateHandler:v9];
    _Block_release(v9);
    v10 = [v0 view];
    if (v10)
    {
      v11 = v10;
      [v10 addSubview:v6];

      v12 = *&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_backwardScrollPaddle];
      *&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_backwardScrollPaddle] = v6;
      v13 = v6;

      v14 = [objc_allocWithZone(UIButton) init];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = v14;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v16 = String._bridgeToObjectiveC()();

      [v15 setToolTip:v16];

      [v15 setPreferredBehavioralStyle:1];
      [v15 addTarget:v0 action:"scrollForward" forControlEvents:0x2000];
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = sub_100439000;
      v55 = v17;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10016B4D8;
      v53 = &unk_100A6CF30;
      v18 = _Block_copy(&aBlock);

      [v15 setConfigurationUpdateHandler:v18];
      _Block_release(v18);
      v19 = [v0 view];
      if (v19)
      {
        v20 = v19;
        [v19 addSubview:v15];

        v21 = *&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_forwardScrollPaddle];
        *&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_forwardScrollPaddle] = v15;
        v22 = v15;

        sub_1000F24EC(&unk_100AD4780);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100941830;
        v24 = [v13 leadingAnchor];
        v25 = [v0 view];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 safeAreaLayoutGuide];

          v28 = [v27 leadingAnchor];
          v29 = [v24 constraintEqualToAnchor:v28 constant:12.0];

          *(v23 + 32) = v29;
          v30 = [v13 centerYAnchor];

          v31 = [v0 view];
          if (v31)
          {
            v32 = v31;
            v33 = [v31 safeAreaLayoutGuide];

            v34 = [v33 centerYAnchor];
            v35 = [v30 constraintEqualToAnchor:v34];

            *(v23 + 40) = v35;
            v36 = [v22 trailingAnchor];
            v37 = [v0 view];
            if (v37)
            {
              v38 = v37;
              v39 = [v37 safeAreaLayoutGuide];

              v40 = [v39 trailingAnchor];
              v41 = [v36 constraintEqualToAnchor:v40 constant:-12.0];

              *(v23 + 48) = v41;
              v42 = [v22 centerYAnchor];

              v43 = [v0 view];
              if (v43)
              {
                v44 = v43;
                v45 = objc_opt_self();
                v46 = [v44 safeAreaLayoutGuide];

                v47 = [v46 centerYAnchor];
                v48 = [v42 constraintEqualToAnchor:v47];

                *(v23 + 56) = v48;
                sub_1000065A8(0, &qword_100AD8000);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v45 activateConstraints:isa];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_10042FB48(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-v3];
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    [a1 setEnabled:{objc_msgSend(*(result + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl), "currentPage") != 0}];
    v11 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
    swift_beginAccess();
    v12 = *&v10[v11];
    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_4:
      v13 = 1;
LABEL_7:
      [a1 setHidden:v13];
      sub_10042FDE8(a1);
      v14 = String._bridgeToObjectiveC()();
      v15 = [objc_opt_self() systemImageNamed:v14];

      UIButton.Configuration.image.setter();
      (*(v6 + 16))(v4, v8, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      UIButton.configuration.setter();

      return (*(v6 + 8))(v8, v5);
    }

    v13 = v10[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10042FDE8(void *a1)
{
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIButton.Configuration.gray()();
  UIButton.Configuration.updated(for:)();
  (*(v3 + 8))(v5, v2);
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v8 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleLargeTitle scale:3];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  UIButton.Configuration.contentInsets.setter();
  v9 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v9(v18, 0);
  v10 = [objc_opt_self() effectWithStyle:6];
  v11 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.visualEffect.setter();
  v11(v18, 0);
  if ([a1 isHighlighted])
  {
    v12 = [v6 tertiarySystemFillColor];
    v13 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    return v13(v18, 0);
  }

  else
  {
    if ([a1 isEnabled])
    {
      v15 = [v6 systemFillColor];
    }

    else
    {
      v15 = [v6 clearColor];
    }

    v16 = v15;
    v17 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    return v17(v18, 0);
  }
}

uint64_t sub_1004300B8(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
    v12 = [*(result + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl) currentPage];
    v13 = [*&v10[v11] numberOfPages];
    if (__OFSUB__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      [a1 setEnabled:v12 != v13 - 1];
      v14 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
      swift_beginAccess();
      v15 = *&v10[v14];
      if (!(v15 >> 62))
      {
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
        {
LABEL_5:
          v16 = 1;
LABEL_9:
          [a1 setHidden:v16];
          sub_10042FDE8(a1);
          v17 = String._bridgeToObjectiveC()();
          v18 = [objc_opt_self() systemImageNamed:v17];

          UIButton.Configuration.image.setter();
          (*(v6 + 16))(v4, v8, v5);
          (*(v6 + 56))(v4, 0, 1, v5);
          UIButton.configuration.setter();

          return (*(v6 + 8))(v8, v5);
        }

LABEL_8:
        v16 = v10[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
        goto LABEL_9;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  return result;
}

id sub_100430378(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = a1;
  v6 = IndexPath.item.getter();
  if (v4 >> 62)
  {
    v5 = v6;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v9 = v8;

    return v9;
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < v7)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          goto LABEL_10;
        }

        if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v4 + 8 * v6 + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_12:
        v7 = v6;
        v6 = v5;
        if ((v5 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    return 0;
  }
}

void sub_100430470(uint64_t a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl] currentPage];
  v4 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    if (v3 < _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (v3 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_100429A0C(&aBlock);
    v6 = *&v1[v4];
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 == 1 && v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_textExists] != 1)
    {

      v8 = [objc_opt_self() mainBundle];
      v40._object = 0x80000001008F2830;
      v9._countAndFlagsBits = 0x45206574656C6544;
      v9._object = 0xEC0000007972746ELL;
      v40._countAndFlagsBits = 0xD000000000000022;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v40);
    }

    else
    {
    }

    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() alertControllerWithTitle:0 message:v11 preferredStyle:0];

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = String._bridgeToObjectiveC()();

    v38 = sub_100438F30;
    v39 = v13;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_10016B4D8;
    v37 = &unk_100A6CE90;
    v15 = _Block_copy(&aBlock);

    v16 = objc_opt_self();
    v17 = [v16 actionWithTitle:v14 style:2 handler:v15];
    _Block_release(v15);

    v18 = [objc_opt_self() mainBundle];
    v41._object = 0x80000001008E0EF0;
    v19._countAndFlagsBits = 0x6C65636E6143;
    v19._object = 0xE600000000000000;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0xD00000000000001BLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v41);

    v21 = String._bridgeToObjectiveC()();

    v38 = DebugData.init(name:);
    v39 = 0;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_10016B4D8;
    v37 = &unk_100A6CEB8;
    v22 = _Block_copy(&aBlock);

    v23 = [v16 actionWithTitle:v21 style:1 handler:v22];
    _Block_release(v22);

    [v12 addAction:v17];
    [v12 addAction:v23];
    v24 = [v12 popoverPresentationController];
    [v24 setSourceItem:a1];

    [v1 presentViewController:v12 animated:1 completion:0];
    return;
  }

  if (qword_100ACFD70 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000617C(v25, qword_100AE40D0);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136315138;
    if (qword_100ACFD78 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for UUID();
    sub_10000617C(v30, qword_100AE40E8);
    sub_1000069F4(&qword_100AE19B0, &type metadata accessor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = sub_100008458(v31, v32, &aBlock);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s journalAssets out of bounds error", v28, 0xCu);
    sub_10000BA7C(v29);
  }
}

void sub_100430AAC()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
    swift_beginAccess();
    v6 = *&v4[v5];
    v7 = *&v4[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl];

    v8 = [v7 currentPage];
    if (v6 >> 62)
    {
      v7 = v8;
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_11:
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
      v11 = v10;

      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
      type metadata accessor for MainActor();
      v13 = v4;
      v4 = v11;
      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v13;
      v15[5] = v4;
      sub_1003E9628(0, 0, v2, &unk_1009562F8, v15);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v8 & 0x8000000000000000) == 0)
      {
        while (v8 < v9)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            goto LABEL_11;
          }

          if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v10 = *(v6 + 8 * v8 + 32);
            goto LABEL_8;
          }

          __break(1u);
LABEL_13:
          v9 = v8;
          v8 = v7;
          if ((v7 & 0x8000000000000000) != 0)
          {
            break;
          }
        }
      }
    }
  }
}

uint64_t sub_100430CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100430D84, v7, v6);
}

uint64_t sub_100430D84()
{
  v1 = v0[3];
  sub_1000F24EC(&unk_100AE1A40);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  (*(v3 + 16))(v5 + v4, v1 + OBJC_IVAR____TtC7Journal5Asset_id, v2);
  v6 = sub_1004960D4(v5);
  v0[7] = v6;
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100430F2C;

  return sub_1004315D4(v6);
}

uint64_t sub_100430F2C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1002D836C, v3, v2);
}

void sub_100431070(void *a1)
{
  v33 = a1;
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v3;
  v30 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v30);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StateOfMindAssetMetadata();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [*(v1 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl) currentPage];
  v20 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_21:

      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_7;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 >= v22)
  {
    return;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (v19 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v23 = *(v21 + 8 * v19 + 32);
LABEL_7:
  type metadata accessor for StateOfMindAsset();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {

    return;
  }

  if (*(v24 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {

    sub_10025BAFC(v10);

    v25 = v34;
    if (!(*(v34 + 48))(v10, 1, v5))
    {
      (*(v25 + 16))(v7, v10, v5);
      sub_100004F84(v10, &qword_100AE6680);
      StateOfMindAssetMetadata.date.getter();
      (*(v25 + 8))(v7, v5);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        (*(v15 + 32))(v18, v13, v14);
        v26 = v31;
        (*(v15 + 16))(v31, v18, v14);
        swift_storeEnumTagMultiPayload();
        v27 = v33;
        v28 = v33;
        v29 = v32;
        sub_1008B4384(v32);
        sub_1008B4EFC(v29, 0, v27, 0);

        sub_100004F84(v29, &unk_100AD6DD0);
        sub_100439B24(v26, type metadata accessor for OpenSensitiveURLAction.Destination);
        (*(v15 + 8))(v18, v14);
        return;
      }

      goto LABEL_14;
    }

    sub_100004F84(v10, &qword_100AE6680);
  }

  else
  {
  }

  (*(v15 + 56))(v13, 1, 1, v14);
LABEL_14:
  sub_100004F84(v13, &unk_100AD4790);
}

uint64_t sub_1004315D4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_1000F24EC(&unk_100ADFB90);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for IndexPath();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v6;
  v2[18] = v5;

  return _swift_task_switch(sub_10043175C, v6, v5);
}

uint64_t sub_10043175C()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry);
  v0[19] = v1;
  if (!v1 || (v2 = v0[7], !*(v2 + 16)))
  {

    v23 = v0[1];

    return v23();
  }

  v3 = v2 + 56;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  v6 = v0[11];
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v7 = v4 & *(v2 + 56);
  v8 = (63 - v5) >> 6;
  v37 = v0[14];
  v34 = (v6 + 32);
  v35 = (v6 + 48);
  v33 = (v6 + 8);

  v39 = v2;

  v9 = 0;
  v38 = v2 + 56;
  v36 = v8;
  while (v7)
  {
LABEL_13:
    v11 = v0[15];
    v12 = v0[13];
    v13 = v0[9];
    v40 = v0[10];
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    (*(v37 + 16))(v11, *(v39 + 48) + *(v37 + 72) * (v14 | (v9 << 6)), v12);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v15 = v0[5];
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    (*(v37 + 8))(v11, v12);
    if ((*v35)(v13, 1, v40) == 1)
    {
      sub_100004F84(v0[9], &unk_100ADFB90);
      goto LABEL_7;
    }

    (*v34)(v0[12], v0[9], v0[10]);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v16 = v0[6];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v16 cellForItemAtIndexPath:isa];

    if (v18)
    {
      ObjectType = swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      if (v20)
      {
        v21 = v0[12];
        v22 = v0[10];
        (*(v20 + 24))(ObjectType, v20);

        (*v33)(v21, v22);
        goto LABEL_7;
      }
    }

    (*v33)(v0[12], v0[10]);
LABEL_7:
    v3 = v38;
    v8 = v36;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_13;
    }
  }

  v26 = v0[7];
  v25 = v0[8];

  v27 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  v0[20] = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();

  v7 = sub_1004382BC((v25 + v27), v26);

  v28 = *(v25 + v27);
  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29 >= v7)
    {
      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
    return result;
  }

LABEL_29:
  result = _CocoaArrayWrapper.endIndex.getter();
  v29 = result;
  if (result < v7)
  {
    goto LABEL_30;
  }

LABEL_25:
  v30 = v0[16];
  sub_1002068A4(v7, v29);
  swift_endAccess();
  sub_1004284D0();

  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_100431C48;
  v32 = v0[7];

  return sub_10056824C(v30, &protocol witness table for MainActor, v32);
}

uint64_t sub_100431C48()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_100431D8C, v3, v2);
}

uint64_t sub_100431D8C()
{
  if (*(v0[8] + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldSave) == 1)
  {
    v1 = v0[16];

    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_100431F64;

    return sub_10062833C(v1);
  }

  v4 = *(v0[8] + v0[20]);
  if (v4 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v0[19];
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = v0[19];
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      sub_1004321C4();
      goto LABEL_16;
    }
  }

  if (*(v5 + 16))
  {
    v7 = 0;
  }

  else
  {
    if (sub_10005AAB0(1))
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_10005AAB0(16) ^ 1;
    }

    v7 = v8 & 1;
  }

  sub_100432860(v7);
LABEL_16:

  v9 = v0[1];

  return v9();
}

uint64_t sub_100431F64()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1004320A8, v3, v2);
}

uint64_t sub_1004320A8()
{

  v1 = *(v0[8] + v0[20]);
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v0[19];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = v0[19];
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_3:
      sub_1004321C4();
      goto LABEL_12;
    }
  }

  if (*(v2 + 16))
  {
    v4 = 0;
  }

  else
  {
    if (sub_10005AAB0(1))
    {
      v5 = 0;
    }

    else
    {
      v5 = sub_10005AAB0(16) ^ 1;
    }

    v4 = v5 & 1;
  }

  sub_100432860(v4);
LABEL_12:

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004321C4()
{
  v20 = type metadata accessor for IndexPath();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_imageryIndexes;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_imageryIndexes) = _swiftEmptyArrayStorage;

  v5 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6 >> 62)
  {
    goto LABEL_26;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v5 = *(v0 + v5);
      v8 = v5 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v8)
      {
      }

      v9 = 0;
      v21 = v5 & 0xFFFFFFFFFFFFFF8;
      v22 = v5 & 0xC000000000000001;
      v17[1] = v1 + 32;
      v18 = v8;
      v19 = v5;
      while (1)
      {
        if (v22)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v21 + 16))
          {
            goto LABEL_25;
          }

          v10 = *(v5 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        type metadata accessor for PhotoAsset();
        if (swift_dynamicCastClass() || (type metadata accessor for LivePhotoAsset(), swift_dynamicCastClass()) || (type metadata accessor for VideoAsset(), swift_dynamicCastClass()))
        {
          IndexPath.init(row:section:)();
          v13 = *(v0 + v4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v4) = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_1003E4B58(0, v13[2] + 1, 1, v13);
            *(v0 + v4) = v13;
          }

          v16 = v13[2];
          v15 = v13[3];
          if (v16 >= v15 >> 1)
          {
            v13 = sub_1003E4B58(v15 > 1, v16 + 1, 1, v13);
          }

          v13[2] = v16 + 1;
          (*(v1 + 32))(v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16, v3, v20);
          *(v0 + v4) = v13;
          v8 = v18;
          v5 = v19;
        }

        ++v9;
        if (v12 == v8)
        {
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_100432498()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v0;
  static UIViewController.ViewLoading.subscript.getter();

  v1 = [v35[0] visibleCells];

  v2 = sub_1000065A8(0, &qword_100ADE560);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v29 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
    v30 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
    v5 = v3 & 0xC000000000000001;
    swift_beginAccess();
    v6 = 0;
    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    v28 = v3;
    v7 = &unk_100AE4238;
    v8 = &unk_100956288;
    while (1)
    {
      if (v5)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        goto LABEL_12;
      }

      if (v6 >= *(v27 + 16))
      {
        goto LABEL_35;
      }

      v9 = *(v3 + 8 * v6 + 32);
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

LABEL_12:
      v34 = v9;
      sub_1000F24EC(v7);
      if (swift_dynamicCast())
      {
        v3 = i;
        v11 = v2;
        v2 = v8;
        v12 = v7;
        sub_100018480(v32, v35);
        v13 = v36;
        v14 = v37;
        sub_10000CA14(v35, v36);
        v15 = (*(v14 + 16))(v13, v14);
        v16 = *(v31 + v30);
        v17 = *(v31 + v29);

        v18 = [v17 currentPage];
        if (v16 >> 62)
        {
          v19 = _CocoaArrayWrapper.endIndex.getter();
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if ((v18 & 0x8000000000000000) != 0 || v18 >= v19)
        {

          v21 = 0;
          if (v15)
          {
            goto LABEL_24;
          }

LABEL_21:
          v15 = v21;
          if (!v21)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v20 = *(v16 + 8 * v18 + 32);
          }

          v21 = v20;

          if (!v15)
          {
            goto LABEL_21;
          }

LABEL_24:
          if (v21)
          {
            type metadata accessor for Asset();
            v22 = static NSObject.== infix(_:_:)();

            if (v22)
            {
LABEL_32:

              v23 = v36;
              v24 = v37;
              sub_10000CA14(v35, v36);
              v25 = (*(v24 + 8))(v23, v24);
              sub_10000BA7C(v35);
              return v25;
            }

            goto LABEL_28;
          }
        }

LABEL_28:
        sub_10000BA7C(v35);
        v7 = v12;
        v8 = v2;
        v2 = v11;
        i = v3;
        v3 = v28;
        goto LABEL_5;
      }

      v33 = 0;
      memset(v32, 0, sizeof(v32));
      sub_100004F84(v32, &qword_100AE4240);
LABEL_5:
      ++v6;
      if (v10 == i)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:

  return 0;
}

void sub_100432860(char a1)
{
  v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldDeleteEntryOnDismiss] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    v4 = [v1 navigationController];
    if (!v4)
    {
      return;
    }

    v9 = v4;
  }

  else
  {
    v5 = [v1 presentingViewController];
    if (!v5)
    {
      return;
    }

    v9 = v5;
    v6 = [v5 presentedViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 isBeingDismissed];

      if ((v8 & 1) == 0)
      {
        [v9 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

void sub_1004329BC()
{
  v0 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v0 - 8);
  v2 = &v30 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UIAccessibilityIsVideoAutoplayEnabled())
  {
    sub_100423270(v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_100004F84(v2, &unk_100ADFB90);
      return;
    }

    (*(v4 + 32))(v6, v2, v3);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v7 = v35;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v9 = [v7 cellForItemAtIndexPath:isa];

    if (!v9)
    {
      (*(v4 + 8))(v6, v3);
      return;
    }

    v32 = v4;
    v33 = v3;
    ObjectType = swift_getObjectType();
    v11 = swift_conformsToProtocol2();
    if (v11)
    {
      v12 = *(v11 + 8);
      v13 = v11;
      v14 = v9;
      v12(ObjectType, v13);
    }

    v31 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v15 = v35;
    v16 = [v35 visibleCells];

    sub_1000065A8(0, &qword_100ADE560);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_9:
        if (v18 < 1)
        {
          __break(1u);
          return;
        }

        v19 = 0;
        v34 = v9;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v17 + 8 * v19 + 32);
          }

          v22 = v21;
          if ((static NSObject.== infix(_:_:)() & 1) == 0)
          {
            type metadata accessor for FullScreenVideoCollectionViewCell();
            v23 = swift_dynamicCastClass();
            if (v23)
            {
              v24 = *(v23 + qword_100B2F5A0);
              v25 = *&v24[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
              if (v25)
              {
                v26 = v24;
                v27 = v25;
                v28 = [v27 layer];
                objc_opt_self();
                v29 = swift_dynamicCastObjCClass();
                if (!v29)
                {
                }

                v20 = [v29 player];

                [v20 pause];
                v9 = v34;
              }
            }
          }

          ++v19;
        }

        while (v18 != v19);
      }
    }

    (*(v32 + 8))(v31, v33);
  }
}

void sub_100432E74()
{
  sub_10000E788(319, &unk_100AE41F0, &qword_100ADC670);
  if (v0 <= 0x3F)
  {
    sub_100433114(319, &qword_100AE4200, type metadata accessor for GalleryCollectionViewLayout, &type metadata accessor for UIViewController.ViewLoading);
    if (v1 <= 0x3F)
    {
      sub_10000E788(319, &qword_100AE4208, &qword_100AE4210);
      if (v2 <= 0x3F)
      {
        sub_100433178();
        if (v3 <= 0x3F)
        {
          type metadata accessor for IndexPath();
          if (v4 <= 0x3F)
          {
            sub_100433114(319, &qword_100AE6660, &type metadata accessor for NSNotificationCenter.ObservationToken, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100433114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100433178()
{
  if (!qword_100AE4218)
  {
    sub_1000F2A18(&unk_100AE4220);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE4218);
    }
  }
}

void sub_100433204(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v10 = a2;
    sub_1000065A8(0, &qword_100ADE560);
    v5 = a2;
    sub_1000F24EC(&qword_100AE4238);
    if (swift_dynamicCast())
    {
      sub_100018480(v12, v14);
      if ((v4[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_didUpdateNavBarOnWillDisplay] & 1) == 0)
      {
        v4[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_didUpdateNavBarOnWillDisplay] = 1;
        sub_10042CF68(1);
      }

      sub_100086C04(v14, v12);
      type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell();
      if (swift_dynamicCast())
      {
        v6 = *&a2[OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcribingAudioAssetView];
        if (v6)
        {
          [v4 addChildViewController:*(v6 + OBJC_IVAR____TtC7Journal26TranscribingAudioAssetView_hostingController)];
        }
      }

      if (UIAccessibilityIsVideoAutoplayEnabled())
      {
        sub_100086C04(v14, v12);
        sub_1000F24EC(&qword_100AE4248);
        if (swift_dynamicCast())
        {
          ObjectType = swift_getObjectType();
          (*(v11 + 32))(0, ObjectType);
          swift_unknownObjectRelease();
        }

        if (v4[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_hasAppeared] == 1)
        {
          sub_100086C04(v14, v12);
          type metadata accessor for FullScreenLivePhotoCollectionViewCell();
          if (swift_dynamicCast())
          {
            v8 = a2[qword_100B2F5B0];
            v9 = *&a2[qword_100B2F5A0];
            sub_100732828((v8 & 1) == 0, 0);
          }
        }

        sub_1004329BC();

        sub_10000BA7C(v14);
      }

      else
      {
        sub_10000BA7C(v14);
      }
    }

    else
    {

      v13 = 0;
      memset(v12, 0, sizeof(v12));
      sub_100004F84(v12, &qword_100AE4240);
    }
  }
}

id sub_1004337F0()
{
  v1 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset;
  if (v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset] == 1 && (sub_10042C598() & 1) == 0)
  {
    v2 = v0[v1];
    v0[v1] = 0;
    if ([v0 isViewLoaded])
    {
      if (v2 != v0[v1])
      {
        sub_10043795C();
      }
    }
  }

  sub_10042CF68(1);
  if ((sub_10042C598() & 1) == 0)
  {
    v5 = v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden];
    v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden] = 0;
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = v0[v1];
  v4 = v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden];
  v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden] = v3;
  if (v3 != v4)
  {
LABEL_10:
    [v0 setNeedsStatusBarAppearanceUpdate];
  }

LABEL_11:
  [*&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_backwardScrollPaddle] setNeedsUpdateConfiguration];
  [*&v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_forwardScrollPaddle] setNeedsUpdateConfiguration];
  sub_1004329BC();
  [v0 becomeFirstResponder];

  return [v0 setNeedsFocusUpdate];
}

uint64_t sub_100433974(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = [*&v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl] currentPage] != 0;
    return v5 & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v6 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
    v7 = [*&v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl] currentPage];
    v8 = [*&v2[v6] numberOfPages];
    if (!__OFSUB__(v8, 1))
    {
      v5 = v7 != (v8 - 1);
      return v5 & 1;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (static Selector.== infix(_:_:)())
  {
    if (![v2 isEditing])
    {
      goto LABEL_28;
    }

    v9 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
    swift_beginAccess();
    v7 = *&v2[v9];
    v10 = *&v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl];

    v8 = [v10 currentPage];
    if (!(v7 >> 62))
    {
      v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_22:
    v10 = v8;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_24:
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
      v13 = v12;

      v14 = *&v13[OBJC_IVAR____TtC7Journal5Asset_assetMO];
      if (v14)
      {
        v25[1] = *&v13[OBJC_IVAR____TtC7Journal5Asset_assetMO];
        type metadata accessor for JournalEntryAssetMO();
        v15 = v14;
        v5 = MinimumSupportedVersion.isEditingSupported.getter();

        return v5 & 1;
      }

LABEL_28:
      v5 = 0;
      return v5 & 1;
    }

    while (1)
    {
      v11 = v8;
      v8 = v10;
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_10:
      if (v8 >= v11)
      {
        break;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        goto LABEL_24;
      }

      if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v7 + v8 + 4);
        goto LABEL_14;
      }

      __break(1u);
    }

LABEL_27:

    goto LABEL_28;
  }

  sub_1000082B4(a2, v27, &qword_100AD13D0);
  v16 = v28;
  if (v28)
  {
    v17 = sub_10000CA14(v27, v28);
    v18 = *(v16 - 8);
    v19 = __chkstk_darwin(v17);
    v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v18 + 8))(v21, v16);
    sub_10000BA7C(v27);
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for FullScreenCollectionViewController();
  v26.receiver = v2;
  v26.super_class = v23;
  v5 = objc_msgSendSuper2(&v26, "canPerformAction:withSender:", a1, v22);
  swift_unknownObjectRelease();
  return v5 & 1;
}

void sub_100433D68(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  [a1 action];
  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    v18.receiver = v1;
    v18.super_class = type metadata accessor for FullScreenCollectionViewController();
    objc_msgSendSuper2(&v18, "validateCommand:", a1);
    return;
  }

  v5 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v6 = *&v1[v5];
  v7 = *&v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl];

  v8 = [v7 currentPage];
  if (v6 >> 62)
  {
    v7 = v8;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_18:
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v11 = v10;

    type metadata accessor for MultiPinMapAsset();
    if (swift_dynamicCastClass())
    {
      v12 = sub_100076E78();
      if ((v13 & 1) == 0 && v12 == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v14 = String._bridgeToObjectiveC()();

        [a1 setTitle:v14];

        return;
      }
    }
  }

  else
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < v9)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          goto LABEL_18;
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v10 = *(v6 + 8 * v8 + 32);
          goto LABEL_8;
        }

        __break(1u);
LABEL_20:
        v9 = v8;
        v8 = v7;
        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }
  }

  v15 = *&v1[v5];
  if (v15 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() <= 1)
    {
LABEL_24:
      if (v1[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_textExists] != 1)
      {
        return;
      }
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_24;
  }

  sub_100429A0C(&v17);

  v16 = String._bridgeToObjectiveC()();

  [a1 setTitle:v16];
}

void sub_100434268(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
    swift_beginAccess();
    v5 = *&v3[v4];
    if (v5 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      sub_100430470([a1 presentationSourceItem]);

      swift_unknownObjectRelease();
      return;
    }
  }
}

void sub_10043433C()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v3 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *&Strong[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry];
    if (!v12)
    {

      return;
    }

    sub_100423270(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_100004F84(v5, &unk_100ADFB90);
      return;
    }

    (*(v7 + 32))(v9, v5, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v13 = v36;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [v13 cellForItemAtIndexPath:isa];

    if (!v15)
    {
      (*(v7 + 8))(v9, v6);

      return;
    }

    type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcriptionCoordinator);
      if (v17)
      {
        v35 = v15;
        swift_getKeyPath();
        v36 = v17;
        sub_1000069F4(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v18 = *(v17 + 56);
        v19 = *(v17 + 64);
        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          v34 = v17;
          if (swift_unknownObjectWeakLoadStrong())
          {

            v21 = sub_100658B00();
            v22 = String._bridgeToObjectiveC()();

            [v21 insertText:v22];

            swift_unknownObjectRelease();
          }

          else
          {
            v23 = objc_opt_self();

            v33 = v18;
            v24 = [v23 currentTraitCollection];
            v25 = [v23 currentTraitCollection];
            sub_10029FCB8(v33, v19, v24, v25);

            if (swift_unknownObjectWeakLoadStrong())
            {
              v26 = *(v12 + 56);
              ObjectType = swift_getObjectType();
              v28 = sub_1004959AC(&off_100A59270);
              (*(v26 + 8))(v12, v28, ObjectType, v26);

              swift_unknownObjectRelease();
            }

            if ((*(v12 + 16) & 1) == 0)
            {
              v29 = type metadata accessor for TaskPriority();
              (*(*(v29 - 8) + 56))(v2, 1, 1, v29);
              type metadata accessor for MainActor();

              v30 = static MainActor.shared.getter();
              v31 = swift_allocObject();
              v31[2] = v30;
              v31[3] = &protocol witness table for MainActor;
              v31[4] = v12;
              sub_1003E9628(0, 0, v2, &unk_100956340, v31);
            }
          }

          sub_100432860(0);

          goto LABEL_24;
        }

        (*(v7 + 8))(v9, v6);
      }

      else
      {
        (*(v7 + 8))(v9, v6);
      }

      return;
    }

LABEL_24:
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100434964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1004349FC, v6, v5);
}

uint64_t sub_1004349FC()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1002B812C;

  return sub_10077E5EC(v1, &protocol witness table for MainActor);
}

void sub_100434AB0()
{
  v0 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100423270(v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      sub_100004F84(v2, &unk_100ADFB90);
      return;
    }

    (*(v4 + 32))(v6, v2, v3);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v9 = v19;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v11 = [v9 cellForItemAtIndexPath:isa];

    if (!v11)
    {
      (*(v4 + 8))(v6, v3);

      return;
    }

    type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {

LABEL_12:
      (*(v4 + 8))(v6, v3);
      return;
    }

    v13 = *(v12 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcriptionCoordinator);
    if (v13)
    {
      swift_getKeyPath();
      v19 = v13;
      sub_1000069F4(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = objc_allocWithZone(NSAttributedString);

      v15 = String._bridgeToObjectiveC()();

      v16 = [v14 initWithString:v15];

      v17 = [objc_opt_self() generalPasteboard];
      v18 = [v16 string];
      if (!v18)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = String._bridgeToObjectiveC()();
      }

      [v17 setString:v18];

      goto LABEL_12;
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_100434EBC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100431070(a1);
  }
}

void sub_100434F18(void *a1)
{
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v4 = v82 - v3;
  v93 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v93);
  v94 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD5B28);
  __chkstk_darwin(v6 - 8);
  v96 = v82 - v7;
  v97 = type metadata accessor for WorkoutRouteAssetMetadata();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v91 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v100 = v9;
  v101 = v10;
  __chkstk_darwin(v9);
  v92 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = v82 - v13;
  __chkstk_darwin(v14);
  v16 = v82 - v15;
  v17 = sub_1000F24EC(&qword_100AE4280);
  __chkstk_darwin(v17 - 8);
  v19 = v82 - v18;
  v20 = type metadata accessor for WorkoutIconAssetMetadata();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v24 - 8);
  v98 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v90 = v82 - v27;
  __chkstk_darwin(v28);
  v30 = v82 - v29;
  __chkstk_darwin(v31);
  v33 = v82 - v32;
  __chkstk_darwin(v34);
  v99 = v82 - v35;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v37 = Strong;
  v87 = v4;
  v88 = a1;
  v38 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v39 = *&v37[v38];
  v40 = *&v37[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl];

  v41 = [v40 currentPage];
  if (v39 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
    if ((v42 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_40:
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }
  }

  else
  {
    v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v41 & 0x8000000000000000) != 0 || v41 >= v42)
  {

    return;
  }

  if ((v39 & 0xC000000000000001) != 0)
  {
    goto LABEL_40;
  }

  if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v43 = *(v39 + 8 * v41 + 32);
LABEL_9:
  v44 = v43;

  v45 = *(v101 + 56);
  v46 = v99;
  v86 = v101 + 56;
  v85 = v45;
  v45(v99, 1, 1, v100);
  type metadata accessor for WorkoutIconAsset();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_25;
  }

  v84 = v44;
  v47 = v44;
  sub_1006ACE94(v19);
  v48 = v21;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {

    sub_100004F84(v19, &qword_100AE4280);
    v44 = v84;
    v46 = v99;
    goto LABEL_25;
  }

  v83 = v47;
  (*(v21 + 32))(v23, v19, v20);
  WorkoutIconAssetMetadata.startTime.getter();
  v49 = v100;
  v50 = v101;
  v51 = *(v101 + 48);
  if (v51(v30, 1, v100) == 1)
  {
    started = WorkoutIconAssetMetadata.groupWorkoutStartDates.getter();
    if (started)
    {
      v53 = v83;
      v54 = v51;
      if (*(started + 16))
      {
        v55 = *(v101 + 16);
        v56 = started + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v82[1] = started;
        v57 = v83;
        v58 = v100;
        v55(v33, v56, v100);

        (*(v48 + 8))(v23, v20);
        v59 = 0;
      }

      else
      {

        (*(v48 + 8))(v23, v20);
        v59 = 1;
        v58 = v100;
      }
    }

    else
    {
      (*(v48 + 8))(v23, v20);

      v59 = 1;
      v58 = v100;
      v54 = v51;
    }

    v85(v33, v59, 1, v58);
    v60 = v58;
    if (v54(v30, 1, v58) != 1)
    {
      sub_100004F84(v30, &unk_100AD4790);
    }

    v61 = v54(v33, 1, v58);
  }

  else
  {
    (*(v48 + 8))(v23, v20);

    (*(v50 + 32))(v33, v30, v49);
    v85(v33, 0, 1, v49);
    v60 = v49;
    v61 = v51(v33, 1, v49);
  }

  if (v61 == 1)
  {
    sub_100004F84(v33, &unk_100AD4790);
    v46 = v99;
    v44 = v84;
LABEL_25:
    type metadata accessor for WorkoutRouteAsset();
    v62 = swift_dynamicCastClass();
    v60 = v100;
    v63 = v101;
    v64 = v44;
    if (v62)
    {
      v65 = v44;
      v66 = v96;
      sub_1006AACD4(v96);
      v67 = v95;
      v68 = v97;
      if ((*(v95 + 48))(v66, 1, v97) == 1)
      {

        sub_100004F84(v66, &qword_100AD5B28);
      }

      else
      {
        v69 = v91;
        (*(v67 + 32))(v91, v66, v68);
        v70 = v90;
        WorkoutRouteAssetMetadata.startTime.getter();

        (*(v67 + 8))(v69, v68);
        if ((*(v63 + 48))(v70, 1, v60) == 1)
        {
          sub_100004F84(v70, &unk_100AD4790);
        }

        else
        {
          sub_100004F84(v46, &unk_100AD4790);
          v72 = *(v63 + 32);
          v73 = v89;
          v72(v89, v70, v60);
          v72(v46, v73, v60);
          v85(v46, 0, 1, v60);
        }
      }

      v64 = v44;
    }

    goto LABEL_33;
  }

  v46 = v99;
  sub_100004F84(v99, &unk_100AD4790);
  v63 = v101;
  v71 = *(v101 + 32);
  v71(v16, v33, v60);
  v71(v46, v16, v60);
  v85(v46, 0, 1, v60);
  v64 = v84;
LABEL_33:
  v74 = v98;
  sub_1000082B4(v46, v98, &unk_100AD4790);
  if ((*(v63 + 48))(v74, 1, v60) == 1)
  {
    sub_100004F84(v46, &unk_100AD4790);

    v75 = v74;
  }

  else
  {
    v76 = v92;
    (*(v63 + 32))(v92, v74, v60);
    v77 = v94;
    (*(v63 + 16))(v94, v76, v60);
    swift_storeEnumTagMultiPayload();
    v78 = v60;
    v79 = v88;
    v80 = v88;
    v81 = v87;
    sub_1008B4384(v87);
    sub_1008B4EFC(v81, 0, v79, 0);

    sub_100004F84(v81, &unk_100AD6DD0);
    sub_100439B24(v77, type metadata accessor for OpenSensitiveURLAction.Destination);
    (*(v63 + 8))(v76, v78);
    v75 = v46;
  }

  sub_100004F84(v75, &unk_100AD4790);
}

void sub_100435AD0()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v23[-v1];
  v3 = sub_1000F24EC(&qword_100AD6F70);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
    swift_beginAccess();
    v9 = *&v7[v8];
    v10 = *&v7[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl];

    v11 = [v10 currentPage];
    if (v9 >> 62)
    {
      v10 = v11;
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_15:
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
      v14 = v13;

      type metadata accessor for MusicAsset();
      if (swift_dynamicCastClass())
      {
        sub_1006ABC94(v5);
        v15 = type metadata accessor for MusicAssetMetadata();
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v5, 1, v15) == 1)
        {

          sub_100004F84(v5, &qword_100AD6F70);
          return;
        }

        v17 = MusicAssetMetadata.mediaId.getter();
        v19 = v18;
        (*(v16 + 8))(v5, v15);
        v20 = type metadata accessor for TaskPriority();
        (*(*(v20 - 8) + 56))(v2, 1, 1, v20);
        type metadata accessor for MainActor();
        v21 = static MainActor.shared.getter();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = &protocol witness table for MainActor;
        v22[4] = v17;
        v22[5] = v19;
        sub_1003E9628(0, 0, v2, &unk_100956358, v22);
      }
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v11 & 0x8000000000000000) == 0)
      {
        while (v11 < v12)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            goto LABEL_15;
          }

          if (v11 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v9 + 8 * v11 + 32);
            goto LABEL_8;
          }

          __break(1u);
LABEL_17:
          v12 = v11;
          v11 = v10;
          if ((v10 & 0x8000000000000000) != 0)
          {
            break;
          }
        }
      }
    }
  }
}

uint64_t sub_100435E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100435EB0, v7, v6);
}

uint64_t sub_100435EB0()
{
  if (qword_100ACFE40 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2F9E8;
  *(v0 + 56) = qword_100B2F9E8;

  return _swift_task_switch(sub_100435F48, v1, 0);
}

uint64_t sub_100435F48()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1000F24EC(&unk_100AD9A60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100940080;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = objc_allocWithZone(MPMusicPlayerStoreQueueDescriptor);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithStoreIDs:isa];

  v7 = sub_1004B9AA4();
  [v7 openToPlayQueueDescriptor:v6];

  v8 = v0[5];
  v9 = v0[6];

  return _swift_task_switch(sub_1002D836C, v8, v9);
}

void sub_100436058()
{
  sub_1000E6158();
  if ((v2 & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_zoomSliderBarItem);
    if (v3)
    {
      v5 = v1;
      v4 = *(v3 + OBJC_IVAR____TtC7Journal23ZoomSliderBarButtonItem_slider);
      *&v5 = v5;

      [v4 setValue:v5];
    }
  }
}

void sub_1004360D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for FullScreenMapViewController();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v21[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_fullScreenMapCellDelegate + 8] = &off_100A6CD28;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry;
  v7 = *&v2[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry];
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  v10 = *&v21[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_multiPinMapAsset];
  *&v21[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_multiPinMapAsset] = v8;
  v11 = v8;

  if (v8)
  {
    sub_100074C10(v11, 2u);
  }

  *&v21[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_journalEntry] = *&v3[v6];

  v12 = &v21[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_selectedVisitAssetID];
  *v12 = a1;
  v12[1] = a2;

  sub_10053415C();
  v21[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_entryIsDeletable] = v3[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_textExists];
  v13 = [v3 traitCollection];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 5)
  {
    [v3 showViewController:v21 sender:v3];
  }

  else
  {
    v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v21];
    v16 = [objc_allocWithZone(UIZoomTransitionOptions) init];
    aBlock[4] = static DebugData.requiresDiagnosticsConsent.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004B7420;
    aBlock[3] = &unk_100A6CDC8;
    v17 = _Block_copy(aBlock);
    [v16 setInteractiveDismissShouldBegin:v17];
    _Block_release(v17);
    UIZoomTransitionOptions.alignmentRectProvider.setter();
    sub_1000065A8(0, &qword_100ADE550);
    v18 = v15;
    v19 = v16;
    v20 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

    [v18 setPreferredTransition:v20];
    [v3 presentViewController:v18 animated:1 completion:0];
  }
}

void sub_100436440(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 zoomedViewController];
  v5 = sub_1004B6AEC();

  v6 = 0uLL;
  if (!v5)
  {
    v23 = 1;
    v24 = 0uLL;
    goto LABEL_8;
  }

  v7 = [v5 view];
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [a1 zoomedViewController];
  v18 = [v17 view];

  [v8 convertRect:v18 toView:{v10, v12, v14, v16}];
  v27 = v19;
  v28 = v20;
  v25 = v21;
  v26 = v22;

  v29.origin.x = v27;
  v29.size.width = v28;
  v29.origin.y = v25;
  v29.size.height = v26;
  LOBYTE(v17) = CGRectIsEmpty(v29);

  if (v17)
  {
LABEL_7:
    v23 = 1;
    v24 = 0uLL;
    v6 = 0uLL;
    goto LABEL_8;
  }

  v23 = 0;
  *&v6 = v27;
  *(&v6 + 1) = v25;
  *&v24 = v28;
  *(&v24 + 1) = v26;
LABEL_8:
  *a2 = v6;
  *(a2 + 16) = v24;
  *(a2 + 32) = v23;
}

id sub_1004365B4(void *a1)
{
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 sourceViewController];
  v11 = sub_1004B6B18();

  result = 0;
  if (v11)
  {
    type metadata accessor for FullScreenCollectionViewController();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_100423270(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_100004F84(v4, &unk_100ADFB90);
      return 0;
    }

    (*(v6 + 32))(v9, v4, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v13 = v18[1];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [v13 cellForItemAtIndexPath:isa];

    (*(v6 + 8))(v9, v5);
    result = 0;
    if (v15)
    {
      type metadata accessor for FullScreenMultiPinMapCollectionViewCell();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView);

        return v17;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100436858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1004368F0, v6, v5);
}

uint64_t sub_1004368F0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry);
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = *(v0 + 32);

    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_100436A10;

    return sub_10077E5EC(v2, &protocol witness table for MainActor);
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100436A10()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100436B70, v3, v2);
}

uint64_t sub_100436B70()
{

  **(v0 + 16) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_100436BE4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v15 = v41;
  v16 = [v41 visibleCells];

  sub_1000065A8(0, &qword_100ADE560);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_3:
  v40 = v1;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  type metadata accessor for FullScreenMultiPinMapCollectionViewCell();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList);
    sub_10035A0D4();

    v23 = *(v21 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_multiPinMapAsset);
    if (v23)
    {
      v38 = v4;
      v36 = v6[2];
      v36(v11, v23 + OBJC_IVAR____TtC7Journal5Asset_id, v5);
      v39 = v6;
      v37 = v6[4];
      v37(v14, v11, v5);
      v24 = *(v21 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_journalEntry);
      if (!v24 || (v25 = *(v24 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset)) == 0 || (v26 = v25, v35 = sub_100076E78(), v28 = v27, v26, (v28 & 1) != 0) || !v35)
      {
        v29 = type metadata accessor for TaskPriority();
        (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
        v36(v8, v14, v5);
        type metadata accessor for MainActor();
        v30 = v40;
        v31 = static MainActor.shared.getter();
        v32 = (*(v39 + 80) + 40) & ~*(v39 + 80);
        v33 = swift_allocObject();
        *(v33 + 2) = v31;
        *(v33 + 3) = &protocol witness table for MainActor;
        *(v33 + 4) = v30;
        v37(&v33[v32], v8, v5);
        sub_1003E9628(0, 0, v38, &unk_1009561E0, v33);
      }

      (v39[1])(v14, v5);
    }

    sub_100887B18();
  }
}

uint64_t sub_100437054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1004370EC, v7, v6);
}

uint64_t sub_1004370EC()
{
  v1 = v0[3];
  sub_1000F24EC(&unk_100AE1A40);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = sub_1004960D4(v5);
  v0[7] = v6;
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100437288;

  return sub_1004315D4(v6);
}

uint64_t sub_100437288()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1000EC728, v3, v2);
}

void sub_1004373CC()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldSave) == 1)
  {
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    type metadata accessor for MainActor();
    v5 = v0;
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;
    sub_1003E9BBC(0, 0, v3, &unk_1009561F0, v7);
  }
}

unint64_t sub_1004375E8()
{
  result = qword_100AE4230;
  if (!qword_100AE4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4230);
  }

  return result;
}

unint64_t sub_10043763C(unint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for UUID();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_21:
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v22 = a1 & 0xC000000000000001;
  v18[1] = a1;
  v20 = a1 + 32;
  v25 = v19 + 16;
  v26 = v27 + 56;
  v7 = (v19 + 8);
  while (1)
  {
    if (v6 == v23)
    {
      return 0;
    }

    v24 = v6;
    if (v22)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v21 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 = *(v20 + 8 * v6);
    }

    v28 = v8;
    if (*(v27 + 16))
    {
      v9 = OBJC_IVAR____TtC7Journal5Asset_id;
      v10 = v27;
      sub_1000069F4(&qword_100AD4B40, &type metadata accessor for UUID);
      a1 = &v28[v9];
      v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = -1 << *(v10 + 32);
      v13 = v11 & ~v12;
      if ((*(v26 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        break;
      }
    }

LABEL_4:

    v6 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_20;
    }
  }

  v14 = ~v12;
  v15 = *(v19 + 72);
  v16 = *(v19 + 16);
  while (1)
  {
    v16(v5, *(v27 + 48) + v15 * v13, v3);
    sub_1000069F4(&qword_100AD9220, &type metadata accessor for UUID);
    a1 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v7)(v5, v3);
    if (a1)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v26 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return v24;
}

void sub_10043795C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset;
  if (*(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset) != 1)
  {
    sub_10042C0BC();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v3 = v18;
    v5 = v18[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_shouldHideNavigationBarAndPageControlForImageryAsset];
    v18[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_shouldHideNavigationBarAndPageControlForImageryAsset] = 0;
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_10042BEF8();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v3 = v18;
  v4 = v18[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_shouldHideNavigationBarAndPageControlForImageryAsset];
  v18[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_shouldHideNavigationBarAndPageControlForImageryAsset] = 1;
  if ((v4 & 1) == 0)
  {
LABEL_5:
    v6 = sub_10020A0E4();
    [v3 invalidateLayoutWithContext:v6];
  }

LABEL_6:

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v7 = [v18 visibleCells];

  sub_1000065A8(0, &qword_100ADE560);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_21:

    return;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v8 + 8 * i + 32);
      }

      v14 = v13;
      swift_getObjectType();
      v15 = swift_conformsToProtocol2();
      if (v15 && v14)
      {
        v16 = v15;
        if (*(v1 + v2))
        {
          v11 = 1;
        }

        else
        {
          ObjectType = swift_getObjectType();
          (*(v16 + 32))(1, ObjectType, v16);
          v11 = *(v1 + v2);
        }

        v12 = swift_getObjectType();
        (*(v16 + 16))(v11, v12, v16);
      }
    }

    goto LABEL_21;
  }

  __break(1u);
}

id sub_100437C50()
{
  v1 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);
  v3 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v2 setNumberOfPages:v5];
  v6 = *(v0 + v1);
  [v6 setCurrentPage:IndexPath.item.getter()];

  return sub_1004337F0();
}

char *sub_100437D24(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = *(a2 + OBJC_IVAR____TtC7Journal14EntryViewModel_fullScreenAssets);

  v12 = 1;
  if ((sub_10005AAB0(1) & 1) == 0)
  {
    v12 = *(a2 + 16);
  }

  v13 = objc_allocWithZone(type metadata accessor for FullScreenCollectionViewController());
  v14 = sub_100426A50(v10, v11, v12);
  (*(v7 + 8))(a1, v6);
  *&v14[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry] = a2;
  v15 = v14;

  v15[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldSave] = a3 & 1;

  return v15;
}

uint64_t sub_100437EAC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100437054(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100437FA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100436858(a1, v4, v5, v6);
}

void sub_100438058()
{
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_assetLoadingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_entry) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldSave) = 0;
  sub_1000065A8(0, &qword_100ADC670);
  UIViewController.ViewLoading.init()();
  type metadata accessor for GalleryCollectionViewLayout();
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100AE4210);
  UIViewController.ViewLoading.init()();
  sub_1000F24EC(&unk_100AE4220);
  UIViewController.ViewLoading.init()();
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_textExists) = 0;
  v1 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
  *(v0 + v1) = [objc_allocWithZone(UIPageControl) init];
  v2 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_dateFooterLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_footerStackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_zoomSliderBarItem) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_backwardScrollPaddle) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_forwardScrollPaddle) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_didUpdateNavBarOnWillDisplay) = 0;
  v4 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_didDeleteItemsObserver;
  v5 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_imageryIndexes) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_statusBarHidden) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_hasAppeared) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldDeleteEntryOnDismiss) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1004382BC(unint64_t *a1, uint64_t a2)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = sub_10043763C(*a1, a2);
  if (v2)
  {
    return v3;
  }

  v38 = a1;
  v46 = a2;
  if (v12)
  {
    if (v10 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = result;
  v36 = 0;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v13 = v46;
  v44 = v7 + 16;
  v45 = v46 + 56;
  v43 = (v7 + 8);
  v37 = v7;
  v14 = result + 1;
  while (1)
  {
    if (v10 >> 62)
    {
      if (v14 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v3;
      }
    }

    else if (v14 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

    v41 = v10;
    v42 = v3;
    v39 = v10 & 0xC000000000000001;
    v40 = v14;
    if ((v10 & 0xC000000000000001) == 0)
    {
      break;
    }

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v16 = v15;
    if (*(v13 + 16) && (sub_1000069F4(&qword_100AD4B40, &type metadata accessor for UUID), v17 = dispatch thunk of Hashable._rawHashValue(seed:)(), v13 = v46, v18 = -1 << *(v46 + 32), v19 = v17 & ~v18, ((*(v45 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
    {
      v20 = ~v18;
      v21 = *(v37 + 72);
      v22 = *(v37 + 16);
      while (1)
      {
        v22(v9, *(v13 + 48) + v21 * v19, v6);
        sub_1000069F4(&qword_100AD9220, &type metadata accessor for UUID);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v43)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        v13 = v46;
        if (((*(v45 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v13 = v46;
      v10 = v41;
      v3 = v42;
      v24 = v40;
    }

    else
    {
LABEL_21:

      v3 = v42;
      v24 = v40;
      if (v42 == v40)
      {
        v10 = v41;
        v3 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v10 = v41;
        if (v39)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          v27 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v42 >= v27)
          {
            goto LABEL_54;
          }

          if (v40 >= v27)
          {
            goto LABEL_55;
          }

          v28 = *(v41 + 32 + 8 * v40);
          v25 = *(v41 + 32 + 8 * v42);
          v26 = v28;
        }

        v29 = v26;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
        {
          v10 = sub_100692B10(v10);
          v30 = (v10 >> 62) & 1;
        }

        else
        {
          LODWORD(v30) = 0;
        }

        v31 = v10 & 0xFFFFFFFFFFFFFF8;
        v32 = *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
        *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v29;

        if ((v10 & 0x8000000000000000) != 0 || v30)
        {
          v10 = sub_100692B10(v10);
          v31 = v10 & 0xFFFFFFFFFFFFFF8;
          if ((v24 & 0x8000000000000000) != 0)
          {
LABEL_46:
            __break(1u);
            return v3;
          }
        }

        else if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v24 >= *(v31 + 16))
        {
          goto LABEL_52;
        }

        v33 = v31 + 8 * v24;
        v34 = *(v33 + 32);
        *(v33 + 32) = v25;

        *v38 = v10;
        v13 = v46;
        v35 = __OFADD__(v3++, 1);
        if (v35)
        {
          goto LABEL_51;
        }
      }
    }

    v35 = __OFADD__(v24, 1);
    v14 = v24 + 1;
    if (v35)
    {
      goto LABEL_50;
    }
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v15 = *(v10 + 8 * v14 + 32);
    goto LABEL_16;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100438744(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v26 - v11;
  IndexPath.init(item:section:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v13 = v26[0];
  v14 = [v26[0] numberOfItemsInSection:0];

  if (v14 > a1 && v14 >= 2)
  {
    if (a2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v15 = v26[0];
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v7 + 8))(v9, v6);
      [v15 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];

      v17 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
      v18 = *(v3 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);
      v19 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
      swift_beginAccess();
      v20 = *(v3 + v19);
      if (v20 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v18 setNumberOfPages:v21];
      v22 = *(v3 + v17);
      [v22 setCurrentPage:IndexPath.row.getter()];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v23 = v26[3];
    v24 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v23 scrollToItemAtIndexPath:v24 atScrollPosition:16 animated:0];

    sub_10042CF68(0);
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_100438A7C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100438F28;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A6CE68;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000069F4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

void sub_100438D98(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v8 = a1;
    v5(ObjectType, v3);
    type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcribingAudioAssetView);
      if (v7)
      {
        [*(v7 + OBJC_IVAR____TtC7Journal26TranscribingAudioAssetView_hostingController) removeFromParentViewController];
      }
    }
  }
}

void sub_100438EA0()
{
  v1 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset;
  if (v0[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset] == 1 && (sub_10042C598() & 1) == 0)
  {
    v2 = v0[v1];
    v0[v1] = 0;
    if ([v0 isViewLoaded])
    {
      if (v2 != v0[v1])
      {

        sub_10043795C();
      }
    }
  }
}

uint64_t sub_100438F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_100430CEC(a1, v4, v5, v7, v6);
}

uint64_t sub_100439054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100434964(a1, v4, v5, v6);
}

uint64_t sub_100439108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_100435E18(a1, v4, v5, v7, v6);
}

uint64_t sub_1004391C8()
{

  return swift_deallocObject();
}

uint64_t sub_100439218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE4290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100439288()
{
  result = qword_100AE42A0;
  if (!qword_100AE42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE42A0);
  }

  return result;
}

uint64_t sub_1004392FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(sub_1000F24EC(&qword_100AE4338) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1000F24EC(&qword_100AE4330) - 8);
  v15 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v8 = *(v7 + 64);
  v9 = *(sub_1000F24EC(&qword_100AE4328) - 8);
  v14 = (v15 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v10 = *(v9 + 64);
  v11 = *(sub_1000F24EC(&qword_100AE4320) - 8);
  v13 = (v14 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  sub_1000F24EC(&qword_100AE4318);
  sub_1000F24EC(&qword_100AE4310);
  sub_1000F24EC(&qword_100AE4308);
  sub_1000F24EC(&qword_100AE4300);
  sub_1000F24EC(&qword_100AE42F8);
  sub_1000F24EC(&qword_100AE42F0);
  sub_1000F24EC(&qword_100AE42E8);
  sub_1000F24EC(&qword_100AE42E0);
  sub_1000F24EC(&qword_100AE42D8);
  sub_1000F24EC(&qword_100AE42D0);
  sub_1000F24EC(&qword_100AE42C8);
  sub_1000F24EC(&qword_100AE42C0);
  sub_1000F24EC(&qword_100AE42B8);
  return sub_1004261DC(a1, a2, a3, *(v3 + 16), v3 + v5, v3 + v15, v3 + v14, v3 + v13);
}

uint64_t sub_100439A70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10016380C(a1, v4, v5, v6);
}

uint64_t sub_100439B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100439B84(_OWORD *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100032ECC;

  return sub_100428214(a1, v1);
}

uint64_t sub_100439C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AE4340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100439CBC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE4380);
  v1 = sub_10000617C(v0, qword_100AE4380);
  if (qword_100AD0270 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100439DA0()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_spotlightDelegate);
  v0[2] = v1;
  if (v1)
  {
    v2 = v1;
    if (!sub_10043A1EC())
    {
      +[SpotlightUtilities deleteAllSearchableItemsFromLegacyIndex]_0();
    }

    v0[3] = type metadata accessor for SpotlightUtilities();

    return _swift_task_switch(sub_100439EA4, 0, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100439EA4()
{
  v2 = v0[2];
  v1 = v0[3];
  static Date.timeIntervalSinceReferenceDate.getter();
  v0[4] = v3;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100439FA0;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000002DLL, 0x80000001008E1420, sub_100160C6C, v4, &type metadata for () + 8);
}

uint64_t sub_100439FA0()
{

  return _swift_task_switch(sub_10043A0B8, 0, 0);
}

uint64_t sub_10043A0B8()
{
  sub_10015E8F4(*(v0 + 32));

  return _swift_task_switch(sub_10043A120, 0, 0);
}

uint64_t sub_10043A120()
{
  v1 = *(v0 + 16);
  sub_100026188();
  v2 = static NSUserDefaults.shared.getter();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [v2 setValue:isa forKey:v4];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10043A1EC()
{
  sub_100026188();
  v0 = static NSUserDefaults.shared.getter();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 integerForKey:v1];

  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

uint64_t sub_10043A278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_100439D84();
}

uint64_t sub_10043A324()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TokenTypeIdentifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for TokenTypeIdentifier.bookmarked(_:) || v7 == enum case for TokenTypeIdentifier.textOnly(_:) || v7 == enum case for TokenTypeIdentifier.attachmentsOnly(_:) || v7 == enum case for TokenTypeIdentifier.photo(_:) || v7 == enum case for TokenTypeIdentifier.video(_:) || v7 == enum case for TokenTypeIdentifier.audio(_:) || v7 == enum case for TokenTypeIdentifier.place(_:) || v7 == enum case for TokenTypeIdentifier.media(_:) || v7 == enum case for TokenTypeIdentifier.conversation(_:) || v7 == enum case for TokenTypeIdentifier.activity(_:) || v7 == enum case for TokenTypeIdentifier.reflection(_:) || v7 == enum case for TokenTypeIdentifier.stateOfMind(_:) || v7 == enum case for TokenTypeIdentifier.drawing(_:) || v7 == enum case for TokenTypeIdentifier.confetti(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10043A768()
{
  v1 = type metadata accessor for TokenTypeIdentifier();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == enum case for TokenTypeIdentifier.bookmarked(_:))
  {
    return 0x6B72616D6B6F6F62;
  }

  if (v5 == enum case for TokenTypeIdentifier.textOnly(_:))
  {
    return 0x73756A2E74786574;
  }

  if (v5 == enum case for TokenTypeIdentifier.attachmentsOnly(_:))
  {
    return 0x696C637265706170;
  }

  if (v5 == enum case for TokenTypeIdentifier.photo(_:))
  {
    return 0x6F746F6870;
  }

  if (v5 == enum case for TokenTypeIdentifier.video(_:))
  {
    return 0x6F65646976;
  }

  if (v5 == enum case for TokenTypeIdentifier.audio(_:))
  {
    return 0x6D726F6665766177;
  }

  if (v5 == enum case for TokenTypeIdentifier.place(_:))
  {
    return 0xD000000000000017;
  }

  if (v5 == enum case for TokenTypeIdentifier.media(_:))
  {
    return 0x6E6F2E636973756DLL;
  }

  if (v5 == enum case for TokenTypeIdentifier.conversation(_:))
  {
    return 0x6E6F73726570;
  }

  if (v5 == enum case for TokenTypeIdentifier.activity(_:))
  {
    return 0x722E657275676966;
  }

  if (v5 == enum case for TokenTypeIdentifier.reflection(_:))
  {
    return 0x656D2E656C707061;
  }

  if (v5 == enum case for TokenTypeIdentifier.stateOfMind(_:))
  {
    return 0xD000000000000011;
  }

  if (v5 == enum case for TokenTypeIdentifier.drawing(_:))
  {
    return 0xD000000000000016;
  }

  if (v5 == enum case for TokenTypeIdentifier.confetti(_:))
  {
    return 0x6F702E7974726170;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10043AAF8(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabelTrailingConstraint);
  if (v3)
  {
    v4 = -38.0;
    if (!*(v1 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing))
    {
      v4 = -12.0;
    }

    [v3 setConstant:v4];
  }

  [*(v1 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabel) setAdjustsFontForContentSizeCategory:1];
  sub_10043AFB8();
  if (*(v1 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing) != (a1 & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing))
    {

      sub_10043B7C4();
    }

    else
    {

      sub_10043BD20();
    }
  }
}

id sub_10043ABD4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabelTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView] = 0;
  __asm { FMOV            V0.2D, #12.0 }

  *&v4[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_outerCornerRadius] = _Q0;
  v15 = &v4[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_deletePrompt];
  *v15 = DebugData.init(name:);
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_journalEntry] = 0;
  v4[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for CanvasReflectionPromptView();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v16 setClipsToBounds:1];
  sub_10043B278();

  return v16;
}

void sub_10043AD38()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_journalEntry];
  if (v2)
  {

    v3 = [v1 layer];
    if (qword_100AD0A10 != -1)
    {
      swift_once();
    }

    v22 = xmmword_100B30EE8;
    v23 = *&qword_100B30EF8;
    v24 = xmmword_100B30F08;
    v25 = *&qword_100B30F18;
    [v3 setCornerRadii:&v22];

    if ((*(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) & 1) == 0)
    {
      v4 = [v1 layer];
      v5 = &v1[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_outerCornerRadius];
      v6 = *&v1[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_outerCornerRadius];
      v7 = *&v1[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_outerCornerRadius + 8];
      [v4 cornerRadii];
      v18 = v22;
      v19 = v23;
      v20 = v24;
      *&v21 = v6;
      *(&v21 + 1) = v7;
      [v4 setCornerRadii:&v18];

      v8 = [v1 layer];
      v9 = *v5;
      v10 = *(v5 + 1);
      [v8 cornerRadii];
      v18 = v22;
      v19 = v23;
      v21 = v25;
      *&v20 = v9;
      *(&v20 + 1) = v10;
      [v8 setCornerRadii:&v18];
    }

    if (sub_10005AAB0(288) & 1) != 0 && (sub_10005AAB0(1) & 1) == 0 || (sub_10005AAB0(289))
    {
      v11 = [v1 layer];
      v12 = &v1[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_outerCornerRadius];
      v13 = *&v1[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_outerCornerRadius];
      v14 = *&v1[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_outerCornerRadius + 8];
      [v11 cornerRadii];
      v19 = v23;
      v20 = v24;
      v21 = v25;
      *&v18 = v13;
      *(&v18 + 1) = v14;
      [v11 setCornerRadii:&v18];

      v15 = [v1 layer];
      v16 = *v12;
      v17 = *(v12 + 1);
      [v15 cornerRadii];
      v18 = v22;
      v20 = v24;
      v21 = v25;
      *&v19 = v16;
      *(&v19 + 1) = v17;
      [v15 setCornerRadii:&v18];
    }

    else
    {
    }
  }
}

void sub_10043AFB8()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing) == 1)
  {
    if (qword_100AD07E0 != -1)
    {
      swift_once();
    }

    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = objc_allocWithZone(UIAccessibilityCustomAction);

    v3 = String._bridgeToObjectiveC()();
    v11[4] = sub_10043C18C;
    v11[5] = v1;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1004B7420;
    v11[3] = &unk_100A6D2A0;
    v4 = _Block_copy(v11);
    v5 = [v2 initWithName:v3 actionHandler:v4];

    _Block_release(v4);

    v6 = *(v0 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabel);
    sub_1000F24EC(&unk_100AD4780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100941D50;
    *(v7 + 32) = v5;
    sub_10043C194();
    v8 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setAccessibilityCustomActions:isa];
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabel);

    [v10 setAccessibilityCustomActions:0];
  }
}

BOOL sub_10043B1F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_deletePrompt);

    v2(v3);
  }

  return v1 != 0;
}

void sub_10043B278()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setNumberOfLines:0];
  [v2 setLineBreakMode:0];
  if (qword_100AD0388 != -1)
  {
    swift_once();
  }

  [v2 setFont:qword_100B30380];
  v3 = [objc_opt_self() systemWhiteColor];
  [v2 setTextColor:v3];

  [v1 addSubview:v2];
  v4 = [v2 superview];
  if (v4)
  {
    v5 = v4;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v2 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:12.0];
    [v8 setActive:1];
  }

  v9 = [v2 superview];
  if (v9)
  {
    v10 = v9;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v2 topAnchor];
    v12 = [v10 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    [v13 setConstant:12.0];
    [v13 setActive:1];
  }

  v14 = [v2 superview];
  if (v14)
  {
    v15 = v14;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v2 trailingAnchor];
    v17 = [v15 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setConstant:-12.0];
    if (v18)
    {
      [v18 setActive:1];
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *&v1[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabelTrailingConstraint];
  *&v1[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabelTrailingConstraint] = v18;

  sub_10043AFB8();
}

void sub_10043B5F4()
{
  if (!*&v0[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_journalEntry])
  {
    return;
  }

  v1 = v0;

  v2 = sub_100049F2C();
  if (v2)
  {
    v3 = sub_10053256C(v2);
    v5 = v4;
    v7 = v6;
    v18 = v8;

    v9 = sub_1005329B4(v3, v5 & 1, v18);
    v10 = v1;
    [v1 setBackgroundColor:v9];

    if (v7)
    {
      v11 = [v7 string];
      if (!v11)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = String._bridgeToObjectiveC()();
      }

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        [*&v10[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabel] setText:v11];

        v16 = *&v10[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView];
        if (v16)
        {
          v17 = 0;
LABEL_18:
          [v16 setAccessibilityElementsHidden:v17];
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    v16 = *&v10[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView];
    if (v16)
    {
      v17 = 1;
      goto LABEL_18;
    }

LABEL_19:
    sub_10043AD38();

    return;
  }
}

void sub_10043B7C4()
{
  v1 = OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView;
  if (*&v0[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView])
  {
    return;
  }

  type metadata accessor for CanvasAssetDeleteView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *&v0[v1];
  *&v0[v1] = v2;
  v36 = v2;
  v4 = v2;

  v5 = v4;
  [v0 addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v5 widthAnchor];
  v7 = [v6 constraintEqualToConstant:44.0];

  [v7 setActive:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v5 heightAnchor];
  v9 = [v8 constraintEqualToConstant:44.0];

  [v9 setActive:1];
  v10 = [v5 superview];
  if (v10)
  {
    v11 = v10;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:{0, v36}];
    v12 = [v5 topAnchor];
    v13 = [v11 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:0.0];
    [v14 setActive:1];
  }

  v15 = [v5 superview];
  if (v15)
  {
    v16 = v15;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v5 trailingAnchor];
    v18 = [v16 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    [v19 setActive:1];
  }

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = &v5[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_tapCompletion];
  *v21 = sub_10043C184;
  v21[1] = v20;

  v22 = qword_100AD07E8;
  v38 = v5;
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = String._bridgeToObjectiveC()();
  [v38 setAccessibilityLabel:v23];

  if (*&v0[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_journalEntry])
  {
    v24 = v0;

    v25 = sub_100049F2C();
    if (v25)
    {
      sub_10053256C(v25);
      v27 = v26;
      v29 = v28;

      if (v27)
      {
        v30 = [v27 string];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = v31 & 0xFFFFFFFFFFFFLL;
        }

        v35 = v34 == 0;
        goto LABEL_17;
      }
    }

    else
    {
    }

    v35 = 1;
LABEL_17:
    v0 = v24;
    goto LABEL_18;
  }

  v35 = 1;
LABEL_18:
  [v38 setAccessibilityElementsHidden:v35];
  sub_100809608(v37, v0, DebugData.init(name:), 0);
}

uint64_t sub_10043BCA0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_deletePrompt);
    v2 = result;

    v1();
  }

  return result;
}

void sub_10043BD20()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10043C168;
    *(v4 + 24) = v3;
    v17 = sub_100028EF4;
    v18 = v4;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10001A7D4;
    v16 = &unk_100A6D1B0;
    v5 = _Block_copy(&v13);
    v6 = v1;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v17 = sub_10043C170;
      v18 = v7;
      v13 = _NSConcreteStackBlock;
      v14 = 1107296256;
      v15 = sub_100006C7C;
      v16 = &unk_100A6D200;
      v8 = _Block_copy(&v13);
      v9 = v6;

      v10 = swift_allocObject();
      v10[2] = sub_10043C018;
      v10[3] = 0;
      v10[4] = v0;
      v17 = sub_10043C178;
      v18 = v10;
      v13 = _NSConcreteStackBlock;
      v14 = 1107296256;
      v15 = sub_10003264C;
      v16 = &unk_100A6D250;
      v11 = _Block_copy(&v13);
      v12 = v0;

      [v2 animateWithDuration:4 delay:v8 options:v11 animations:0.0 completion:0.0];

      _Block_release(v11);
      _Block_release(v8);
    }
  }

  else if ((v0[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing] & 1) == 0)
  {
    *&v0[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView] = 0;
  }
}

void sub_10043C018(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView;
    if (*(a1 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView))
    {
      v3 = a1;
      [*(a1 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView) removeFromSuperview];
      a1 = v3;
      v4 = *(v3 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(a1 + v2) = 0;
  }
}

id sub_10043C090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasReflectionPromptView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10043C194()
{
  result = qword_100AD86C0;
  if (!qword_100AD86C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD86C0);
  }

  return result;
}

void sub_10043C1E0()
{
  v1 = OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_promptLabelTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_xPlatterView) = 0;
  __asm { FMOV            V0.2D, #12.0 }

  *(v0 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_outerCornerRadius) = _Q0;
  v7 = (v0 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_deletePrompt);
  *v7 = DebugData.init(name:);
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_journalEntry) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10043C2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration.TimeFormatStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  CMTime.seconds.getter();
  static Duration.seconds(_:)();
  if (static Duration.< infix(_:_:)())
  {
    (*(v4 + 104))(v6, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v3);
    static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter();
  }

  static FormatStyle<>.time(pattern:)();
  (*(v7 + 8))(v9, v16);
  sub_10043C588();
  Duration.formatted<A>(_:)();
  (*(v11 + 8))(v13, v10);
  return v17;
}

unint64_t sub_10043C588()
{
  result = qword_100ADD0F0;
  if (!qword_100ADD0F0)
  {
    type metadata accessor for Duration.TimeFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD0F0);
  }

  return result;
}

uint64_t sub_10043C5E0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE43F8);
  v1 = sub_10000617C(v0, qword_100AE43F8);
  if (qword_100AD0210 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10043C6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (AccessTracker.isDiagnosticSubmissionAllowed.getter())
  {
  }

  else
  {
    a1 = 0;
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for AnalyticsActor();

  v10 = static AnalyticsActor.shared.getter();
  v11 = sub_100234C0C();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a1;
  sub_1003E9628(0, 0, v8, &unk_100956618, v12);
}

uint64_t sub_10043C80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for AnalyticsActor();
  v6[5] = static AnalyticsActor.shared.getter();
  sub_100234C0C();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10043C8A8, v8, v7);
}

uint64_t sub_10043C8A8()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10043C920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v40 = a2;
  v37 = a3;
  v38 = a1;
  v44 = type metadata accessor for OSSignpostID();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v41 = type metadata accessor for OSSignposter();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v41);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  OSSignposter.init()();
  OSSignposter.logHandle.getter();
  v16 = v9;
  OSSignpostID.init(log:)();
  v43 = v15;
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "sessionCheck", "", v19, 2u);
  }

  v35 = v4;
  v36 = v16;
  (*(v4 + 16))(v6, v16, v44);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v21 = OSSignpostIntervalState.init(id:isOpen:)();
  v22 = v41;
  (*(v10 + 16))(v12, v43, v41);
  v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v10 + 32))(v27 + v23, v12, v22);
  *(v27 + v24) = v21;
  v28 = (v27 + v25);
  v29 = v38;
  v31 = v39;
  v30 = v40;
  *v28 = v37;
  v28[1] = v31;
  v32 = (v27 + v26);
  *v32 = v29;
  v32[1] = v30;
  *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v42;

  SessionManager.tracker.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10043F6B4;
  *(v33 + 24) = v27;

  Tracker.ifSession(block:)();

  (*(v35 + 8))(v36, v44);
  return (*(v10 + 8))(v43, v22);
}

uint64_t sub_10043CD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v46 = a7;
  v47 = a6;
  v10 = type metadata accessor for OSSignpostError();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v48 = type metadata accessor for OSSignpostID();
  v16 = *(v48 - 8);
  __chkstk_darwin(v48);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  if (a1)
  {

    v22 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v23 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v25 = v43;
      v24 = v44;
      if ((*(v43 + 88))(v15, v44) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 8))(v15, v24);
        v26 = "";
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, v23, v38, "sessionCheck", v26, v37, 2u);
    }

    (*(v16 + 8))(v21, v48);
    v47(v45, a1);
  }

  else
  {
    v27 = a4;
    if (qword_100AD0210 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000617C(v28, qword_100B300D0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Analytics submission disabled!", v31, 2u);
    }

    v32 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v33 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v35 = v43;
      v34 = v44;
      if ((*(v43 + 88))(v12, v44) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v36 = "[Error] Interval already ended";
      }

      else
      {
        (*(v35 + 8))(v12, v34);
        v36 = "";
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v33, v41, "sessionCheck", v36, v40, 2u);
    }

    v42 = (*(v16 + 8))(v18, v48);
    return v27(v42);
  }
}

void sub_10043D1B0()
{
  v0 = sub_1000F24EC(&qword_100AE4410);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - v2;
  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    return;
  }

  if (qword_100ACFB10 == -1)
  {
    v4 = sub_10023415C();
    if (v5)
    {
LABEL_4:
      v6 = v5;
      v22 = v4;
      v23[0] = v4;
      v23[1] = v5;
      sub_10043F564();

      SessionData.init(key:data:)();
      sub_1000F24EC(&qword_100AE4420);
      v7 = type metadata accessor for DataEventTrait();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100940080;
      (*(v8 + 104))(v10 + v9, enum case for DataEventTrait.unique(_:), v7);
      SessionManager.push<A>(_:traits:file:line:)();

      if (qword_100ACFD88 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000617C(v11, qword_100AE43F8);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v23[0] = v15;
        *v14 = 136315138;
        v16 = sub_100008458(v22, v6, v23);

        *(v14 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v12, v13, "Debug session name %s submitted to session!", v14, 0xCu);
        sub_10000BA7C(v15);
      }

      else
      {
      }

      (*(v1 + 8))(v3, v0);
      return;
    }
  }

  else
  {
    swift_once();
    v4 = sub_10023415C();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  if (qword_100ACFD88 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000617C(v17, qword_100AE43F8);
  v22 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v22, v18, "No debug session name found, skipping submission.", v19, 2u);
  }

  v20 = v22;
}

uint64_t sub_10043D61C()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v31 - v1;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for OSSignposter();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  OSSignposter.init()();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v40 = v14;
  v15 = OSSignposter.logHandle.getter();
  v16 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v18, "submitDeviceData", "", v17, 2u);
  }

  v35 = v4;

  (*(v4 + 16))(v6, v9, v3);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v19 = OSSignpostIntervalState.init(id:isOpen:)();
  v33 = v9;
  v34 = v3;
  if (qword_100ACFB10 != -1)
  {
    swift_once();
  }

  v31 = qword_100B2F580;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v2, 1, 1, v20);
  v22 = v36;
  v21 = v37;
  v23 = v38;
  (*(v37 + 16))(v36, v40, v38);
  type metadata accessor for AnalyticsActor();

  v32 = v2;
  v24 = v39;

  v25 = v19;
  v26 = static AnalyticsActor.shared.getter();
  v27 = sub_100234C0C();
  v28 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v26;
  *(v29 + 3) = v27;
  *(v29 + 4) = v31;
  *(v29 + 5) = v24;
  (*(v21 + 32))(&v29[v28], v22, v23);
  *&v29[(v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8] = v25;
  sub_1003E9628(0, 0, v32, &unk_100956628, v29);

  (*(v35 + 8))(v33, v34);
  return (*(v21 + 8))(v40, v23);
}

uint64_t sub_10043DA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[18] = a5;
  v8 = type metadata accessor for OSSignpostError();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AE4458);
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = type metadata accessor for AnalyticsActor();
  v7[33] = static AnalyticsActor.shared.getter();
  v11 = swift_task_alloc();
  v7[34] = v11;
  *v11 = v7;
  v11[1] = sub_10043DC74;

  return sub_1002348AC((v7 + 2));
}

uint64_t sub_10043DC74()
{

  sub_100234C0C();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10043DDB0, v1, v0);
}

uint64_t sub_10043DDB0()
{
  v46 = v0;

  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v2;
  sub_10043F984();
  SessionData.init(key:data:)();
  if (qword_100ACFD88 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = type metadata accessor for Logger();
  sub_10000617C(v7, qword_100AE43F8);
  v8 = *(v6 + 16);
  v8(v4, v3, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 240);
  if (v11)
  {
    v13 = *(v0 + 224);
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v16 = 136315138;
    v8(v14, v12, v15);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v44 = *(v13 + 8);
    v44(v12, v15);
    v20 = sub_100008458(v17, v19, &v45);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v16, 0xCu);
    sub_10000BA7C(v43);
  }

  else
  {
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);

    v44 = *(v21 + 8);
    v44(v12, v22);
  }

  sub_1000F24EC(&qword_100AE4420);
  v23 = type metadata accessor for DataEventTrait();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100940080;
  (*(v24 + 104))(v26 + v25, enum case for DataEventTrait.unique(_:), v23);
  SessionManager.push<A>(_:traits:file:line:)();

  v27 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v28 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v30 = *(v0 + 176);
    v29 = *(v0 + 184);
    v31 = *(v0 + 168);

    checkForErrorAndConsumeState(state:)();

    if ((*(v30 + 88))(v29, v31) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      v32 = "";
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v28, v34, "submitDeviceData", v32, v33, 2u);
  }

  v35 = *(v0 + 248);
  v37 = *(v0 + 208);
  v36 = *(v0 + 216);
  v38 = v27;
  v40 = *(v0 + 192);
  v39 = *(v0 + 200);

  (*(v39 + 8))(v37, v40);
  v44(v35, v36);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10043E2A4()
{
  v145 = sub_1000F24EC(&qword_100AE4428);
  v126 = *(v145 - 8);
  __chkstk_darwin(v145);
  v112 = &v111 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v124 = &v111 - v2;
  __chkstk_darwin(v3);
  v142 = &v111 - v4;
  v119 = type metadata accessor for SettingsKey();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE4430);
  v144 = *(v6 - 8);
  __chkstk_darwin(v6);
  v111 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v114 = &v111 - v9;
  __chkstk_darwin(v10);
  v146 = &v111 - v11;
  v12 = sub_1000F24EC(&qword_100AE4438);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v138 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v111 - v16;
  __chkstk_darwin(v18);
  v143 = &v111 - v19;
  v20 = type metadata accessor for OSSignpostID();
  v140 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v111 - v24;
  v122 = type metadata accessor for OSSignposter();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v27 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.init()();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v120 = v27;
  v28 = OSSignposter.logHandle.getter();
  v29 = static os_signpost_type_t.begin.getter();
  v30 = OS_os_log.signpostsEnabled.getter();
  v128 = v12;
  if (v30)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, v29, v32, "submitSessionProperties", "", v31, 2u);
    v12 = v128;
  }

  v33 = *(v140 + 16);
  v123 = v25;
  v33(v22, v25, v20);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v118 = OSSignpostIntervalState.init(id:isOpen:)();
  if (qword_100ACFB10 != -1)
  {
    swift_once();
  }

  v125 = v20;
  v141 = v6;
  v34 = qword_100B2F580;
  v35 = sub_100234784();
  v37 = v36;
  v38 = sub_100234664();
  v147[0] = v35;
  v147[1] = v37;
  v147[2] = v38;
  v147[3] = v39;
  v40 = sub_10043F5B8();
  v41 = v143;
  v113 = v40;
  SessionData.init(key:data:)();
  if (qword_100ACFD88 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v43 = sub_10000617C(v42, qword_100AE43F8);
  v44 = *(v13 + 16);
  v44(v17, v41, v12);
  v139 = v43;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v47 = os_log_type_enabled(v45, v46);
  v127 = v13;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v137 = v34;
    v50 = v49;
    v147[0] = v49;
    *v48 = 136315138;
    v44(v138, v17, v12);
    v51 = String.init<A>(describing:)();
    v53 = v52;
    v115 = *(v13 + 8);
    v115(v17, v12);
    v54 = sub_100008458(v51, v53, v147);

    *(v48 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s", v48, 0xCu);
    sub_10000BA7C(v50);
  }

  else
  {

    v115 = *(v13 + 8);
    v115(v17, v12);
  }

  v55 = sub_1000F24EC(&qword_100AE4420);
  v56 = type metadata accessor for DataEventTrait();
  v57 = *(v56 - 8);
  v58 = *(v57 + 80);
  v59 = (v58 + 32) & ~v58;
  v134 = *(v57 + 72);
  v133 = v58;
  v137 = v55;
  v60 = swift_allocObject();
  v131 = xmmword_100940080;
  *(v60 + 16) = xmmword_100940080;
  v61 = *(v57 + 104);
  v135 = v59;
  v132 = enum case for DataEventTrait.unique(_:);
  v138 = v56;
  v136 = v57 + 104;
  v130 = v61;
  v61(v60 + v59);
  v129 = "flectionPromptView.swift";
  SessionManager.push<A>(_:traits:file:line:)();

  sub_100233A9C(v147);
  sub_10043F60C();
  v62 = v146;
  SessionData.init(key:data:)();
  v63 = v144;
  v64 = *(v144 + 16);
  v65 = v114;
  v66 = v141;
  v64(v114, v62, v141);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v147[0] = v70;
    *v69 = 136315138;
    v64(v111, v65, v66);
    v71 = String.init<A>(describing:)();
    v72 = v65;
    v73 = v71;
    v75 = v74;
    v114 = *(v144 + 8);
    (v114)(v72, v66);
    v76 = sub_100008458(v73, v75, v147);

    *(v69 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v67, v68, "%s", v69, 0xCu);
    sub_10000BA7C(v70);
  }

  else
  {

    v114 = *(v63 + 8);
    (v114)(v65, v66);
  }

  v77 = v124;
  v78 = v135;
  v79 = swift_allocObject();
  *(v79 + 16) = v131;
  v130(v79 + v78, v132, v138);
  SessionManager.push<A>(_:traits:file:line:)();

  sub_100026188();
  v80 = static NSUserDefaults.shared.getter();
  v81 = v117;
  v82 = v116;
  v83 = v119;
  (*(v117 + 104))(v116, enum case for SettingsKey.skipJournalingSuggestions(_:), v119);
  SettingsKey.rawValue.getter();
  (*(v81 + 8))(v82, v83);
  v84 = String._bridgeToObjectiveC()();

  v85 = [v80 BOOLForKey:v84];

  LOBYTE(v147[0]) = v85;
  v86 = sub_10043F660();
  v87 = v142;
  SessionData.init(key:data:)();
  v88 = v126;
  v89 = *(v126 + 16);
  v89(v77, v87, v145);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v147[0] = v93;
    *v92 = 136315138;
    v139 = v86;
    v94 = v77;
    v95 = v77;
    v96 = v145;
    v89(v112, v94, v145);
    v97 = String.init<A>(describing:)();
    v98 = v96;
    v100 = v99;
    v101 = *(v88 + 8);
    v101(v95, v98);
    v102 = sub_100008458(v97, v100, v147);

    *(v92 + 4) = v102;
    v103 = v101;
    _os_log_impl(&_mh_execute_header, v90, v91, "%s", v92, 0xCu);
    sub_10000BA7C(v93);
  }

  else
  {

    v103 = *(v88 + 8);
    v103(v77, v145);
  }

  v104 = v128;
  v105 = v123;
  v106 = v135;
  v107 = swift_allocObject();
  *(v107 + 16) = v131;
  v130(v107 + v106, v132, v138);
  v108 = v142;
  SessionManager.push<A>(_:traits:file:line:)();

  v103(v108, v145);
  (v114)(v146, v141);
  v115(v143, v104);
  v109 = v120;
  sub_10043F1FC();

  (*(v140 + 8))(v105, v125);
  return (*(v121 + 8))(v109, v122);
}

uint64_t sub_10043F1FC()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v9 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v12, "submitSessionProperties", v10, v11, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10043F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for AnalyticsActor();
  v5[5] = static AnalyticsActor.shared.getter();
  sub_100234C0C();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10043F4E0, v7, v6);
}

uint64_t sub_10043F4E0()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(v2);
  }

  **(v0 + 16) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10043F564()
{
  result = qword_100AE4418;
  if (!qword_100AE4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4418);
  }

  return result;
}

unint64_t sub_10043F5B8()
{
  result = qword_100AE4440;
  if (!qword_100AE4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4440);
  }

  return result;
}

unint64_t sub_10043F60C()
{
  result = qword_100AE4448;
  if (!qword_100AE4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4448);
  }

  return result;
}

unint64_t sub_10043F660()
{
  result = qword_100AE4450;
  if (!qword_100AE4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4450);
  }

  return result;
}

uint64_t sub_10043F6B4(uint64_t a1)
{
  v3 = *(type metadata accessor for OSSignposter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_10043CD00(a1, v1 + v4, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10043F784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10043C80C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10043F84C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OSSignposter() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100032EC8;

  return sub_10043DA74(a1, v7, v8, v9, v10, v1 + v6, v11);
}

unint64_t sub_10043F984()
{
  result = qword_100AE4460;
  if (!qword_100AE4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4460);
  }

  return result;
}

uint64_t sub_10043F9D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 setString:v6];

  v7 = String._bridgeToObjectiveC()();
  [a3 setString:v7];

  NLTokenizer.enumerateTokens(in:using:)();
  return 0;
}

uint64_t sub_10043FACC()
{
  sub_1000F24EC(&qword_100AE4478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941FF0;
  *(inited + 32) = String._bridgeToObjectiveC()();
  *(inited + 40) = String._bridgeToObjectiveC()();
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = String._bridgeToObjectiveC()();
  *(inited + 64) = String._bridgeToObjectiveC()();
  *(inited + 72) = String._bridgeToObjectiveC()();
  v1 = sub_100891520(inited);
  swift_setDeallocating();
  type metadata accessor for NLTag(0);
  result = swift_arrayDestroy();
  qword_100AE4468 = v1;
  return result;
}

uint64_t sub_10043FBD4()
{
  v0 = sub_1008915DC(&off_100A59298);
  result = swift_arrayDestroy();
  qword_100AE4470 = v0;
  return result;
}

uint64_t sub_10043FC20()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE4480);
  v1 = sub_10000617C(v0, qword_100AE4480);
  if (qword_100AD0180 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10043FCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_titleLabel;
  *&v3[OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_titleLabel] = v6;
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 boldSystemFontOfSize:16.0];
  [v9 setFont:v10];

  [*&v3[v7] setNumberOfLines:0];
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_descriptionLabel;
  *&v3[OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_descriptionLabel] = v11;
  v13 = v11;
  v14 = [v8 systemFontOfSize:14.0];
  [v13 setFont:v14];

  [*&v3[v12] setNumberOfLines:0];
  if (a3)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v53.receiver = v3;
  v53.super_class = type metadata accessor for SyncStatsDisplayVC.SyncStatsCell();
  v16 = objc_msgSendSuper2(&v53, "initWithStyle:reuseIdentifier:", a1, v15);

  v17 = v16;
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_titleLabel;
  [v18 addSubview:*&v17[OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_titleLabel]];

  v20 = [v17 contentView];
  v21 = OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_descriptionLabel;
  [v20 addSubview:*&v17[OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_descriptionLabel]];

  [*&v17[v19] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v17[v21] setTranslatesAutoresizingMaskIntoConstraints:0];
  v52 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100956650;
  v23 = [*&v17[v19] topAnchor];
  v24 = [v17 contentView];
  v25 = [v24 topAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:8.0];
  *(v22 + 32) = v26;
  v27 = [*&v17[v19] leadingAnchor];
  v28 = [v17 contentView];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:8.0];
  *(v22 + 40) = v30;
  v31 = [*&v17[v19] trailingAnchor];
  v32 = [v17 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33 constant:-8.0];
  *(v22 + 48) = v34;
  v35 = [*&v17[v21] topAnchor];
  v36 = [*&v17[v19] bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:8.0];

  *(v22 + 56) = v37;
  v38 = [*&v17[v21] leadingAnchor];
  v39 = [v17 contentView];
  v40 = [v39 leadingAnchor];

  v41 = [v38 constraintEqualToAnchor:v40 constant:8.0];
  *(v22 + 64) = v41;
  v42 = [*&v17[v21] trailingAnchor];
  v43 = [v17 contentView];
  v44 = [v43 trailingAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:-8.0];
  *(v22 + 72) = v45;
  v46 = [*&v17[v21] bottomAnchor];
  v47 = [v17 contentView];

  v48 = [v47 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor:v48 constant:-8.0];

  *(v22 + 80) = v49;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:isa];

  return v17;
}

id sub_1004403F0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SyncStatsDisplayVC();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  result = [v0 tableView];
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() nibWithNibName:v3 bundle:0];

    v5 = String._bridgeToObjectiveC()();
    [v2 registerNib:v4 forCellReuseIdentifier:v5];

    *&v0[OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects] = sub_1004409C4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100440678(void *a1)
{
  v3 = IndexPath.row.getter();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*(v1 + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) + 16))
  {

    v4 = String._bridgeToObjectiveC()();

    [a1 frame];
    Width = CGRectGetWidth(v19);
    sub_1000F24EC(&unk_100AD9200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSFontAttributeName;
    v7 = objc_opt_self();
    v8 = NSFontAttributeName;
    v9 = [v7 systemFontOfSize:16.0];
    *(inited + 64) = sub_1000065A8(0, &qword_100AD2A78);
    *(inited + 40) = v9;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &unk_100AD9210);
    type metadata accessor for Key(0);
    sub_10001E508(&qword_100ADC650, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 boundingRectWithSize:3 options:isa attributes:0 context:{Width, 1.79769313e308}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v20.origin.x = v12;
    v20.origin.y = v14;
    v20.size.width = v16;
    v20.size.height = v18;
    CGRectGetHeight(v20);
    return;
  }

  __break(1u);
}

double *sub_1004409C4()
{
  v42 = 0;
  v43 = 0xE000000000000000;
  v44 = _swiftEmptyArrayStorage;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = &v44;
  v2[4] = &v42;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10044468C;
  *(v3 + 24) = v2;
  v40 = sub_100028EF4;
  v41 = v3;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v38 = sub_10001A7D4;
  v39 = &unk_100A6D438;
  v4 = _Block_copy(&aBlock);
  v5 = v41;
  v6 = v1;

  [v6 performBlockAndWait:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = v6;
    v9[4] = &v44;
    v9[5] = &v42;
    v0 = swift_allocObject();
    *(v0 + 16) = sub_100444698;
    *(v0 + 24) = v9;
    v40 = sub_100177C4C;
    v41 = v0;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    v38 = sub_10001A7D4;
    v39 = &unk_100A6D4D8;
    v10 = _Block_copy(&aBlock);
    v5 = v41;
    v6 = v6;

    [v6 performBlockAndWait:v10];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v5 = sub_100442AE0();
      isEscapingClosureAtFileLocation = v11;
      v0 = v44;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v0;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_19:
  v0 = sub_1003E6194(0, *(v0 + 16) + 1, 1, v0);
  v44 = v0;
LABEL_6:
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  if (v14 >= v13 >> 1)
  {
    v0 = sub_1003E6194((v13 > 1), v14 + 1, 1, v0);
  }

  *(v0 + 16) = v14 + 1;
  v15 = (v0 + 32 * v14);
  v15[4] = 0xD00000000000001ALL;
  v15[5] = 0x80000001008F4180;
  v15[6] = v5;
  v15[7] = isEscapingClosureAtFileLocation;
  v44 = v0;
  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  aBlock._countAndFlagsBits = 0xD000000000000023;
  aBlock._object = 0x80000001008F41A0;
  v16._countAndFlagsBits = v5;
  v16._object = isEscapingClosureAtFileLocation;
  String.append(_:)(v16);

  String.append(_:)(aBlock);

  v17 = sub_1004432B0();
  v19 = v18;
  v20 = v44;

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v20;
  if ((v21 & 1) == 0)
  {
    v20 = sub_1003E6194(0, *(v20 + 2) + 1, 1, v20);
    v44 = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1003E6194((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[4 * v23];
  v24[4] = -2.31584178e77;
  *(v24 + 5) = 0x80000001008F41D0;
  *(v24 + 6) = v17;
  *(v24 + 7) = v19;
  v44 = v20;
  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  aBlock._countAndFlagsBits = 0xD000000000000025;
  aBlock._object = 0x80000001008F4200;
  v25._countAndFlagsBits = v17;
  v25._object = v19;
  String.append(_:)(v25);

  String.append(_:)(aBlock);

  if (qword_100ACFDA0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000617C(v26, qword_100AE4480);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    swift_beginAccess();
    v31 = v42;
    v32 = v43;

    v33 = sub_100008458(v31, v32, &v36);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "(syncstats): %s", v29, 0xCu);
    sub_10000BA7C(v30);
  }

  v34 = v44;

  return v34;
}