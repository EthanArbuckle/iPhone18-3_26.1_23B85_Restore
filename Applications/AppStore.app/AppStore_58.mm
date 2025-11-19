uint64_t sub_10068836C(uint64_t a1, char *a2)
{
  KeyPath = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v6 - 8);
  v105 = &v89 - v7;
  v8 = type metadata accessor for ScreenshotsDisplayStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v108 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v111 = &v89 - v12;
  v13 = type metadata accessor for LockupMediaLayout.DisplayType();
  v112 = *(v13 - 8);
  __chkstk_darwin(v13);
  v110 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v89 - v16;
  __chkstk_darwin(v17);
  v19 = &v89 - v18;
  v20 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v20 - 8);
  v113 = &v89 - v21;
  v22 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v89 - v23;
  v25 = type metadata accessor for PageGrid();
  v109 = *(v25 - 8);
  __chkstk_darwin(v25);
  v114 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdvertRotationControllerProvider();
  result = BaseObjectGraph.optional<A>(_:)();
  v28 = v116;
  if (!v116)
  {
    return result;
  }

  v107 = a1;
  v29 = AdvertRotationControllerProvider.advertController(for:asPartOf:)();
  if (!v29)
  {
  }

  v102 = v19;
  v104 = v28;
  v30 = v29;
  dispatch thunk of AdvertRotationController.currentAdvert.getter();
  sub_10002849C(&unk_10097E360);
  type metadata accessor for MixedMediaLockup();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v97 = v30;
  v103 = v9;
  v98 = v25;
  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  PageGrid.columnWidth.getter();
  v31 = *&KeyPath[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView];
  *(v31 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing) = v32;
  [v31 setNeedsLayout];
  PageGrid.componentMeasuringSize(spanning:)();
  v34 = v33;
  v36 = v35;
  v37 = type metadata accessor for ItemLayoutContext();
  (*(*(v37 - 8) + 56))(v24, 1, 1, v37);

  v101 = a2;
  sub_100279F24(v38, v24, a2);
  sub_10002B894(v24, &unk_1009731E0);
  sub_100005744(0, &qword_100970180);
  v39 = static UIColor.defaultBackground.getter();
  [KeyPath setBackgroundColor:v39];

  v40 = MixedMediaLockup.screenshots.getter();
  if (v40 >> 62)
  {
    v59 = v40;
    v41 = _CocoaArrayWrapper.endIndex.getter();
    v40 = v59;
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v111;
  v111 = v8;
  if (v41)
  {
    v43 = v110;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v100 = *(v40 + 32);
    }
  }

  else
  {

    v100 = 0;
    v43 = v110;
  }

  v94 = *&KeyPath[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  a1 = MixedMediaLockup.alignedRegionArtwork.getter();
  v93 = MixedMediaLockup.alignedRegionVideo.getter();
  v44 = MixedMediaLockup.trailers.getter();
  if (v44 >> 62)
  {
    v60 = v44;
    v45 = _CocoaArrayWrapper.endIndex.getter();
    v44 = v60;
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = KeyPath;
  v95 = v31;
  v110 = a1;
  if (v45)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v92 = *(v44 + 32);
    }
  }

  else
  {

    v92 = 0;
  }

  v46 = ASKDeviceTypeGetCurrent();
  KeyPath = swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v47 = v116;
  sub_1006C9F8C(v113);

  v31 = MixedMediaLockup.alignedRegionArtwork.getter();
  a1 = MixedMediaLockup.alignedRegionVideo.getter();
  v48 = MixedMediaLockup.screenshots.getter();
  if (v48 >> 62)
  {
    v61 = v48;
    v49 = _CocoaArrayWrapper.endIndex.getter();
    v48 = v61;
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v103;
  if (v49)
  {
    if ((v48 & 0xC000000000000001) == 0)
    {
      if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_57;
      }

      KeyPath = *(v48 + 32);

      goto LABEL_29;
    }

LABEL_53:
    KeyPath = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_29:

    goto LABEL_31;
  }

  KeyPath = 0;
LABEL_31:
  v50 = MixedMediaLockup.trailers.getter();
  if (v50 >> 62)
  {
    v62 = v50;
    v51 = _CocoaArrayWrapper.endIndex.getter();
    v50 = v62;
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = v13;
  if (v51)
  {
    if ((v50 & 0xC000000000000001) == 0)
    {
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v52 = *(v50 + 32);

LABEL_37:

        goto LABEL_39;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_37;
  }

  v52 = 0;
LABEL_39:
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if (ScreenshotsDisplayStyle.shouldShowScreenshots.getter())
  {
    if (!(a1 | v31))
    {
      v53 = sub_1001B9B24(KeyPath, v52, 0, 1);
      v31 = v53;
      a1 = v53 >> 62;
      if (!(v53 >> 62))
      {
        ObjectType = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (KeyPath)
        {
LABEL_43:
          v54 = Screenshots.mediaPlatform.getter();
          goto LABEL_60;
        }

LABEL_59:
        v54 = 0;
LABEL_60:
        v90 = sub_1001B9E6C(v54);

        v107 = KeyPath;
        v63 = v43;
        if (KeyPath)
        {
          v64 = Screenshots.mediaPlatform.getter();
        }

        else
        {
          v64 = 0;
        }

        v65 = v105;
        v66 = v111;
        (*(v24 + 2))(v105, v42, v111);
        (*(v24 + 7))(v65, 0, 1, v66);
        v91 = sub_1001BA394(v64, v65);

        sub_10002B894(v65, &unk_100973C90);
        if (a1)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v67 = v63;
        if (result)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }
          }

          v68 = dispatch thunk of Artwork.isLandscape.getter();

          if (v68)
          {

            v69 = *(v24 + 1);
            v69(v42, v111);
            v55 = v112;
            v70 = v106;
            v71 = v99;
            (*(v112 + 104))(v106, enum case for LockupMediaLayout.DisplayType.landscape(_:), v99);
LABEL_81:
            ObjectType = v69;
            v56 = v102;
            (*(v55 + 32))(v102, v70, v71);
            goto LABEL_82;
          }
        }

        else
        {
        }

        v72 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v73 = v112;
        v71 = v99;
        v105 = *(v112 + 104);
        (v105)(v63, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v99);
        v74 = LockupMediaLayout.DisplayType.numberOfViews.getter();
        v75 = *(v73 + 8);
        v75(v67, v71);
        if (((ObjectType >= v74) & v91) != 0 || (v72 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v105)(v67, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v71), v76 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v75(v67, v71), ((ObjectType >= v76) & v90) != 0) || (v72 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v105)(v67, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v71), v77 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v75(v67, v71), ObjectType >= v77))
        {

          v69 = *(v103 + 1);
          v69(v42, v111);
        }

        else
        {
          v72 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
          (v105)(v67, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v71);
          v78 = LockupMediaLayout.DisplayType.numberOfViews.getter();

          v75(v67, v71);
          v69 = *(v103 + 1);
          v69(v42, v111);
          if (ObjectType != v78)
          {
            v79 = enum case for LockupMediaLayout.DisplayType.none(_:);
            v70 = v106;
            v80 = v106;
LABEL_80:
            (v105)(v80, v79, v71);
            v55 = v112;
            goto LABEL_81;
          }
        }

        v70 = v106;
        v80 = v106;
        v79 = v72;
        goto LABEL_80;
      }

LABEL_58:
      ObjectType = _CocoaArrayWrapper.endIndex.getter();
      if (KeyPath)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    v57 = v106;
    AspectRatio.init(_:_:)();

    ObjectType = *(v24 + 1);
    ObjectType(v42, v111);
    v55 = v112;
    v58 = v99;
    (*(v112 + 104))(v57, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v99);
    v56 = v102;
    (*(v55 + 32))(v102, v57, v58);
  }

  else
  {

    ObjectType = *(v24 + 1);
    ObjectType(v42, v111);
    v55 = v112;
    v56 = v102;
    (*(v112 + 104))(v102, enum case for LockupMediaLayout.DisplayType.none(_:), v99);
  }

LABEL_82:
  v81 = v108;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v82 = ASKDeviceTypeGetCurrent();
  v83 = v113;
  sub_1005B8C58(v110, v93, v100, v92, v113, v56, v81, v101, v34, v36, 0);

  ObjectType(v81, v111);
  (*(v55 + 8))(v56, v99);
  sub_10002B894(v83, &unk_1009732A0);
  v84 = Lockup.searchAdOpportunity.getter();

  if (v84)
  {
    v85 = SearchAdOpportunity.searchAd.getter();

    v86 = v96;
    if (v85)
    {
      v87 = [objc_opt_self() clearColor];
      [v86 setBackgroundColor:v87];
    }
  }

  else
  {
    v85 = 0;
    v86 = v96;
  }

  v88 = v109;
  sub_10027B8BC(v85, v101);
  [v86 setNeedsLayout];

  [v86 setNeedsLayout];

  return (*(v88 + 8))(v114, v98);
}

uint64_t sub_100689348(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10096FC10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v181 = &v146 - v6;
  v7 = type metadata accessor for SmallSearchLockupLayout();
  v180 = *(v7 - 8);
  __chkstk_darwin(v7);
  v179 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v183 = *(v9 - 8);
  *&v184 = v9;
  __chkstk_darwin(v9);
  v173 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LabelPlaceholderCompatibility();
  v176 = *(v11 - 8);
  v177 = v11;
  __chkstk_darwin(v11);
  v175 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OfferButtonMetrics();
  v187 = *(v13 - 8);
  v188 = v13;
  __chkstk_darwin(v13);
  v174 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v186 = &v146 - v16;
  v191 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v185 = *(v191 - 8);
  __chkstk_darwin(v191);
  v178 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v190 = &v146 - v19;
  v20 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v20 - 8);
  v172 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v189 = &v146 - v23;
  v192 = type metadata accessor for ScreenshotsDisplayStyle();
  v24 = *(v192 - 8);
  __chkstk_darwin(v192);
  v26 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v146 - v28;
  v30 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v30 - 8);
  v182 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdvertRotationControllerProvider();
  result = BaseObjectGraph.optional<A>(_:)();
  if (!v232[0])
  {
    return result;
  }

  v169 = v5;
  v170 = v4;
  v194 = v232[0];
  v171 = a1;
  sub_10002C0AC(a1, v232);
  sub_10002849C(&unk_1009793D0);
  v33 = type metadata accessor for AdvertsSearchResult();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v168 = v7;
  v34 = v231[0];
  v233 = v33;
  v234 = sub_100690838(&qword_10096FA98, 255, &type metadata accessor for AdvertsSearchResult);
  v232[0] = v34;

  v35 = AdvertRotationControllerProvider.advertController(for:asPartOf:createIfRequired:)();
  sub_100007000(v232);
  if (!v35)
  {
  }

  dispatch thunk of AdvertRotationController.currentAdvert.getter();
  sub_10002849C(&unk_10097E360);
  type metadata accessor for MixedMediaLockup();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v162 = v35;
  v163 = v24;
  v159 = v26;
  v166 = v29;
  v36 = v231[0];
  v37 = v193;
  v38 = *&v193[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  v39 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v165 = v38;
  v40 = *(v38 + v39);
  if (v40 >> 62)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v195 = a2;
  v167 = v34;
  v164 = v36;
  if (v41)
  {
    if (v41 < 1)
    {
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_22;
    }

    v42 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v43 = *(v40 + v42 + 4);
      }

      v44 = v43;
      ++v42;
      v231[0] = v43;
      type metadata accessor for BorderedScreenshotView();
      sub_100690838(&qword_100973D78, 255, type metadata accessor for BorderedScreenshotView);
      v45 = v44;
      AnyHashable.init<A>(_:)();
      a2 = v195;
      ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
      sub_10003D614(v232);
      v46 = *&v45[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      v235.value.super.isa = 0;
      v235.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v235, v47);
    }

    while (v41 != v42);

    v37 = v193;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    v231[0] = v49;
    type metadata accessor for VideoView();
    sub_100690838(&qword_100992450, 255, type metadata accessor for VideoView);
    v50 = v49;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    sub_10003D614(v232);
  }

  v37 = *&v37[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView];
  v24 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v51 = *&v37[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  v236.value.super.isa = 0;
  v236.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v236, v52);

  v53 = *&v37[v24];
  v54 = type metadata accessor for ArtworkView();
  v55 = sub_100690838(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
  v56 = v53;
  v160 = v55;
  v161 = v54;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v57 = Lockup.icon.getter();
  v58 = v192;
  if (!v57)
  {
    goto LABEL_25;
  }

  v59 = qword_10096EE80;
  v40 = *&v37[v24];
  if (v59 != -1)
  {
    goto LABEL_59;
  }

LABEL_22:
  v60 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_1000056A8(v60, qword_1009D3798);
  SmallLockupLayout.Metrics.artworkSize.getter();
  [v40 contentMode];
  Artwork.config(_:mode:prefersLayeredImage:)();
  Artwork.style.getter();
  ArtworkView.style.setter();
  [v40 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100005744(0, &qword_100970180);
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();
  v61 = *&v37[v24];
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

  v58 = v192;
LABEL_25:
  v62 = *&v37[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  sub_10032A784(v171, a2);

  v63 = v166;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    return (*(v163 + 8))(v63, v58);
  }

  v64 = Lockup.title.getter();
  v149 = v65;
  v150 = v64;
  v66 = Lockup.subtitle.getter();
  v68 = v67;
  v69 = Lockup.searchAdOpportunity.getter();

  v151 = v68;
  v152 = v66;
  if (v69)
  {
    v70 = SearchAdOpportunity.searchAd.getter();

    v71 = v190;
    v72 = v183;
    v73 = v174;
    if (v70)
    {
      v74 = SearchAd.advertisingText.getter();
      v153 = v75;
      v154 = v74;
    }

    else
    {
      v153 = 0;
      v154 = 0;
    }

    v76 = v184;
  }

  else
  {
    v153 = 0;
    v154 = 0;
    v71 = v190;
    v72 = v183;
    v76 = v184;
    v73 = v174;
  }

  v182 = MixedMediaLockup.metadataRibbonItems.getter();
  v174 = MixedMediaLockup.searchTagRibbonItems.getter();
  v77 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v78 = [v193 traitCollection];
  (*(v72 + 56))(v189, 1, 1, v76);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v79 = v191;
  v80 = sub_1000056A8(v191, qword_1009CDC00);
  v81 = v185 + 16;
  v82 = *(v185 + 16);
  v82(v71, v80, v79);
  v83 = UITraitCollection.prefersAccessibilityLayouts.getter();
  LODWORD(v146) = v77;
  v156 = v82;
  v157 = v81;
  if ((v83 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v84 = qword_100991028;
    goto LABEL_41;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v84 = qword_100991010;
LABEL_41:
    v85 = v188;
    v86 = sub_1000056A8(v188, v84);
    v87 = v187;
    (*(v187 + 16))(v73, v86, v85);
    (*(v87 + 32))(v186, v73, v85);
    v88 = [v78 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v155 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v171 = LayoutViewPlaceholder.init(representing:)();
    v89 = objc_opt_self();
    v147 = v89;
    v90 = [v89 preferredFontForTextStyle:UIFontTextStyleBody];
    v91 = type metadata accessor for Feature();
    v233 = v91;
    v160 = sub_100690838(&qword_100972E50, 255, &type metadata accessor for Feature);
    v234 = v160;
    v92 = sub_1000056E0(v232);
    v93 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v94 = *(v91 - 8);
    v148 = *(v94 + 104);
    v158 = v94 + 104;
    HIDWORD(v146) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v148(v92, enum case for Feature.measurement_with_labelplaceholder(_:), v91);
    isFeatureEnabled(_:)();
    sub_100007000(v232);
    v95 = v175;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v96 = v177;
    v161 = v78;
    v97 = *(v176 + 8);
    v97(v95, v177);
    v98 = [v89 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v231[3] = v91;
    v231[4] = v160;
    v99 = sub_1000056E0(v231);
    v100 = v93;
    v101 = v148;
    v148(v99, v100, v91);
    isFeatureEnabled(_:)();
    sub_100007000(v231);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v97(v95, v96);
    v102 = [v147 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v230[3] = v91;
    v230[4] = v160;
    v103 = sub_1000056E0(v230);
    v101(v103, HIDWORD(v146), v91);
    isFeatureEnabled(_:)();
    sub_100007000(v230);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v97(v95, v96);
    v104 = v182;
    LODWORD(v177) = sub_1000AE138(0, v182) & (v104 != 0);
    if (v177 == 1)
    {
      v105 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v106 = v161;
      v107 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v108 = v172;
      sub_100031660(v189, v172, &unk_1009912C0);
      v110 = v183;
      v109 = v184;
      v111 = *(v183 + 48);
      if (v111(v108, 1, v184) == 1)
      {
        v112 = v173;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v111(v108, 1, v109) != 1)
        {
          sub_10002B894(v108, &unk_1009912C0);
        }
      }

      else
      {
        v112 = v173;
        (*(v110 + 32))(v173, v108, v109);
      }

      v115 = v107;
      sub_1000AD91C(v182, v112, v115);

      (*(v110 + 8))(v112, v109);
      v113 = v155;
      swift_allocObject();
      v114 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v113 = v155;
      swift_allocObject();
      v114 = LayoutViewPlaceholder.init(representing:)();
    }

    v116 = v114;

    v117 = v174;
    v118 = sub_1000AE138(v174, 0) & (v117 != 0);
    v119 = v156;
    if (v118 == 1)
    {
      sub_100046528(v117, v146 & 1);
      swift_allocObject();
      v120 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v120 = LayoutViewPlaceholder.init(representing:)();
    }

    v121 = v120;
    v119(v178, v190, v191);
    v229 = &protocol witness table for LayoutViewPlaceholder;
    v228 = v113;
    v227 = v171;
    v226 = 0;
    *&v224[40] = 0u;
    v225 = 0u;
    sub_10002C0AC(v232, v224);
    sub_10002C0AC(v231, &v223);
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = 0;
    v217 = 0u;
    v218 = 0u;

    v122 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v216 = &protocol witness table for LayoutViewPlaceholder;
    v215 = v113;
    v214 = v122;
    v213 = 0;
    v211 = 0u;
    v212 = 0u;
    v210 = 0;
    v208 = 0u;
    v209 = 0u;
    v207 = 0;
    v205 = 0u;
    v206 = 0u;
    v204 = 0;
    v203 = 0u;
    *&v202[40] = 0u;
    sub_10002C0AC(v230, v202);
    v200 = v113;
    v201 = &protocol witness table for LayoutViewPlaceholder;
    v198 = &protocol witness table for LayoutViewPlaceholder;
    v199 = v116;
    v197 = v113;
    v196 = v121;
    v123 = v179;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v124 = swift_allocObject();
    v184 = xmmword_1007B0B70;
    *(v124 + 16) = xmmword_1007B0B70;
    v125 = v161;
    *(v124 + 32) = v161;
    v73 = v125;
    v126 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100690838(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
    v127 = v168;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v180 + 8))(v123, v127);
    sub_100007000(v230);
    sub_100007000(v231);
    sub_100007000(v232);
    (*(v187 + 8))(v186, v188);
    (*(v185 + 8))(v190, v191);
    sub_10002B894(v189, &unk_1009912C0);
    v78 = v181;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v128 = swift_allocObject();
    *(v128 + 16) = v184;
    *(v128 + 32) = v73;
    v129 = v73;
    v130 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1000320F0();
    v131 = v170;
    dispatch thunk of AnyDimension.rawValue(in:)();

    (*(v169 + 8))(v78, v131);
    v132 = MixedMediaLockup.alignedRegionArtwork.getter();
    v133 = MixedMediaLockup.alignedRegionVideo.getter();
    v134 = MixedMediaLockup.screenshots.getter();
    if (v134 >> 62)
    {
      v136 = v134;
      v137 = _CocoaArrayWrapper.endIndex.getter();
      v134 = v136;
      v135 = v163;
      if (!v137)
      {
LABEL_61:

        v73 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v135 = v163;
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }
    }

    if ((v134 & 0xC000000000000001) != 0)
    {
      v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_75;
      }

      v73 = *(v134 + 32);
    }

LABEL_62:
    v138 = MixedMediaLockup.trailers.getter();
    if (!(v138 >> 62))
    {
      if (!*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_64;
    }

    v140 = v138;
    v141 = _CocoaArrayWrapper.endIndex.getter();
    v138 = v140;
    if (!v141)
    {
      break;
    }

LABEL_64:
    if ((v138 & 0xC000000000000001) != 0)
    {
      v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_67;
    }

    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v139 = *(v138 + 32);

LABEL_67:

      goto LABEL_70;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v139 = 0;
LABEL_70:
  v142 = [v193 traitCollection];
  v143 = v159;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  sub_1005B6FA0(v132, v133, v73, v139, v142, v195, v143);

  v144 = *(v135 + 8);
  v145 = v192;
  v144(v143, v192);
  return v144(v166, v145);
}

uint64_t sub_10068ABA0()
{
  v1 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  return sub_1000AD1F8();
}

id sub_10068AC60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertsSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10068ADB8(void *a1)
{
  sub_1006906C4();
}

uint64_t (*sub_10068ADF0(uint64_t **a1))()
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
  v2[4] = sub_100686B5C(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10068AE70(uint64_t a1, uint64_t a2)
{
  sub_10068D354(a1, a2);

  return sub_10001F63C(a1);
}

uint64_t (*sub_10068AEB8(uint64_t *a1))()
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
  *(v2 + 32) = sub_100686E84(v2);
  return sub_1000C2700;
}

uint64_t sub_10068AF70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10068B034(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;
  sub_10000827C(*v4);
  return v5;
}

uint64_t sub_10068B08C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

uint64_t sub_10068B14C()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_100690838(&qword_1009912D0, 255, type metadata accessor for SearchTagsRibbonView);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_10068B1F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10068B248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10068B2B4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10068B350(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100005744(0, &qword_100972EB0);
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_10068B50C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_100690838(&qword_1009912A8, a2, type metadata accessor for AdvertsSearchResultContentView);
  result = sub_100690838(&unk_1009912B0, v3, type metadata accessor for AdvertsSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10068B590(unint64_t a1)
{
  v2 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v165 - v3;
  v5 = type metadata accessor for LockupMediaLayout.DisplayType();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v188 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v165 - v8;
  __chkstk_darwin(v10);
  v12 = &v165 - v11;
  v13 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v165 - v14;
  v16 = sub_10002849C(&unk_10096FC10);
  v190 = *(v16 - 8);
  v191 = v16;
  __chkstk_darwin(v16);
  v189 = &v165 - v17;
  v18 = type metadata accessor for SmallSearchLockupLayout();
  v206 = *(v18 - 8);
  v207 = v18;
  __chkstk_darwin(v18);
  v205 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  *&v210 = *(v211 - 1);
  __chkstk_darwin(v211);
  v195 = &v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LabelPlaceholderCompatibility();
  v202 = *(v21 - 8);
  v203 = v21;
  __chkstk_darwin(v21);
  v201 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OfferButtonMetrics();
  v215 = *(v23 - 8);
  v216 = v23;
  __chkstk_darwin(v23);
  v25 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v214 = &v165 - v27;
  v218 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v213 = *(v218 - 8);
  __chkstk_darwin(v218);
  v204 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v220 = &v165 - v30;
  v31 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v31 - 8);
  v194 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v217 = &v165 - v34;
  v35 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v35 - 8);
  v37 = &v165 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PageGrid();
  v199 = *(v38 - 8);
  v200 = v38;
  __chkstk_darwin(v38);
  v212 = &v165 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ScreenshotsDisplayStyle();
  v208 = *(v40 - 8);
  v209 = v40;
  __chkstk_darwin(v40);
  v219 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdvertsSearchResult();
  sub_100690838(&qword_10096FA98, 255, &type metadata accessor for AdvertsSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!v257[0])
  {
    return result;
  }

  v196 = v257[0];
  v43 = AdvertsSearchResult.lockups.getter();
  if (!(v43 >> 62))
  {
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_51:
  }

  v109 = v43;
  v110 = _CocoaArrayWrapper.endIndex.getter();
  v43 = v109;
  if (!v110)
  {
    goto LABEL_51;
  }

LABEL_4:
  v166 = v4;
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v171 = v15;

    MixedMediaLockup.screenshotsDisplayStyle.getter();
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    PageGrid.init(from:breakpointOverrides:)();
    PageGrid.componentMeasuringSize(spanning:)();

    v45 = Lockup.title.getter();
    v177 = v46;
    v178 = v45;
    v47 = Lockup.subtitle.getter();
    v179 = v48;
    v180 = v47;
    v49 = Lockup.searchAdOpportunity.getter();
    v197 = v44;

    if (v49)
    {
      v50 = SearchAdOpportunity.searchAd.getter();

      v51 = v210;
      if (v50)
      {
        v52 = SearchAd.advertisingText.getter();
        v181 = v53;
        v182 = v52;
      }

      else
      {
        v181 = 0;
        v182 = 0;
      }

      v54 = v211;
    }

    else
    {
      v181 = 0;
      v182 = 0;
      v54 = v211;
      v51 = v210;
    }

    v198 = MixedMediaLockup.metadataRibbonItems.getter();
    (*(v51 + 56))(v217, 1, 1, v54);
    v55 = MixedMediaLockup.searchTagRibbonItems.getter();
    v169 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v4 = v257[5];
    if (qword_10096CF70 != -1)
    {
      swift_once();
    }

    v56 = v218;
    v57 = sub_1000056A8(v218, qword_1009CDC00);
    v58 = v213 + 16;
    v183 = *(v213 + 16);
    v183(v220, v57, v56);
    v59 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v170 = v5;
    v186 = a1;
    v167 = v9;
    v168 = v12;
    v192 = v55;
    v184 = v58;
    if ((v59 & 1) == 0)
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v60 = qword_100991028;
      goto LABEL_24;
    }

    if (qword_10096ECB8 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v60 = qword_100991010;
LABEL_24:
      v61 = v216;
      v62 = sub_1000056A8(v216, v60);
      v63 = v215;
      (*(v215 + 16))(v25, v62, v61);
      (*(v63 + 32))(v214, v25, v61);
      v64 = [v4 preferredContentSizeCategory];
      UIContentSizeCategory.isAccessibilityCategory.getter();

      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
      SmallSearchLockupLayout.Metrics.artworkSize.getter();
      v176 = type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      v185 = LayoutViewPlaceholder.init(representing:)();
      v65 = objc_opt_self();
      v174 = v65;
      v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
      v187 = v4;
      v67 = type metadata accessor for Feature();
      v257[3] = v67;
      v68 = sub_100690838(&qword_100972E50, 255, &type metadata accessor for Feature);
      v257[4] = v68;
      v173 = v68;
      v69 = sub_1000056E0(v257);
      v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v71 = *(v67 - 8);
      v72 = *(v71 + 104);
      v175 = v71 + 104;
      v172 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
      isFeatureEnabled(_:)();
      sub_100007000(v257);
      v73 = v201;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v74 = v203;
      v202 = *(v202 + 8);
      (v202)(v73, v203);
      v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v256[3] = v67;
      v256[4] = v68;
      v76 = sub_1000056E0(v256);
      v72(v76, v70, v67);
      isFeatureEnabled(_:)();
      sub_100007000(v256);
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v77 = v202;
      (v202)(v73, v74);
      v78 = [v174 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v255[3] = v67;
      v255[4] = v173;
      v79 = sub_1000056E0(v255);
      v72(v79, v172, v67);
      isFeatureEnabled(_:)();
      sub_100007000(v255);
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v77(v73, v74);
      v80 = v198;
      LODWORD(v203) = sub_1000AE138(0, v198) & (v80 != 0);
      if (v203 == 1)
      {
        v81 = v176;
        v82 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
        v83 = v187;
        v84 = TraitEnvironmentPlaceholder.init(traitCollection:)();
        v85 = v194;
        sub_100031660(v217, v194, &unk_1009912C0);
        v86 = v210;
        v87 = *(v210 + 48);
        v88 = v211;
        v89 = v87(v85, 1, v211);
        v90 = v183;
        if (v89 == 1)
        {
          v91 = v195;
          static MetadataRibbonViewLayout.Metrics.standard.getter();
          if (v87(v85, 1, v88) != 1)
          {
            sub_10002B894(v85, &unk_1009912C0);
          }
        }

        else
        {
          v91 = v195;
          (*(v86 + 32))(v195, v85, v88);
        }

        v95 = v84;
        sub_1000AD91C(v198, v91, v95);

        (*(v86 + 8))(v91, v88);
        v92 = v81;
        swift_allocObject();
        v93 = LayoutViewPlaceholder.init(measurements:)();
        v94 = v187;
      }

      else
      {
        v92 = v176;
        swift_allocObject();
        v93 = LayoutViewPlaceholder.init(representing:)();
        v94 = v187;
        v90 = v183;
      }

      v96 = v192;
      if ((sub_1000AE138(v192, 0) & (v96 != 0)) == 1)
      {
        sub_100046528(v96, v169 & 1);
        swift_allocObject();
        v97 = LayoutViewPlaceholder.init(measurements:)();
      }

      else
      {
        swift_allocObject();
        v97 = LayoutViewPlaceholder.init(representing:)();
      }

      v98 = v97;
      v90(v204, v220, v218);
      v254 = &protocol witness table for LayoutViewPlaceholder;
      v253 = v92;
      v9 = v185;
      v252 = v185;
      v251 = 0;
      *&v249[40] = 0u;
      v250 = 0u;
      sub_10002C0AC(v257, v249);
      sub_10002C0AC(v256, &v248);
      v247 = 0;
      v245 = 0u;
      v246 = 0u;
      v244 = 0;
      v242 = 0u;
      v243 = 0u;

      v99 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
      v241 = &protocol witness table for LayoutViewPlaceholder;
      v240 = v92;
      v239 = v99;
      v238 = 0;
      v236 = 0u;
      v237 = 0u;
      v235 = 0;
      v233 = 0u;
      v234 = 0u;
      v232 = 0;
      v230 = 0u;
      v231 = 0u;
      v229 = 0;
      v228 = 0u;
      *&v227[40] = 0u;
      sub_10002C0AC(v255, v227);
      v226 = &protocol witness table for LayoutViewPlaceholder;
      v225 = v92;
      v223 = &protocol witness table for LayoutViewPlaceholder;
      v224 = v93;
      v222 = v92;
      v221 = v98;
      v100 = v205;
      SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
      v101 = type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210);
      v102 = swift_allocObject();
      v210 = xmmword_1007B0B70;
      *(v102 + 16) = xmmword_1007B0B70;
      *(v102 + 32) = v94;
      v103 = v94;
      v211 = v101;
      v104 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      sub_100690838(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
      v25 = v207;
      dispatch thunk of Measurable.measurements(fitting:in:)();

      (*(v206 + 8))(v100, v25);
      sub_100007000(v255);
      sub_100007000(v256);
      sub_100007000(v257);
      (*(v215 + 8))(v214, v216);
      (*(v213 + 8))(v220, v218);
      sub_10002B894(v217, &unk_1009912C0);
      v105 = MixedMediaLockup.screenshots.getter();
      if (v105 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = MixedMediaLockup.alignedRegionArtwork.getter();
      if (a1)
      {
      }

      v4 = MixedMediaLockup.alignedRegionVideo.getter();
      if (v4)
      {
      }

      v106 = MixedMediaLockup.trailers.getter();
      if (v106 >> 62)
      {
        v111 = v106;
        v112 = _CocoaArrayWrapper.endIndex.getter();
        v106 = v111;
        if (!v112)
        {
LABEL_55:

          v108 = a1 | v37;
          goto LABEL_56;
        }
      }

      else if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      if ((v106 & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_45;
      }

      __break(1u);
LABEL_69:
      swift_once();
    }
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v43 + 32);

    goto LABEL_7;
  }

  __break(1u);
LABEL_66:
  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_45:

  v107 = Trailers.videos.getter();

  if (v107 >> 62)
  {
    v108 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 | v37)
  {
    if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
    {
LABEL_64:

      (*(v199 + 8))(v212, v200);
      return (*(v208 + 8))(v219, v209);
    }
  }

  else
  {
LABEL_56:
    if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0 || !(v108 | v4))
    {
      goto LABEL_64;
    }
  }

  v113 = v189;
  static StandardSearchResultContentViewMetrics.bottomMargin.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v114 = v257[0];
  v115 = swift_allocObject();
  *(v115 + 16) = v210;
  *(v115 + 32) = v114;
  v116 = v114;
  v117 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1000320F0();
  v118 = v191;
  dispatch thunk of AnyDimension.rawValue(in:)();

  (*(v190 + 8))(v113, v118);
  v119 = MixedMediaLockup.alignedRegionArtwork.getter();
  v120 = MixedMediaLockup.alignedRegionVideo.getter();
  v121 = MixedMediaLockup.screenshots.getter();
  if (v121 >> 62)
  {
    v124 = v121;
    v125 = _CocoaArrayWrapper.endIndex.getter();
    v121 = v124;
    v122 = v171;
    if (v125)
    {
      goto LABEL_60;
    }

LABEL_71:

    v123 = 0;
    goto LABEL_72;
  }

  v122 = v171;
  if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

LABEL_60:
  if ((v121 & 0xC000000000000001) != 0)
  {
    v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_107;
    }

    v123 = *(v121 + 32);
  }

LABEL_72:
  v126 = MixedMediaLockup.trailers.getter();
  if (v126 >> 62)
  {
    v130 = v126;
    v127 = _CocoaArrayWrapper.endIndex.getter();
    v126 = v130;
  }

  else
  {
    v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v220 = v119;
  v217 = v120;
  v218 = v123;
  if (v127)
  {
    if ((v126 & 0xC000000000000001) != 0)
    {
      v216 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_109;
      }

      v216 = *(v126 + 32);
    }
  }

  else
  {

    v216 = 0;
  }

  v128 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v120 = v257[0];
  sub_1006C9F8C(v122);

  v9 = MixedMediaLockup.alignedRegionArtwork.getter();
  v119 = MixedMediaLockup.alignedRegionVideo.getter();
  v129 = MixedMediaLockup.screenshots.getter();
  if (v129 >> 62)
  {
    v131 = v129;
    v132 = _CocoaArrayWrapper.endIndex.getter();
    v129 = v131;
    if (v132)
    {
LABEL_82:
      if ((v129 & 0xC000000000000001) == 0)
      {
        if (!*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_111;
        }

        a1 = *(v129 + 32);

        goto LABEL_85;
      }

LABEL_107:
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_85:

      goto LABEL_89;
    }
  }

  else if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  a1 = 0;
LABEL_89:
  v133 = MixedMediaLockup.trailers.getter();
  if (v133 >> 62)
  {
    v135 = v133;
    v136 = _CocoaArrayWrapper.endIndex.getter();
    v133 = v135;
    if (v136)
    {
LABEL_91:
      if ((v133 & 0xC000000000000001) == 0)
      {
        if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v134 = *(v133 + 32);

LABEL_94:

          goto LABEL_97;
        }

LABEL_111:
        __break(1u);
LABEL_112:
        v215 = _CocoaArrayWrapper.endIndex.getter();
        if (a1)
        {
          goto LABEL_101;
        }

LABEL_113:
        v138 = 0;
        goto LABEL_114;
      }

LABEL_109:
      v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_94;
    }
  }

  else if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_91;
  }

  v134 = 0;
LABEL_97:
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    v139 = v193;
    v140 = v168;
    (*(v193 + 104))(v168, enum case for LockupMediaLayout.DisplayType.none(_:), v170);
LABEL_136:
    type metadata accessor for LockupMediaView();
    v162 = sub_100079F24();
    swift_getObjectType();
    v163 = v219;
    v164 = v171;
    sub_1005B8730(v220, v217, v218, v216, v171, v140, v162, v219);

    swift_unknownObjectRelease();

    (*(v139 + 8))(v140, v170);
    sub_10002B894(v164, &unk_1009732A0);
    (*(v199 + 8))(v212, v200);
    return (*(v208 + 8))(v163, v209);
  }

  if (v119 | v9)
  {
    v141 = v167;
    AspectRatio.init(_:_:)();

    v139 = v193;
    v142 = v170;
    (*(v193 + 104))(v141, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v170);
    v140 = v168;
    (*(v139 + 32))(v168, v141, v142);
    goto LABEL_136;
  }

  v137 = sub_1001B9B24(a1, v134, 0, 1);
  v119 = v137;
  v120 = (v137 >> 62);
  if (v137 >> 62)
  {
    goto LABEL_112;
  }

  v215 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a1)
  {
    goto LABEL_113;
  }

LABEL_101:
  v138 = Screenshots.mediaPlatform.getter();
LABEL_114:
  v143 = sub_1001B9E6C(v138);

  LODWORD(v213) = v143;
  if (a1)
  {
    v144 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v144 = 0;
  }

  v146 = v208;
  v145 = v209;
  v147 = v166;
  (*(v208 + 16))(v166, v219, v209);
  (*(v146 + 56))(v147, 0, 1, v145);
  v148 = sub_1001BA394(v144, v147);

  sub_10002B894(v147, &unk_100973C90);
  if (v120)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v149 = v188;
  if (!result)
  {

    goto LABEL_127;
  }

  if ((v119 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_124:

    v150 = dispatch thunk of Artwork.isLandscape.getter();

    if (v150)
    {

      v139 = v193;
      v151 = v167;
      v152 = v170;
      (*(v193 + 104))(v167, enum case for LockupMediaLayout.DisplayType.landscape(_:), v170);
LABEL_135:
      v140 = v168;
      (*(v139 + 32))(v168, v151, v152);
      goto LABEL_136;
    }

LABEL_127:
    v153 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v154 = v193;
    v152 = v170;
    v214 = *(v193 + 104);
    (v214)(v149, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v170);
    v155 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v211 = *(v154 + 8);
    (v211)(v149, v152);
    if (((v215 >= v155) & v148) != 0 || (v153 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v214)(v149, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v152), v156 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v157 = v211, (v211)(v149, v152), ((v215 >= v156) & v213) != 0) || (v153 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v214)(v149, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v152), v158 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v157(v149, v152), v215 >= v158))
    {
    }

    else
    {
      v153 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v214)(v149, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v152);
      v159 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      v157(v149, v152);
      if (v215 != v159)
      {
        v160 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v151 = v167;
        v161 = v167;
LABEL_134:
        (v214)(v161, v160, v152);
        v139 = v193;
        goto LABEL_135;
      }
    }

    v151 = v167;
    v161 = v167;
    v160 = v153;
    goto LABEL_134;
  }

  if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_124;
  }

  __break(1u);
  return result;
}

id sub_10068D354(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_10000827C(a1);
  sub_10001F63C(v6);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
  v8 = *(v7 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton);
  if (v8)
  {
    [v8 addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return [*(v7 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
}

void sub_10068D430()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  v3 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView();
    sub_100690838(&qword_100973D78, 255, type metadata accessor for BorderedScreenshotView);
    v9 = v8;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
    sub_10003D614(v29);
    v10 = *&v9[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    type metadata accessor for VideoView();
    sub_100690838(&qword_100992450, 255, type metadata accessor for VideoView);
    v14 = v13;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    sub_10003D614(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
  v16 = *(v15 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v17 = *&v16[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v18 = *(v17 + 16);
  if (v18)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v16;

    v19 = 32;
    do
    {
      v20 = *(v17 + v19);
      if (swift_dynamicCastClass())
      {
        v21 = v20;
        v31.value.super.isa = 0;
        v31.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v31, v22);
        type metadata accessor for ArtworkView();
        sub_100690838(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
      }

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v23 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v24 = *(v15 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v32, v25);

  v26 = *(v15 + v23);
  type metadata accessor for ArtworkView();
  sub_100690838(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
  v27 = v26;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10068D860(void (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v249 = a2;
  v342 = type metadata accessor for AppPlatform();
  v3 = *(v342 - 8);
  __chkstk_darwin(v342);
  v296 = &v239 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v314 = &v239 - v6;
  __chkstk_darwin(v7);
  v313 = &v239 - v8;
  __chkstk_darwin(v9);
  v312 = &v239 - v10;
  v317 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v317);
  v316 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v12 - 8);
  v251 = &v239 - v13;
  v318 = type metadata accessor for AspectRatio();
  v351 = *(v318 - 8);
  __chkstk_darwin(v318);
  v277 = &v239 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v278 = (&v239 - v16);
  v275 = type metadata accessor for LockupMediaLayout.Metrics();
  v350 = *(v275 - 8);
  __chkstk_darwin(v275);
  v315 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v18 - 8);
  v276 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v332 = &v239 - v21;
  v336 = type metadata accessor for LockupMediaLayout.DisplayType();
  v22 = *(v336 - 8);
  __chkstk_darwin(v336);
  v339 = (&v239 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v257 = &v239 - v25;
  __chkstk_darwin(v26);
  v306 = &v239 - v27;
  __chkstk_darwin(v28);
  v258 = &v239 - v29;
  __chkstk_darwin(v30);
  v344 = &v239 - v31;
  v285 = sub_10002849C(&unk_10096FC10);
  v349 = *(v285 - 8);
  __chkstk_darwin(v285);
  v284 = &v239 - v32;
  v283 = type metadata accessor for SmallSearchLockupLayout();
  v348 = *(v283 - 8);
  __chkstk_darwin(v283);
  v282 = &v239 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v34 = *(v298 - 8);
  __chkstk_darwin(v298);
  v260 = &v239 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = type metadata accessor for LabelPlaceholderCompatibility();
  v347 = *(v309 - 8);
  __chkstk_darwin(v309);
  v281 = &v239 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = type metadata accessor for OfferButtonMetrics();
  v37 = *(v308 - 8);
  __chkstk_darwin(v308);
  v280 = &v239 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v307 = &v239 - v40;
  v333 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v41 = *(v333 - 8);
  __chkstk_darwin(v333);
  v279 = &v239 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v341 = &v239 - v44;
  v45 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v45 - 8);
  v259 = &v239 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v319 = &v239 - v48;
  v291 = type metadata accessor for ScreenshotsDisplayStyle();
  v49 = *(v291 - 8);
  __chkstk_darwin(v291);
  v297 = &v239 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v51 - 8);
  v52 = type metadata accessor for PageGrid();
  v247 = *(v52 - 8);
  v248 = v52;
  __chkstk_darwin(v52);
  v252 = &v239 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdvertsSearchResult();
  sub_100690838(&qword_10096FA98, 255, &type metadata accessor for AdvertsSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!v389[0])
  {
    return result;
  }

  v346 = v3;
  v250 = v389[0];
  v393 = _swiftEmptyArrayStorage;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    goto LABEL_210;
  }

LABEL_3:

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.columnWidth.getter();
  v56 = v55;
  v345 = a1;
  sub_10068B590(a1);
  v58 = v57;
  v59 = AdvertsSearchResult.lockups.getter();
  v60 = v59;
  if (!(v59 >> 62))
  {
    v286 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v286)
    {
      goto LABEL_212;
    }

    goto LABEL_5;
  }

  v286 = _CocoaArrayWrapper.endIndex.getter();
  if (v286)
  {
LABEL_5:
    v303 = (v41 + 2);
    v273 = (v37 + 16);
    v274 = (v34 + 56);
    v272 = (v37 + 32);
    v271 = UIFontTextStyleBody;
    v270 = (v347 + 8);
    v302 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v246 = (v34 + 32);
    v254 = (v34 + 8);
    v255 = (v34 + 48);
    v268 = (v348 + 1);
    v269 = UIFontTextStyleFootnote;
    v266 = (v41 + 1);
    v267 = (v37 + 8);
    v265 = v349 + 1;
    v256 = enum case for LockupMediaLayout.DisplayType.none(_:);
    v289 = (v22 + 104);
    v253 = (v22 + 32);
    v244 = (v49 + 56);
    v245 = (v49 + 16);
    v340 = (v22 + 8);
    v338 = (v22 + 16);
    v262 = (v351 + 8);
    v263 = (v351 + 56);
    v261 = (v350 + 8);
    v327 = (v22 + 88);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v293 = bottom;
    v301 = xmmword_1007B0B70;
    v348 = (v346 + 88);
    v328 = (v346 + 8);
    v331 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    a1 = (v49 + 8);
    v49 = 0;
    v290 = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v243 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v241 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
    v240 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
    LODWORD(v347) = enum case for AppPlatform.watch(_:);
    v334 = v60 & 0xC000000000000001;
    v287 = v60 + 32;
    v288 = v60 & 0xFFFFFFFFFFFFFF8;
    v22 = v297;
    v34 = v298;
    v62 = v291;
    v311 = v56;
    v310 = v58;
    v305 = v60;
    v37 = v286;
    v264 = a1;
    v242 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    while (1)
    {
      if (v334)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v49 >= *(v288 + 16))
        {
          goto LABEL_203;
        }

        v41 = *(v287 + 8 * v49);

        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          swift_once();
          goto LABEL_3;
        }
      }

      v64 = Lockup.icon.getter();
      v352 = v41;
      if (v64)
      {
        if (qword_10096EE80 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for SmallLockupLayout.Metrics();
        sub_1000056A8(v65, qword_1009D3798);
        SmallLockupLayout.Metrics.artworkSize.getter();
        Artwork.config(_:mode:prefersLayeredImage:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v393 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v393 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a1 = v264;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v66 = MixedMediaLockup.metadataRibbonItems.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v67 = v389[0];
      v68 = sub_10032AAE8(v66, v389[0]);

      v69 = v68;
      v41 = v352;
      sub_100394974(v69);
      MixedMediaLockup.screenshotsDisplayStyle.getter();
      v70 = MixedMediaLockup.screenshots.getter();
      if (v70 >> 62)
      {
        v136 = _CocoaArrayWrapper.endIndex.getter();

        if (!v136)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v71)
        {
          goto LABEL_6;
        }
      }

      if (ScreenshotsDisplayStyle.shouldShowScreenshots.getter())
      {
        v72 = v34;
        v73 = Lockup.title.getter();
        v75 = v74;
        v76 = Lockup.subtitle.getter();
        v78 = v77;
        v79 = Lockup.searchAdOpportunity.getter();

        v330 = v76;
        v329 = v78;
        v326 = v75;
        v323 = v73;
        if (v79 && (v80 = SearchAdOpportunity.searchAd.getter(), , v80))
        {
          v337 = SearchAd.advertisingText.getter();
          v335 = v81;
        }

        else
        {
          v337 = 0;
          v335 = 0;
        }

        v351 = MixedMediaLockup.metadataRibbonItems.getter();
        v350 = MixedMediaLockup.searchTagRibbonItems.getter();
        v321 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v82 = v392;
        (*v274)(v319, 1, 1, v72);
        if (qword_10096CF70 != -1)
        {
          swift_once();
        }

        v83 = v333;
        v84 = sub_1000056A8(v333, qword_1009CDC00);
        v343 = *v303;
        (v343)(v341, v84, v83);
        v85 = UITraitCollection.prefersAccessibilityLayouts.getter();
        v300 = v49;
        if (v85)
        {
          v86 = qword_100991010;
          if (qword_10096ECB8 != -1)
          {
            swift_once();
            v86 = qword_100991010;
          }
        }

        else
        {
          v86 = qword_100991028;
          if (qword_10096ECC0 != -1)
          {
            swift_once();
            v86 = qword_100991028;
          }
        }

        v87 = v308;
        v88 = sub_1000056A8(v308, v86);
        v89 = v280;
        (*v273)(v280, v88, v87);
        (*v272)(v307, v89, v87);
        v90 = [v82 preferredContentSizeCategory];
        UIContentSizeCategory.isAccessibilityCategory.getter();

        OfferButtonMetrics.minimumSize.getter();
        OfferButtonMetrics.estimatedHeight.getter();
        SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
        SmallSearchLockupLayout.Metrics.artworkSize.getter();
        v325 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v346 = LayoutViewPlaceholder.init(representing:)();
        v91 = objc_opt_self();
        v324 = v82;
        v92 = v91;
        v322 = v91;
        v93 = [v91 preferredFontForTextStyle:v271];
        v94 = type metadata accessor for Feature();
        v390 = v94;
        v349 = sub_100690838(&qword_100972E50, 255, &type metadata accessor for Feature);
        v391 = v349;
        v95 = sub_1000056E0(v389);
        v96 = *(*(v94 - 8) + 104);
        v97 = v302;
        v96(v95, v302, v94);
        isFeatureEnabled(_:)();
        sub_100007000(v389);
        v98 = v281;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        v326 = *v270;
        v326(v98, v309);
        v99 = v269;
        v100 = [v92 preferredFontForTextStyle:v269];
        v388[3] = v94;
        v388[4] = v349;
        v101 = sub_1000056E0(v388);
        v96(v101, v97, v94);
        isFeatureEnabled(_:)();
        sub_100007000(v388);
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        v102 = v309;
        v103 = v326;
        v326(v98, v309);
        v104 = [v322 preferredFontForTextStyle:v99];
        v387[3] = v94;
        v387[4] = v349;
        v105 = sub_1000056E0(v387);
        v96(v105, v302, v94);
        isFeatureEnabled(_:)();
        sub_100007000(v387);
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        v103(v98, v102);
        v106 = v351;
        LODWORD(v349) = sub_1000AE138(0, v351) & (v106 != 0);
        if (v349 == 1)
        {
          v107 = v325;
          v108 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
          v109 = v324;
          v110 = v324;
          v111 = TraitEnvironmentPlaceholder.init(traitCollection:)();
          v112 = v259;
          sub_100031660(v319, v259, &unk_1009912C0);
          v113 = *v255;
          v114 = v298;
          if ((*v255)(v112, 1, v298) == 1)
          {
            v115 = v260;
            static MetadataRibbonViewLayout.Metrics.standard.getter();
            if (v113(v112, 1, v114) != 1)
            {
              sub_10002B894(v112, &unk_1009912C0);
            }
          }

          else
          {
            v115 = v260;
            (*v246)(v260, v112, v114);
          }

          v118 = v111;
          sub_1000AD91C(v351, v115, v118);

          (*v254)(v115, v114);
          v116 = v107;
          swift_allocObject();
          v117 = LayoutViewPlaceholder.init(measurements:)();
        }

        else
        {
          v116 = v325;
          swift_allocObject();
          v117 = LayoutViewPlaceholder.init(representing:)();
          v109 = v324;
        }

        v34 = v117;

        v119 = v350;
        if ((sub_1000AE138(v350, 0) & (v119 != 0)) == 1)
        {
          sub_100046528(v119, v321 & 1);
          swift_allocObject();
          v120 = LayoutViewPlaceholder.init(measurements:)();
        }

        else
        {
          swift_allocObject();
          v120 = LayoutViewPlaceholder.init(representing:)();
        }

        v121 = v120;
        (v343)(v279, v341, v333);
        v386 = &protocol witness table for LayoutViewPlaceholder;
        v385 = v116;
        v384 = v346;
        v383 = 0;
        *&v381[40] = 0u;
        v382 = 0u;
        sub_10002C0AC(v389, v381);
        sub_10002C0AC(v388, &v380);
        v379 = 0;
        v377 = 0u;
        v378 = 0u;
        v376 = 0;
        v374 = 0u;
        v375 = 0u;

        v122 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
        v373 = &protocol witness table for LayoutViewPlaceholder;
        v372 = v116;
        v371 = v122;
        v370 = 0;
        v368 = 0u;
        v369 = 0u;
        v367 = 0;
        v365 = 0u;
        v366 = 0u;
        v364 = 0;
        v362 = 0u;
        v363 = 0u;
        v361 = 0;
        v360 = 0u;
        *&v359[40] = 0u;
        sub_10002C0AC(v387, v359);
        v358 = &protocol witness table for LayoutViewPlaceholder;
        v357 = v116;
        v356 = v34;
        v355 = &protocol witness table for LayoutViewPlaceholder;
        v354 = v116;
        v353 = v121;
        v123 = v282;
        SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
        v349 = type metadata accessor for TraitEnvironmentPlaceholder();
        sub_10002849C(&qword_100973210);
        v124 = swift_allocObject();
        *(v124 + 16) = v301;
        *(v124 + 32) = v109;
        v125 = v109;
        v126 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
        sub_100690838(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
        v127 = v283;
        dispatch thunk of Measurable.measurements(fitting:in:)();

        (*v268)(v123, v127);
        sub_100007000(v387);
        sub_100007000(v388);
        sub_100007000(v389);
        (*v267)(v307, v308);
        (*v266)(v341, v333);
        sub_10002B894(v319, &unk_1009912C0);
        v128 = v284;
        static StandardSearchResultContentViewMetrics.bottomMargin.getter();
        v129 = swift_allocObject();
        *(v129 + 16) = v301;
        *(v129 + 32) = v125;
        v130 = v125;
        v131 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
        sub_1000320F0();
        v49 = v285;
        dispatch thunk of AnyDimension.rawValue(in:)();

        (*v265)(v128, v49);
        v41 = MixedMediaLockup.alignedRegionArtwork.getter();
        v343 = MixedMediaLockup.alignedRegionVideo.getter();
        v132 = MixedMediaLockup.screenshots.getter();
        if (v132 >> 62)
        {
          v137 = v132;
          v133 = _CocoaArrayWrapper.endIndex.getter();
          v132 = v137;
        }

        else
        {
          v133 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = v336;
        a1 = v339;
        v134 = v344;
        v22 = v297;
        if (v133)
        {
          if ((v132 & 0xC000000000000001) != 0)
          {
            v349 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_205;
            }

            v349 = *(v132 + 32);
          }
        }

        else
        {

          v349 = 0;
        }

        v135 = MixedMediaLockup.trailers.getter();
        if (v135 >> 62)
        {
          v138 = v135;
          v139 = _CocoaArrayWrapper.endIndex.getter();
          v135 = v138;
          if (!v139)
          {
            goto LABEL_62;
          }

LABEL_54:
          if ((v135 & 0xC000000000000001) != 0)
          {
            v350 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_206;
            }

            v350 = *(v135 + 32);
          }
        }

        else
        {
          if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

LABEL_62:

          v350 = 0;
        }

        v140 = MixedMediaLockup.alignedRegionArtwork.getter();
        v34 = MixedMediaLockup.alignedRegionVideo.getter();
        v141 = MixedMediaLockup.screenshots.getter();
        if (v141 >> 62)
        {
          v143 = v141;
          v144 = _CocoaArrayWrapper.endIndex.getter();
          v141 = v143;
          v335 = v41;
          if (!v144)
          {
            goto LABEL_70;
          }

LABEL_65:
          if ((v141 & 0xC000000000000001) != 0)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_207;
            }

            v41 = *(v141 + 32);
          }
        }

        else
        {
          v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v335 = v41;
          if (v142)
          {
            goto LABEL_65;
          }

LABEL_70:

          v41 = 0;
        }

        v145 = MixedMediaLockup.trailers.getter();
        if (v145 >> 62)
        {
          v147 = v145;
          v148 = _CocoaArrayWrapper.endIndex.getter();
          v145 = v147;
          if (!v148)
          {
            goto LABEL_78;
          }

LABEL_73:
          if ((v145 & 0xC000000000000001) != 0)
          {
            v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_208;
            }

            v146 = *(v145 + 32);
          }
        }

        else
        {
          if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

LABEL_78:

          v146 = 0;
        }

        if (ScreenshotsDisplayStyle.shouldShowScreenshots.getter())
        {
          if (!(v34 | v140))
          {
            v149 = sub_1001B9B24(v41, v146, 0, 1);
            v150 = v149;
            v151 = v149 >> 62;
            if (v149 >> 62)
            {
              v351 = _CocoaArrayWrapper.endIndex.getter();
              if (!v41)
              {
                goto LABEL_92;
              }

LABEL_83:
              v152 = Screenshots.mediaPlatform.getter();
            }

            else
            {
              v351 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v41)
              {
                goto LABEL_83;
              }

LABEL_92:
              v152 = 0;
            }

            v154 = sub_1001B9E6C(v152);

            if (v41)
            {
              v155 = Screenshots.mediaPlatform.getter();
            }

            else
            {
              v155 = 0;
            }

            v156 = v251;
            v157 = v291;
            (*v245)(v251, v22, v291);
            (*v244)(v156, 0, 1, v157);
            v158 = sub_1001BA394(v155, v156);

            sub_10002B894(v156, &unk_100973C90);
            if (v151)
            {
              result = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              result = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v37 = v336;
            v34 = v257;
            a1 = v339;
            if (result)
            {
              if ((v150 & 0xC000000000000001) == 0)
              {
                if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {

                  goto LABEL_103;
                }

                __break(1u);
LABEL_216:
                __break(1u);
                return result;
              }

              specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_103:

              v159 = dispatch thunk of Artwork.isLandscape.getter();

              v34 = v257;
              if (v159)
              {

                v160 = v258;
                (*v289)(v258, v290, v37);
                v41 = v278;
                v22 = v297;
                goto LABEL_116;
              }
            }

            else
            {
            }

            LODWORD(v337) = v154;
            v161 = v243;
            v346 = *v289;
            (v346)(v34, v243, v37);
            v162 = LockupMediaLayout.DisplayType.numberOfViews.getter();
            v163 = *v340;
            (*v340)(v34, v37);
            if (((v351 >= v162) & v158) != 0)
            {

              v160 = v258;
              (v346)(v258, v161, v37);
              v41 = v278;
              a1 = v339;
              v22 = v297;
              goto LABEL_116;
            }

            (v346)(v34, v242, v37);
            v164 = LockupMediaLayout.DisplayType.numberOfViews.getter();
            v165 = v163;
            v163(v34, v37);
            v22 = v297;
            if (((v351 >= v164) & v337) == 0)
            {
              v168 = v241;
              (v346)(v34, v241, v37);
              v169 = LockupMediaLayout.DisplayType.numberOfViews.getter();
              v165(v34, v37);
              if (v351 >= v169)
              {
              }

              else
              {
                v168 = v240;
                (v346)(v34, v240, v37);
                v170 = LockupMediaLayout.DisplayType.numberOfViews.getter();

                v165(v34, v37);
                if (v351 != v170)
                {
                  v160 = v258;
                  v166 = v258;
                  v167 = v256;
                  goto LABEL_115;
                }
              }

              v160 = v258;
              v166 = v258;
              v167 = v168;
              goto LABEL_115;
            }

            v160 = v258;
            v166 = v258;
            v167 = v242;
LABEL_115:
            (v346)(v166, v167, v37);
            v41 = v278;
            a1 = v339;
LABEL_116:
            v49 = v300;
            v134 = v344;
            (*v253)(v344, v160, v37);
LABEL_117:
            v171 = sub_100079F24();
            (*v263)(v332, 1, 1, v318);
            v299 = v171;
            v304 = [v171 traitCollection];
            v391 = &protocol witness table for CGFloat;
            v390 = &type metadata for CGFloat;
            v389[0] = 0x4021000000000000;
            sub_10002C0AC(v389, v388);
            v337 = *v338;
            v337(v306, v134, v37);
            if (v343 | v335)
            {
              goto LABEL_127;
            }

            v172 = sub_1001B9B24(v349, v350, 0, 1);
            if (v172 >> 62)
            {
              v173 = v172;
              v174 = _CocoaArrayWrapper.endIndex.getter();
              v172 = v173;
              if (!v174)
              {
                goto LABEL_126;
              }

LABEL_120:
              if ((v172 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_209;
                }
              }

              Artwork.size.getter();
              AspectRatio.init(_:_:)();
            }

            else
            {
              if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_120;
              }

LABEL_126:

LABEL_127:
              AspectRatio.init(_:_:)();
            }

            sub_100031660(v332, v276, &unk_1009732A0);
            LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
            sub_100007000(v389);
            v175 = v277;
            LockupMediaLayout.Metrics.mediaAspectRatio.getter();
            AspectRatio.height(fromWidth:)();
            (*v262)(v175, v318);
            if (v343)
            {

              Video.preview.getter();
              v176 = Artwork.config(_:mode:prefersLayeredImage:)();
              v41 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
              v178 = *(v41 + 2);
              v177 = *(v41 + 3);
              if (v178 >= v177 >> 1)
              {
                v41 = sub_100033938((v177 > 1), v178 + 1, 1, v41);
              }

              (*v261)(v315, v275);
              sub_10002B894(v332, &unk_1009732A0);
              *(v41 + 2) = v178 + 1;
              v179 = &v41[2 * v178];
              *(v179 + 4) = v176;
              *(v179 + 40) = 0;
LABEL_132:
              v180 = v340;
              v181 = *(v41 + 2);
              if (v181)
              {
LABEL_133:
                v389[0] = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v182 = 32;
                do
                {

                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v182 += 16;
                  --v181;
                }

                while (v181);
                swift_unknownObjectRelease();

                (*v340)(v344, v37);
                v183 = v389[0];
                goto LABEL_141;
              }

LABEL_140:
              swift_unknownObjectRelease();

              (*v180)(v134, v37);
              v183 = _swiftEmptyArrayStorage;
LABEL_141:
              sub_100394974(v183);
              v34 = v298;
              v62 = v291;
              v37 = v286;
              a1 = v264;
              v41 = v352;
              goto LABEL_7;
            }

            if (v335)
            {
              v184 = v49;

              v185 = Artwork.config(_:mode:prefersLayeredImage:)();
              v186 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
              v188 = *(v186 + 2);
              v187 = *(v186 + 3);
              if (v188 >= v187 >> 1)
              {
                v186 = sub_100033938((v187 > 1), v188 + 1, 1, v186);
              }

              v180 = v340;

              (*v261)(v315, v275);
              sub_10002B894(v332, &unk_1009732A0);
              *(v186 + 2) = v188 + 1;
              v189 = &v186[2 * v188];
              *(v189 + 4) = v185;
              *(v189 + 40) = 0;
              v49 = v184;
              v181 = *(v186 + 2);
              if (v181)
              {
                goto LABEL_133;
              }

              goto LABEL_140;
            }

            v190 = LockupMediaLayout.DisplayType.numberOfViews.getter();
            v191 = sub_1001B9B24(v349, v350, v190, 0);
            static LockupMediaLayout.mediaSize(using:fitting:with:)();
            v330 = v192;
            v329 = v193;
            if (!(v191 >> 62))
            {
              result = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (result)
              {
                goto LABEL_144;
              }

              goto LABEL_200;
            }

            result = _CocoaArrayWrapper.endIndex.getter();
            if (!result)
            {
LABEL_200:

              (*v261)(v315, v275);
              sub_10002B894(v332, &unk_1009732A0);
              v41 = _swiftEmptyArrayStorage;
              goto LABEL_132;
            }

LABEL_144:
            if (result < 1)
            {
              goto LABEL_216;
            }

            v49 = 0;
            v326 = (v191 & 0xC000000000000001);
            v41 = _swiftEmptyArrayStorage;
            v325 = v191;
            v324 = result;
            while (2)
            {
              if (v326)
              {
                v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v22 = *(v191 + 8 * v49 + 32);
              }

              v337(a1, v134, v37);
              v194 = (*v327)(a1, v37);
              if (v194 == v331)
              {
                (*v340)(a1, v37);
                LODWORD(v346) = 0;
                v195 = v349;
              }

              else
              {
                v195 = v349;
                if (v194 == v290)
                {
                  LODWORD(v346) = 0;
                }

                else
                {
                  v196 = dispatch thunk of Artwork.isLandscape.getter();
                  (*v340)(a1, v37);
                  LODWORD(v346) = v196;
                }
              }

              v351 = v22;
              if (v350)
              {
                v197 = Trailers.videos.getter();
                if (!(v197 >> 62))
                {
                  if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_157;
                  }

LABEL_185:

                  if (!v195)
                  {
LABEL_186:
                    if (qword_10096EB60 != -1)
                    {
                      swift_once();
                    }

                    v221 = qword_10098F588;
                    v229 = 0;
                    v228 = 0;
                    v205 = 5.0;
                    v231 = 1;
                    v204 = 1.0;
                    v224 = left;
                    v225 = top;
                    v227 = right;
                    v226 = v293;
                    v232 = 1;
LABEL_189:
                    v235 = v316;
                    AspectRatio.init(_:_:)();

                    *v235 = v205;
                    *(v235 + 8) = v228;
                    *(v235 + 16) = v232 & 1;
                    *(v235 + 24) = v229;
                    *(v235 + 32) = v231 & 1;
                    *(v235 + 40) = v204;
                    *(v235 + 48) = v221;
                    *(v235 + 56) = v225;
                    *(v235 + 64) = v224;
                    *(v235 + 72) = v226;
                    *(v235 + 80) = v227;
                    CGSize.subtracting(insets:)();
                    v199 = Artwork.config(_:mode:prefersLayeredImage:)();
                    sub_1001BABC8(v235);
                    v37 = v336;
                    a1 = v339;
LABEL_190:

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v41 = sub_100033938(0, *(v41 + 2) + 1, 1, v41);
                    }

                    v134 = v344;
                    v34 = *(v41 + 2);
                    v236 = *(v41 + 3);
                    if (v34 >= v236 >> 1)
                    {
                      v41 = sub_100033938((v236 > 1), v34 + 1, 1, v41);
                    }

                    ++v49;

                    *(v41 + 2) = v34 + 1;
                    v237 = &v41[2 * v34];
                    *(v237 + 4) = v199;
                    *(v237 + 40) = v346 & 1;
                    v191 = v325;
                    if (v324 == v49)
                    {

                      (*v261)(v315, v275);
                      sub_10002B894(v332, &unk_1009732A0);
                      v22 = v297;
                      v49 = v300;
                      goto LABEL_132;
                    }

                    continue;
                  }

LABEL_164:
                  Screenshots.mediaPlatform.getter();

                  v200 = v312;
                  MediaPlatform.appPlatform.getter();

                  v201 = *v348;
                  v202 = v342;
                  v203 = (*v348)(v200, v342);
                  v204 = 0.0;
                  v205 = 0.0;
                  if (v203 != v347)
                  {
                    (*v328)(v312, v202);
                    v205 = 5.0;
                  }

                  v323 = MediaPlatform.deviceCornerRadiusFactor.getter();
                  v320 = v206;
                  v207 = MediaPlatform.deviceBorderThickness.getter();
                  v209 = v208;

                  v210 = v313;
                  MediaPlatform.appPlatform.getter();
                  v211 = v342;

                  v212 = v201(v210, v211);
                  if (v212 != v347)
                  {
                    (*v328)(v313, v211);
                    v204 = 1.0;
                  }

                  v213 = v314;
                  MediaPlatform.appPlatform.getter();
                  v214 = v342;
                  v215 = v201(v213, v342);
                  v322 = v207;
                  v321 = v209;
                  if (v215 == v347)
                  {
                    if (qword_10096EB58 != -1)
                    {
                      swift_once();
                    }

                    v216 = qword_10098F580;
                  }

                  else
                  {
                    if (qword_10096EB60 != -1)
                    {
                      swift_once();
                    }

                    v216 = qword_10098F588;

                    (*v328)(v314, v214);
                  }

                  v217 = v296;
                  MediaPlatform.appPlatform.getter();
                  v218 = v201(v217, v214);
                  if (v218 == v347)
                  {
                    v219 = MediaPlatform.deviceBorderThickness.getter();
                    if (v220)
                    {
                      v221 = v216;
                      if (qword_10096EB48 != -1)
                      {
                        swift_once();
                      }

                      sub_1000056A8(v318, qword_1009D2FD0);
                      AspectRatio.verticalFraction.getter();
                      v223 = v222;

                      v224 = 15.0;
                      v225 = v223 * 15.0;
                      v226 = v223 * 15.0;
                      v227 = 15.0;
                      v228 = v323;
                      v229 = v322;
                      goto LABEL_183;
                    }

                    v230 = *&v219;

                    v225 = v230;
                    v224 = v230;
                    v226 = v230;
                    v227 = v230;
                  }

                  else
                  {

                    (*v328)(v217, v214);
                    v224 = left;
                    v225 = top;
                    v227 = right;
                    v226 = v293;
                  }

                  v228 = v323;
                  v229 = v322;
                  v221 = v216;
LABEL_183:
                  v231 = v321;
                  v232 = v320;
                  goto LABEL_189;
                }

                v233 = v197;
                v234 = _CocoaArrayWrapper.endIndex.getter();
                v197 = v233;
                if (!v234)
                {
                  goto LABEL_185;
                }

LABEL_157:
                if ((v197 & 0xC000000000000001) != 0)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_204;
                  }
                }

                type metadata accessor for Artwork();
                Video.preview.getter();
                v198 = static Artwork.== infix(_:_:)();

                if (v198)
                {
                  v199 = Artwork.config(_:mode:prefersLayeredImage:)();

                  goto LABEL_190;
                }

                v195 = v349;
              }

              break;
            }

            if (!v195)
            {
              goto LABEL_186;
            }

            goto LABEL_164;
          }

          v153 = v258;
          AspectRatio.init(_:_:)();

          (*v289)(v153, v331, v37);
          (*v253)(v134, v153, v37);
        }

        else
        {

          (*v289)(v134, v256, v37);
        }

        v41 = v278;
        v49 = v300;
        goto LABEL_117;
      }

LABEL_6:

LABEL_7:

      (*a1)(v22, v62);
      if (v49 == v37)
      {

        v238 = v393;
        goto LABEL_213;
      }
    }
  }

LABEL_212:

  v238 = _swiftEmptyArrayStorage;
LABEL_213:
  ArtworkLoader.prefetchArtwork(using:)(v238);

  return (*(v247 + 8))(v252, v248);
}

id sub_1006906C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100690838(&qword_100973190, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_100005744(0, &qword_100972EB0);
    v6 = v1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_1001B8790();

  return [v1 setNeedsLayout];
}

uint64_t sub_100690838(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100690880()
{
  v1 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  v3 = (v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100690AC0()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v11;
    v13 = v9;
    v14 = v7;
    v15 = v5;
  }

  else
  {
    [v0 bounds];
  }

  CGRectGetWidth(*&v15);
  [v1 bounds];
  CGRectGetWidth(v26);
  [v1 bounds];
  CGRectGetWidth(v27);
  [v1 bounds];
  CGRectGetHeight(v28);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContext];
  CustomLayoutView.sizeThatFits(_:)();
  v18 = v17;
  v20 = v19;
  [v1 bounds];
  v22 = (v21 - v18) * 0.5;
  [v1 safeAreaInsets];

  return [v16 setFrame:{v22, v23 + 16.0, v18, v20}];
}

char *sub_100690D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UIContentUnavailableConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContext;
  v43 = v8;
  if (qword_10096E860 != -1)
  {
    v38 = v12;
    swift_once();
    v12 = v38;
    v8 = v43;
  }

  v16 = sub_1000056A8(v12, qword_1009D28C0);
  sub_1001C0900(v16, v14);
  v17 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v4[v15] = sub_10051F6F0(v14);
  *&v4[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_navigationBarMargins] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContextTopPadding] = 0x4030000000000000;
  sub_100005744(0, &qword_10097C140);
  v18 = *(v8 + 16);
  v41 = v7;
  v42 = a1;
  v18(v10, a1, v7);
  *&v4[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_emptyReason] = UIContentUnavailableView.init(configuration:)();
  v45.receiver = v4;
  v45.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContext;
  v21 = *&v19[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContext];
  v22 = v19;
  v23 = v21;
  v24 = SearchResultsContextCard.message.getter();
  v25 = SearchResultsContextCard.action.getter();
  if (v25)
  {
    v26 = v25;

    v27 = Action.title.getter();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v28)
    {
      v30 = v28;
    }

    v39[1] = v30;
    v39[2] = v29;
    v31 = Action.artwork.getter();
    v40 = v20;
    if (v31)
    {
      v32 = v31;
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        static SystemImage.load(artwork:with:includePrivateImages:)();
      }

      else if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        sub_100330100(v32, 0);
      }
    }

    sub_100005744(0, &qword_10097CD40);
    v34 = swift_allocObject();
    *(v34 + 16) = v44;
    *(v34 + 24) = v26;
    v33 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v20 = v40;
  }

  else
  {
    v33 = 0;
  }

  sub_10051E714(v24, v33);

  v35 = *&v22[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_emptyReason];
  v36 = v22;
  [v36 addSubview:v35];
  [v36 addSubview:*&v19[v20]];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v43 + 8))(v42, v41);
  return v36;
}

void sub_1006912A8(void *a1)
{
  v2 = v1;
  sub_1005F3D78(0);
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  v5 = &selRef_loadView;
  if (v4)
  {
    v6 = v4;
    [a1 finalFrameForViewController:v4];
  }

  else
  {
    v6 = [a1 containerView];
    [v6 bounds];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v114.origin.x = v11;
  v114.origin.y = v12;
  v114.size.width = v13;
  v114.size.height = v14;
  MidX = CGRectGetMidX(v114);
  v115.origin.x = v11;
  v115.origin.y = v12;
  v115.size.width = v13;
  v115.size.height = v14;
  MidY = CGRectGetMidY(v115);
  v116.origin.x = v11;
  v116.origin.y = v12;
  v116.size.width = v13;
  v116.size.height = v14;
  v104 = CGRectGetMidX(v116);
  v117.origin.x = v11;
  v117.origin.y = v12;
  v117.size.width = v13;
  v117.size.height = v14;
  v102 = CGRectGetMidY(v117);
  v15 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCollectionViewController];
  v16 = 0.0;
  if (v15)
  {
    v17 = [*&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCollectionViewController] view];
    v18 = 0.0;
    if (v17)
    {
      v19 = v17;
      [v17 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [a1 containerView];
      [v19 convertRect:v28 toCoordinateSpace:{v21, v23, v25, v27}];
      v16 = v29;
      v18 = v30;

      MidY = MidY - v18;
      MidX = MidX - v16;
    }
  }

  else
  {
    v18 = 0.0;
  }

  v31 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCardView];
  v32 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter];
  v33 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter + 8];
  v34 = v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter + 16];
  if (v31 && (v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter + 16] & 1) == 0)
  {
    if (v15)
    {
      v35 = v31;
      v36 = v15;
      v37 = [v36 view];
      if (!v37)
      {
        __break(1u);
        return;
      }

      v38 = v37;
      [v37 addSubview:v35];

      v5 = &selRef_loadView;
    }

    else
    {
      v39 = v31;
      v38 = [a1 containerView];
      [v38 addSubview:v39];
    }

    [v31 setCenter:{v32, v33}];
  }

  v40 = [a1 viewForKey:{UITransitionContextToViewKey, *&v102}];
  v41 = v40;
  if (!v15)
  {
    v44 = 0.25;
    if (!v40)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v42 = [v15 traitCollection];
  v43 = [v42 horizontalSizeClass];

  if (v43 == 1)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 0.25;
  }

  if (v41)
  {
LABEL_22:
    v45 = v41;
    v46 = [a1 v5[21]];
    [v46 addSubview:v45];

    if ((v31 == 0) | v34 & 1)
    {
      v118.origin.x = v11;
      v118.origin.y = v12;
      v118.size.width = v13;
      v118.size.height = v14;
      v47 = v44 * CGRectGetWidth(v118);
      v119.origin.x = v11;
      v119.origin.y = v12;
      v119.size.width = v13;
      v119.size.height = v14;
      v48 = CGRectGetHeight(v119) * 0.25;
      v120.origin.x = v11;
      v120.origin.y = v12;
      v120.size.width = v13;
      v120.size.height = v14;
      v121 = CGRectInset(v120, v47, v48);
      width = v121.size.width;
      height = v121.size.height;
      v121.origin.x = v11;
      v121.origin.y = v12;
      v121.size.width = v13;
      v121.size.height = v14;
      v51 = CGRectGetMidX(v121);
      v122.origin.x = v11;
      v122.origin.y = v12;
      v122.size.width = v13;
      v122.size.height = v14;
      v52 = CGRectGetMidY(v122);
      v53 = 0.0;
      v54 = 0.0;
    }

    else
    {
      [v31 bounds];
      width = v55;
      height = v56;
      v51 = v16 + v32;
      v52 = v18 + v33;
    }

    [v45 setBounds:{v53, v54, width, height}];
    [v45 setCenter:{v51, v52}];
    [v45 setNeedsLayout];
    [v45 layoutIfNeeded];
    [v45 setAlpha:0.0];
  }

LABEL_26:
  v57 = _swiftEmptyArrayStorage;
  v113 = _swiftEmptyArrayStorage;
  v58 = &StringUserDefaultsDebugSetting;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v59 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v60 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v59 timingParameters:0.0];

    v61 = swift_allocObject();
    *(v61 + 16) = v2;
    *(v61 + 24) = v31;
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = v13;
    *(v61 + 56) = v14;
    *(v61 + 64) = MidX;
    *(v61 + 72) = MidY;
    *(v61 + 80) = v41;
    *(v61 + 88) = v104;
    *(v61 + 96) = v103;
    v111 = sub_1006922C0;
    v112 = v61;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_100007A08;
    v110 = &unk_1008CDFC8;
    v62 = _Block_copy(&aBlock);
    v63 = v31;
    v64 = v41;
    v65 = v2;

    [v60 addAnimations:v62];
    _Block_release(v62);
    v66 = swift_allocObject();
    *(v66 + 16) = a1;
    *(v66 + 24) = v65;
    v111 = sub_1006922DC;
    v112 = v66;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v58 = &StringUserDefaultsDebugSetting;
    v109 = sub_10007FFE8;
    v110 = &unk_1008CE018;
    v67 = _Block_copy(&aBlock);
    v68 = v65;
    swift_unknownObjectRetain();

    [v60 addCompletion:v67];
    _Block_release(v67);
    v69 = v60;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v57 = v113;
  }

  if (v31)
  {
    v70 = v31;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      v72 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_1000694DC;
      v112 = v71;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_100007A08;
      v110 = &unk_1008CE158;
      v73 = _Block_copy(&aBlock);
      v74 = v70;

      v75 = [v72 initWithDuration:v73 controlPoint1:0.28 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
      _Block_release(v73);
      v76 = swift_allocObject();
      *(v76 + 16) = v74;
      v111 = sub_1000694F0;
      v112 = v76;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_10007FFE8;
      v110 = &unk_1008CE1A8;
      v77 = _Block_copy(&aBlock);
      v78 = v74;

      [v75 v58[43].name];
      _Block_release(v77);

      v79 = v75;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v57 = v113;
      if (!v41)
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }
  }

  if (v41)
  {
LABEL_38:
    v80 = v41;
    if (UIAccessibilityIsReduceMotionEnabled())
    {
    }

    else
    {
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      v82 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_10006038C;
      v112 = v81;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_100007A08;
      v110 = &unk_1008CE108;
      v83 = _Block_copy(&aBlock);
      v84 = v80;

      v85 = [v82 initWithDuration:v83 controlPoint1:0.13 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
      _Block_release(v83);

      if (v85)
      {
        v86 = v85;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v57 = v113;
      }
    }
  }

LABEL_44:
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [v41 setBounds:{0.0, 0.0, v13, v14}];
    [v41 setCenter:{v104, v103}];
    v87 = swift_allocObject();
    *(v87 + 16) = v2;
    *(v87 + 24) = v41;
    v88 = objc_allocWithZone(UIViewPropertyAnimator);
    v111 = sub_1006922E0;
    v112 = v87;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_100007A08;
    v110 = &unk_1008CE068;
    v89 = _Block_copy(&aBlock);
    v90 = v41;
    v91 = v2;

    v92 = [v88 initWithDuration:0 curve:v89 animations:0.3];
    _Block_release(v89);
    v93 = swift_allocObject();
    *(v93 + 16) = a1;
    *(v93 + 24) = v91;
    v111 = sub_100692318;
    v112 = v93;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_10007FFE8;
    v110 = &unk_1008CE0B8;
    v94 = _Block_copy(&aBlock);
    v95 = v91;
    swift_unknownObjectRetain();

    [v92 v58[43].name];
    _Block_release(v94);
    v96 = v92;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v57 = v113;
  }

  if (v57 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v98 = 0;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v98 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v99 = *(v57 + 8 * v98 + 32);
      }

      v100 = v99;
      v101 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      [v99 startAnimation];

      ++v98;
      if (v101 == i)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_61:
}

id sub_100691FE8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_1005F3D78(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  [a11 setBounds:{a1, a2, a3, a4}];

  return [a11 setCenter:{a7, a8}];
}

id sub_1006920D4(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 48);
    v9 = (v6 + 48);
    do
    {
      v10 = *v9;
      v9 += 24;
      if (v10 == 1)
      {
        v11 = *(v8 - 2);

        v11(1, 1);
      }

      v8 = v9;
      --v7;
    }

    while (v7);
  }

  if (a2)
  {
    return [a2 setAlpha:1.0];
  }

  return result;
}

void sub_1006921DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCollectionViewController);
}

id sub_10069221C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionPageOpenAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100692330()
{
  result = qword_100991360;
  if (!qword_100991360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991360);
  }

  return result;
}

uint64_t sub_100692384()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LinkableTextCollectionViewCellLayout.Metrics();
  sub_100005644(v4, qword_1009D3398);
  sub_1000056A8(v4, qword_1009D3398);
  if (qword_10096E208 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1598);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = type metadata accessor for StaticDimension();
  v10[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v9);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  return LinkableTextCollectionViewCellLayout.Metrics.init(textTopSpace:)();
}

id sub_1006926A8()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100993020);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_10002849C(&unk_100993030);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100288418(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100993020);
    [*&v1[OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    ObjectGraphPair.value.getter();
    ObjectGraphPair.objectGraph.getter();
    v11 = LinkableText.linkedSubstrings.getter();
    v12 = sub_1000D6F24(v11, sub_1000C17B0);

    v13 = LinkableText.styledText.getter();
    sub_1002F6004(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10069293C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LinkableTextCollectionViewCellLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableTextCollectionViewCellLayout();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v8);
  if (qword_10096ED28 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v2, qword_1009D3398);
  (*(v3 + 16))(v5, v11, v2);
  v12 = *&v0[OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel];
  v16[4] = type metadata accessor for DynamicTypeLinkedLabel();
  v16[5] = &protocol witness table for UILabel;
  v16[1] = v12;
  v13 = v12;
  LinkableTextCollectionViewCellLayout.init(metrics:textLabel:)();
  [v0 bounds];
  v14 = [v0 traitCollection];
  sub_100692CC8();
  dispatch thunk of Placeable.place(at:with:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for LinkableTextCollectionViewCell()
{
  result = qword_100991398;
  if (!qword_100991398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100692CC8()
{
  result = qword_1009913A8;
  if (!qword_1009913A8)
  {
    type metadata accessor for LinkableTextCollectionViewCellLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009913A8);
  }

  return result;
}

char *sub_100692D20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AutomationSemantics();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FontUseCase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyText;
  v16 = sub_10002849C(&unk_100993030);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_10096E208 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v9, qword_1009D1598);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v1[OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel] = sub_1002F5B8C(v12, 0, 0);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v36, &unk_1009711D0);
  sub_10002B894(v37, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v27 = *&v19[v22];
  sub_100028BB8();
  v28 = v27;
  v29 = static UIColor.secondaryText.getter();
  v30 = *&v28[qword_10097F920];
  *&v28[qword_10097F920] = v29;
  v31 = v29;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1002F63D4();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

double sub_100693208()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_1006932E8(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1006932E8(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v66 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100984990);
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v52 - v5;
  v58 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v52 - v8;
  v9 = type metadata accessor for TextAppearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  __chkstk_darwin(v22);
  v24 = &v52 - v23;
  __chkstk_darwin(v25);
  v54 = &v52 - v26;
  v60 = type metadata accessor for LabelPlaceholder();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v53 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v28 = ShelfLayoutContext.traitCollection.getter();
  sub_1000367E8();
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FontUseCase();
  sub_1000056A8(v29, qword_1009D17A8);
  v30 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  TextAppearance.init()();
  v55 = v30;
  TextAppearance.withFont(_:)();
  v31 = *(v10 + 8);
  v31(v12, v9);
  TextAppearance.withTextAlignment(_:)();
  v31(v15, v9);
  TextAppearance.withLineBreakMode(_:)();
  v31(v18, v9);
  TextAppearance.withLineSpacing(_:)();
  v31(v21, v9);
  TextAppearance.withNumberOfLines(_:)();
  v31(v24, v9);
  LabelPlaceholder.Options.init(rawValue:)();
  v32 = v53;
  LabelPlaceholder.init(_:with:where:)();
  v33 = v28;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v34 = v56;
    sub_1006EA400(v28, v56);
  }

  else
  {
    v34 = v56;
    sub_1006EA738();
  }

  (*(v57 + 32))(v61, v34, v58);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v35 = v60;
  v69[3] = v60;
  v69[4] = &protocol witness table for LabelPlaceholder;
  v36 = sub_1000056E0(v69);
  v37 = v59;
  (*(v59 + 16))(v36, v32, v35);
  type metadata accessor for RibbonBarItemCellLayout();
  swift_allocObject();
  *&v70 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
  sub_100693AB0(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout);
  v38 = v62;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v39 = v64;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v41 = v40;

  (*(v63 + 8))(v38, v39);
  (*(v37 + 8))(v32, v35);
  static RibbonBarItemCellLayout.topPadding.getter();
  *&v70 = v42;
  ShelfLayoutContext.traitEnvironment.getter();
  v43 = v66;
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v45 = v44;
  swift_unknownObjectRelease();
  v46 = v68;
  v47 = *(v67 + 8);
  v47(v43, v68);
  static RibbonBarItemCellLayout.bottomPadding.getter();
  *&v70 = v48;
  ShelfLayoutContext.traitEnvironment.getter();
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v50 = v49;
  swift_unknownObjectRelease();
  v47(v43, v46);
  return v41 + v45 + v50;
}

uint64_t sub_100693AB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100693AFC()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v41 - v1;
  v55 = type metadata accessor for PageGrid.HorizontalMargins();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v4 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v54 = &v41 - v12;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_10002849C(&qword_100970EF0);
  v16 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v57 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v48 = v18;
  *(v18 + 16) = xmmword_1007B23A0;
  v56 = v18 + v17;
  v60 = 0x3FF0000000000000;
  sub_10005E808();
  v19 = v15;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4030000000000000;
  v60 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v25 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v58 + 104);
  v58 += 104;
  v52 = v26;
  v51 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = v55;
  v26(v4, enum case for PageGrid.HorizontalMargins.absolute(_:), v55);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v60) = 0;
  v29 = v2;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  v50 = v7;
  PageGrid.DirectionalValue.init(_:)();
  v53 = v19;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v60 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  v30 = v10;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v32 = v52;
  v52(v4, v25, v27);
  LOBYTE(v60) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v33 = v57;
  top = UIEdgeInsetsZero.top;
  v47 = left;
  v49 = v30;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v34 = 2 * v33;
  v59 = 0x4000000000000000;
  v60 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v60 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v45 = vdupq_n_s64(0x4041000000000000uLL);
  v42 = v4;
  *v4 = v45;
  v35 = v51;
  v36 = v55;
  v37 = v32;
  v32(v4, v51, v55);
  LOBYTE(v60) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v29;
  v39 = v42;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v44 = v34 + v57;
  v60 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v39 = v45;
  v37(v39, v35, v36);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v60) = 0;
  v43 = v38;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v59 = 0x4000000000000000;
  v60 = 0x4004000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v60 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v45 = vdupq_n_s64(0x404A000000000000uLL);
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v60 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_1009D33C0 = v48;
  return result;
}

double ShelfHeaderLayout.measure(toFit:with:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = static UIContentSizeCategory.> infix(_:_:)();

  v9 = type metadata accessor for Margins();
  v10 = &protocol witness table for Margins;
  sub_1000056E0(&v8);
  if (v3)
  {
    v4 = sub_100697B60;
  }

  else
  {
    v4 = sub_100696044;
  }

  sub_100695D48(a1, sub_1002D3798, v4);
  sub_100005A38(&v8, v11);
  sub_10002A400(v11, v11[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v6 = v5;
  sub_100007000(v11);
  return v6;
}

uint64_t ShelfHeaderLayout.place(at:with:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = static UIContentSizeCategory.> infix(_:_:)();

  v7 = type metadata accessor for Margins();
  v8 = &protocol witness table for Margins;
  sub_1000056E0(&v6);
  if (v3)
  {
    v4 = sub_100697B60;
  }

  else
  {
    v4 = sub_100696044;
  }

  sub_100695D48(a1, sub_1002D3798, v4);
  sub_100005A38(&v6, v9);
  sub_10002A400(v9, v9[3]);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v9);
}

double ShelfHeaderLayout.init(metrics:separatorView:eyebrowButton:eyebrowImage:titleLabel:titleImage:subtitleLabel:accessoryView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a7;
  v58 = a6;
  v59 = a5;
  v60 = a4;
  v61 = a3;
  v56 = a1;
  sub_100698C2C(a1, a9, type metadata accessor for ShelfHeaderLayout.Metrics);
  v55 = a2;
  sub_100031660(a2, v62, &qword_100975610);
  v12 = v63;
  if (v63)
  {
    v13 = v64;
    sub_10002A400(v62, v63);
    v14 = type metadata accessor for Optional();
    v15 = *(v14 - 8);
    __chkstk_darwin(v14);
    v17 = &v55 - v16;
    LayoutView.nilIfHidden()();
    v18 = *(v12 - 8);
    if ((*(v18 + 48))(v17, 1, v12) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v12;
      v67 = v13;
      v19 = sub_1000056E0(&v65);
      (*(v18 + 32))(v19, v17, v12);
    }

    sub_100007000(v62);
  }

  else
  {
    sub_10002B894(v62, &qword_100975610);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v20 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = a9 + v20[5];
  v22 = v66;
  *v21 = v65;
  *(v21 + 16) = v22;
  *(v21 + 32) = v67;
  sub_100031660(v61, a9 + v20[6], &unk_10097B860);
  sub_100031660(v60, v62, &qword_100975610);
  v23 = v63;
  if (v63)
  {
    v24 = v64;
    sub_10002A400(v62, v63);
    v25 = type metadata accessor for Optional();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v55 - v27;
    LayoutView.nilIfHidden()();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v23;
      v67 = v24;
      v30 = sub_1000056E0(&v65);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_100007000(v62);
  }

  else
  {
    sub_10002B894(v62, &qword_100975610);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v31 = a9 + v20[7];
  v32 = v66;
  *v31 = v65;
  *(v31 + 16) = v32;
  *(v31 + 32) = v67;
  sub_10002C0AC(v59, a9 + v20[8]);
  sub_100031660(v58, v62, &qword_100975610);
  v33 = v63;
  if (v63)
  {
    v34 = v64;
    sub_10002A400(v62, v63);
    v35 = type metadata accessor for Optional();
    v36 = *(v35 - 8);
    __chkstk_darwin(v35);
    v38 = &v55 - v37;
    LayoutView.nilIfHidden()();
    v39 = *(v33 - 8);
    if ((*(v39 + 48))(v38, 1, v33) == 1)
    {
      (*(v36 + 8))(v38, v35);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v33;
      v67 = v34;
      v41 = sub_1000056E0(&v65);
      (*(v39 + 32))(v41, v38, v33);
    }

    v40 = v57;
    sub_100007000(v62);
  }

  else
  {
    sub_10002B894(v62, &qword_100975610);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v40 = v57;
  }

  v42 = a9 + v20[9];
  v43 = v66;
  *v42 = v65;
  *(v42 + 16) = v43;
  *(v42 + 32) = v67;
  sub_100031660(v40, a9 + v20[10], &unk_10097B860);
  sub_100031660(a8, v62, &qword_100975610);
  v44 = v63;
  if (v63)
  {
    v45 = v64;
    sub_10002A400(v62, v63);
    v46 = type metadata accessor for Optional();
    v47 = *(v46 - 8);
    __chkstk_darwin(v46);
    v49 = &v55 - v48;
    LayoutView.nilIfHidden()();
    v50 = *(v44 - 8);
    if ((*(v50 + 48))(v49, 1, v44) == 1)
    {
      sub_10002B894(a8, &qword_100975610);
      sub_10002B894(v57, &unk_10097B860);
      sub_10002B894(v58, &qword_100975610);
      sub_100007000(v59);
      sub_10002B894(v60, &qword_100975610);
      sub_10002B894(v61, &unk_10097B860);
      sub_10002B894(v55, &qword_100975610);
      sub_100695FE8(v56);
      (*(v47 + 8))(v49, v46);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v44;
      v67 = v45;
      v51 = sub_1000056E0(&v65);
      (*(v50 + 32))(v51, v49, v44);
      sub_10002B894(a8, &qword_100975610);
      sub_10002B894(v57, &unk_10097B860);
      sub_10002B894(v58, &qword_100975610);
      sub_100007000(v59);
      sub_10002B894(v60, &qword_100975610);
      sub_10002B894(v61, &unk_10097B860);
      sub_10002B894(v55, &qword_100975610);
      sub_100695FE8(v56);
    }

    sub_100007000(v62);
  }

  else
  {
    sub_10002B894(a8, &qword_100975610);
    sub_10002B894(v40, &unk_10097B860);
    sub_10002B894(v58, &qword_100975610);
    sub_100007000(v59);
    sub_10002B894(v60, &qword_100975610);
    sub_10002B894(v61, &unk_10097B860);
    sub_10002B894(v55, &qword_100975610);
    sub_100695FE8(v56);
    sub_10002B894(v62, &qword_100975610);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v52 = a9 + v20[11];
  result = *&v65;
  v54 = v66;
  *v52 = v65;
  *(v52 + 16) = v54;
  *(v52 + 32) = v67;
  return result;
}

void ShelfHeaderLayout.Metrics.eyebrowVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 40);

  return sub_100347F44(a1, v3);
}

uint64_t ShelfHeaderLayout.Metrics.titleLineHeight.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 48));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 60);

  return sub_100347F44(a1, v3);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.accessoryMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 68));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ShelfHeaderLayout.titleLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout(0) + 32);

  return sub_10002C0AC(v3, a1);
}

uint64_t sub_100695D48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for VerticalStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  v10 = type metadata accessor for ShelfHeaderLayout(0);
  sub_100031660(v3 + *(v10 + 20), &v13, &qword_100975610);
  if (v14)
  {
    sub_100005A38(&v13, v15);
    sub_10002A400(v15, v16);
    Measurable.placeable.getter();
    VerticalStack.add(_:with:)();
    sub_100007000(&v13);
    sub_100007000(v15);
  }

  else
  {
    sub_10002B894(&v13, &qword_100975610);
  }

  v16 = type metadata accessor for Margins();
  v17 = &protocol witness table for Margins;
  sub_1000056E0(v15);
  a3(a1);
  VerticalStack.add(_:with:)();
  sub_100007000(v15);
  static UIEdgeInsets.horizontal(left:right:)();
  v16 = v6;
  v17 = &protocol witness table for VerticalStack;
  v11 = sub_1000056E0(v15);
  (*(v7 + 16))(v11, v9, v6);
  Margins.init(insets:child:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100695FE8(uint64_t a1)
{
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100696044@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a2;
  v5 = type metadata accessor for ShelfHeaderLayout(0);
  v6 = v5 - 8;
  v19 = *(v5 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for VerticalStack();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  sub_100031660(v3 + *(v6 + 32), v21, &unk_10097B860);
  v12 = v22;
  sub_10002B894(v21, &unk_10097B860);
  if (v12)
  {
    v22 = type metadata accessor for HorizontalStack();
    v23 = &protocol witness table for HorizontalStack;
    v13 = sub_1000056E0(v21);
    sub_100696350(a1, v13);
    sub_100698C2C(v3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShelfHeaderLayout);
    v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v15 = swift_allocObject();
    sub_100698C94(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    VerticalStack.add(_:with:)();

    sub_100007000(v21);
  }

  sub_100696C24(a1, v21);
  VerticalStack.add(_:with:)();
  sub_100007000(v21);
  static UIEdgeInsets.vertical(top:bottom:)();
  v22 = v8;
  v23 = &protocol witness table for VerticalStack;
  v16 = sub_1000056E0(v21);
  (*(v9 + 16))(v16, v11, v8);
  Margins.init(insets:child:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100696350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v67 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = v5;
  v69 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Resize.Rule();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v60 = (&v53 - v9);
  __chkstk_darwin(v10);
  v59 = (&v53 - v11);
  __chkstk_darwin(v12);
  v58 = (&v53 - v13);
  v14 = type metadata accessor for Resize();
  v65 = *(v14 - 8);
  v66 = v14;
  __chkstk_darwin(v14);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FloatingPointRoundingRule();
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - v20;
  v22 = type metadata accessor for AspectRatio();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  HorizontalStack.init(with:)();
  v72 = v4;
  sub_100031660(v2 + *(v4 + 28), &v77, &qword_100975610);
  if (v78)
  {
    sub_100005A38(&v77, v80);
    v26 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100031660(v2 + *(v26 + 40), v21, &unk_1009732A0);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_10002B894(v21, &unk_1009732A0);
      sub_100007000(v80);
    }

    else
    {
      v55 = v22;
      v56 = v23;
      v27 = *(v23 + 32);
      v54 = v25;
      v27(v25, v21, v22);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v28 = *(v57 + 8);
      v28(v18, v16);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v28(v18, v16);
      AspectRatio.maxSize(fitting:)();
      v30 = v29;
      v32 = v31;
      v33 = (*(v2 + 32) - v31) * 0.5;
      sub_10002A400(v80, v80[3]);
      Measurable.placeable.getter();
      v57 = v2;
      v34 = v58;
      *(v58 + 3) = &type metadata for CGFloat;
      *(v34 + 4) = &protocol witness table for CGFloat;
      *v34 = v30;
      v35 = enum case for Resize.Rule.replaced(_:);
      v36 = v63;
      v37 = *(v62 + 104);
      v37(v34, enum case for Resize.Rule.replaced(_:), v63);
      v38 = v59;
      *(v59 + 3) = &type metadata for CGFloat;
      *(v38 + 4) = &protocol witness table for CGFloat;
      *v38 = v32;
      v37(v38, v35, v36);
      v39 = enum case for Resize.Rule.unchanged(_:);
      v37(v60, enum case for Resize.Rule.unchanged(_:), v36);
      v37(v61, v39, v36);
      v40 = v64;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      v41 = v66;
      v76[3] = v66;
      v76[4] = &protocol witness table for Resize;
      v42 = sub_1000056E0(v76);
      v43 = v65;
      (*(v65 + 16))(v42, v40, v41);
      v75[8] = &type metadata for CGFloat;
      v75[9] = &protocol witness table for CGFloat;
      *&v75[5] = v33;
      v44 = type metadata accessor for ZeroDimension();
      v75[3] = v44;
      v75[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v75);
      static ZeroDimension.zero.getter();
      v74[3] = v44;
      v74[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v74);
      static ZeroDimension.zero.getter();
      v73[3] = v44;
      v73[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v73);
      static ZeroDimension.zero.getter();
      v78 = type metadata accessor for Margins();
      v79 = &protocol witness table for Margins;
      sub_1000056E0(&v77);
      Margins.init(_:top:leading:bottom:trailing:)();
      v45 = v57;
      v46 = v69;
      sub_100698C2C(v57, v69, type metadata accessor for ShelfHeaderLayout);
      v47 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v48 = (v68 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      sub_100698C94(v46, v49 + v47);
      v50 = v70;
      *(v49 + v48) = v70;
      v51 = v50;
      HorizontalStack.add(_:with:)();

      (*(v43 + 8))(v40, v41);
      (*(v56 + 8))(v54, v55);
      sub_100007000(&v77);
      sub_100007000(v80);
      v2 = v45;
    }
  }

  else
  {
    sub_10002B894(&v77, &qword_100975610);
  }

  sub_100031660(v2 + *(v72 + 24), &v77, &unk_10097B860);
  if (!v78)
  {
    return sub_10002B894(&v77, &unk_10097B860);
  }

  sub_100005A38(&v77, v80);
  HorizontalStack.add(_:with:)();
  return sub_100007000(v80);
}

uint64_t sub_100696C24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v3 = type metadata accessor for Pin.Edge();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v92 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for VerticalStack();
  v95 = *(v110 - 8);
  __chkstk_darwin(v110);
  v94 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v83 - v7;
  v8 = type metadata accessor for ShelfHeaderLayout(0);
  v105 = *(v8 - 8);
  __chkstk_darwin(v8);
  v106 = v9;
  v107 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Resize.Rule();
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin(v10);
  v104 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v103 = (&v83 - v13);
  __chkstk_darwin(v14);
  v102 = (&v83 - v15);
  __chkstk_darwin(v16);
  v18 = (&v83 - v17);
  v101 = type metadata accessor for Resize();
  v19 = *(v101 - 8);
  __chkstk_darwin(v101);
  v89 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FloatingPointRoundingRule();
  v88 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - v25;
  v27 = type metadata accessor for AspectRatio();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v93 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for HorizontalStack();
  v108 = *(v30 - 8);
  v109 = v30;
  __chkstk_darwin(v30);
  v111 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  HorizontalStack.init(with:)();
  v112 = v8;
  v32 = *(v8 + 36);
  v33 = v98;
  sub_100031660(v98 + v32, &v119, &qword_100975610);
  if (v120)
  {
    v87 = v19;
    v34 = a1;
    sub_100005A38(&v119, v122);
    v35 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100031660(v33 + *(v35 + 60), v26, &unk_1009732A0);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_10002B894(v26, &unk_1009732A0);
      sub_100007000(v122);
      v36 = v33;
    }

    else
    {
      v85 = v27;
      v86 = v28;
      (*(v28 + 32))(v93, v26, v27);
      static Dimensions.defaultRoundingRule.getter();
      v84 = v34;
      StaticDimension.value(compatibleWith:rounded:)();
      v37 = v33;
      v38 = *(v88 + 8);
      v38(v23, v21);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v38(v23, v21);
      AspectRatio.maxSize(fitting:)();
      v40 = v39;
      v42 = v41;
      v43 = (*(v37 + *(v35 + 44)) - v41) * 0.5;
      sub_10002A400(v122, v123);
      Measurable.placeable.getter();
      v45 = v99;
      v44 = v100;
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v40;
      v46 = enum case for Resize.Rule.replaced(_:);
      v47 = *(v45 + 104);
      v47(v18, enum case for Resize.Rule.replaced(_:), v44);
      v48 = v102;
      *(v102 + 3) = &type metadata for CGFloat;
      *(v48 + 4) = &protocol witness table for CGFloat;
      *v48 = v42;
      v47(v48, v46, v44);
      v49 = enum case for Resize.Rule.unchanged(_:);
      v47(v103, enum case for Resize.Rule.unchanged(_:), v44);
      v47(v104, v49, v44);
      v50 = v89;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      v51 = v101;
      v117 = v101;
      v118 = &protocol witness table for Resize;
      v52 = sub_1000056E0(v116);
      v53 = v87;
      (*(v87 + 16))(v52, v50, v51);
      v115[8] = &type metadata for CGFloat;
      v115[9] = &protocol witness table for CGFloat;
      *&v115[5] = v43;
      v54 = type metadata accessor for ZeroDimension();
      v115[3] = v54;
      v115[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v115);
      static ZeroDimension.zero.getter();
      v114[3] = v54;
      v114[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v114);
      static ZeroDimension.zero.getter();
      v113[3] = v54;
      v113[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v113);
      static ZeroDimension.zero.getter();
      v120 = type metadata accessor for Margins();
      v121 = &protocol witness table for Margins;
      sub_1000056E0(&v119);
      Margins.init(_:top:leading:bottom:trailing:)();
      v55 = v98;
      v56 = v107;
      sub_100698C2C(v98, v107, type metadata accessor for ShelfHeaderLayout);
      v57 = (*(v105 + 80) + 16) & ~*(v105 + 80);
      v58 = (v106 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      sub_100698C94(v56, v59 + v57);
      v60 = v84;
      *(v59 + v58) = v84;
      v61 = v60;
      HorizontalStack.add(_:with:)();

      (*(v53 + 8))(v50, v51);
      (*(v86 + 8))(v93, v85);
      sub_100007000(&v119);
      sub_100007000(v122);
      v36 = v55;
    }
  }

  else
  {
    sub_10002B894(&v119, &qword_100975610);
    v36 = v33;
  }

  sub_10002C0AC(v36 + v112[8], &v119);
  *v18 = sub_1002F1298;
  v18[1] = 0;
  v62 = v100;
  v63 = *(v99 + 104);
  v63(v18, enum case for Resize.Rule.recalculated(_:), v100);
  v64 = enum case for Resize.Rule.unchanged(_:);
  v63(v102, enum case for Resize.Rule.unchanged(_:), v62);
  v63(v103, v64, v62);
  v63(v104, v64, v62);
  v123 = v101;
  v124 = &protocol witness table for Resize;
  sub_1000056E0(v122);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v65 = v111;
  HorizontalStack.add(_:with:)();
  sub_100007000(v122);
  v66 = v94;
  VerticalStack.init(with:)();
  v67 = v109;
  v123 = v109;
  v124 = &protocol witness table for HorizontalStack;
  v68 = sub_1000056E0(v122);
  (*(v108 + 16))(v68, v65, v67);
  v69 = v107;
  sub_100698C2C(v36, v107, type metadata accessor for ShelfHeaderLayout);
  v70 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v71 = swift_allocObject();
  sub_100698C94(v69, v71 + v70);
  v72 = v96;
  VerticalStack.adding(_:with:)();

  v73 = v95;
  v74 = *(v95 + 8);
  v74(v66, v110);
  sub_100007000(v122);
  sub_100031660(v36 + v112[10], &v119, &unk_10097B860);
  if (v120)
  {
    sub_100005A38(&v119, v122);
    VerticalStack.add(_:with:)();
    sub_100007000(v122);
  }

  else
  {
    sub_10002B894(&v119, &unk_10097B860);
  }

  sub_100031660(v36 + v112[11], &v119, &qword_100975610);
  if (v120)
  {
    sub_100005A38(&v119, v122);
    type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_10002A400(v122, v123);
    Measurable.placeable.getter();
    v120 = type metadata accessor for Margins();
    v121 = &protocol witness table for Margins;
    sub_1000056E0(&v119);
    Margins.init(insets:child:)();
    (*(v90 + 104))(v92, enum case for Pin.Edge.trailingEdge(_:), v91);
    v75 = v110;
    v117 = v110;
    v118 = &protocol witness table for VerticalStack;
    v76 = sub_1000056E0(v116);
    (*(v73 + 16))(v76, v72, v75);
    v77 = type metadata accessor for Pin();
    v78 = v97;
    v97[3] = v77;
    v78[4] = &protocol witness table for Pin;
    sub_1000056E0(v78);
    Pin.init(_:to:of:)();
    v74(v72, v75);
    (*(v108 + 8))(v111, v109);
    return sub_100007000(v122);
  }

  else
  {
    sub_10002B894(&v119, &qword_100975610);
    v80 = v97;
    v81 = v110;
    v97[3] = v110;
    v80[4] = &protocol witness table for VerticalStack;
    v82 = sub_1000056E0(v80);
    (*(v73 + 32))(v82, v72, v81);
    return (*(v108 + 8))(v111, v109);
  }
}

uint64_t sub_100697A0C(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  *(v4 + 32) = a3;
  v5 = a3;
  v6 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  return HorizontalStack.Properties.trailingSpacing.setter();
}

uint64_t sub_100697AE4()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  VerticalStack.Properties.topSpacing.setter();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100697B60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v97 = a1;
  v96 = a2;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v81 = *(v4 - 8);
  __chkstk_darwin(v4);
  v82 = v5;
  v83 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Resize.Rule();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v75 - v9;
  __chkstk_darwin(v10);
  v90 = &v75 - v11;
  __chkstk_darwin(v12);
  v85 = &v75 - v13;
  v87 = type metadata accessor for FloatingPointRoundingRule();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v15 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  v21 = type metadata accessor for AspectRatio();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v89 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  v95 = type metadata accessor for VerticalStack();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  v98 = v4;
  sub_100031660(v3 + *(v4 + 28), &v99, &qword_100975610);
  v93 = v7;
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    v29 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100031660(v3 + *(v29 + 40), v20, &unk_1009732A0);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_10002B894(v20, &unk_1009732A0);
      sub_100007000(&v102);
      v30 = v22;
    }

    else
    {
      v78 = v22;
      v31 = *(v22 + 32);
      v76 = v26;
      v79 = v21;
      v31(v26, v20, v21);
      v32 = v84;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v80 = v28;
      v33 = *(v86 + 8);
      v34 = v87;
      v33(v32, v87);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v33(v32, v34);
      AspectRatio.maxSize(fitting:)();
      v36 = v35;
      v38 = v37;
      sub_10002A400(&v102, v103);
      Measurable.placeable.getter();
      v77 = v17;
      v39 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v39 + 4) = &protocol witness table for CGFloat;
      *v39 = v36;
      v40 = enum case for Resize.Rule.replaced(_:);
      v41 = *(v91 + 104);
      v42 = v88;
      v43 = v92;
      v41(v39, enum case for Resize.Rule.replaced(_:), v92);
      v44 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v44 + 4) = &protocol witness table for CGFloat;
      v28 = v80;
      v45 = v93;
      *v44 = v38;
      v41(v44, v40, v43);
      v46 = enum case for Resize.Rule.unchanged(_:);
      v41(v42, enum case for Resize.Rule.unchanged(_:), v43);
      v41(v45, v46, v43);
      v100 = type metadata accessor for Resize();
      v101 = &protocol witness table for Resize;
      sub_1000056E0(&v99);
      v17 = v77;
      v47 = v79;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      VerticalStack.add(_:with:)();
      v30 = v78;
      v21 = v47;
      (*(v78 + 8))(v76, v47);
      sub_100007000(&v99);
      sub_100007000(&v102);
    }
  }

  else
  {
    sub_10002B894(&v99, &qword_100975610);
    v30 = v22;
  }

  sub_100031660(v3 + v98[6], &v99, &unk_10097B860);
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    VerticalStack.add(_:with:)();
    sub_100007000(&v102);
  }

  else
  {
    sub_10002B894(&v99, &unk_10097B860);
  }

  sub_100031660(v3 + v98[9], &v99, &qword_100975610);
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    v48 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100031660(v3 + *(v48 + 60), v17, &unk_1009732A0);
    if ((*(v30 + 48))(v17, 1, v21) == 1)
    {
      sub_10002B894(v17, &unk_1009732A0);
    }

    else
    {
      v49 = *(v30 + 32);
      v79 = v21;
      v49(v89, v17, v21);
      v50 = v84;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v51 = *(v86 + 8);
      v78 = v30;
      v52 = v87;
      v51(v50, v87);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v51(v50, v52);
      AspectRatio.maxSize(fitting:)();
      v54 = v53;
      v56 = v55;
      sub_10002A400(&v102, v103);
      Measurable.placeable.getter();
      v57 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v57 + 4) = &protocol witness table for CGFloat;
      *v57 = v54;
      v58 = enum case for Resize.Rule.replaced(_:);
      v59 = v88;
      v80 = v28;
      v60 = *(v91 + 104);
      v61 = v92;
      v60(v57, enum case for Resize.Rule.replaced(_:), v92);
      v62 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v62 + 4) = &protocol witness table for CGFloat;
      *v62 = v56;
      v60(v62, v58, v61);
      v63 = enum case for Resize.Rule.unchanged(_:);
      v60(v59, enum case for Resize.Rule.unchanged(_:), v61);
      v60(v93, v63, v61);
      v28 = v80;
      v100 = type metadata accessor for Resize();
      v101 = &protocol witness table for Resize;
      sub_1000056E0(&v99);
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      v64 = v83;
      sub_100698C2C(v3, v83, type metadata accessor for ShelfHeaderLayout);
      v65 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v66 = (v82 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      sub_100698C94(v64, v67 + v65);
      v68 = v97;
      *(v67 + v66) = v97;
      v69 = v68;
      VerticalStack.add(_:with:)();

      (*(v78 + 8))(v89, v79);
      sub_100007000(&v99);
    }

    sub_100007000(&v102);
  }

  else
  {
    sub_10002B894(&v99, &qword_100975610);
  }

  v70 = v98;
  VerticalStack.add(_:with:)();
  sub_100031660(v3 + v70[10], &v99, &unk_10097B860);
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    VerticalStack.add(_:with:)();
    sub_100007000(&v102);
  }

  else
  {
    sub_10002B894(&v99, &unk_10097B860);
  }

  sub_100031660(v3 + v98[11], &v99, &qword_100975610);
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    sub_10002A400(&v102, v103);
    Measurable.placeable.getter();
    VerticalStack.add(_:with:)();
    sub_100007000(&v99);
    sub_100007000(&v102);
  }

  else
  {
    sub_10002B894(&v99, &qword_100975610);
  }

  static UIEdgeInsets.vertical(top:bottom:)();
  v71 = v95;
  v103 = v95;
  v104 = &protocol witness table for VerticalStack;
  v72 = sub_1000056E0(&v102);
  v73 = v94;
  (*(v94 + 16))(v72, v28, v71);
  Margins.init(insets:child:)();
  return (*(v73 + 8))(v28, v71);
}

uint64_t sub_1006988B0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B0B70;
  *(v6 + 32) = a3;
  v7 = a3;
  v8 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();
  v10 = v9;

  v12[3] = &type metadata for CGFloat;
  v12[4] = &protocol witness table for CGFloat;
  v12[0] = v10;
  return a4(v12);
}

void sub_1006989C8()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100154308(319, &qword_10098A3E0, &unk_10097E960);
    if (v1 <= 0x3F)
    {
      sub_100154308(319, &unk_100991418, &qword_10096FE00);
      if (v2 <= 0x3F)
      {
        sub_100698AC0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100698AC0()
{
  result = qword_10098C620;
  if (!qword_10098C620)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10098C620);
  }

  return result;
}

void sub_100698B4C()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StaticDimension();
    if (v1 <= 0x3F)
    {
      sub_10007225C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100698C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100698C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100698D28(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100697A0C(a1, v1 + v4, v5);
}

uint64_t sub_100698DC4()
{
  v18 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = *(*(v18 - 1) + 80);
  v19 = *(*(v18 - 1) + 64);
  v20 = (v21 + 16) & ~v21;
  v22 = v0;
  v1 = v0 + v20;
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v3 = v2[7];
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[8], v4);
  v6 = v2[10];
  v7 = type metadata accessor for AspectRatio();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v5(v1 + v2[13], v4);
  v5(v1 + v2[14], v4);
  v10 = v2[15];
  if (!v9(v1 + v10, 1, v7))
  {
    (*(v8 + 8))(v1 + v10, v7);
  }

  v11 = v1 + v18[5];
  if (*(v11 + 24))
  {
    sub_100007000(v11);
  }

  v12 = v1 + v18[6];
  if (*(v12 + 24))
  {
    sub_100007000(v12);
  }

  v13 = v1 + v18[7];
  if (*(v13 + 24))
  {
    sub_100007000(v13);
  }

  sub_100007000(v1 + v18[8]);
  v14 = v1 + v18[9];
  if (*(v14 + 24))
  {
    sub_100007000(v14);
  }

  v15 = v1 + v18[10];
  if (*(v15 + 24))
  {
    sub_100007000(v15);
  }

  v16 = v1 + v18[11];
  if (*(v16 + 24))
  {
    sub_100007000(v16);
  }

  return _swift_deallocObject(v22, v20 + v19, v21 | 7);
}

uint64_t sub_100699080(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10069911C(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1006988B0(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_1006991D4()
{
  result = qword_100982AC8;
  if (!qword_100982AC8)
  {
    type metadata accessor for SearchAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982AC8);
  }

  return result;
}

uint64_t sub_100699234(uint64_t a1)
{
  v2 = type metadata accessor for ActionOutcome();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_100624370(Strong);

  v16 = v7;
  sub_100065AF0();
  v8 = v7;
  sub_10002849C(&qword_100991520);
  if (swift_dynamicCast())
  {
    sub_100005A38(&v13, v17);
    v9 = v18;
    v10 = v19;
    sub_10002A400(v17, v18);
    v13 = 0u;
    v14 = 0u;
    (*(v10 + 16))(a1, &v13, v9, v10);
    sub_10002B894(&v13, &unk_1009711D0);
    sub_10002849C(&qword_1009764A0);
    (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
    v11 = Promise.__allocating_init(value:)();

    sub_100007000(v17);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_10002B894(&v13, &qword_100991528);
    sub_10002849C(&qword_1009764A0);
    sub_100699478();
    swift_allocError();
    v11 = Promise.__allocating_init(error:)();
  }

  return v11;
}

unint64_t sub_100699478()
{
  result = qword_100991530;
  if (!qword_100991530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991530);
  }

  return result;
}

unint64_t sub_1006994E0()
{
  result = qword_100991538;
  if (!qword_100991538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991538);
  }

  return result;
}

void sub_100699534(unsigned __int8 a1)
{
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  if (a1 != 6)
  {
    if (a1 == 5)
    {

      PageGrid.columnWidth.getter();
    }

    else if (a1 == 4)
    {
      v2 = PageGrid.name.getter();
      if (v3)
      {
        if (v2 == 0x6972477961646F74 && v3 == 0xE900000000000064)
        {

LABEL_15:
          PageGrid.interColumnSpace.getter();
          return;
        }

        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v4)
        {
          goto LABEL_15;
        }
      }

      PageGrid.componentMeasuringSize(spanning:)();
    }

    else
    {

      sub_100699834(a1);
    }
  }
}

double sub_100699674(unsigned __int8 a1, id a2)
{
  if (a1 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [a2 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  sub_100699534(a1);
  PageGrid.horizontalDirectionalMargins.getter();
  PageGrid.horizontalDirectionalMargins.getter();
  [a2 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v5 = v4;
  PageGrid.containerWidth.getter();
  UITraitCollection.isSizeClassRegular.getter();
  MeasurementRange.init(minimum:maximum:)();
  MeasurementRange.contains(_:)();
  return v5;
}

double sub_100699834(unsigned __int8 a1)
{
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      PageGrid.columnCount.getter();
      v6 = v5 + -1.0;
      PageGrid.columnWidth.getter();
      v8 = v7;
      PageGrid.interColumnSpace.getter();
      v10 = v6 + -1.0;
      if (v6 + -1.0 < 0.0)
      {
        v10 = 0.0;
      }

      v11 = v8 * v6 + v9 * v10;
      PageGrid.containerWidth.getter();
      v13 = v12;
      PageGrid.horizontalMargins.getter();
      v16 = v13 - (v14 + v15);
      PageGrid.interColumnSpace.getter();
      v2 = v16 - v17 - v11;
    }

    else
    {
      PageGrid.containerWidth.getter();
      v19 = v18;
      PageGrid.horizontalMargins.getter();
      v22 = v19 - (v20 + v21);
      PageGrid.columnWidth.getter();
      v24 = v22 - v23;
      PageGrid.interColumnSpace.getter();
      v2 = v24 - v25;
    }
  }

  else if (a1)
  {
    v3 = v2;
    PageGrid.interColumnSpace.getter();
    v2 = (v3 - v4) * 0.5;
  }

  return floor(v2);
}

uint64_t sub_10069992C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1490);
  v7 = *(v5 - 8);
  v22 = *(v7 + 16);
  v21 = v7 + 16;
  v22(v4, v6, v5);
  v8 = v2[13];
  v20 = enum case for FontSource.useCase(_:);
  v19 = v8;
  v8(v4);
  v9 = type metadata accessor for StaticDimension();
  v30[3] = v9;
  v30[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v30);
  v28 = v1;
  v29 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v27);
  v11 = v2[2];
  v11(v10, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v12 = v2[1];
  v12(v4, v1);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v5, qword_1009D14A8);
  v22(v4, v13, v5);
  v19(v4, v20, v1);
  v28 = v9;
  v29 = &protocol witness table for StaticDimension;
  sub_1000056E0(v27);
  v25 = v1;
  v26 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v24);
  v11(v14, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v12(v4, v1);
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v5, qword_1009D1520);
  v22(v4, v15, v5);
  v19(v4, v20, v1);
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_1000056E0(v24);
  v23[3] = v1;
  v23[4] = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v23);
  v11(v16, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v12(v4, v1);
  return EditorialStoryCardLayout.Metrics.init(headerSpace:titleSpace:descriptionSpace:layoutMargins:)();
}

UIColor sub_100699D70()
{
  sub_100028BB8();
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 1.0).super.isa;
  qword_1009D33D0 = result.super.isa;
  return result;
}

void sub_100699DE0(uint64_t a1, void *a2, id *a3, void *a4)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = *a3;
  v6 = [v5 colorWithAlphaComponent:0.8];

  *a4 = v6;
}

UIColor sub_100699E60()
{
  sub_100028BB8();
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 1.0).super.isa;
  qword_1009D33E0 = result.super.isa;
  return result;
}

char *sub_100699EA4(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for CornerStyle();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v11 - 8);
  v99 = v93 - v12;
  v13 = type metadata accessor for FontUseCase();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v106 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DirectionalTextAlignment();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = v93 - v20;
  v21 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v21 - 8);
  v23 = v93 - v22;
  v24 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v25 = type metadata accessor for ItemLayoutContext();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView;
  v98 = type metadata accessor for ArtworkView();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v108 = v4;
  *&v4[v26] = v27;
  v28 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v13, qword_1009D1490);
  v30 = v14 + 16;
  v105 = *(v14 + 16);
  v105(v23, v29, v13);
  v97 = v14;
  v31 = v14 + 56;
  v104 = *(v14 + 56);
  v104(v23, 0, 1, v13);
  v32 = enum case for DirectionalTextAlignment.leading(_:);
  v96 = v17;
  v103 = *(v17 + 104);
  v103(v109, enum case for DirectionalTextAlignment.leading(_:), v16);
  v33 = type metadata accessor for DynamicTypeLabel();
  v107 = v16;
  v34 = v33;
  v35 = objc_allocWithZone(v33);
  *&v108[v28] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v36 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v13, qword_1009D14A8);
  v105(v23, v37, v13);
  v104(v23, 0, 1, v13);
  v103(v109, v32, v107);
  v38 = objc_allocWithZone(v34);
  *&v108[v36] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v94 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel;
  v93[2] = v31;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v13, qword_1009D1520);
  v40 = v105;
  v41 = v106;
  v105(v106, v39, v13);
  v42 = v107;
  v43 = v13;
  v93[0] = v13;
  v44 = v103;
  v103(v109, v32, v107);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v45[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v40(v23, v41, v43);
  v93[1] = v30;
  v46 = v104;
  v104(v23, 0, 1, v43);
  v47 = v95;
  v44(v95, enum case for DirectionalTextAlignment.none(_:), v42);
  v48 = UIContentSizeCategoryExtraExtraExtraLarge;
  v49 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v50 = v106;
  v51 = v93[0];
  v40(v23, v106, v93[0]);
  v46(v23, 0, 1, v51);
  v52 = v49;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v53 = v50;
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v52 setNumberOfLines:0];
  v54 = v96;
  v55 = v109;
  v56 = v107;
  (*(v96 + 16))(v47, v109, v107);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v54 + 8))(v55, v56);
  (*(v97 + 8))(v53, v51);
  v57 = v108;
  *&v108[v94] = v52;
  *&v57[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits] = 0;
  v58 = type metadata accessor for EditorialStoryCardCollectionViewCell();
  v110.receiver = v57;
  v110.super_class = v58;
  v59 = objc_msgSendSuper2(&v110, "initWithFrame:", a1, a2, a3, a4);
  [v59 setClipsToBounds:0];
  v60 = [v59 contentView];
  [v60 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v61 = [v59 contentView];
  [v61 setClipsToBounds:0];

  v62 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView;
  [*&v59[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView] setContentMode:2];
  v63 = qword_10096DA48;
  v64 = *&v59[v62];
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Shadow();
  v66 = sub_1000056A8(v65, qword_1009CFD38);
  v67 = *(v65 - 8);
  v68 = v99;
  (*(v67 + 16))(v99, v66, v65);
  (*(v67 + 56))(v68, 0, 1, v65);
  ArtworkView.shadow.setter();

  v69 = *&v59[v62];
  v71 = v100;
  v70 = v101;
  v72 = v102;
  (*(v101 + 104))(v100, enum case for CornerStyle.arc(_:), v102);
  v73 = v69;
  ArtworkView.setCorner(radius:style:)();

  (*(v70 + 8))(v71, v72);
  v74 = *&v59[v62];
  static ArtworkView.iconBorderColor.getter();
  dispatch thunk of RoundedCornerView.borderColor.setter();

  v75 = *&v59[v62];
  static ArtworkView.iconBorderWidth.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  v76 = [v59 contentView];
  [v76 addSubview:*&v59[v62]];

  v77 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel;
  v78 = qword_10096ED48;
  v79 = *&v59[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel];
  if (v78 != -1)
  {
    swift_once();
  }

  [v79 setTextColor:qword_1009D33D8];

  v80 = [v59 contentView];
  [v80 addSubview:*&v59[v77]];

  v81 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel;
  v82 = qword_10096ED50;
  v83 = *&v59[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel];
  if (v82 != -1)
  {
    swift_once();
  }

  v84 = qword_1009D33E0;
  [v83 setTextColor:qword_1009D33E0];

  v85 = [v59 contentView];
  [v85 addSubview:*&v59[v81]];

  v86 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel;
  [*&v59[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel] setTextColor:v84];
  v87 = [v59 contentView];
  [v87 addSubview:*&v59[v86]];

  v88 = objc_opt_self();
  v89 = [v88 clearColor];
  [v59 setBackgroundColor:v89];

  v90 = [v59 contentView];
  v91 = [v88 clearColor];
  [v90 setBackgroundColor:v91];

  return v59;
}

id sub_10069AAB0()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditorialStoryCardLayout.Metrics();
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for EditorialStoryCardLayout();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EditorialStoryCardCollectionViewCell();
  v43.receiver = v1;
  v43.super_class = v15;
  result = objc_msgSendSuper2(&v43, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v27 = v3;
    v28 = v2;
    swift_unknownObjectRetain();
    [v1 bounds];
    CGRectGetWidth(v44);
    [v1 bounds];
    CGRectGetHeight(v45);
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for StaticDimension();
    sub_1000056A8(v17, qword_1009D2460);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    (*(v12 + 8))(v14, v11);
    sub_10069992C(v8);
    v18 = *&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView];
    v41 = type metadata accessor for ArtworkView();
    v42 = &protocol witness table for UIView;
    v40 = v18;
    v19 = *&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel];
    v38 = type metadata accessor for DynamicTypeLabel();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v19;
    v20 = *&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel];
    v35 = v38;
    v34 = v20;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel];
    v33 = &protocol witness table for UILabel;
    v32 = v38;
    v31 = v21;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    EditorialStoryCardLayout.init(metrics:artworkView:headerLabel:titleLabel:descriptionLabel:)();
    EditorialStoryCardLayout.placeChildren(relativeTo:in:)();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v5, v28);
    return (*(v29 + 8))(v10, v30);
  }

  return result;
}

id sub_10069AF28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  ArtworkView.image.setter();
  [*&v0[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel] setText:0];
}

id sub_10069B014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EditorialStoryCardCollectionViewCell()
{
  result = qword_100991568;
  if (!qword_100991568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10069B12C()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10069B1D8()
{
  v1 = type metadata accessor for FontUseCase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v13 = type metadata accessor for ItemLayoutContext();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v62 = v0;
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v1, qword_1009D1490);
  v18 = v2 + 16;
  v59 = *(v2 + 16);
  v59(v11, v17, v1);
  v57 = v2;
  v20 = *(v2 + 56);
  v19 = v2 + 56;
  v60 = v20;
  v20(v11, 0, 1, v1);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v56 = v4;
  v23 = *(v4 + 104);
  v22 = v4 + 104;
  v58 = v23;
  v23(v8, enum case for DirectionalTextAlignment.leading(_:), v63);
  v24 = type metadata accessor for DynamicTypeLabel();
  v25 = objc_allocWithZone(v24);
  *(v62 + v16) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v1, qword_1009D14A8);
  v59(v11, v27, v1);
  v54 = v19;
  v60(v11, 0, 1, v1);
  v51 = v22;
  v58(v8, v21, v63);
  v28 = objc_allocWithZone(v24);
  *(v62 + v26) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v53 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v1, qword_1009D1520);
  v30 = v61;
  v31 = v59;
  v59(v61, v29, v1);
  v32 = v8;
  v52 = v8;
  v33 = v63;
  v34 = v58;
  v58(v32, v21, v63);
  v35 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v35[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v31(v11, v30, v1);
  v36 = v1;
  v49 = v1;
  v50 = v18;
  v37 = v60;
  v60(v11, 0, 1, v36);
  v38 = v55;
  v34(v55, enum case for DirectionalTextAlignment.none(_:), v33);
  v39 = UIContentSizeCategoryExtraExtraExtraLarge;
  v40 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v41 = v61;
  v42 = v49;
  v31(v11, v61, v49);
  v37(v11, 0, 1, v42);
  v43 = v40;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v52;
  v46 = v63;
  (*(v56 + 16))(v38, v52, v63);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v44 + 8))(v45, v46);
  (*(v57 + 8))(v41, v42);
  v47 = v62;
  *(v62 + v53) = v43;
  *(v47 + OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10069B848(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_1000056A8(v4, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x64656873696E6946;
  v5._object = 0xEF203A7473655420;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = PerformanceTestCase.name.getter();
  v10[3] = &type metadata for String;
  v10[0] = v6;
  v10[1] = v7;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v10, &unk_1009711D0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  PerformanceTestCase.name.getter();
  v9 = String._bridgeToObjectiveC()();

  [a2 finishedTest:v9];
}

void sub_10069BA88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSLogger();
  sub_1000056A8(v6, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x542064656C696146;
  v7._object = 0xED0000203A747365;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = PerformanceTestCase.name.getter();
  v18 = &type metadata for String;
  v16 = v8;
  v17 = v9;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v16, &unk_1009711D0);
  v10._countAndFlagsBits = 0x6572206874697720;
  v10._object = 0xEE00203A6E6F7361;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v18 = &type metadata for String;
  v16 = a2;
  v17 = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v16, &unk_1009711D0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  PerformanceTestCase.name.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();
  [a4 failedTest:v12 withFailure:v13];
}

uint64_t sub_10069BD54(void *a1, void *a2)
{
  if (a1)
  {
    v13 = a1;
    sub_100065AF0();
    v4 = a1;
    sub_10002849C(&qword_1009915F8);
    if (swift_dynamicCast())
    {
      sub_100005A38(v11, &v14);
      [v4 loadViewIfNeeded];
      sub_10002A400(&v14, v16);
      dispatch thunk of PerformanceTestable.perform(_:using:)();

      return sub_100007000(&v14);
    }

    else
    {
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      sub_10002B894(v11, &unk_100991600);
      sub_10002A400(a2, a2[3]);
      v14 = 0;
      v15 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      v6 = [v4 description];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v14 = v7;
      v15 = v9;
      v10._countAndFlagsBits = 0xD000000000000023;
      v10._object = 0x800000010081F9F0;
      String.append(_:)(v10);
      dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
    }
  }

  else
  {
    sub_10002A400(a2, a2[3]);
    return dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

void sub_10069BF60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v31 = a1;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for BootstrapPhase();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSONObject();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for PerformanceTestCase();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  if (a3)
  {
    if (a4)
    {
      v18 = sub_10002849C(&qword_1009915E0);
      v19 = a4;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v37 = 0;
      v38 = 0;
    }

    v36 = v19;
    v39 = v18;

    JSONObject.init(wrapping:)();
    PerformanceTestCase.init(name:options:)();
    (*(v12 + 16))(v14, v17, v11);
    v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v21 = swift_allocObject();
    v22 = v11;
    v30 = v11;
    v23 = v31;
    *(v21 + 16) = v31;
    (*(v12 + 32))(v21 + v20, v14, v22);
    v25 = v33;
    v24 = v34;
    *(v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v35 = 0;
    v26 = v32;
    (*(v32 + 104))(v9, enum case for BootstrapPhase.initialBootstrap(_:), v25);
    v27 = v23;
    v28 = v24;
    BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

    (*(v26 + 8))(v9, v25);
    (*(v12 + 8))(v17, v30);
  }

  else
  {
    __break(1u);
  }
}

void sub_10069C524(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (a1)
  {
    v15 = a3;
    v7 = qword_10096D140;
    v8 = a1;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSLogger();
    sub_1000056A8(v9, qword_1009CE278);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x206D726F66726550;
    v10._object = 0xEE00203A74736574;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v11 = PerformanceTestCase.name.getter();
    v17 = &type metadata for String;
    v16[0] = v11;
    v16[1] = v12;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002B894(v16, &unk_1009711D0);
    v13._countAndFlagsBits = 0x632074736574202CLL;
    v13._object = 0xED0000203A657361;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v17 = type metadata accessor for PerformanceTestCase();
    sub_1000056E0(v16);
    dump<A>(_:name:indent:maxDepth:maxItems:)();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002B894(v16, &unk_1009711D0);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_10069C948(a2, v8, v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_10069C8B8()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10069C524(v3, v0 + v2, v4);
}

uint64_t sub_10069C948(uint64_t a1, void *a2, char *a3)
{
  v36 = a3;
  v5 = type metadata accessor for PerformanceTestCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v7;
  __chkstk_darwin(v8);
  v34 = &v29 - v9;
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v40[3] = &type metadata for UIAppPerformanceTestRunner;
  v40[4] = sub_10069CDC4();
  v40[0] = a2;
  v11 = qword_10096D140;
  v12 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSLogger();
  sub_1000056A8(v13, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2074736554;
  v14._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v15 = PerformanceTestCase.name.getter();
  v39 = &type metadata for String;
  *&v38 = v15;
  *(&v38 + 1) = v16;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v38, &unk_1009711D0);
  v17._object = 0x800000010081F9A0;
  v17._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v19 = &v36[OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy];
  v36 = *&v36[OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy];
  if (v36)
  {
    v32 = *(v19 + 1);
    sub_10002C0AC(v40, &v38);
    v30 = *(v6 + 16);
    v20 = v34;
    v30(v34, a1, v5);
    v21 = v6;
    v22 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v23 = swift_allocObject();
    sub_100005A38(&v38, v23 + 16);
    v31 = a1;
    v24 = *(v21 + 32);
    v24(v23 + v22, v20, v5);
    sub_10002C0AC(v40, v37);
    v25 = v35;
    v30(v35, a1, v5);
    v26 = swift_allocObject();
    sub_100005A38(v37, v26 + 16);
    v24((v26 + v22), v25, v5);
    v27 = v36;
    v28 = v32;

    sub_1006DF2A0(v31, sub_10069CE18, v23, sub_1001FE008, v26, v27, v28);

    return sub_100007000(v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10069CDC4()
{
  result = qword_1009915E8;
  if (!qword_1009915E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009915E8);
  }

  return result;
}

uint64_t sub_10069CE18(void *a1)
{
  type metadata accessor for PerformanceTestCase();

  return sub_10069BD54(a1, (v1 + 16));
}

char *sub_10069CE9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v15, qword_1009D0740);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_10096ED58 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v11, qword_100991670);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[v19] = sub_1001C6E04(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_10096ED60 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100991688];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_10069D288()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArcadeLockupLayout.Metrics();
  sub_100005644(v4, qword_100991670);
  v18 = sub_1000056A8(v4, qword_100991670);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v5, qword_1009D0740);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = type metadata accessor for StaticDimension();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v19);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

id sub_10069D5EC()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_100991688 = result;
  return result;
}

uint64_t sub_10069D764()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = *&v0[v2];
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v17);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v10 setFrame:{MinX, CGRectGetMidY(v18) + v9 * -0.5, v7, v9}];

  v12 = &v0[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {

    v14(v15);
    return sub_10001F63C(v14);
  }

  return result;
}

void sub_10069D914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v24);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for TodayCard();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = TodayCard.overlay.getter(), , v13))
      {
        type metadata accessor for TodayCardArcadeLockupOverlay();
        if (swift_dynamicCastClass())
        {
          TodayCardArcadeLockupOverlay.arcadeLockup.getter();
          ArcadeLockup.impressionMetrics.getter();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_100453E30(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            ImpressionsCalculator.addElement(_:at:)();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
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

uint64_t sub_10069DD68()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10069DDC8(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_10069DE60()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_10069DEBC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_10069DF7C(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100005A38(v6, v4 + 32);
  return sub_10069E25C;
}

unint64_t sub_10069E048()
{
  result = qword_1009916E8;
  if (!qword_1009916E8)
  {
    type metadata accessor for TodayCardArcadeLockupOverlay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009916E8);
  }

  return result;
}

uint64_t sub_10069E0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v8 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v8 == 7)
  {
    goto LABEL_5;
  }

  switch(a5)
  {
    case 6u:
      if (v8 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5u:
      if (v8 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4u:
      if (v8 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v8 != a5 || (v8 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v9 = [v5 traitCollection];
  if (v7 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v9 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v5 setLayoutMargins:{v11, v13, v15, v17}];
  v18 = *&v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v19 = TodayCardArcadeLockupOverlay.arcadeLockup.getter();
  sub_100283630(v19, a2);
}

void sub_10069E268()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v6, qword_1009D0740);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_10096ED58 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v2, qword_100991670);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *(v1 + v10) = sub_1001C6E04(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_10096ED60 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100991688];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10069E558(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  LODWORD(v5) = a2;
  v56 = a1;
  swift_getObjectType();
  v6 = sub_10002849C(&qword_10098E2C8);
  __chkstk_darwin(v6 - 8);
  v57 = &v45 - v7;
  v8 = type metadata accessor for DynamicTextAppearance();
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __chkstk_darwin(v17);
  v18 = type metadata accessor for LabelPlaceholder();
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *&v3[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  v22 = v21;
  v58[5] = *&v3[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  Measurable.placeable.getter();
  v23 = [v3 traitCollection];
  if (qword_10096EA78 != -1)
  {
    swift_once();
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {

    sub_100007000(v58);
LABEL_6:
    v24 = 0x525F4F545F504154;
    v25 = 0xEB00000000455441;
    goto LABEL_7;
  }

  v49 = v20;
  v50 = v5;
  v46 = "L AdFetch returns Mock Ad";
  v34._object = 0x800000010080E210;
  v34._countAndFlagsBits = 0xD000000000000016;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v36 = localizedString(_:comment:)(v34, v35);
  object = v36._object;
  countAndFlagsBits = v36._countAndFlagsBits;
  DynamicTextAppearance.init()();
  if (qword_10096DF68 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for FontUseCase();
  sub_1000056A8(v37, qword_1009D0DB8);
  DynamicTextAppearance.withFontUseCase(_:)();
  v38 = *(v51 + 8);
  v38(v10, v8);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v38(v13, v8);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v38(v16, v8);
  LabelPlaceholder.Options.init(rawValue:)();
  v5 = v49;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.measure(toFit:with:)();
  v40 = v39;
  sub_10002A400(v58, v58[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v42 = v41;
  sub_10002A400(&qword_1009D2C88, qword_1009D2CA0);
  AnyDimension.value(with:)();
  v44 = v43;

  (*(v52 + 8))(v5, v53);
  sub_100007000(v58);
  LOBYTE(v5) = v50;
  if (v22 < v42 + v40 + v44)
  {
    goto LABEL_6;
  }

  v25 = v46 | 0x8000000000000000;
  v24 = 0xD000000000000016;
LABEL_7:
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v24, v26);
  v27 = v57;
  v28 = String._bridgeToObjectiveC()();

  [v55 setText:v28];

  v29 = TapToRate.rateAction.getter();
  if (v29)
  {
    v58[0] = v29;
    type metadata accessor for RateAction();
    type metadata accessor for BaseObjectGraph();
    sub_10069EBE0();
    ComponentModel.pairedWith<A>(objectGraph:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = sub_10002849C(&qword_10098E2C0);
  (*(*(v31 - 8) + 56))(v27, v30, 1, v31);
  v32 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_rateAction;
  swift_beginAccess();
  sub_10069EB70(v27, &v4[v32]);
  swift_endAccess();
  v4[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_isSingleColumn] = v5 & 1;
  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

uint64_t sub_10069EB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098E2C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10069EBE0()
{
  result = qword_100991798;
  if (!qword_100991798)
  {
    type metadata accessor for RateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991798);
  }

  return result;
}

double sub_10069EC38(void *a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_10096EA10 != -1)
  {
    swift_once();
  }

  v18.is_nil = qword_10098D728;
  v18.value._rawValue = 0;
  isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v18, v7).super.isa;
  sub_10067DF14();
  v10 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  (*(v3 + 104))(v6, enum case for SystemImage.starFill(_:), v2);
  v11 = [v10 configurationWithTraitCollection:isa];
  v12 = static SystemImage.load(_:with:)();

  (*(v3 + 8))(v6, v2);
  v13 = [v12 imageWithRenderingMode:2];

  [v13 size];
  v15 = v14;

  return (v15 + 12.0) * 5.0 + -12.0;
}

double sub_10069EE6C(void *a1, double a2)
{
  v4 = type metadata accessor for DynamicTextAppearance();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v69 - v9;
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  __chkstk_darwin(v13);
  v78 = &v69 - v14;
  v15 = type metadata accessor for LabelPlaceholder();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v81 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v72 = &v69 - v19;
  v20 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v80 = LayoutViewPlaceholder.init(measureWith:)();
  v82[0] = v80;
  v74 = v20;
  Measurable.placeable.getter();
  v75 = a1;
  v21 = [a1 traitCollection];
  if (qword_10096EA78 != -1)
  {
    swift_once();
  }

  v22 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v23 = &qword_10096D000;
  v73 = v7;
  v76 = v15;
  v79 = v16;
  if (v22 & 1) != 0 || (v23 = &qword_10096D000, (UITraitCollection.isSizeClassCompact.getter()))
  {

    sub_100007000(v83);
LABEL_6:
    v24 = v5;
    v25 = 0x525F4F545F504154;
    v26 = 0xEB00000000455441;
    goto LABEL_7;
  }

  v71 = "L AdFetch returns Mock Ad";
  v41._object = 0x800000010080E210;
  v41._countAndFlagsBits = 0xD000000000000016;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  localizedString(_:comment:)(v41, v42);
  DynamicTextAppearance.init()();
  if (qword_10096DF68 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for FontUseCase();
  sub_1000056A8(v43, qword_1009D0DB8);
  v44 = v77;
  DynamicTextAppearance.withFontUseCase(_:)();
  v45 = *(v5 + 8);
  v45(v73, v4);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v45(v44, v4);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v45(v12, v4);
  v7 = v73;
  LabelPlaceholder.Options.init(rawValue:)();
  v46 = v72;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.measure(toFit:with:)();
  v48 = v47;
  sub_10002A400(v83, v84);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v50 = v49;
  sub_10002A400(&qword_1009D2C88, qword_1009D2CA0);
  AnyDimension.value(with:)();
  v52 = v51;

  (*(v79 + 8))(v46, v76);
  sub_100007000(v83);
  v23 = &qword_10096D000;
  if (v50 + v48 + v52 > a2)
  {
    goto LABEL_6;
  }

  v24 = v5;
  v26 = v71 | 0x8000000000000000;
  v25 = 0xD000000000000016;
LABEL_7:
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = localizedString(_:comment:)(*&v25, v27);
  v29 = v12;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  localizedString(_:comment:)(v28, v30);

  DynamicTextAppearance.init()();
  if (v23[493] != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for FontUseCase();
  sub_1000056A8(v31, qword_1009D0DB8);
  v32 = v77;
  DynamicTextAppearance.withFontUseCase(_:)();
  v33 = v7;
  v34 = *(v24 + 8);
  v34(v33, v4);
  v35 = 1;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v34(v32, v4);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v70 = v29;
  v71 = v4;
  v34(v29, v4);
  LabelPlaceholder.Options.init(rawValue:)();
  v36 = v81;
  LabelPlaceholder.init(_:with:where:)();
  sub_1005DF9A8(&qword_1009D2C88, v83);
  v37 = v76;
  v85[3] = v76;
  v85[4] = &protocol witness table for LabelPlaceholder;
  v38 = sub_1000056E0(v85);
  v39 = v79;
  (*(v79 + 16))(v38, v36, v37);
  v82[0] = v80;
  Measurable.placeable.getter();
  v40 = [v75 traitCollection];
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      v35 = 1;
      v39 = v79;
    }

    else
    {
      v53._object = 0x800000010080E210;
      v53._countAndFlagsBits = 0xD000000000000016;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      localizedString(_:comment:)(v53, v54);
      v55 = v73;
      DynamicTextAppearance.init()();
      v56 = v77;
      DynamicTextAppearance.withFontUseCase(_:)();
      v57 = v71;
      v34(v55, v71);
      v58 = v70;
      DynamicTextAppearance.withNumberOfLines(_:)();
      v34(v56, v57);
      DynamicTextAppearance.withLineBreakMode(_:)();
      v34(v58, v57);
      LabelPlaceholder.Options.init(rawValue:)();
      v59 = v72;
      LabelPlaceholder.init(_:with:where:)();
      LabelPlaceholder.measure(toFit:with:)();
      v61 = v60;
      sub_10002A400(v86, v86[3]);
      dispatch thunk of Placeable.measure(toFit:with:)();
      v63 = v62;
      sub_10002A400(v83, v84);
      AnyDimension.value(with:)();
      v65 = v64;
      v39 = v79;
      (*(v79 + 8))(v59, v37);
      v35 = v63 + v61 + v65 > a2;
    }
  }

  sub_10034AB28(v35, v82);
  sub_10002A400(v82, v82[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v67 = v66;

  (*(v39 + 8))(v81, v37);
  sub_100007000(v82);
  sub_1005DFA58(v83);
  return v67;
}

uint64_t sub_10069F7F4()
{
  v0 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&qword_100971EC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_10006C318();
  WritableStateLens<A>.updateValue(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10069F96C(double a1)
{
  v2 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v2 - 8);
  v42 = v33 - v3;
  v40 = type metadata accessor for PageGrid.HorizontalMargins();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  __chkstk_darwin(v13);
  v46 = v33 - v14;
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  sub_10002849C(&qword_100970EF0);
  v18 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v45 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v35 = v20;
  *(v20 + 16) = xmmword_1007B23A0;
  v38 = v20 + v19;
  v48 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v47 = 0x4030000000000000;
  v48 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v6 = 16.0;
  v6[1] = a1 + 16.0;
  v39 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v21 = *(v4 + 104);
  v36 = v4 + 104;
  v22 = v40;
  v21(v6);
  v41 = v21;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  v44 = v9;
  PageGrid.DirectionalValue.init(_:)();
  v43 = v17;
  v37 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v47 = 0x4034000000000000;
  v48 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = a1;
  *v6 = 20.0;
  v6[1] = a1 + 20.0;
  (v21)(v6, v39, v22);
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v24 = v45;
  v33[2] = *&UIEdgeInsetsZero.top;
  *&v33[3] = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33[1] = 2 * v24;
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v25 = v39;
  v26 = v40;
  (v41)(v6, v39, v40);
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v27 = v25;
  v28 = v41;
  (v41)(v6, v27, v26);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v29 = 4 * v45;
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v30 = v34 + 52.0;
  *v6 = 52.0;
  v6[1] = v30;
  v31 = v39;
  (v28)(v6, v39, v26);
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 += v29;
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v6 = 52.0;
  v6[1] = v30;
  (v41)(v6, v31, v40);
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v35;
}

double sub_1006A0350()
{
  v1 = v0;
  v2 = type metadata accessor for ReviewSummaryLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReviewSummaryLayout();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096ED68 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v2, qword_1009D3418);
  (*(v3 + 16))(v5, v10, v2);
  v16[11] = *(v1 + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel);
  type metadata accessor for ExpandableTextView();
  Measurable.placeable.getter();
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel);
  v16[4] = type metadata accessor for DynamicTypeLabel();
  v16[5] = &protocol witness table for UILabel;
  v16[1] = v11;
  v12 = v11;
  ReviewSummaryLayout.init(metrics:bodyLabel:subtitleLabel:)();
  sub_1006A29A0(&unk_100991910, &type metadata accessor for ReviewSummaryLayout);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1006A05E8()
{
  v0 = type metadata accessor for ReviewSummaryLayout.Metrics();
  sub_100005644(v0, qword_1009D3418);
  sub_1000056A8(v0, qword_1009D3418);
  v2[3] = sub_10002849C(&unk_10096FC10);
  v2[4] = sub_100097060(&qword_10096FC20, &unk_10096FC10);
  sub_1000056E0(v2);
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(regularValue:compactValue:)();
  return ReviewSummaryLayout.Metrics.init(subtitleTopSpace:contentPadding:)();
}

uint64_t sub_1006A06F0()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.secondaryText.getter();
  qword_100991840 = result;
  return result;
}

char *sub_1006A0734(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView;
  *&v4[v19] = [objc_allocWithZone(UIView) init];
  v63 = v4;
  v64 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v15, qword_1009D09C8);
  v21 = *(v16 + 16);
  v21(v18, v20, v15);
  v65 = objc_opt_self();
  v22 = [v65 systemBackgroundColor];
  v23 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v24 = v22;
  v25 = sub_10059F344(v24, 0.0, 0.0, 0.0, 0.0);
  v21(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_100031660(v14, v11, &qword_100972ED0);
  v26 = v25;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v14, &qword_100972ED0);
  v27 = *(v16 + 8);
  v66 = v15;
  v27(v18, v15);

  v28 = v63;
  *&v63[v64] = v26;
  v29 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v28[v29] = DynamicTypeLabel.__allocating_init(frame:)();
  v30 = &v28[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v28[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtwork] = 0;
  v31 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtworkAlignment;
  v32 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer;
  *&v28[v33] = [objc_allocWithZone(UIView) init];
  v68.receiver = v28;
  v68.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v34 setClipsToBounds:1];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer;
  v36 = [*&v34[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer] layer];
  [v36 setCornerRadius:16.0];

  [v34 addSubview:*&v34[v35]];
  v37 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView;
  v38 = *&v34[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView];
  v39 = [v65 systemBackgroundColor];
  [v38 setBackgroundColor:v39];

  [*&v34[v37] setAlpha:0.0];
  v40 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel;
  [*(*&v34[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setAdjustsFontForContentSizeCategory:1];
  v41 = *&v34[v40];
  v42 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v43 = *&v41[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v41[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = 10;
  v44 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v41[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
  {
    v45 = *&v41[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v46 = v41;
    [v45 setNumberOfLines:10];
    if (*&v41[v42] == v43)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v47 = v41;
    if (v43 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v41[v44])
  {
    sub_1005A0320();
  }

LABEL_9:

  v48 = *&v34[v40];
  v49 = &v48[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v50 = *&v48[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  *v49 = 0;
  *(v49 + 1) = 0;
  v51 = v48;
  sub_10001F63C(v50);
  [*&v51[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v52 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel;
  v53 = qword_10096ED70;
  v54 = *&v34[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel];
  if (v53 != -1)
  {
    swift_once();
  }

  [v54 setTextColor:qword_100991840];

  v55 = *&v34[v52];
  sub_100005744(0, &qword_1009730E0);
  v56 = qword_10096DFC0;
  v57 = v55;
  if (v56 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v66, qword_1009D0EC0);
  v58 = [v34 traitCollection];

  v59 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  [v57 setFont:v59];

  [*&v34[v52] setNumberOfLines:0];
  [*&v34[v35] addSubview:*&v34[v37]];
  [*&v34[v35] addSubview:*&v34[v40]];
  [*&v34[v35] addSubview:*&v34[v52]];
  sub_10002849C(&qword_10097B110);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1007B10D0;
  *(v60 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v60 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v34;
}

void sub_1006A0EE4()
{
  v1 = sub_10002849C(&qword_1009918B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel];
  v9 = *&v0[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle + 8];
  v17 = *&v0[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle];
  v18 = v8;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtwork];
  v11 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_100031660(&v0[v11], v3, &qword_1009918B0);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v7, enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:), v4);
    v13 = v12(v3, 1, v4);

    if (v13 != 1)
    {
      sub_10002B894(v3, &qword_1009918B0);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  v14 = [v0 traitCollection];
  v15 = sub_1006A25DC(v17, v9, v10, v7);

  (*(v5 + 8))(v7, v4);
  [v18 setAttributedText:v15];
}

uint64_t sub_1006A11E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for ReviewSummaryLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ReviewSummaryLayout();
  v31 = *(v10 - 8);
  v32 = v10;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v11);
  v14 = [v0 traitCollection];
  v15 = UITraitCollection.isSizeClassCompact.getter();

  if (v15)
  {
    v16 = 8.0;
  }

  else
  {
    v16 = 16.0;
  }

  v17 = *&v1[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v17 setFrame:{sub_1000CC354(v18, v19, v20, v21, -v16, -v16)}];
  if (qword_10096ED68 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v3, qword_1009D3418);
  v23 = *(v4 + 16);
  v23(v9, v22, v3);
  ReviewSummaryLayout.Metrics.contentPadding.setter();
  v23(v6, v9, v3);
  v36 = *&v1[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel];
  type metadata accessor for ExpandableTextView();
  Measurable.placeable.getter();
  v24 = *&v1[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel];
  v34 = type metadata accessor for DynamicTypeLabel();
  v35 = &protocol witness table for UILabel;
  v33 = v24;
  v25 = v24;
  ReviewSummaryLayout.init(metrics:bodyLabel:subtitleLabel:)();
  (*(v4 + 8))(v9, v3);
  [v17 bounds];
  v26 = [v1 traitCollection];
  sub_1006A29A0(&unk_100991910, &type metadata accessor for ReviewSummaryLayout);
  v27 = v32;
  dispatch thunk of Placeable.place(at:with:)();

  [v17 bounds];
  v28 = [v1 traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();

  [v17 frame];
  [v17 setFrame:?];
  v29 = *&v1[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView];
  [v17 bounds];
  [v29 setFrame:?];
  return (*(v31 + 8))(v13, v27);
}

uint64_t type metadata accessor for ReviewSummaryView()
{
  result = qword_100991898;
  if (!qword_100991898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006A17BC()
{
  sub_1006A1874();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006A1874()
{
  if (!qword_1009918A8)
  {
    type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1009918A8);
    }
  }
}

uint64_t sub_1006A1914(uint64_t a1, int a2, uint64_t a3)
{
  v73 = a3;
  LODWORD(v74) = a2;
  v54 = sub_10002849C(&qword_1009918B8);
  __chkstk_darwin(v54);
  v78 = &v54 - v3;
  v72 = sub_10002849C(&qword_1009918C0);
  __chkstk_darwin(v72);
  v79 = &v54 - v4;
  v76 = type metadata accessor for AttributedString.Runs.Index();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for AttributedString.Runs.Run();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.Runs();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_1009918C8);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for FontUseCase();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v54 - v20;
  v21 = type metadata accessor for AttributedString();
  __chkstk_darwin(v21);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v58 = v25;
  v26 = *(v25 + 16);
  v77 = &v54 - v27;
  v59 = v28;
  v56 = v25 + 16;
  v55 = v26;
  v26(v24);
  v61 = v16;
  v60 = v17;
  if (v74)
  {
    if (qword_10096DFB0 != -1)
    {
      swift_once();
    }

    v29 = sub_1000056A8(v16, qword_1009D0E90);
    v30 = *(v17 + 16);
    v30(v63, v29, v16);
    if (qword_10096DFB8 != -1)
    {
      swift_once();
    }

    v31 = qword_1009D0EA8;
  }

  else
  {
    if (qword_10096DFA0 != -1)
    {
      swift_once();
    }

    v32 = sub_1000056A8(v16, qword_1009D0E60);
    v30 = *(v17 + 16);
    v30(v63, v32, v16);
    if (qword_10096DFA8 != -1)
    {
      swift_once();
    }

    v31 = qword_1009D0E78;
  }

  v33 = sub_1000056A8(v16, v31);
  v30(v66, v33, v16);
  AttributedString.runs.getter();
  (*(v10 + 16))(v15, v12, v9);
  sub_1006A29A0(&qword_1009918D0, &type metadata accessor for AttributedString.Runs);
  dispatch thunk of Collection.startIndex.getter();
  (*(v10 + 8))(v12, v9);
  v74 = (v5 + 8);
  v68 = (v7 + 8);
  v69 = (v7 + 16);
  v64 = enum case for JetFontAttribute.Value.reviewSummaryTitle(_:);
  v62 = enum case for JetFontAttribute.Value.reviewSummaryText(_:);
  v70 = v9;
  v65 = v15;
  while (1)
  {
    while (1)
    {
      v36 = v75;
      dispatch thunk of Collection.endIndex.getter();
      sub_1006A29A0(&qword_1009918D8, &type metadata accessor for AttributedString.Runs.Index);
      v37 = v76;
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v74)(v36, v37);
      if (v38)
      {
        sub_10002B894(v15, &qword_1009918C8);
        sub_100005744(0, &unk_100984040);
        v48 = v77;
        v49 = v59;
        (v55)(v57, v77, v59);
        v50 = NSAttributedString.init(_:)();
        v51 = *(v60 + 8);
        v52 = v61;
        v51(v66, v61);
        v51(v63, v52);
        (*(v58 + 8))(v48, v49);
        return v50;
      }

      v39 = dispatch thunk of Collection.subscript.read();
      v40 = v67;
      v41 = v71;
      (*v69)(v67);
      v39(v82, 0);
      dispatch thunk of Collection.formIndex(after:)();
      AttributedString.Runs.Run.range.getter();
      type metadata accessor for JetFontAttribute();
      sub_1006A29A0(&unk_1009918E0, &type metadata accessor for JetFontAttribute);
      v42 = v78;
      AttributedString.Runs.Run.subscript.getter();
      (*v68)(v40, v41);
      v43 = type metadata accessor for JetFontAttribute.Value();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        break;
      }

LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100005744(0, &qword_1009730E0);
      v81 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      sub_100097060(&qword_1009918F0, &qword_1009918C0);
      v34 = AttributedString.subscript.modify();
      type metadata accessor for AttributeScopes.UIKitAttributes();
      sub_1006A29A0(&qword_1009918F8, &type metadata accessor for AttributeScopes.UIKitAttributes);
      v35 = AttributedSubstring.subscript.modify();
      sub_10002849C(&unk_100991900);
      sub_1001469E0();
      ScopedAttributeContainer.subscript.setter();
      v35(v80, 0);

      v34(v82, 0);
      v15 = v65;
      sub_10002B894(v79, &qword_1009918C0);
    }

    v45 = (*(v44 + 88))(v78, v43);
    if (v45 != v64)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100005744(0, &qword_1009730E0);
    v81 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    sub_100097060(&qword_1009918F0, &qword_1009918C0);
    v46 = AttributedString.subscript.modify();
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_1006A29A0(&qword_1009918F8, &type metadata accessor for AttributeScopes.UIKitAttributes);
    v47 = AttributedSubstring.subscript.modify();
    sub_10002849C(&unk_100991900);
    sub_1001469E0();
    ScopedAttributeContainer.subscript.setter();
    v47(v80, 0);

    v46(v82, 0);
    sub_10002B894(v79, &qword_1009918C0);
  }

  if (v45 == v62)
  {
    goto LABEL_14;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A25DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v11 = objc_allocWithZone(NSMutableAttributedString);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithString:v12];

  if (!a3)
  {
    return v13;
  }

  sub_100005744(0, &qword_1009870A0);

  v14 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  if (dispatch thunk of Artwork.isSystemImage.getter())
  {
    v15 = static SystemImage.load(artwork:with:includePrivateImages:)();
  }

  else
  {
    if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = sub_100330100(a3, v14);
  }

  v16 = v15;

  if (!v16)
  {
LABEL_15:

    return v13;
  }

  v14 = [objc_allocWithZone(NSTextAttachment) init];
  sub_100005744(0, &qword_100970180);
  v17 = static UIColor.secondaryText.getter();
  v18 = [v16 imageWithTintColor:v17];

  [v14 setImage:v18];
  (*(v8 + 16))(v10, a4, v7);
  v19 = (*(v8 + 88))(v10, v7);
  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.leading(_:))
  {
    v20 = objc_allocWithZone(NSAttributedString);
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 initWithString:v21];

    [v13 insertAttributedString:v22 atIndex:0];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 insertAttributedString:v23 atIndex:0];
LABEL_13:

    goto LABEL_14;
  }

  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:))
  {
    v24 = objc_allocWithZone(NSAttributedString);
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 initWithString:v25];

    [v13 appendAttributedString:v26];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 appendAttributedString:v23];
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A29A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006A29E8()
{
  v1 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel;
  v26 = v0;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v7, qword_1009D09C8);
  v13 = *(v8 + 16);
  v13(v10, v12, v7);
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v16 = v14;
  v17 = sub_10059F344(v16, 0.0, 0.0, 0.0, 0.0);
  v13(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100031660(v6, v3, &qword_100972ED0);
  v18 = v17;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v6, &qword_100972ED0);
  (*(v8 + 8))(v10, v7);

  v19 = v26;
  *(v26 + v25) = v18;
  v20 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v19 + v20) = DynamicTypeLabel.__allocating_init(frame:)();
  v21 = (v19 + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtwork) = 0;
  v22 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtworkAlignment;
  v23 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer;
  *(v19 + v24) = [objc_allocWithZone(UIView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006A2DD0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Artwork.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InstallPageInstallingViewLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = InAppPurchaseInstallPage.parentLockup.getter();
  if (result)
  {
    v26 = v5;
    v27 = result;
    if (Lockup.icon.getter())
    {
      v25[1] = a2;
      v13 = [v2 traitCollection];
      sub_1004975A4(v11);

      InstallPageInstallingViewLayout.Metrics.iconSize.getter();
      (*(v9 + 8))(v11, v8);
      Artwork.style.getter();
      Artwork.Style.iconWidth(fromHeight:)();
      (*(v26 + 8))(v7, v4);
      v14 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView];
      [v14 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v14 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_1000C36CC(v28);
    }

    v15 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel];
    Lockup.title.getter();
    if (v16)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    [v15 setText:v17];

    v18 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel];
    Lockup.developerTagline.getter();
    if (v19)
    {
      v20 = String._bridgeToObjectiveC()();
    }

    else
    {
      v20 = 0;
    }

    [v18 setText:v20];

    Lockup.ageRating.getter();
    if (v21)
    {
      v22 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView];
      v23 = *&v22[OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel];
      v24 = String._bridgeToObjectiveC()();
      [v23 setText:v24];

      [v22 setNeedsLayout];
      [v22 setNeedsDisplay];

      [v22 setHidden:0];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView] setHidden:1];
    }

    [v2 setNeedsLayout];
  }

  return result;
}

void sub_1006A326C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView);

    v5 = a1;
    ArtworkView.image.setter();
  }
}

uint64_t sub_1006A32FC()
{
  v0 = type metadata accessor for ProductReviewCustomLayout.Metrics();
  sub_100005644(v0, qword_1009D3440);
  sub_1000056A8(v0, qword_1009D3440);
  return ProductReviewCustomLayout.Metrics.init(horizontalContentPadding:verticalContentPadding:ratingsTopSpace:dateAuthorLeadingPadding:dateAuthorTopPadding:ratingsAccessibilityTopPadding:dateAccessibilityTopPadding:bodyTopPadding:responseTitleTopPadding:responseTitleAccessibilityTopPadding:responseDateAccessibilityTopPadding:responseBodyTopPadding:)();
}

UIColor sub_1006A3414()
{
  sub_100028BB8();
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 systemBackgroundColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_1009D3458 = result.super.isa;
  return result;
}

uint64_t sub_1006A34B0()
{
  v0 = sub_10002849C(&qword_100979010);
  sub_100005644(v0, qword_1009D3468);
  sub_1000056A8(v0, qword_1009D3468);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

char *sub_1006A3548(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v307 = type metadata accessor for AutomationSemantics();
  v305 = *(v307 - 8);
  __chkstk_darwin(v307);
  v301 = &v278 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CornerStyle();
  v289 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v278 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v14 - 8);
  v287 = &v278 - v15;
  v16 = type metadata accessor for FontUseCase();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v298 = &v278 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DirectionalTextAlignment();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v278 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v23 - 8);
  v297 = &v278 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v278 - v26;
  v28 = OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel;
  if (qword_10096DF38 != -1)
  {
    swift_once();
  }

  v288 = v13;
  v290 = v11;
  v29 = sub_1000056A8(v16, qword_1009D0D28);
  v30 = *(v17 + 16);
  v306 = (v17 + 16);
  v286 = v30;
  (v30)(v27, v29, v16);
  v300 = v17;
  v31 = *(v17 + 56);
  v285 = v16;
  v304 = (v17 + 56);
  v302 = v31;
  (v31)(v27, 0, 1, v16);
  v32 = *(v20 + 104);
  v294 = enum case for DirectionalTextAlignment.none(_:);
  v303 = v19;
  v296 = v20 + 104;
  v292 = v32;
  (v32)(v22);
  v33 = v22;
  v34 = type metadata accessor for DynamicTypeLabel();
  v35 = objc_allocWithZone(v34);
  v293 = v33;
  *(v5 + v28) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v36 = type metadata accessor for RatingView();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v38 = &v37[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v38 = 0;
  v38[8] = 1;
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = 5;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v39 = qword_100982C88;
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v37[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 1;
  *v38 = 0x4008000000000000;
  v38[8] = 0;
  v37[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 1;
  v40 = type metadata accessor for StarRow();
  v41 = objc_allocWithZone(v40);
  v42 = v39;
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v37[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v43 = objc_allocWithZone(v40);
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v313.receiver = v37;
  v313.super_class = v36;
  v44 = objc_msgSendSuper2(&v313, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v45 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v46 = *&v44[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v47 = *&v46[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v46[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v44[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v48 = v46;
  sub_1003A3A64(v47);

  if (*&v44[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v44 addSubview:?];
  }

  v299 = v34;
  v49 = OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView;
  [v44 addSubview:*&v44[v45]];

  *(v5 + v49) = v44;
  v295 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel;
  v50 = v303;
  v51 = v286;
  if (qword_10096DF50 != -1)
  {
    swift_once();
  }

  v52 = v285;
  v284 = sub_1000056A8(v285, qword_1009D0D70);
  v51(v27);
  (v302)(v27, 0, 1, v52);
  v53 = v293;
  v54 = v294;
  v55 = v50;
  v56 = v292;
  v292(v293, v294, v55);
  v57 = v299;
  v58 = objc_allocWithZone(v299);
  *&v295[v5] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v295 = OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel;
  if (qword_10096DF58 != -1)
  {
    swift_once();
  }

  v59 = sub_1000056A8(v52, qword_1009D0D88);
  (v51)(v27, v59, v52);
  (v302)(v27, 0, 1, v52);
  v56(v53, v54, v303);
  v60 = objc_allocWithZone(v57);
  *&v295[v5] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v61 = v51;
  v62 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel;
  if (qword_10096DF60 != -1)
  {
    swift_once();
  }

  v63 = sub_1000056A8(v52, qword_1009D0DA0);
  v61(v27, v63, v52);
  (v302)(v27, 0, 1, v52);
  v56(v53, v54, v303);
  v64 = objc_allocWithZone(v57);
  v65 = v61;
  *(v5 + v62) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v279 = OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel;
  v280 = v5;
  if (qword_10096DF48 != -1)
  {
    swift_once();
  }

  v66 = sub_1000056A8(v52, qword_1009D0D58);
  v67 = v298;
  v283 = v66;
  (v61)(v298);
  v295 = objc_opt_self();
  v68 = [v295 clearColor];
  v282 = type metadata accessor for ExpandableTextView();
  v69 = objc_allocWithZone(v282);
  v70 = v68;
  v71 = sub_10059F344(v70, 0.0, 0.0, 0.0, 0.0);
  v65(v27, v67, v52);
  v72 = v302;
  v73 = v65;
  (v302)(v27, 0, 1, v52);
  sub_1003DB684(v27, v297);
  v74 = v71;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v27, &qword_100972ED0);
  v75 = *(v300 + 8);
  v300 += 8;
  v281 = v75;
  v75(v67, v52);

  v76 = v280;
  *&v280[v279] = v74;
  v279 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel;
  v77 = v65;
  v78 = v52;
  v79 = v76;
  if (qword_10096DF40 != -1)
  {
    swift_once();
  }

  v80 = sub_1000056A8(v78, qword_1009D0D40);
  v73(v27, v80, v78);
  v72(v27, 0, 1, v78);
  v81 = v293;
  v82 = v294;
  v83 = v292;
  v292(v293, v294, v303);
  v84 = objc_allocWithZone(v299);
  *&v79[v279] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v279 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel;
  v77(v27, v284, v78);
  v72(v27, 0, 1, v78);
  v83(v81, v82, v303);
  v85 = objc_allocWithZone(v299);
  *&v79[v279] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v86 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel;
  v87 = v298;
  v88 = v77;
  v77(v298, v283, v78);
  v89 = [v295 clearColor];
  v90 = objc_allocWithZone(v282);
  v91 = v89;
  v92 = sub_10059F344(v91, 0.0, 0.0, 0.0, 0.0);
  v88(v27, v87, v78);
  (v302)(v27, 0, 1, v78);
  sub_1003DB684(v27, v297);
  v93 = v92;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v27, &qword_100972ED0);
  v281(v87, v78);

  *&v79[v86] = v93;
  v94 = OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView;
  type metadata accessor for ShadowView();
  *&v79[v94] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v95 = OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView;
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v79[v95] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v97 = OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView;
  *&v79[v97] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v98 = OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView;
  *&v79[v98] = [objc_allocWithZone(UIView) init];
  v99 = &v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler];
  *v99 = 0;
  v99[1] = 0;
  v100 = &v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapHandler];
  *v100 = 0;
  v100[1] = 0;
  v101 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer;
  *&v79[v101] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v102 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer;
  *&v79[v102] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination] = 0;
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse] = 0;
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded] = 1;
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded] = 1;
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_shouldHandleTextSelection] = 1;
  v103 = &v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_actionHandler];
  v104 = type metadata accessor for ProductReviewView();
  *v103 = 0;
  v103[1] = 0;
  v312.receiver = v79;
  v312.super_class = v104;
  v105 = objc_msgSendSuper2(&v312, "initWithFrame:", a1, a2, a3, a4);
  v106 = [v105 layer];
  [v106 setCornerRadius:20.0];

  v107 = OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView;
  v108 = qword_10096DA70;
  v109 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView);
  if (v108 != -1)
  {
    swift_once();
  }

  v110 = type metadata accessor for Shadow();
  v111 = sub_1000056A8(v110, qword_1009CFDB0);
  v112 = *(v110 - 8);
  v113 = v287;
  (*(v112 + 16))(v287, v111, v110);
  (*(v112 + 56))(v113, 0, 1, v110);
  dispatch thunk of ShadowView.shadow.setter();

  v114 = *(v105 + v107);
  v115 = v289;
  v116 = v288;
  v117 = enum case for CornerStyle.continuous(_:);
  v118 = v290;
  v306 = *(v289 + 104);
  v306(v288);
  v119 = v114;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  v304 = *(v115 + 8);
  v304(v116, v118);
  [v105 addSubview:*(v105 + v107)];
  v120 = OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView;
  v121 = qword_10096ED80;
  v122 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView);
  if (v121 != -1)
  {
    swift_once();
  }

  v123 = qword_1009D3458;
  [v122 setBackgroundColor:qword_1009D3458];

  v124 = *(v105 + v120);
  (v306)(v116, v117, v118);
  v125 = v124;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  v304(v116, v118);
  [v105 addSubview:*(v105 + v120)];
  v126 = OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView;
  [*(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView) setBackgroundColor:v123];
  [*(v105 + v126) _setContinuousCornerRadius:20.0];
  [v105 addSubview:*(v105 + v126)];
  v127 = OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView;
  v128 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView);
  v129 = [v295 systemBackgroundColor];
  [v128 setBackgroundColor:v129];

  [*(v105 + v127) setAlpha:0.0];
  v130 = *(v105 + v127);
  (v306)(v116, v117, v118);
  v131 = v130;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  v304(v116, v118);
  [*(v105 + v126) addSubview:*(v105 + v127)];
  v132 = OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel;
  v133 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel);
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v134 = v133;
  v135 = v301;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v308, &unk_1009711D0);
  sub_10002B894(&v310, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v136 = v305 + 8;
  v137 = *(v305 + 8);
  v137(v135, v307);
  [*(v105 + v126) addSubview:*(v105 + v132)];
  v138 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel;
  v139 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel);
  v140 = sub_100028BB8();
  v141 = v139;
  v142 = static UIColor.secondaryText.getter();
  [v141 setTextColor:v142];

  v143 = *(v105 + v138);
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v144 = v143;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v308, &unk_1009711D0);
  sub_10002B894(&v310, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v304 = v137;
  v305 = v136;
  v137(v135, v307);
  v306 = v126;
  [*(v105 + v126) addSubview:*(v105 + v138)];
  v145 = OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView;
  v146 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView);
  v147 = static UIColor.primaryText.getter();
  v148 = *&v146[OBJC_IVAR____TtC8AppStore10RatingView_starColor];
  *&v146[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = v147;
  v149 = v147;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1003A2F78();
  }

  v150 = *(v105 + v145);
  v151 = static UIColor.tertiaryText.getter();
  v152 = static UIColor.primaryText.getter();
  v153 = static UIColor.tertiaryText.getter();
  v154 = static UIColor.primaryText.getter();
  v155.super.isa = UIColor.init(light:lightHighContrast:dark:darkHighContrast:)(v151, v152, v153, v154).super.isa;
  isa = v155.super.isa;
  v157 = *&v150[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
  *&v150[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = v155;
  if (v157)
  {
    v158 = v155.super.isa;
    v159 = v157;
    v160 = static NSObject.== infix(_:_:)();

    if (v160)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v161 = v155.super.isa;
    v159 = 0;
  }

  sub_1003A2F78();
  v158 = isa;
LABEL_28:

  v162 = *(v105 + v145);
  v163 = [v105 traitCollection];

  v164 = [v163 accessibilityContrast];
  v165 = v164 == 0;
  v166 = v162[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars];
  v162[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = v165;
  if ((v165 ^ v166))
  {
    v167 = *&v162[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView];
    if (v167)
    {
      v168 = *(v167 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled);
      *(v167 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled) = v165;
      if (((v164 == 0) ^ v168))
      {
        sub_1003A450C();
      }
    }
  }

  v303 = v140;

  v169 = qword_10096ED88;
  v170 = *(v105 + v145);
  if (v169 != -1)
  {
    swift_once();
  }

  [v170 setMaximumContentSizeCategory:qword_1009D3460];

  v171 = *(v105 + v145);
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v172 = v171;
  v173 = v301;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v308, &unk_1009711D0);
  sub_10002B894(&v310, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v174 = v307;
  v304(v173, v307);
  v175 = v306;
  [*(v306 + v105) addSubview:*(v105 + v145)];
  v176 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel;
  v177 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel);
  v178 = static UIColor.secondaryText.getter();
  [v177 setTextColor:v178];

  v179 = *(v105 + v176);
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v180 = v179;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v308, &unk_1009711D0);
  sub_10002B894(&v310, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v181 = v304;
  v304(v173, v174);
  [*(v175 + v105) addSubview:*(v105 + v176)];
  v182 = OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel;
  v183 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel);
  v184 = static UIColor.secondaryText.getter();
  [v183 setTextColor:v184];

  v185 = *(v105 + v182);
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v186 = v185;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v308, &unk_1009711D0);
  sub_10002B894(&v310, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v181(v173, v307);
  [*(v175 + v105) addSubview:*(v105 + v182)];
  v187 = OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel;
  v188 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel);
  v189 = static UIColor.secondaryText.getter();
  [*&v188[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setTextColor:v189];

  v190 = *(v105 + v187);
  if (*(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse))
  {
    v191 = 2;
  }

  else
  {
    v191 = 6;
  }

  v192 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v193 = *&v190[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v190[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = v191;
  v194 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v190[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed])
  {
    v195 = *&v190[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v196 = v190;
    [v195 setNumberOfLines:v191];
    if (*&v190[v192] == v193)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v197 = v190;
    if (v191 == v193)
    {
      goto LABEL_43;
    }
  }

  if (v190[v194])
  {
    sub_1005A0320();
  }

LABEL_43:

  v198 = *(v105 + v187);
  v199 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded);
  v200 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v201 = v198[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
  v198[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = v199 ^ 1;
  if (v199)
  {
    v202 = 0;
  }

  else
  {
    v202 = *&v198[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  }

  v203 = *&v198[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  v204 = v198;
  [v203 setNumberOfLines:v202];
  if (v201 != v198[v200])
  {
    sub_1005A0320();
  }

  [*(*(v105 + v187) + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setLineBreakMode:4];
  [*(*(v105 + v187) + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setTextAlignment:4];
  v205 = *(v105 + v187);
  v205[OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton] = 0;
  v206 = v205;
  sub_1005A0320();

  [*(v105 + v187) setUserInteractionEnabled:1];
  v207 = *(v105 + v187);
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v208 = v207;
  v209 = v301;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v308, &unk_1009711D0);
  sub_10002B894(&v310, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v304(v209, v307);
  v210 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer;
  v211 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer);
  v212 = v105;
  [v211 addTarget:v212 action:"moreReviewFrom:"];
  [*(v105 + v210) setDelegate:v212];
  v213 = *(v105 + v187);
  v300 = v210;
  [v213 addGestureRecognizer:*(v105 + v210)];
  v214 = *(v105 + v187);
  v215 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v216 = &v214[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v217 = *&v214[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  *v216 = sub_1006A7C5C;
  v216[1] = v215;
  swift_retain_n();
  v218 = v214;
  sub_10001F63C(v217);
  v219 = *&v218[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton];

  [v219 setUserInteractionEnabled:1];

  v220 = *(v306 + v105);
  v302 = v187;
  [v220 addSubview:*(v105 + v187)];
  v221 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel;
  v222 = *&v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel];
  v223._object = 0x800000010081C190;
  v223._countAndFlagsBits = 0xD000000000000012;
  v224._countAndFlagsBits = 0;
  v224._object = 0xE000000000000000;
  localizedString(_:comment:)(v223, v224);
  v225 = String._bridgeToObjectiveC()();

  [v222 setText:v225];

  [*&v212[v221] setHidden:1];
  v226 = *&v212[v221];
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v227 = v226;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v308, &unk_1009711D0);
  sub_10002B894(&v310, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v228 = v307;
  v229 = v304;
  v304(v209, v307);
  [*(v306 + v105) addSubview:*&v212[v221]];
  v230 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel;
  v231 = *&v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel];
  v232 = static UIColor.secondaryText.getter();
  [v231 setTextColor:v232];

  [*&v212[v230] setHidden:1];
  v233 = *&v212[v230];
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v234 = v233;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v308, &unk_1009711D0);
  sub_10002B894(&v310, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v229(v209, v228);
  [*(v306 + v105) addSubview:*&v212[v230]];
  v235 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel;
  v236 = *&v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel];
  v237 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v238 = *&v236[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v236[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = 2;
  v239 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v236[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
  {
    v240 = *&v236[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v241 = v236;
    [v240 setNumberOfLines:2];
    if (*&v236[v237] == v238)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v242 = v236;
    if (v238 == 2)
    {
      goto LABEL_54;
    }
  }

  if (v236[v239])
  {
    sub_1005A0320();
  }

LABEL_54:

  v243 = *&v212[v235];
  v244 = v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded];
  v245 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v246 = v243[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
  v243[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = v244 ^ 1;
  if (v244)
  {
    v247 = 0;
  }

  else
  {
    v247 = *&v243[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  }

  v248 = *&v243[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  v249 = v243;
  [v248 setNumberOfLines:v247];
  if (v246 != v243[v245])
  {
    sub_1005A0320();
  }

  [*(*&v212[v235] + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setLineBreakMode:4];
  v250 = *&v212[v235];
  v250[OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton] = 0;
  v251 = v250;
  sub_1005A0320();

  v252 = *&v212[v235];
  v253 = static UIColor.secondaryText.getter();
  [*&v252[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setTextColor:v253];

  [*&v212[v235] setUserInteractionEnabled:1];
  [*&v212[v235] setHidden:1];
  v254 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer;
  v255 = *&v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer];
  v256 = v212;
  [v255 addTarget:v256 action:"moreResponseFrom:"];
  v257 = *&v212[v254];
  [v257 setDelegate:v256];

  [*&v212[v235] addGestureRecognizer:*&v212[v254]];
  v258 = *&v212[v235];
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v259 = v258;
  v260 = v301;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v308, &unk_1009711D0);
  sub_10002B894(&v310, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v304(v260, v307);
  v261 = *&v212[v235];
  v262 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v263 = &v261[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v264 = *&v261[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  *v263 = sub_1006A7C80;
  v263[1] = v262;
  swift_retain_n();
  v265 = v261;
  sub_10001F63C(v264);
  v266 = *&v265[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton];

  [v266 setUserInteractionEnabled:1];

  [*(v306 + v105) addSubview:*&v212[v235]];
  v267 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v256 action:"stateChangedFor:"];

  [v256 addGestureRecognizer:v267];
  [*&v212[v254] setCancelsTouchesInView:0];
  [*(v105 + v300) setCancelsTouchesInView:0];
  v268 = *&v212[v235];
  v269 = &v268[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v270 = *&v268[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  *v269 = 0;
  *(v269 + 1) = 0;
  v271 = v268;
  sub_10001F63C(v270);
  [*&v271[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v272 = *&v302[v105];
  v273 = &v272[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v274 = *&v272[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  *v273 = 0;
  *(v273 + 1) = 0;
  v275 = v272;
  sub_10001F63C(v274);
  [*&v275[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  sub_1006A5BE8();
  sub_10002849C(&qword_10097B110);
  v276 = swift_allocObject();
  *(v276 + 16) = xmmword_1007B1890;
  *(v276 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v276 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v276 + 48) = type metadata accessor for UITraitAccessibilityContrast();
  *(v276 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v256;
}