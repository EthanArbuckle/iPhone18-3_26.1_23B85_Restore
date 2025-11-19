void sub_1004CAD4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = type metadata accessor for Artwork.Crop();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v6 + 8))(v8, v17);
        Artwork.config(_:mode:prefersLayeredImage:)();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v20, &qword_10096FB90);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_1004CAF6C(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Artwork.Crop();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AdamId();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspectRatio();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspectFitMeasurable();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v75);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for EditorialSearchResult();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = v6;
  v64 = v5;
  v17 = v74;
  type metadata accessor for ArtworkIconFetcher();
  BaseObjectGraph.optional<A>(_:)();
  v66 = v2;
  v67 = *&v75[0];
  v18 = [v2 traitCollection];
  if (qword_10096E5A8 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v19 = v70;
    v20 = sub_1000056A8(v70, qword_1009D2040);
    (*(v69 + 2))(v11, v20, v19);
    AspectFitMeasurable.init(_:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007B0B70;
    *(v21 + 32) = v18;
    v22 = v18;
    v23 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v25 = v24;
    v27 = v26;

    (*(v13 + 8))(v15, v12);
    v28 = EditorialSearchResult.collectionAdamIds.getter();
    v30 = v66;
    if (!v28)
    {
      goto LABEL_11;
    }

    v13 = v28;
    v31 = *&v66[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
    if (!v31)
    {

LABEL_11:
      if (EditorialSearchResult.editorialVideo.getter())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v42 = Strong;
          Video.preview.getter();
          Artwork.config(_:mode:prefersLayeredImage:)();

          type metadata accessor for VideoView();
          v43 = &unk_1009840E0;
          v44 = type metadata accessor for VideoView;
LABEL_40:
          sub_1004CD1EC(v43, 255, v44);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          goto LABEL_41;
        }
      }

      if (EditorialSearchResult.editorialArtwork.getter())
      {
        v51 = *&v30[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
        if (v51)
        {
          v52 = v51;
          [v52 setContentMode:2];
          Artwork.config(using:)();
          type metadata accessor for ArtworkView();
          sub_1004CD1EC(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          goto LABEL_41;
        }
      }

      if (!EditorialSearchResult.iconArtwork.getter())
      {
LABEL_42:
      }

      v61 = *&v30[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView];
      if (v61)
      {
        v42 = v61;
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(fitting:)();
        (*(v69 + 1))(v11, v70);
        v62 = v65;
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v63 + 8))(v62, v64);
        Artwork.config(_:mode:prefersLayeredImage:)();
        Artwork.style.getter();
        ArtworkView.style.setter();
        [v42 setContentMode:Artwork.contentMode.getter()];
        ArtworkLoaderConfig.size.getter();
        ArtworkView.imageSize.setter();
        if (!Artwork.backgroundColor.getter())
        {
          sub_100005744(0, &qword_100970180);
          static UIColor.placeholderBackground.getter();
        }

        ArtworkView.backgroundColor.setter();
        type metadata accessor for ArtworkView();
        v43 = &qword_100970E80;
        v44 = &type metadata accessor for ArtworkView;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v32 = v31[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
    v29.f64[0] = v25;
    v33 = sub_1006B4CD4(v32, v29, v27);
    v15 = *(v13 + 16);
    if (v33 < v15)
    {
      break;
    }

    v37 = v67;
    v36 = v68;
    if (v33 <= v15)
    {
      goto LABEL_25;
    }

    v70 = v33 - v15;
    if (v33 - v15 < 0)
    {
      goto LABEL_49;
    }

    if (v15)
    {
      v65 = v17;
      v64 = v31;
      v45 = v31;

      v39 = v13;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_51;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v39 = sub_100034724(0, v15 + 1, 1, v13);
LABEL_18:
    v46 = 0;
    v11 = ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v69 = &v11[v13];
    v18 = (v71 + 16);
    v17 = (v71 + 32);
    while (1)
    {
      v47 = v46 % v15;
      if (v46 % v15 < 0)
      {
        break;
      }

      if (v47 >= *(v13 + 16))
      {
        goto LABEL_45;
      }

      v48 = *(v71 + 72);
      (*(v71 + 16))(v72, &v69[v48 * v47], v73);
      v12 = *(v39 + 16);
      v49 = *(v39 + 24);
      if (v12 >= v49 >> 1)
      {
        v39 = sub_100034724(v49 > 1, v12 + 1, 1, v39);
      }

      ++v46;
      *(v39 + 16) = v12 + 1;
      (*v17)(&v11[v39 + v12 * v48], v72, v73);
      if (v70 == v46)
      {

        v37 = v67;
        v36 = v68;
        v30 = v66;
        v31 = v64;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v34.f64[0] = v25;
  v35 = sub_1006B4CD4(v32, v34, v27);
  v37 = v67;
  v36 = v68;
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v15 < v35)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v15 == v35)
  {
LABEL_25:
    v50 = v31;
    v39 = v13;
  }

  else
  {
    sub_1005E7D94(v13, v13 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), 0, (2 * v35) | 1);
    v39 = v38;
    v40 = v31;
  }

LABEL_30:
  *&v31[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = *(v39 + 16);
  sub_1006B5128();
  if (v37)
  {
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    v54[2] = v31;
    v54[3] = v53;
    v54[4] = v36;
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v56[2] = v31;
    v56[3] = v55;
    v56[4] = v36;
    *&v75[0] = v30;
    type metadata accessor for EditorialSearchResultContentView();
    sub_1004CD1EC(&qword_100988558, v57, type metadata accessor for EditorialSearchResultContentView);
    v58 = v31;
    swift_retain_n();
    v59 = v58;

    v60 = v30;
    AnyHashable.init<A>(_:)();
    dispatch thunk of ArtworkIconFetcher.fetchArtworkIcons(for:partialCompletion:completion:handlerKey:)();

    sub_10002B894(&v74, &qword_10096FB90);
  }

  else
  {

    v76 = 0;
    memset(v75, 0, sizeof(v75));
  }

  return sub_10002B894(v75, &qword_10096FB90);
}

id sub_1004CBAD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004CBC1C(void *a1)
{
  sub_1004CD0A8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_1004CBCA8(uint64_t **a1))()
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
  v2[4] = sub_1004C719C(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1004CBD1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1004CBD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1004CBDDC(uint64_t *a1))()
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

uint64_t sub_1004CBF9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1004CD1EC(&qword_100988548, a2, type metadata accessor for EditorialSearchResultContentView);
  result = sub_1004CD1EC(&qword_100988550, v3, type metadata accessor for EditorialSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1004CC020()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v40 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for PageGrid();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v46 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialSearchResult();
  sub_1004CD1EC(&qword_100973D90, 255, &type metadata accessor for EditorialSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v45 = v47[0];
  if (v47[0])
  {
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    v36 = v0;

    PageGrid.init(from:breakpointOverrides:)();
    v35[2] = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
    v42 = v13;
    v35[0] = EditorialSearchResult.title.getter();
    v15 = v14;
    v35[1] = EditorialSearchResult.subtitle.getter();
    v43 = v16;
    v17 = sub_100079F24();
    PageGrid.componentMeasuringSize(spanning:)();
    CGSize.subtracting(insets:)();
    if (qword_10096E5C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D2080);
    if (qword_10096E5E0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v3, qword_1009D20C8);
    v41 = v15;
    if (v15)
    {
      v18 = type metadata accessor for Feature();
      v48 = v18;
      v49 = sub_1004CD1EC(&qword_100972E50, 255, &type metadata accessor for Feature);
      v19 = sub_1000056E0(v47);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      isFeatureEnabled(_:)();
      sub_100007000(v47);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      AnyDimension.topMargin(from:in:)();
    }

    v20 = v43;
    v21 = v37;
    if (qword_10096E5D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1000056A8(v6, qword_1009D2098);
    (*(v7 + 16))(v44, v22, v6);
    if (qword_10096E5E8 != -1)
    {
      swift_once();
    }

    v23 = sub_1000056A8(v3, qword_1009D20E0);
    (*(v21 + 16))(v5, v23, v3);
    if (v20)
    {
      v24 = type metadata accessor for Feature();
      v48 = v24;
      v49 = sub_1004CD1EC(&qword_100972E50, 255, &type metadata accessor for Feature);
      v25 = sub_1000056E0(v47);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      isFeatureEnabled(_:)();
      sub_100007000(v47);
      v26 = v44;
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      AnyDimension.topMargin(from:in:)();
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v26, v6);
    }

    else
    {
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v44, v6);
    }

    if (qword_10096E5C0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D2068);
    v27 = v42;
    if (qword_10096E5D8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v3, qword_1009D20B0);
    if (v27)
    {
      v28 = type metadata accessor for Feature();
      v48 = v28;
      v49 = sub_1004CD1EC(&qword_100972E50, 255, &type metadata accessor for Feature);
      v29 = sub_1000056E0(v47);
      (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
      isFeatureEnabled(_:)();
      sub_100007000(v47);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      AnyDimension.topMargin(from:in:)();
    }

    v30 = [v17 traitCollection];
    static Dimensions.defaultRoundingRule.getter();
    sub_100005744(0, &qword_1009730E0);
    v31 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    StaticDimension.value(compatibleWith:rounded:)();
    UIFont.estimatedFirstBaseline.getter();

    v32 = *(v40 + 8);
    v33 = v36;
    v32(v2, v36);
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v3, qword_1009D2430);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v32(v2, v33);
    if (qword_10096E5A8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for AspectRatio();
    sub_1000056A8(v34, qword_1009D2040);
    AspectRatio.width(fromHeight:)();
    AspectRatio.height(fromWidth:)();
    swift_unknownObjectRelease();

    return (*(v38 + 8))(v46, v39);
  }

  return result;
}

id sub_1004CCB70(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v6;
    [v7 setClipsToBounds:1];
    if (qword_10096E5B8 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_1009D2060];

    [v1 addSubview:v7];
    v8 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView];
    if (v8)
    {
      v9 = v8;
      [v1 addSubview:v9];
    }
  }

  return [v1 setNeedsLayout];
}

id sub_1004CCC9C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v2[v9];
  }

  else
  {
    v11 = 0;
  }

  *&v2[v9] = a1;
  v12 = a1;

  if (a1)
  {
    type metadata accessor for RoundedCornerView();
    (*(v5 + 104))(v8, enum case for CornerStyle.arc(_:), v4);
    v13 = RoundedCornerView.__allocating_init(radius:style:)();
    sub_1004CCB70(v13);

    v14 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView];
    if (v14)
    {
      v15 = v14;
      [v15 addSubview:v12];
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView;
    v17 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView];
    if (v17)
    {
      [v17 removeFromSuperview];
      v18 = *&v2[v16];
    }

    else
    {
      v18 = 0;
    }

    *&v2[v16] = 0;

    [v2 setNeedsLayout];
  }

  return [v2 setNeedsLayout];
}

id sub_1004CCE64(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v6[OBJC_IVAR____TtC8AppStore11ArtworkGrid_showBorder] = 1;
    [*&v6[OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView] setHidden:0];
    v7 = v6;
    [v7 _setCornerRadius:20.0];
    [v7 setNeedsLayout];
    if (qword_10096E5B0 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_1009D2058];

    [v1 addSubview:v7];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1004CCFA0()
{
  type metadata accessor for ArtworkIconFetcher();
  BaseObjectGraph.optional<A>(_:)();
  if (v6[0])
  {
    type metadata accessor for EditorialSearchResultContentView();
    sub_1004CD1EC(&qword_100988558, v1, type metadata accessor for EditorialSearchResultContentView);

    v2 = v0;
    AnyHashable.init<A>(_:)();
    dispatch thunk of ArtworkIconFetcher.forgetFetches(for:)();

    sub_10003D614(v6);
  }

  v3 = *&v0[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
  if (v3)
  {
    v4 = v3;
    sub_1006AD188();
  }
}

void sub_1004CD0A8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_100005744(0, &qword_100972EB0);
      v4 = v0;
      v5 = static NSObject.== infix(_:_:)();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

uint64_t sub_1004CD1EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1004CD234(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004CD2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1004CD314()
{
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1004CD3DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = Screenshots.artwork.getter();
  v10 = Screenshots.mediaPlatform.getter();
  v11 = sub_1004D62C0(v9, v10, a7, 0.0, 0.0, a1);

  return v11;
}

uint64_t sub_1004CD504(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1004CD54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v8 - 8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for AspectRatio();
  v11 = *(v74 - 8);
  __chkstk_darwin(v74);
  v85 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v68 - v14;
  v15 = Screenshots.mediaPlatform.getter();
  v86 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform;
  *&v5[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform] = v15;

  v16 = *&v5[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_flowLayout];
  ObjectType = swift_getObjectType();
  [a5 pageMarginInsets];
  [v16 setSectionInset:?];
  v17 = [a5 snapshotPageTraitEnvironment];
  v82 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits] = v17;
  swift_unknownObjectRelease();
  v18 = Screenshots.artwork.getter();
  v19 = *&v5[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork];
  v71 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork;
  *&v5[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork] = v18;

  v21 = sub_1006E1E74(v20, v19);

  v22 = off_100988000;
  v23 = &selRef_loadView;
  if ((v21 & 1) == 0)
  {
    [*&v5[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView] reloadData];
  }

  v24 = Screenshots.artwork.getter();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_58;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v27 = v74;
  v28 = v83;
  if (v26)
  {
    v78 = v26;
    v29 = 0;
    v79 = type metadata accessor for Screenshots();
    v80 = v25 & 0xC000000000000001;
    v73 = v25 & 0xFFFFFFFFFFFFFF8;
    v75 = v25;
    v72 = v25 + 32;
    v76 = (v11 + 2);
    v77 = (v11 + 1);
    v11 = _swiftEmptyArrayStorage;
    v69 = a5;
    v68 = v10;
    v70 = v6;
    while (1)
    {
      if (v80)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v29 >= *(v73 + 16))
        {
          goto LABEL_57;
        }

        v23 = *(v72 + 8 * v29);

        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      v25 = *&v6[v86];
      v84 = v23;
      if (v25)
      {

        v31 = MediaPlatform.isPhonePlatform.getter();

        if (v31)
        {
          v32 = *&v6[v71];
          v6 = (v32 & 0xFFFFFFFFFFFFFF8);
          if (v32 >> 62)
          {
            v22 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v22 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v10 = (v32 & 0xC000000000000001);

          v33 = 0;
          while (1)
          {
            v23 = v22 != v33;
            if (v22 == v33)
            {
LABEL_28:

              v6 = v70;
              a5 = v69;
              v10 = v68;
              v27 = v74;
              v28 = v83;
              goto LABEL_29;
            }

            if (v10)
            {
              v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              if (__OFADD__(v33, 1))
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v33 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v25 = *(v32 + 8 * v33 + 32);

              if (__OFADD__(v33, 1))
              {
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                v26 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_5;
              }
            }

            a5 = dispatch thunk of Artwork.isPortrait.getter();

            v33 = (v33 + 1);
            if (a5)
            {
              goto LABEL_28;
            }
          }
        }
      }

      LOBYTE(v23) = 0;
LABEL_29:

      sub_10061B788(v34, v10);

      v35 = v10[8];
      v36 = v10[10];
      sub_1001BABC8(v10);
      result = *&v6[v82];
      if (!result)
      {
        break;
      }

      [result pageContainerSize];
      [v6 bounds];
      v39 = v38;
      if (v23)
      {
        if (AspectRatio.isPortrait.getter())
        {
          (*v76)(v85, v28, v27);
        }

        else
        {
          AspectRatio.inverted.getter();
        }

        v40 = 1;
      }

      else
      {
        (*v76)(v85, v28, v27);
        v40 = AspectRatio.isPortrait.getter();
      }

      v41 = [a5 traitCollection];
      v42 = UITraitCollection.isRegularPad.getter();

      if (v42)
      {
        [a5 pageMarginInsets];
        v44 = v43;
        [a5 pageMarginInsets];
        v46 = v44 + v45;
        PageTraitEnvironment.pageColumnMargin.getter();
        v48 = v39 - (v46 + v47 + v47);
        v49 = v47 * 0.0;
        v50 = v48 * 0.333333333;
      }

      else
      {
        if (v40)
        {
          v51 = 2.0;
        }

        else
        {
          v51 = 1.0;
        }

        if (v40)
        {
          v52 = 3.0;
        }

        else
        {
          v52 = 1.0;
        }

        [a5 pageMarginInsets];
        v54 = v53;
        [a5 pageMarginInsets];
        v56 = v54 + v55;
        PageTraitEnvironment.pageColumnMargin.getter();
        v58 = v39 - (v56 + (v52 + -1.0) * v57);
        v49 = (v51 + -1.0) * v57;
        v50 = v51 / v52 * v58;
      }

      v59 = v49 + v50;
      v60 = [a5 traitCollection];
      UITraitCollection.isRegularPad.getter();

      v61 = v85;
      AspectRatio.height(fromWidth:)();
      v62 = v59 - (v35 + v36);
      AspectRatio.height(fromWidth:)();
      v64 = v63;
      v22 = v77;
      v65 = *v77;
      (*v77)(v61, v27);
      v28 = v83;
      (v65)(v83, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1000337F0(0, *(v11 + 2) + 1, 1, v11);
      }

      v23 = *(v11 + 2);
      v66 = *(v11 + 3);
      v25 = v23 + 1;
      if (v23 >= v66 >> 1)
      {
        v11 = sub_1000337F0((v66 > 1), v23 + 1, 1, v11);
      }

      *(v11 + 2) = v25;
      v67 = &v11[3 * v23];
      *(v67 + 4) = v84;
      v67[5] = v62;
      *(v67 + 6) = v64;
      if (v29 == v78)
      {

        v23 = 0x10093F000;
        v22 = off_100988000;
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
LABEL_53:
    *&v6[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_sizedArtwork] = v11;

    return [*(v22[347] + v6) *(v23 + 112)];
  }

  return result;
}

uint64_t type metadata accessor for ComponentOverflowData()
{
  result = qword_100988600;
  if (!qword_100988600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004CDD34()
{
  result = sub_100065AF0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004CDDB8()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v4 = sub_1004CDE70();
    v6 = v5;
    swift_unknownObjectWeakDestroy();
    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;
    sub_1004CE9E8(v4, v6);
    sub_100075B34(v7, v8);
  }

  sub_1004CEA3C(v2, v3);
  return v4;
}

uint64_t sub_1004CDE70()
{
  v0 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_10002849C(&qword_100988670);
    inited = swift_initStackObject();
    v34 = xmmword_1007B10D0;
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v10 = ShareSheetNotesMetadata.itemName.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    v12 = sub_100398EF4(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100982880);
    ShareSheetNotesMetadata.url.getter();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_10002B894(v2, &qword_100982460);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v38 = v3;
      v13 = sub_1000056E0(&v37);
      (*(v4 + 16))(v13, v6, v3);
      sub_100056164(&v37, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_100051CAC(v36, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v4 + 8))(v6, v3);
      v12 = v35;
    }

    v15 = ShareSheetNotesMetadata.developer.getter();
    if (v16)
    {
      v38 = &type metadata for String;
      *&v37 = v15;
      *(&v37 + 1) = v16;
      sub_100056164(&v37, v36);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_100051CAC(v36, 0x796E61706D6F63, 0xE700000000000000, v17);
      v12 = v35;
    }

    v18 = ShareSheetNotesMetadata.category.getter();
    if (v19)
    {
      v38 = &type metadata for String;
      *&v37 = v18;
      *(&v37 + 1) = v19;
      sub_100056164(&v37, v36);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_100051CAC(v36, 0x79726F6765746163, 0xE800000000000000, v20);
      v12 = v35;
    }

    v21 = ShareSheetNotesMetadata.fileSize.getter();
    if ((v22 & 1) == 0)
    {
      v38 = &type metadata for Int64;
      *&v37 = v21;
      sub_100056164(&v37, v36);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_100051CAC(v36, 0x7A69735F656C6966, 0xE900000000000065, v23);
      v12 = v35;
    }

    v24 = ShareSheetNotesMetadata.mediaType.getter();
    if (v25)
    {
      v38 = &type metadata for String;
      *&v37 = v24;
      *(&v37 + 1) = v25;
      sub_100056164(&v37, v36);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_100051CAC(v36, 0x79745F616964656DLL, 0xEA00000000006570, v26);
    }

    v27 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v37 = 0;
    v29 = [v27 archivedDataWithRootObject:isa requiringSecureCoding:0 error:&v37];

    v30 = v37;
    if (v29)
    {
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v31;
    }

    else
    {
      v32 = v30;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10096D110 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for OSLogger();
      sub_1000056A8(v33, qword_1009CE1E8);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = v34;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      return 0;
    }
  }

  return result;
}

void sub_1004CE530(uint64_t *a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = &type metadata for String;
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v11 = sub_1004CDDB8();
  v13 = v12;
  a1[3] = &type metadata for Data;

  *a1 = v11;
  a1[1] = v13;
}

void sub_1004CE62C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_1004CDDB8();
  *(a2 + 24) = &type metadata for Data;
  *a2 = v9;
  *(a2 + 8) = v10;
}

id sub_1004CE940()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004CE9E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1004CEA3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1004CE9E8(a1, a2);
  }

  return a1;
}

unint64_t sub_1004CEA50(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

CGFloat sub_1004CEB68(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeTranslation(&v11, 0.0, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_1004CEBC4(char a1)
{
  v2 = v1;
  v4 = *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v2[5];
    ObjectType = swift_getObjectType();
    (*(*(v7 + 8) + 16))(*(v2 + 16), ObjectType);
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = v2[7];
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 16))(*(v2 + 16), v12);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 traitCollection];

    if (v15)
    {
      v16 = v15;
      if (UITraitCollection.isSizeClassCompact.getter())
      {
        v17 = UITraitCollection.prefersAccessibilityLayouts.getter();

        if (v17)
        {
          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            v19 = v18;
            [v18 setUserInteractionEnabled:0];
          }

          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = 1;
            [v20 setUserInteractionEnabled:1];
LABEL_18:

            goto LABEL_20;
          }

          v22 = 1;
          goto LABEL_20;
        }
      }

      else
      {
      }
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    [v23 setUserInteractionEnabled:*(v2 + 16)];
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v21 = v25;
    [v25 setUserInteractionEnabled:(v2[2] & 1) == 0];
    v22 = 0;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_20:
  v53 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v54 = 0;
  v26 = *(v2 + 16);
  if (v22)
  {
    v27 = swift_allocObject();
    v28 = 0;
    *(v27 + 16) = v2;
    *(v27 + 24) = v26;
    *(v27 + 32) = v4;
    v29 = sub_1004D007C;
    v55 = sub_1004D007C;
    v56 = v27;
    v30 = sub_1004D008C;
    v51 = sub_1004D008C;
    v52 = v2;
    v31 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    if (v2[2])
    {
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        [*(v32 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_contentView) _scrollToTopIfPossible:0];
      }

      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_1004D002C;
      v55 = sub_1004D002C;
      v56 = v27;
      v31 = sub_1004D0034;
      v53 = sub_1004D0034;
      v54 = v2;
      v34 = sub_1004D003C;
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_1004D006C;
      v55 = sub_1004D006C;
      v56 = v27;
      v31 = sub_1004D0074;
      v53 = sub_1004D0074;
      v54 = v2;
      v34 = sub_1004D00C8;
    }

    v30 = v34;
    v51 = v34;
    v52 = v2;

    v28 = v2;
  }

  swift_retain_n();
  v35 = objc_opt_self();
  if (a1)
  {
    v49 = v29;
    v50 = v27;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100007A08;
    v48 = &unk_1008C5B30;
    v36 = _Block_copy(&v45);

    v49 = v30;
    v50 = v2;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100504C5C;
    v48 = &unk_1008C5B58;
    v37 = _Block_copy(&v45);

    [v35 animateWithDuration:4 delay:v36 options:v37 animations:0.4 completion:0.0];
    _Block_release(v37);
    _Block_release(v36);
    v49 = v31;
    v50 = v28;
    v45 = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100007A08;
    v48 = &unk_1008C5B80;
    v38 = _Block_copy(&v45);

    [v35 animateWithDuration:4 delay:v38 options:0 animations:0.2 completion:0.2];
    _Block_release(v38);
    v39 = 0;
LABEL_32:

    return sub_10001F63C(v39);
  }

  v40 = swift_allocObject();
  v40[2] = &v55;
  v40[3] = &v53;
  v40[4] = &v51;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1004D0060;
  *(v41 + 24) = v40;
  v49 = sub_10006F094;
  v50 = v41;
  v45 = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1000489A8;
  v48 = &unk_1008C5B08;
  v42 = _Block_copy(&v45);

  [v35 performWithoutAnimation:v42];
  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v39 = sub_1004D0060;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_1004CF25C(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(a1 + 56);
    v6 = Strong;
    ObjectType = swift_getObjectType();
    v8 = (*(*(v5 + 8) + 32))(ObjectType);

    v9 = *(v8 + 16);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (i >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v11 = *(v8 + 32 + 8 * i);
        if (v11)
        {
          [v11 setAlpha:0.0];
        }
      }
    }
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *(a1 + 56);
  v14 = v12;
  v15 = swift_getObjectType();
  v8 = (*(*(v13 + 8) + 40))(v15);

  if (qword_10096E5F0 != -1)
  {
    goto LABEL_56;
  }

  v16 = *(v8 + 16);
  if (v16)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_15:

LABEL_16:
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = *(a1 + 56);
      v22 = v20;
      v23 = swift_getObjectType();
      v8 = (*(*(v21 + 8) + 48))(v23);

      v24 = *(v8 + 16);
      if (v24)
      {
        v25 = 0;
        while (v25 < *(v8 + 16))
        {
          v26 = *(v8 + 32 + 8 * v25);
          if (v26)
          {
            [v26 setAlpha:0.0];
          }

          if (v24 == ++v25)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_53;
      }

LABEL_23:
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = *(a1 + 40);
      v29 = v27;
      v30 = swift_getObjectType();
      v8 = (*(*(v28 + 8) + 32))(v30);

      v31 = *(v8 + 16);
      if (v31)
      {
        v32 = 0;
        while (v32 < *(v8 + 16))
        {
          v33 = *(v8 + 32 + 8 * v32);
          if (v33)
          {
            [v33 setAlpha:1.0];
          }

          if (v31 == ++v32)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_54;
      }

LABEL_31:
    }

    v34 = swift_unknownObjectWeakLoadStrong();
    if (!v34)
    {
      break;
    }

    v35 = *(a1 + 40);
    v36 = v34;
    v37 = swift_getObjectType();
    v8 = (*(*(v35 + 8) + 40))(v37);

    v38 = *(v8 + 16);
    if (!v38)
    {
LABEL_37:

      break;
    }

    v39 = 0;
    while (v39 < *(v8 + 16))
    {
      v40 = v39 + 1;
      v41 = *(v8 + 32 + 8 * v39);
      *&v58 = 0;
      v57 = 0x3FF0000000000000uLL;
      *(&v58 + 1) = 0x3FF0000000000000;
      v59 = 0uLL;
      [v41 setTransform:&v57];
      v39 = v40;
      if (v38 == v40)
      {
        goto LABEL_37;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_56:
      swift_once();
      v16 = *(v8 + 16);
      if (!v16)
      {
        break;
      }

LABEL_12:
      v17 = 0;
      v55 = xmmword_100988688;
      v56 = xmmword_100988678;
      v54 = xmmword_100988698;
      while (v17 < *(v8 + 16))
      {
        v18 = v17 + 1;
        v19 = *(v8 + 32 + 8 * v17);
        v57 = v56;
        v58 = v55;
        v59 = v54;
        [v19 setTransform:&v57];
        v17 = v18;
        if (v16 == v18)
        {
          goto LABEL_15;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = *(v42 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton);

    v45 = 1.0;
    if (a2)
    {
      v45 = 0.0;
    }

    [v44 setAlpha:{v45, v54, v55, v56}];
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = *(v46 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel);

    v49 = 0.0;
    if (a2)
    {
      v49 = 1.0;
    }

    [v48 setAlpha:{v49, v54, v55, v56}];
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    [v50 setNeedsLayout];
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    sub_100406E78();
  }
}

uint64_t sub_1004CF6B8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[7];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[7];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_10096E5F0 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = a1[5];
    v21 = swift_getObjectType();
    a1 = (*(*(v20 + 8) + 48))(v21);

    v6 = a1[2];
    if (!v6)
    {
    }

    v22 = 0;
    while (v22 < a1[2])
    {
      v23 = a1[v22 + 4];
      if (v23)
      {
        [v23 setAlpha:1.0];
      }

      if (v6 == ++v22)
      {
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v25 = xmmword_100988688;
      v26 = xmmword_100988678;
      v24 = xmmword_100988698;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v27[0] = v26;
        v27[1] = v25;
        v27[2] = v24;
        [v17 setTransform:v27];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1004CF8F4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 40);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 56);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

uint64_t sub_1004CFAF0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[5];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[5];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_10096E5F8 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = a1[7];
    v21 = swift_getObjectType();
    a1 = (*(*(v20 + 8) + 48))(v21);

    v6 = a1[2];
    if (!v6)
    {
    }

    v22 = 0;
    while (v22 < a1[2])
    {
      v23 = a1[v22 + 4];
      if (v23)
      {
        [v23 setAlpha:1.0];
      }

      if (v6 == ++v22)
      {
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v25 = xmmword_1009886B8;
      v26 = xmmword_1009886A8;
      v24 = xmmword_1009886C8;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v27[0] = v26;
        v27[1] = v25;
        v27[2] = v24;
        [v17 setTransform:v27];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1004CFD2C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 56);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 56);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 40);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

uint64_t sub_1004CFF28(void (**a1)(uint64_t), void (**a2)(uint64_t), void (**a3)(uint64_t))
{
  v5 = *a1;

  v5(v6);

  v7 = *a2;

  v7(v8);

  v9 = *a3;

  v9(1);
}

uint64_t sub_1004CFFB8()
{
  swift_unknownObjectWeakDestroy();
  sub_10001F64C(v0 + 32);
  sub_10001F64C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1004D00CC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D20F8);
  sub_1000056A8(v4, qword_1009D20F8);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1004D0238(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setPreservesSuperviewLayoutMargins:0];

  v12 = [v10 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v10 contentView];
  [v13 addSubview:*&v10[OBJC_IVAR____TtC8AppStore34SmallLockupCollectionViewTableCell_lockupView]];

  return v10;
}

id sub_1004D0438()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupCollectionViewTableCell();
  v22.receiver = v0;
  v22.super_class = v6;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *&v1[OBJC_IVAR____TtC8AppStore34SmallLockupCollectionViewTableCell_lockupView];
  [v14 intrinsicContentSize];
  v16 = v15;
  if (qword_10096E600 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for StaticDimension();
  sub_1000056A8(v17, qword_1009D20F8);
  v18 = [v1 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v20 = v19;

  (*(v3 + 8))(v5, v2);
  return [v14 setFrame:{v9, v11 + v20, v13, v16}];
}

id sub_1004D0680()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004D0708()
{
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_1000056A8(v0, qword_1009D3798);
  return SmallLockupLayout.Metrics.artworkSize.getter();
}

void sub_1004D0770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_1004D07DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_1004D0848(uint64_t a1)
{
  result = sub_1004D0870();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004D0870()
{
  result = qword_1009887C8;
  if (!qword_1009887C8)
  {
    type metadata accessor for SmallLockupCollectionViewTableCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009887C8);
  }

  return result;
}

id sub_1004D08C4(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0;
  if (v20 && a1)
  {
    v72 = v14;
    v22 = (v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    v23 = *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    *v22 = a1;
    v22[1] = v20;
    v71 = a1;

    swift_unknownObjectWeakAssign();
    v24 = sub_100623FBC(a3);
    v25 = &OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
    if (!v24)
    {
      v32 = 0;
LABEL_29:
      v48 = v71;
      v46 = v72;
      goto LABEL_33;
    }

    v26 = v24;
    v70 = a2;
    v27 = [v24 visibleViewController];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for SearchViewController();
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        v30 = v29;

        v31 = *(v30 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController);
        v32 = *&v31[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController];
        v33 = v32;

        if (!v32)
        {
          goto LABEL_32;
        }

        v34 = v33;
LABEL_13:
        v36 = v33;
        swift_unknownObjectWeakAssign();
        v37 = [v34 collectionView];
        v38 = v37;
        if (v37)
        {
          v39 = [v37 indexPathsForSelectedItems];
          if (v39)
          {
            v40 = v39;
            v69 = v38;
            v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v41 + 16))
            {
              v42 = v72;
              (*(v72 + 16))(v16, v41 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v13);

              (*(v42 + 32))(v19, v16, v13);
              v43 = v69;
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v45 = [v43 cellForItemAtIndexPath:isa];

              v46 = v72;
              (*(v46 + 8))(v19, v13);
              v47 = *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
              *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v45;

              v25 = &OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
              a2 = v70;
              v48 = v71;
              goto LABEL_33;
            }

            v38 = v69;
          }
        }

        v49 = *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_originatingView);
        if (v49)
        {
          v69 = v38;
          v50 = v49;
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            v53 = v50;
            a2 = v70;
LABEL_28:

            v56 = *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
            *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v52;

            v25 = &OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
            goto LABEL_29;
          }

          v53 = v50;
          v68 = v50;
          while (1)
          {

            v54 = [v53 superview];
            if (!v54)
            {
              break;
            }

            v53 = v54;
            objc_opt_self();
            v55 = swift_dynamicCastObjCClass();
            if (v55)
            {
              v52 = v55;
              a2 = v70;
              v50 = v68;
              goto LABEL_28;
            }
          }
        }

        else
        {
        }

LABEL_32:
        a2 = v70;
        v48 = v71;
        v46 = v72;
        v25 = &OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
LABEL_33:
        v57 = *(v3 + v25[35]);
        if (!v57)
        {
LABEL_43:
          v64 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPagePresentationController());
          v65 = v48;
          v66 = [v64 initWithPresentedViewController:v65 presentingViewController:a2];

          return v66;
        }

        if (v32)
        {
          v58 = v57;
          v59 = [v32 collectionView];
          if (v59)
          {
            v60 = v59;
            v61 = [v59 indexPathForCell:v58];

            if (v61)
            {
              static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

              v62 = 0;
            }

            else
            {
              v62 = 1;
            }

            (*(v72 + 56))(v9, v62, 1, v13);
            sub_1003CB070(v9, v12);
            goto LABEL_42;
          }
        }

        (*(v46 + 56))(v12, 1, 1, v13);
LABEL_42:
        v63 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
        swift_beginAccess();
        sub_1000F4070(v12, v3 + v63);
        swift_endAccess();
        goto LABEL_43;
      }
    }

    v33 = [v26 visibleViewController];

    if (!v33)
    {
      v32 = 0;
      goto LABEL_32;
    }

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {

      v32 = 0;
      goto LABEL_32;
    }

    v34 = v35;
    v32 = v35;
    goto LABEL_13;
  }

  return v21;
}

void sub_1004D0FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v5 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v5 || (*&v39 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_1001F16B4(), v6 = v5, sub_10002849C(&qword_100988830), (swift_dynamicCast() & 1) == 0))
  {
    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_7;
  }

  v7 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
LABEL_7:
    sub_10002B894(&v47, &qword_100974638);
    goto LABEL_8;
  }

  v8 = v49;
  sub_10002A400(&v47, *(&v48 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_100007000(&v47);
  v10 = [v9 layer];

  v11 = [v10 presentationLayer];
  if (v11)
  {
    [v11 transform];

    goto LABEL_14;
  }

LABEL_8:
  v12 = *(a3 + v4);
  if (v12 && (*&v47 = *(a3 + v4), sub_1001F16B4(), v13 = v12, sub_10002849C(&qword_100988830), (swift_dynamicCast() & 1) != 0))
  {
    v14 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v15 = v41;
      sub_10002A400(&v39, *(&v40 + 1));
      v16 = (*(v15 + 8))(v14, v15);
      sub_100007000(&v39);
      v17 = [v16 layer];

      [v17 transform];
      goto LABEL_14;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10002B894(&v39, &qword_100974638);
  v18 = *&CATransform3DIdentity.m33;
  v51 = *&CATransform3DIdentity.m31;
  v52 = v18;
  v19 = *&CATransform3DIdentity.m43;
  v53 = *&CATransform3DIdentity.m41;
  v54 = v19;
  v20 = *&CATransform3DIdentity.m13;
  v47 = *&CATransform3DIdentity.m11;
  v48 = v20;
  v21 = *&CATransform3DIdentity.m23;
  v49 = *&CATransform3DIdentity.m21;
  v50 = v21;
LABEL_14:
  v22 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v22)
  {
    v23 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    *&v39 = v22;
    v25 = (*(*(v23 + 8) + 8))(ObjectType);
    v26 = [v25 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v26 setTransform:&v39];
  }

  v27 = *(a3 + v4);
  if (v27 && (sub_1001F16B4(), v28 = v27, sub_10002849C(&qword_100988830), (swift_dynamicCast() & 1) != 0))
  {
    v29 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v30 = v41;
      sub_10002A400(&v39, *(&v40 + 1));
      v31 = (*(v30 + 8))(v29, v30);
      sub_100007000(&v39);
      v32 = [v31 layer];

      [v32 removeAllAnimations];
      v33 = *(a3 + v4);
      if (!v33)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10002B894(&v39, &qword_100974638);
  v33 = *(a3 + v4);
  if (!v33)
  {
LABEL_26:
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_27;
  }

LABEL_23:
  sub_1001F16B4();
  v34 = v33;
  sub_10002849C(&qword_100988830);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v36 = v41;
    sub_10002A400(&v39, *(&v40 + 1));
    v37 = (*(v36 + 8))(v35, v36);
    sub_100007000(&v39);
    v38 = [v37 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v38 setTransform:&v39];

    return;
  }

LABEL_27:
  sub_10002B894(&v39, &qword_100974638);
}

void sub_1004D14EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (v4 && (*&v24 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_1001F16B4(), v5 = v4, sub_10002849C(&qword_100988830), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v7 = v34;
      sub_10002A400(&v32, *(&v33 + 1));
      v8 = (*(v7 + 8))(v6, v7);
      sub_100007000(&v32);
      v9 = [v8 layer];

      v10 = *&CATransform3DIdentity.m33;
      v28 = *&CATransform3DIdentity.m31;
      v29 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v30 = *&CATransform3DIdentity.m41;
      v31 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v24 = *&CATransform3DIdentity.m11;
      v25 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v26 = *&CATransform3DIdentity.m21;
      v27 = v13;
      [v9 setTransform:&v24];

      goto LABEL_7;
    }
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  sub_10002B894(&v32, &qword_100974638);
LABEL_7:
  v14 = a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController;
  v15 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v15)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    *&v24 = v15;
    v18 = (*(*(v16 + 8) + 8))(ObjectType);
    v19 = [v18 layer];

    v20 = *&CATransform3DIdentity.m33;
    v28 = *&CATransform3DIdentity.m31;
    v29 = v20;
    v21 = *&CATransform3DIdentity.m43;
    v30 = *&CATransform3DIdentity.m41;
    v31 = v21;
    v22 = *&CATransform3DIdentity.m13;
    v24 = *&CATransform3DIdentity.m11;
    v25 = v22;
    v23 = *&CATransform3DIdentity.m23;
    v26 = *&CATransform3DIdentity.m21;
    v27 = v23;
    [v19 setTransform:&v24];
  }
}

void sub_1004D16DC(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    if (v3)
    {
      v4 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      v7 = v3;
      v6(ObjectType, v4);
    }
  }
}

char *sub_1004D1810(void *a1)
{
  v3 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v112 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong collectionView];

    if (v12)
    {
      v13 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
      swift_beginAccess();
      sub_10022BA04(&v1[v13], v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_10002B894(v5, &unk_10097DAE0);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v15 = [v12 cellForItemAtIndexPath:isa];

        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          v16 = *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell];
          *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell] = v15;
        }
      }
    }
  }

  v17 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v119 = v18;
  sub_1001F16B4();
  v21 = v18;
  sub_10002849C(&qword_100988830);
  if (swift_dynamicCast())
  {
    v22 = *(&v121 + 1);
    if (*(&v121 + 1))
    {
      v23 = v122;
      sub_10002A400(&v120, *(&v121 + 1));
      v24 = *(v23 + 8);
      v117 = v1;
      v25 = v24(v22, v23);
      v1 = v117;
      v26 = v25;
      sub_100007000(&v120);
      v27 = *&v1[v17];
      if (!v27)
      {

LABEL_39:
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        goto LABEL_23;
      }

      v119 = *&v1[v17];
      v28 = v27;
      if (swift_dynamicCast())
      {
        v29 = *(&v121 + 1);
        if (*(&v121 + 1))
        {
          v116 = v21;
          v30 = v122;
          sub_10002A400(&v120, *(&v121 + 1));
          v31 = (*(v30 + 16))(v29, v30);
          v1 = v117;
          v32 = v31;
          sub_100007000(&v120);
          v33 = *&v1[v17];
          if (v33)
          {
            v119 = *&v1[v17];
            v34 = v33;
            if (swift_dynamicCast())
            {
              v35 = *(&v121 + 1);
              if (*(&v121 + 1))
              {
                v115 = v32;
                v36 = v122;
                sub_10002A400(&v120, *(&v121 + 1));
                v37 = (*(v36 + 40))(v35, v36);
                v1 = v117;
                v38 = v37;
                v40 = v39;
                sub_100007000(&v120);
                v41 = *&v1[v17];
                if (v41)
                {
                  v119 = *&v1[v17];
                  v42 = v41;
                  v43 = swift_dynamicCast();
                  v44 = v116;
                  if (v43)
                  {
                    v45 = *(&v121 + 1);
                    if (*(&v121 + 1))
                    {
                      v46 = v122;
                      sub_10002A400(&v120, *(&v121 + 1));
                      v47 = (*(v46 + 32))(v45, v46);
                      v1 = v117;
                      v114 = v47;
                      v113 = v48;
                      v50 = v49;
                      v52 = v51;
                      sub_100007000(&v120);
                      [v44 bounds];
                      v54 = v53;
                      v56 = v55;
                      v58 = v57;
                      v60 = v59;
                      v61 = [v20 view];
                      [v44 convertRect:v61 toView:{v54, v56, v58, v60}];
                      v63 = v62;
                      v65 = v64;

                      v66 = v115;
                      [v115 bounds];
                      [v66 convertRect:v44 toCoordinateSpace:?];
                      v68 = v38 + v63 + v67;
                      v70 = v40 + v65 + v69;
                      v71 = swift_unknownObjectWeakLoadStrong();
                      v72 = *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
                      v73 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
                      v74 = objc_allocWithZone(v73);
                      *&v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCardView] = v26;
                      *&v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = v71;
                      v75 = &v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toBounds];
                      v76 = v113;
                      *v75 = v114;
                      *(v75 + 1) = v76;
                      *(v75 + 2) = v50;
                      *(v75 + 3) = v52;
                      v75[32] = 0;
                      v77 = &v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCenter];
                      *v77 = v68;
                      v77[1] = v70;
                      *(v77 + 16) = 0;
                      *&v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v72;
                      v118.receiver = v74;
                      v118.super_class = v73;
                      v78 = v72;
                      v79 = v26;
                      v80 = v71;
                      v81 = objc_msgSendSuper2(&v118, "init");

                      goto LABEL_25;
                    }
                  }

                  else
                  {
                    v122 = 0;
                    v120 = 0u;
                    v121 = 0u;
                  }

                  goto LABEL_23;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v122 = 0;
              v120 = 0u;
              v121 = 0u;
            }

            goto LABEL_23;
          }

LABEL_43:
          goto LABEL_39;
        }
      }

      else
      {
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

LABEL_23:
  sub_10002B894(&v120, &qword_100974638);
LABEL_24:
  v82 = *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  v83 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  v84 = objc_allocWithZone(v83);
  *&v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCardView] = 0;
  *&v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = 0;
  v85 = &v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toBounds];
  *v85 = 0u;
  *(v85 + 1) = 0u;
  v85[32] = 1;
  v86 = &v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCenter];
  *v86 = 0;
  *(v86 + 1) = 0;
  v86[16] = 1;
  *&v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v82;
  v123.receiver = v84;
  v123.super_class = v83;
  v87 = v82;
  v81 = objc_msgSendSuper2(&v123, "init");
LABEL_25:
  v88 = swift_allocObject();
  *(v88 + 16) = v1;
  v89 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v90 = *&v81[v89];
  v91 = v81;
  v92 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v90;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v90 = sub_1000340DC(0, *(v90 + 2) + 1, 1, v90);
    *&v81[v89] = v90;
  }

  v95 = *(v90 + 2);
  v94 = *(v90 + 3);
  if (v95 >= v94 >> 1)
  {
    v90 = sub_1000340DC((v94 > 1), v95 + 1, 1, v90);
  }

  *(v90 + 2) = v95 + 1;
  v96 = &v90[3 * v95];
  *(v96 + 4) = sub_1004D2C7C;
  *(v96 + 5) = v88;
  *(v96 + 48) = 0;
  *&v81[v89] = v90;
  swift_endAccess();

  v97 = swift_allocObject();
  *(v97 + 16) = a1;
  swift_beginAccess();
  v98 = *&v81[v89];
  v99 = a1;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v98;
  if ((v100 & 1) == 0)
  {
    v98 = sub_1000340DC(0, *(v98 + 2) + 1, 1, v98);
    *&v81[v89] = v98;
  }

  v102 = *(v98 + 2);
  v101 = *(v98 + 3);
  if (v102 >= v101 >> 1)
  {
    v98 = sub_1000340DC((v101 > 1), v102 + 1, 1, v98);
  }

  *(v98 + 2) = v102 + 1;
  v103 = &v98[3 * v102];
  *(v103 + 4) = sub_1004D2C84;
  *(v103 + 5) = v97;
  *(v103 + 48) = 1;
  *&v81[v89] = v98;
  swift_endAccess();

  v104 = swift_allocObject();
  *(v104 + 16) = v92;
  swift_beginAccess();
  v105 = *&v81[v89];
  v106 = v92;

  v107 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v105;
  if ((v107 & 1) == 0)
  {
    v105 = sub_1000340DC(0, *(v105 + 2) + 1, 1, v105);
    *&v81[v89] = v105;
  }

  v109 = *(v105 + 2);
  v108 = *(v105 + 3);
  if (v109 >= v108 >> 1)
  {
    v105 = sub_1000340DC((v108 > 1), v109 + 1, 1, v105);
  }

  *(v105 + 2) = v109 + 1;
  v110 = &v105[3 * v109];
  *(v110 + 4) = sub_1004D2C8C;
  *(v110 + 5) = v104;
  *(v110 + 48) = 2;
  *&v81[v89] = v105;
  swift_endAccess();

  return v91;
}

void sub_1004D2284(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[4] = sub_1004D2C94;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100007A08;
  v8[3] = &unk_1008C5CC0;
  v6 = _Block_copy(v8);
  v7 = a3;

  [v4 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
}

void sub_1004D2374(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    v5 = v1;
    v4(1, ObjectType, v2);
  }
}

void sub_1004D2428(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v8 = v3;
    type metadata accessor for AppPromotionDetailPagePresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4 + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v5 + 24))
      {
        sub_10002C0AC(v5, v9);
        v6 = v10;
        v7 = v11;
        sub_10002A400(v9, v10);
        (*(v7 + 24))(v6, v7);

        sub_100007000(v9);
        return;
      }
    }
  }
}

void sub_1004D253C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v10 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v10)
  {
    goto LABEL_13;
  }

  v43 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  sub_1001F16B4();
  v11 = v10;
  sub_10002849C(&qword_100988830);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_14:
    sub_10002B894(&v44, &qword_100974638);
    goto LABEL_15;
  }

  v13 = v46;
  sub_10002A400(&v44, *(&v45 + 1));
  v14 = (*(v13 + 8))(v12, v13);
  sub_100007000(&v44);
  v15 = *(a3 + v9);
  if (!v15)
  {

LABEL_13:
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_14;
  }

  v43 = *(a3 + v9);
  v16 = v15;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_25;
  }

  v17 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_25:

    goto LABEL_14;
  }

  v42 = v14;
  v18 = v46;
  sub_10002A400(&v44, *(&v45 + 1));
  v19 = *(v18 + 16);
  v20 = v18;
  v21 = v42;
  v22 = v19(v17, v20);
  sub_100007000(&v44);
  [v22 addSubview:v21];
  v23 = *(a3 + v9);
  if (!v23)
  {

    goto LABEL_13;
  }

  v43 = *(a3 + v9);
  v24 = v23;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_28;
  }

  v25 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_28:

    goto LABEL_14;
  }

  v26 = v46;
  sub_10002A400(&v44, *(&v45 + 1));
  v27 = (*(v26 + 24))(v25, v26);
  [v27 setNeedsLayout];

  sub_100007000(&v44);
LABEL_15:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = [Strong collectionView];

    if (v30)
    {
      v31 = [v30 indexPathsForSelectedItems];
      if (v31)
      {
        v32 = v31;
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = *(v33 + 16);
        if (v34)
        {
          v37 = *(v6 + 16);
          v36 = v6 + 16;
          v35 = v37;
          v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
          v42 = v33;
          v39 = v33 + v38;
          v40 = *(v36 + 56);
          do
          {
            v35(v8, v39, v5);
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v36 - 8))(v8, v5);
            [v30 deselectItemAtIndexPath:isa animated:{0, v42}];

            v39 += v40;
            --v34;
          }

          while (v34);
        }
      }
    }
  }
}

id sub_1004D29B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageTransitioningDelegate()
{
  result = qword_100988818;
  if (!qword_100988818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D2AD8()
{
  sub_10022B99C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1004D2B88(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_originatingView;
  *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_originatingView] = 0;
  v4 = &v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell] = 0;
  v7 = *&v1[v3];
  *&v1[v3] = a1;
  v8 = a1;

  v10.receiver = v1;
  v10.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate();
  return objc_msgSendSuper2(&v10, "init");
}

char *sub_1004D2C9C()
{
  v1 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v2)
  {
    v29 = 0.0;
    v28 = 1;
    v4 = 0.0;
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = 0.0;
  if (!Strong)
  {
LABEL_10:
    v28 = 1;
    v29 = 0.0;
    v30 = *&v0[v1];
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_14:
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_15;
  }

  v5 = Strong;
  sub_1001F16B4();
  v6 = v2;
  sub_10002849C(&qword_100988830);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_9;
  }

  v7 = *(&v65 + 1);
  if (!*(&v65 + 1))
  {
LABEL_9:

    sub_10002B894(&v64, &qword_100974638);
    goto LABEL_10;
  }

  v8 = v66;
  sub_10002A400(&v64, *(&v65 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_100007000(&v64);
  [v6 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v5 view];
  [v6 convertRect:v18 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;

  [v9 bounds];
  [v9 convertRect:v6 toCoordinateSpace:?];
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v4 = v20 + CGRectGetMidX(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  MidY = CGRectGetMidY(v68);

  v28 = 0;
  v29 = v22 + MidY;
  v30 = *&v0[v1];
  if (!v30)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_1001F16B4();
  v31 = v30;
  sub_10002849C(&qword_100988830);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    v33 = v66;
    sub_10002A400(&v64, *(&v65 + 1));
    v34 = (*(v33 + 8))(v32, v33);
    sub_100007000(&v64);
    goto LABEL_16;
  }

LABEL_15:
  sub_10002B894(&v64, &qword_100974638);
  v34 = 0;
LABEL_16:
  v35 = swift_unknownObjectWeakLoadStrong();
  v36 = type metadata accessor for AppPromotionPageOpenAnimation();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCardView] = v34;
  *&v37[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCollectionViewController] = v35;
  v38 = &v37[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter];
  *v38 = v4;
  v38[1] = v29;
  *(v38 + 16) = v28;
  v63.receiver = v37;
  v63.super_class = v36;
  v39 = objc_msgSendSuper2(&v63, "init");
  v40 = swift_allocObject();
  *(v40 + 16) = v0;
  v41 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v42 = *&v39[v41];
  v43 = v0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_1000340DC(0, *(v42 + 2) + 1, 1, v42);
    *&v39[v41] = v42;
  }

  v46 = *(v42 + 2);
  v45 = *(v42 + 3);
  if (v46 >= v45 >> 1)
  {
    v42 = sub_1000340DC((v45 > 1), v46 + 1, 1, v42);
  }

  *(v42 + 2) = v46 + 1;
  v47 = &v42[3 * v46];
  *(v47 + 4) = sub_1004D32B4;
  *(v47 + 5) = v40;
  *(v47 + 48) = 0;
  *&v39[v41] = v42;
  swift_endAccess();

  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  swift_beginAccess();
  v49 = *&v39[v41];
  v50 = v43;

  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v49;
  if ((v51 & 1) == 0)
  {
    v49 = sub_1000340DC(0, *(v49 + 2) + 1, 1, v49);
    *&v39[v41] = v49;
  }

  v53 = *(v49 + 2);
  v52 = *(v49 + 3);
  if (v53 >= v52 >> 1)
  {
    v49 = sub_1000340DC((v52 > 1), v53 + 1, 1, v49);
  }

  *(v49 + 2) = v53 + 1;
  v54 = &v49[3 * v53];
  *(v54 + 4) = sub_1004D32BC;
  *(v54 + 5) = v48;
  *(v54 + 48) = 1;
  *&v39[v41] = v49;
  swift_endAccess();

  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  swift_beginAccess();
  v56 = *&v39[v41];
  v57 = v50;

  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v56;
  if ((v58 & 1) == 0)
  {
    v56 = sub_1000340DC(0, *(v56 + 2) + 1, 1, v56);
    *&v39[v41] = v56;
  }

  v60 = *(v56 + 2);
  v59 = *(v56 + 3);
  if (v60 >= v59 >> 1)
  {
    v56 = sub_1000340DC((v59 > 1), v60 + 1, 1, v56);
  }

  *(v56 + 2) = v60 + 1;
  v61 = &v56[3 * v60];
  *(v61 + 4) = sub_1004D32C4;
  *(v61 + 5) = v55;
  *(v61 + 48) = 2;
  *&v39[v41] = v56;
  swift_endAccess();

  return v39;
}

uint64_t sub_1004D32CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  if (qword_10096D138 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSLogger();
  sub_1000056A8(v8, qword_1009CE260);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x5370696B53646964;
  v9._object = 0xED0000203A706574;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = a1[3];
  v11 = sub_10002A400(a1, v10);
  v17 = v10;
  v12 = sub_1000056E0(v16);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v16, &unk_1009711D0);
  v13._countAndFlagsBits = 0x6E6F73616572202CLL;
  v13._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v17 = &type metadata for String;
  v16[0] = a2;
  v16[1] = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v16, &unk_1009711D0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  result = swift_beginAccess();
  if (*(*(v3 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D35A8()
{
  v1 = sub_10002849C(&qword_1009888E8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for WelcomeOnboardingStep();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v0 + 32);
  if (*(v8 + 16))
  {
    sub_10002C0AC(v8 + 32, v12);
    sub_10002849C(&unk_10097A950);
    v9 = swift_dynamicCast();
    (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      WelcomeOnboardingStep.markAsShown()();
      sub_1004D3A14(v7, v0);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_10002B894(v3, &qword_1009888E8);
}

uint64_t sub_1004D37E0(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    sub_10002C0AC(v4 + 32, v8);
    sub_10002849C(&unk_10097A950);
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_dynamicCast();
    if (result)
    {
      v5 = v1;
      v6 = sub_10003C5F4();
      [v6 setPersonalizedAds:a1 & 1];

      sub_10003CEC4();
      sub_1004D3D0C(v7, v5);
    }
  }

  return result;
}

uint64_t sub_1004D38BC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    sub_10002C0AC(v1 + 32, v6);
    sub_10002849C(&unk_10097A950);
    if (swift_dynamicCast())
    {
      if (v3)
      {
        v6[0] = v3;
        v6[1] = v4;
        v6[2] = v5;
        sub_1003D1F0C();
        sub_1004D3FD4(v6, v0);
        return sub_1003702DC(v6);
      }
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
      v3 = 0u;
    }
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
    v5 = 0u;
  }

  return sub_10002B894(&v3, &qword_1009888F0);
}

uint64_t sub_1004D39B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004D3A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for WelcomeOnboardingStep();
  v16 = v5;
  v17 = sub_1001C8644(&qword_100978C90, &type metadata accessor for WelcomeOnboardingStep);
  v6 = sub_1000056E0(v15);
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  if (qword_10096D138 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSLogger();
  sub_1000056A8(v7, qword_1009CE260);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100817370;
  v8._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = v16;
  v10 = sub_10002A400(v15, v16);
  v14[3] = v9;
  v11 = sub_1000056E0(v14);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v14, &unk_1009711D0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    swift_endAccess();
    return sub_100007000(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D3D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AdPrivacyOnboardingStep();
  v14[3] = v5;
  v14[4] = sub_1001C8644(&qword_1009702A0, type metadata accessor for AdPrivacyOnboardingStep);
  v14[0] = a1;
  v6 = qword_10096D138;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSLogger();
  sub_1000056A8(v7, qword_1009CE260);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100817370;
  v8._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = sub_10002A400(v14, v5);
  v13[3] = v5;
  v10 = sub_1000056E0(v13);
  (*(*(v5 - 8) + 16))(v10, v9, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v13, &unk_1009711D0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    swift_endAccess();
    return sub_100007000(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D3FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v12[3] = &type metadata for LocationPrivacyOnboardingStep;
  v12[4] = sub_1001C85F0();
  v12[0] = swift_allocObject();
  sub_1004D4544(a1, v12[0] + 16);
  if (qword_10096D138 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSLogger();
  sub_1000056A8(v5, qword_1009CE260);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100817370;
  v6._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = sub_10002A400(v12, &type metadata for LocationPrivacyOnboardingStep);
  v11[3] = &type metadata for LocationPrivacyOnboardingStep;
  v8 = sub_1000056E0(v11);
  _swift_cvw_initWithCopy(v8, v7);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v11, &unk_1009711D0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    swift_endAccess();
    return sub_100007000(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D4280(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for JourneyDrivenOnboardingStep();
  v15[3] = v5;
  v15[4] = sub_1001C8644(&unk_100978CA0, type metadata accessor for JourneyDrivenOnboardingStep);
  v15[0] = a1;
  v6 = qword_10096D138;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSLogger();
  sub_1000056A8(v8, qword_1009CE260);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x8000000100817370;
  v9._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = sub_10002A400(v15, v5);
  v14[3] = v5;
  v11 = sub_1000056E0(v14);
  (*(*(v5 - 8) + 16))(v11, v10, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v14, &unk_1009711D0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    swift_endAccess();
    return sub_100007000(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double *sub_1004D45A0()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    sub_1003E616C(_swiftEmptyArrayStorage);
  }

  result = sub_100144108(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      v6 = v5;
      [v5 contentOffset];
      v8 = v7;
      [v6 adjustedContentInset];
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (*&v12 >= *&v11 >> 1)
      {
        sub_100144108((*&v11 > 1uLL), *&v12 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v12 + 1;
      _swiftEmptyArrayStorage[*&v12 + 4] = v8 + v10;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004D4734()
{

  sub_10001F63C(*(v0 + 24));

  return swift_deallocClassInstance();
}

double *sub_1004D4798()
{
  result = sub_1004D45A0();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = v2;

    v3(v5, v4);

    return sub_10001F63C(v3);
  }

  return result;
}

double sub_1004D480C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v7 = type metadata accessor for ItemLayoutContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (static UICollectionReusableView.matchesItemElementKind(_:)())
  {

    v11 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v19[1] = v12;
    v19[2] = v11;
    v13 = swift_allocObject();
    v19[0] = a3;
    v14 = v13;
    swift_weakInit();
    (*(v8 + 16))(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v20 = a1;
    v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v8 + 32))(v17 + v15, v10, v7);
    *(v17 + v16) = v19[0];
    *(a4 + 24) = sub_10002849C(&qword_1009751D0);
    *(a4 + 32) = sub_10011A820();
    sub_1000056E0(a4);

    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double *sub_1004D4A48(uint64_t a1)
{
  v1 = sub_1001190B0(a1);
  sub_100394594(v1);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004D4AB8(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  v8 = sub_1000056A8(v7, qword_1009D2448);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_1000056E0(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

char *sub_1004D4BB8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform] = 0;
  v11 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_flowLayout;
  v12 = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_sizedArtwork] = _swiftEmptyArrayStorage;
  v13 = &v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_didSelectHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = [objc_allocWithZone(UICollectionView) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView] = v14;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView;
  [*&v15[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v18 = *&v15[v17];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  [*&v15[v17] setAllowsSelection:1];
  [*&v15[v17] setAlwaysBounceHorizontal:1];
  [*&v15[v17] setShowsHorizontalScrollIndicator:0];
  [*&v15[v17] setDataSource:v15];
  v22 = *&v15[v17];
  [v22 setDelegate:v15];

  v23 = *&v15[v17];
  type metadata accessor for ScreenshotCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v23;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v26 = String._bridgeToObjectiveC()();

  [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v26];

  v27 = [v15 contentView];
  [v27 addSubview:*&v15[v17]];

  return v15;
}

id sub_1004D4F68()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotShelfCollectionViewCell();
  v64.receiver = v0;
  v64.super_class = v6;
  objc_msgSendSuper2(&v64, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v60 = v9;
  v61 = v8;
  v58 = v11;
  v59 = v10;

  v63 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v12)
  {
    v17 = v12;
    [v17 frame];
    v14 = v18;
    v15 = v19;
    if (qword_10096E620 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D2120, qword_1009D2138);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v16 = v20;

    (*(v3 + 8))(v5, v2);
  }

  v21 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView];
  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    v25 = v22;
    [v25 frame];
    v13 = v26;
    v23 = v27;
    if (qword_10096E618 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100988AB0, qword_100988AC8);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v24 = v28;

    (*(v3 + 8))(v5, v2);
  }

  if (qword_10096E608 != -1)
  {
    swift_once();
  }

  v57 = v13;
  v62 = v14;
  sub_10002A400(qword_100988A60, qword_100988A78);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v30 = v29;
  v31 = *(v3 + 8);
  v31(v5, v2);
  if (qword_10096E610 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_100988A88, qword_100988AA0);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v33 = v32;
  v31(v5, v2);
  v55 = v15;
  v56 = v16;
  v54 = v15 + v16 + v23 + v24 + v30 + v33;
  v34 = v61;
  v65.origin.x = v61;
  v49 = v24;
  v35 = v23;
  v52 = v23;
  v37 = v59;
  v36 = v60;
  v65.origin.y = v60;
  v65.size.width = v59;
  v38 = v58;
  v65.size.height = v58;
  MinX = CGRectGetMinX(v65);
  v51 = MinX;
  v66.origin.x = v34;
  v66.origin.y = v36;
  v66.size.width = v37;
  v66.size.height = v38;
  v40 = v30 + CGRectGetMinY(v66);
  v53 = v40;
  v67.origin.x = v34;
  v67.origin.y = v36;
  v67.size.width = v37;
  v67.size.height = v38;
  v50 = CGRectGetMinX(v67);
  v68.origin.x = MinX;
  v68.origin.y = v40;
  v41 = v57;
  v68.size.width = v57;
  v68.size.height = v35;
  v42 = v49 + CGRectGetMaxY(v68);
  v69.origin.x = v34;
  v69.origin.y = v36;
  v69.size.width = v37;
  v69.size.height = v38;
  Width = CGRectGetWidth(v69);
  v70.origin.x = v34;
  v70.origin.y = v36;
  v70.size.width = v37;
  v70.size.height = v38;
  v44 = CGRectGetHeight(v70) - v54;
  v71.origin.x = v34;
  v71.origin.y = v36;
  v71.size.width = v37;
  v71.size.height = v38;
  v45 = CGRectGetMinX(v71);
  v46 = v50;
  v72.origin.x = v50;
  v72.origin.y = v42;
  v72.size.width = Width;
  v72.size.height = v44;
  v47 = v56 + CGRectGetMaxY(v72);
  [*&v1[v21] setFrame:{v51, v53, v41, v52}];
  [*&v1[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView] setFrame:{v46, v42, Width, v44}];
  return [*&v1[v63] setFrame:{v45, v47, v62, v55}];
}

uint64_t sub_1004D5538()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  objc_msgSendSuper2(&v10, "prepareForReuse");
  v1 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setNeedsLayout];
  v4 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher;
  *&v0[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;

  v9 = *&v0[v7];
  if (v9)
  {
    *(v9 + 32) = &off_1008C5DD8;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

BOOL sub_1004D5674()
{
  if (!*(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform))
  {
    return 0;
  }

  v1 = MediaPlatform.isPhonePlatform.getter();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    v6 = dispatch thunk of Artwork.isPortrait.getter();

    ++v4;
  }

  while ((v6 & 1) == 0);

  return v5;
}

uint64_t sub_1004D57C0(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_100617504();

  return v7;
}

void sub_1004D5D54(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_didSelectHandler);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_didSelectHandler + 8);

    v5 = IndexPath.item.getter();
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
    if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v6 + 8 * v5 + 32);

LABEL_6:
        v8 = IndexPath.item.getter();
        v3(v7, v8);
        sub_10011B8E8(v3, v4);

        goto LABEL_7;
      }

      __break(1u);
      return;
    }

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }

LABEL_7:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];
}

id sub_1004D6068()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotShelfCollectionViewCell()
{
  result = qword_100988B08;
  if (!qword_100988B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D61E4()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1004D62C0(char *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v94 = a6;
  v96 = a3;
  v95 = a2;
  v89 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v89 - 8);
  __chkstk_darwin(v89);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = type metadata accessor for AppPlatform();
  v92 = *(ObjectType - 8);
  __chkstk_darwin(ObjectType);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AspectRatio();
  v90 = *(v97 - 8);
  __chkstk_darwin(v97);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v84 - v17;
  __chkstk_darwin(v19);
  v21 = &v84 - v20;
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  v25 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v25 - 8);
  v91 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (a1 >> 62);
  v88 = v9;
  v87 = v11;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_76:
    v100 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v100 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v99 = a1;
  v98 = a1 & 0xC000000000000001;
  do
  {
    a1 = v29;
    if (v100 == v29)
    {
      break;
    }

    if (v98)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(a1, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (__OFADD__(a1, 1))
      {
        goto LABEL_12;
      }
    }

    v30 = dispatch thunk of Artwork.isPortrait.getter();

    v29 = a1 + 1;
  }

  while ((v30 & 1) == 0);
  type metadata accessor for Screenshots();
  sub_10061B788(v95, v91);
  if (v27)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *(v28 + 16);
  }

  v86 = a5;
  v85 = a4;
  if (v31 < 1)
  {
    MediaPlatform.appPlatform.getter();
    v45 = v92;
    v46 = ObjectType;
    v47 = (*(v92 + 88))(v13, ObjectType);
    v27 = v15;
    a1 = v18;
    v33 = v90;
    if (v47 != enum case for AppPlatform.phone(_:) && v47 != enum case for AppPlatform.pad(_:) && v47 != enum case for AppPlatform.messages(_:))
    {
      if (v47 == enum case for AppPlatform.watch(_:))
      {
        if (qword_10096EB48 == -1)
        {
LABEL_46:
          v49 = v97;
          v50 = sub_1000056A8(v97, qword_1009D2FD0);
          (*(v33 + 16))(a1, v50, v49);
          goto LABEL_38;
        }

LABEL_78:
        swift_once();
        goto LABEL_46;
      }

      if (v47 != enum case for AppPlatform.tv(_:) && v47 != enum case for AppPlatform.mac(_:))
      {
        AspectRatio.init(_:_:)();
        (*(v45 + 8))(v13, v46);
LABEL_38:
        v48 = v96;
        if (MediaPlatform.isPhonePlatform.getter() & 1) != 0 && (AspectRatio.isPortrait.getter())
        {
          if (AspectRatio.isPortrait.getter())
          {
            (*(v33 + 16))(v27, a1, v97);
          }

          else
          {
            AspectRatio.inverted.getter();
          }
        }

        else
        {
          (*(v33 + 16))(v27, a1, v97);
          AspectRatio.isPortrait.getter();
        }

        swift_getObjectType();
        v51 = [v48 traitCollection];
        UITraitCollection.isRegularPad.getter();

        [v48 pageMarginInsets];
        [v48 pageMarginInsets];
        PageTraitEnvironment.pageColumnMargin.getter();
        v52 = [v48 traitCollection];
        UITraitCollection.isRegularPad.getter();

        AspectRatio.height(fromWidth:)();
        AspectRatio.height(fromWidth:)();
        v36 = v53;
        v54 = *(v33 + 8);
        v55 = v97;
        v54(v27, v97);
        v54(a1, v55);
        goto LABEL_49;
      }
    }

    AspectRatio.init(_:_:)();
    goto LABEL_38;
  }

  v32 = v90;
  v33 = v100;
  if (!v100)
  {
    v36 = 0.0;
    goto LABEL_49;
  }

  if (v100 < 1)
  {
    __break(1u);
    goto LABEL_78;
  }

  ObjectType = swift_getObjectType();
  v34 = 0;
  v92 = v32 + 16;
  v35 = (v32 + 8);
  v36 = 0.0;
  do
  {
    if (v98)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v42 = v96;
    v43 = MediaPlatform.isPhonePlatform.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    if (v33 == a1 || (v43 & 1) == 0)
    {
      (*v92)(v21, v24, v97);
      AspectRatio.isPortrait.getter();
    }

    else if (AspectRatio.isPortrait.getter())
    {
      (*v92)(v21, v24, v97);
    }

    else
    {
      AspectRatio.inverted.getter();
    }

    v44 = [v42 traitCollection];
    UITraitCollection.isRegularPad.getter();

    [v42 pageMarginInsets];
    [v42 pageMarginInsets];
    PageTraitEnvironment.pageColumnMargin.getter();
    ++v34;
    v37 = [v42 traitCollection];
    UITraitCollection.isRegularPad.getter();

    AspectRatio.height(fromWidth:)();
    AspectRatio.height(fromWidth:)();
    v39 = v38;

    v40 = *v35;
    v41 = v97;
    (*v35)(v21, v97);
    v40(v24, v41);
    if (v39 > v36)
    {
      v36 = v39;
    }

    v33 = v100;
  }

  while (v100 != v34);
LABEL_49:
  sub_10002849C(&unk_1009856C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = v36;
  v101 = inited;
  v57 = v85;
  v58 = v89;
  v59 = v88;
  v60 = v87;
  v61 = v86;
  if (v85 >= COERCE_DOUBLE(1))
  {
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_1007B1890;
    *(v62 + 32) = v57;
    if (qword_10096E618 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100988AB0, qword_100988AC8);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v64 = v63;
    (*(v59 + 8))(v60, v58);
    *(v62 + 40) = v64;
    sub_100394464(v62);
  }

  if (v61 >= COERCE_DOUBLE(1))
  {
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1007B1890;
    *(v65 + 32) = v61;
    if (qword_10096E620 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D2120, qword_1009D2138);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v67 = v66;
    (*(v59 + 8))(v60, v58);
    *(v65 + 40) = v67;
    sub_100394464(v65);
  }

  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1007B1890;
  if (qword_10096E608 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_100988A60, qword_100988A78);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  v69 = v96;
  AnyDimension.value(in:rounded:)();
  v71 = v70;
  v72 = *(v59 + 8);
  v72(v60, v58);
  *(v68 + 32) = v71;
  if (qword_10096E610 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_100988A88, qword_100988AA0);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v74 = v73;
  v72(v60, v58);
  *(v68 + 40) = v74;
  sub_100394464(v68);
  [v69 pageMarginInsets];
  v75 = *(v101 + 16);
  if (v75)
  {
    if (v75 <= 3)
    {
      v76 = 0;
      v77 = 0.0;
LABEL_68:
      v80 = v75 - v76;
      v81 = (v101 + 8 * v76 + 32);
      do
      {
        v82 = *v81++;
        v77 = v77 + v82;
        --v80;
      }

      while (v80);
      goto LABEL_70;
    }

    v76 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    v78 = (v101 + 48);
    v77 = 0.0;
    v79 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v77 = v77 + *(v78 - 2) + *(v78 - 1) + *v78 + v78[1];
      v78 += 4;
      v79 -= 4;
    }

    while (v79);
    if (v75 != v76)
    {
      goto LABEL_68;
    }
  }

LABEL_70:
  sub_1001BABC8(v91);

  return v94;
}

uint64_t sub_1004D7174(uint64_t a1)
{
  v2 = v1;
  sub_10002C0AC(a1, v28);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for Screenshots();
  result = swift_dynamicCast();
  if (result)
  {
    v4 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v5 = swift_allocObject();
      *(v5 + 16) = sub_100397BF0(_swiftEmptyArrayStorage);
      *(v5 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v5 + 32) = &off_1008C5DD8;
      swift_unknownObjectWeakAssign();
      *&v2[v4] = v5;

      v6 = *&v2[v4];
      if (v6)
      {
        *(v6 + 32) = &off_1008C5DD8;
        swift_unknownObjectWeakAssign();
      }

      v7 = Screenshots.artwork.getter();
      if (!*&v2[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform] || (, v8 = MediaPlatform.isPhonePlatform.getter(), , (v8 & 1) == 0))
      {
LABEL_20:
        v12 = 0;
        goto LABEL_21;
      }

      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        goto LABEL_41;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v11 = 0;
        do
        {
          v12 = i != v11;
          if (i == v11)
          {
            break;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            if (__OFADD__(v11, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v11 >= *(v9 + 16))
            {
              goto LABEL_40;
            }

            if (__OFADD__(v11, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          v13 = dispatch thunk of Artwork.isPortrait.getter();

          ++v11;
        }

        while ((v13 & 1) == 0);
LABEL_21:

        v14 = [v2 traitCollection];
        UITraitCollection.isRegularPad.getter();

        if (!*&v2[v4])
        {
          break;
        }

        v15 = *&v2[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_sizedArtwork];

        v17 = sub_100262514(v16, v12);
        v18 = v17;
        v27 = v15;
        v26 = *(v15 + 16);
        if (!v26)
        {
LABEL_35:
        }

        v19 = 0;
        v9 = v17 & 0xFFFFFFFFFFFFFF8;
        v20 = (v27 + 48);
        v24 = v17 & 0xC000000000000001;
        v25 = v17 >> 62;
        while (v19 < *(v27 + 16))
        {
          v4 = *(v20 - 2);
          v21 = *(v20 - 1);
          v22 = *v20;
          if (v25)
          {
            if (v19 == _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_35;
            }
          }

          else if (v19 == *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          if (v24)
          {

            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }
          }

          v2 = v19 + 1;
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          v23 = swift_allocObject();
          swift_weakInit();
          v7 = swift_allocObject();
          *(v7 + 16) = v12;
          *(v7 + 24) = v23;
          *(v7 + 32) = v4;
          *(v7 + 40) = v21;
          *(v7 + 48) = v22;
          *(v7 + 56) = v19;

          ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

          sub_10002B894(v28, &qword_10096FB90);

          v20 += 3;
          v19 = v2;
          if (v26 == v2)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        ;
      }
    }
  }

  return result;
}

void sub_1004D75B0(objc_class *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView);
  sub_10002849C(&qword_100980550);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B1890;
  *(v10 + 32) = 0;
  *(v10 + 40) = a2;
  IndexPath.init(arrayLiteral:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  v12 = [v9 cellForItemAtIndexPath:isa];

  if (v12)
  {
    type metadata accessor for ScreenshotCollectionViewCell();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(*(v13 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v15 = ArtworkView.image.getter();
      v17 = v15;
      if (v15)
      {
      }

      v19.is_nil = v17 == 0;
      v19.value.super.isa = a1;
      ArtworkView.setImage(image:animated:)(v19, v16);
    }

    else
    {
      v14 = v12;
    }
  }
}

void sub_1004D7768()
{
  v1 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform) = 0;
  v3 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_flowLayout;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_sizedArtwork) = _swiftEmptyArrayStorage;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004D78A0()
{
  v1 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (!*(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    return 0;
  }

LABEL_4:
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_1004D7948(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform))
  {
    return;
  }

  [a1 frame];
  if (v15 <= 0.0 || v14 <= 0.0)
  {

    return;
  }

  type metadata accessor for Screenshots();

  sub_10061B788(v16, v13);

  v17 = IndexPath.item.getter();
  v18 = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
  v29 = v5;
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  Artwork.size.getter();
  AspectRatio.init(_:_:)();

  v19 = sub_1004D5674();
  v20 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits;
  v21 = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits);
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v19;
  swift_unknownObjectRetain();

  v23 = *(v2 + v20);
  if (!v23)
  {
LABEL_22:
    __break(1u);
    return;
  }

  [v23 pageContainerSize];
  v24 = v29;
  if (v22)
  {
    if (AspectRatio.isPortrait.getter())
    {
      (*(v24 + 16))(v7, v10, v4);
    }

    else
    {
      AspectRatio.inverted.getter();
    }
  }

  else
  {
    (*(v29 + 16))(v7, v10, v4);
    AspectRatio.isPortrait.getter();
  }

  swift_getObjectType();
  v25 = [v21 traitCollection];
  UITraitCollection.isRegularPad.getter();

  [v21 pageMarginInsets];
  [v21 pageMarginInsets];
  PageTraitEnvironment.pageColumnMargin.getter();
  v26 = [v21 traitCollection];
  UITraitCollection.isRegularPad.getter();

  AspectRatio.height(fromWidth:)();
  AspectRatio.height(fromWidth:)();

  swift_unknownObjectRelease();
  v27 = *(v29 + 8);
  v27(v7, v4);
  v27(v10, v4);
  sub_1001BABC8(v13);
}

unint64_t sub_1004D7DE4()
{
  v1 = v0;
  type metadata accessor for ScreenshotCollectionViewCell();
  v2 = swift_dynamicCastClassUnconditional();
  result = IndexPath.item.getter();
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 8 * result + 32);

LABEL_5:
  v6 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView;
  *(*(v2 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = *(v1 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_100617504();

  v7 = *(v1 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher);
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v7 + 16);

    v9 = sub_10057A264(v5, v8);

    if (v9)
    {
      v10 = *(*(v2 + v6) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v11 = v9;
      v12 = v10;
      v13 = ArtworkView.image.getter();

      if (v13 && (sub_100005744(0, &qword_1009744B0), v14 = v11, v15 = static NSObject.== infix(_:_:)(), v14, v13, (v15 & 1) != 0))
      {
      }

      else
      {
        v16 = *(*(v2 + v6) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
        v17 = ArtworkView.image.getter();
        v19 = v17;
        if (v17)
        {
        }

        v21.is_nil = v19 == 0;
        v21.value.super.isa = v9;
        ArtworkView.setImage(image:animated:)(v21, v18);
      }
    }
  }
}

void sub_1004D8058(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1004D8170()
{
  result = qword_100988B18;
  if (!qword_100988B18)
  {
    type metadata accessor for BlankAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100988B18);
  }

  return result;
}

uint64_t sub_1004D81C8()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009764A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return Promise.__allocating_init(value:)();
}

void sub_1004D861C()
{
  v1 = [*&v0[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel] font];
  if (v1)
  {
    v2 = v1;
    [v1 descender];

    if (qword_10096E638 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for SpacerDimension();
    sub_1000056A8(v3, qword_100988B78);
    v4 = [v0 traitCollection];
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B0B70;
    *(v5 + 32) = v4;
    v6 = v4;
    v7 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_10021CA28();
    dispatch thunk of AnyDimension.rawValue(in:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_1004D877C(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, NSString a5)
{
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v14], v13, v9);
  swift_endAccess();
  sub_1004D8FC8();
  (*(v10 + 8))(v13, v9);
  v15 = *&v5[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v15 setText:a3];

  v16 = *&v5[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel];
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [v16 setText:a5];

  return [v5 setNeedsLayout];
}

uint64_t sub_1004D8978(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SpacerDimension();
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  return SpacerDimension.init(constant:)();
}

char *sub_1004D89D0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v19 = __chkstk_darwin(v18);
  (*(v21 + 104))(&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v19);
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v14);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v22 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v51.receiver = v4;
  v51.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v30 = [v29 layer];
  [v30 setAllowsGroupBlending:0];

  v31 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel;
  v32 = qword_10096E3F0;
  v33 = *&v29[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for FontUseCase();
  v35 = sub_1000056A8(v34, qword_1009D1B50);
  v36 = *(v34 - 8);
  v50 = *(v36 + 16);
  v50(v12, v35, v34);
  v49 = *(v36 + 56);
  v49(v12, 0, 1, v34);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v29[v31] setNumberOfLines:1];
  v37 = *&v29[v31];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 secondaryLabelColor];
  [v39 setTextColor:v40];

  v41 = [*&v29[v31] layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  v42 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel;
  v43 = qword_10096E3F8;
  v44 = *&v29[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_1000056A8(v34, qword_1009D1B68);
  v50(v12, v45, v34);
  v49(v12, 0, 1, v34);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v29[v42] setNumberOfLines:3];
  v46 = *&v29[v42];
  v47 = [v38 labelColor];
  [v46 setTextColor:v47];

  [v29 addSubview:*&v29[v31]];
  [v29 addSubview:*&v29[v42]];
  sub_1004D8FC8();

  return v29;
}

id sub_1004D8FC8()
{
  v1 = v0;
  v54 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v39 - v13;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v42 = *&v1[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel];
  v17 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  v18 = *(v10 + 16);
  v53 = v17;
  v50 = v10 + 16;
  v51 = v1;
  v44 = v18;
  v18(v16, &v1[v17], v9);
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v55 = *(v10 + 8);
  v52 = v10 + 8;
  v55(v16, v9);
  v19 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.badgeColor.getter();
  v20 = *(v4 + 8);
  v48 = v3;
  v46 = v4 + 8;
  v41 = v20;
  v20(v8, v3);
  if (!v19)
  {
    v19 = [objc_opt_self() secondaryLabelColor];
  }

  v21 = v42;
  [v42 setTextColor:v19];

  v22 = v53;
  v23 = v51;
  v24 = v49;
  v25 = v44;
  v44(v49, &v51[v53], v9);
  v26 = v47;
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  v55(v24, v9);
  v27 = [v23 traitCollection];
  v28 = HeroCarouselItemOverlay.DisplayOptions.Placement.textAlignment(with:)();

  v29 = *(v56 + 8);
  v56 += 8;
  v40 = v29;
  v29(v26, v54);
  [v21 setTextAlignment:v28];
  v30 = *&v23[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel];
  v31 = v43;
  v25(v43, &v23[v22], v9);
  v32 = v45;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v55(v31, v9);
  v33 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.titleColor.getter();
  v41(v32, v48);
  if (!v33)
  {
    v33 = [objc_opt_self() labelColor];
  }

  [v30 setTextColor:v33];

  v34 = v51;
  v35 = v49;
  v25(v49, &v51[v53], v9);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  v55(v35, v9);
  v36 = [v34 traitCollection];
  v37 = HeroCarouselItemOverlay.DisplayOptions.Placement.textAlignment(with:)();

  v40(v26, v54);
  [v30 setTextAlignment:v37];
  return [v34 setNeedsLayout];
}

uint64_t sub_1004D9544@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for VerticalStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for DisjointStack();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  DisjointStack.init(with:)();
  *(swift_allocObject() + 16) = v13;
  v14 = v13;
  VerticalStack.init(with:)();
  v15 = *&v14[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel];
  v16 = type metadata accessor for DynamicTypeLabel();
  v30 = v16;
  v31 = &protocol witness table for UILabel;
  v29[0] = v15;
  v17 = v15;
  VerticalStack.adding(_:with:)();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_100007000(v29);
  v19 = *&v14[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel];
  v28[3] = v16;
  v28[4] = &protocol witness table for UILabel;
  v28[0] = v19;
  v30 = v2;
  v31 = &protocol witness table for VerticalStack;
  sub_1000056E0(v29);
  v20 = v19;
  VerticalStack.adding(_:with:)();
  v18(v8, v2);
  sub_100007000(v28);
  v21 = v27;
  v22 = v25;
  v27[3] = v25;
  v21[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v21);
  DisjointStack.inserting(_:at:with:)();
  (*(v26 + 8))(v12, v22);
  return sub_100007000(v29);
}

uint64_t sub_1004D9958(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DisjointStack.EdgePosition();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ZeroDimension();
  v12[3] = v13;
  v12[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v12);
  static ZeroDimension.zero.getter();
  v14 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v15 = *(v10 + 104);
  v27 = v9;
  v15(v12, enum case for DisjointStack.EdgePosition.anchored(_:), v9);
  v29 = a1;
  DisjointStack.Properties.bottomEdge.setter();
  v16 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_displayOptions;
  v17 = v26;
  swift_beginAccess();
  v18 = v17 + v16;
  v19 = v28;
  (*(v6 + 16))(v8, v18, v5);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  v20 = v5;
  v21 = v30;
  (*(v6 + 8))(v8, v20);
  v22 = v31;
  result = (*(v21 + 88))(v19, v31);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v12[3] = v13;
    v12[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v12);
    static ZeroDimension.zero.getter();
    v15(v12, v14, v27);
    return DisjointStack.Properties.leadingEdge.setter();
  }

  else
  {
    v24 = v27;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v12[3] = v13;
        v12[4] = &protocol witness table for ZeroDimension;
        sub_1000056E0(v12);
        static ZeroDimension.zero.getter();
        v15(v12, v14, v24);
        return DisjointStack.Properties.trailingEdge.setter();
      }

      else
      {
        return (*(v21 + 8))(v19, v22);
      }
    }
  }

  return result;
}

uint64_t sub_1004D9CE0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  (*(v8 + 8))(v10, v7);
  HeroCarouselItemOverlay.DisplayOptions.Placement.verticalStackAlignment.getter();
  (*(v4 + 8))(v6, v3);
  return VerticalStack.Properties.alignment.setter();
}

uint64_t type metadata accessor for CarouselItemModuleHeaderView()
{
  result = qword_100988BD0;
  if (!qword_100988BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004DA068()
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

double sub_1004DA108()
{
  sub_1004D9544(v3);
  sub_10002A400(v3, v3[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v1 = v0;
  sub_100007000(v3);
  return v1;
}

uint64_t sub_1004DA1C0()
{
  if (qword_10096E628 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SpacerDimension();
  v1 = sub_1000056A8(v0, qword_100988B48);
  v4[3] = v0;
  v4[4] = sub_10021CA28();
  v2 = sub_1000056E0(v4);
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1004DA288()
{
  if (qword_10096E630 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SpacerDimension();
  v1 = sub_1000056A8(v0, qword_100988B60);
  v9 = v0;
  v2 = sub_10021CA28();
  v10 = v2;
  v3 = sub_1000056E0(v8);
  v4 = *(*(v0 - 8) + 16);
  v4(v3, v1, v0);
  VerticalStack.Properties.topSpacing.setter();
  if (qword_10096E638 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_100988B78);
  v9 = v0;
  v10 = v2;
  v6 = sub_1000056E0(v8);
  v4(v6, v5, v0);
  return VerticalStack.Properties.bottomSpacing.setter();
}

void sub_1004DA3C8()
{
  v1 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v10 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004DA620@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
  }

  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v8, qword_1009CEA50);
  FlowcaseItemLayout.Metrics.artworkAspectRatio.getter();
  AspectRatio.height(fromWidth:)();
  (*(v5 + 8))(v7, v4);
  ComponentPrefetchSizing.init(size:contentMode:)();
  v9 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

void sub_1004DA7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Lockup.clickAction.getter();
    if (v9)
    {
      v10 = v9;
      v11 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10002B894(v6, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(v10, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1004DA970()
{
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v0, qword_1009CEA50);
  type metadata accessor for FlowcaseItemLayout();
  sub_1004DBEC4(&unk_100979610, &type metadata accessor for FlowcaseItemLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  if (qword_10096D4D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Separator();
  sub_1000056A8(v1, qword_1009CEA68);

  return CGSize.adding(separator:in:)();
}

id sub_1004DAB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v175 = a3;
  v172 = type metadata accessor for MediaOverlayStyle();
  v174 = *(v172 - 8);
  __chkstk_darwin(v172);
  v166 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v156 - v8;
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v157 = &v156 - v10;
  v167 = type metadata accessor for AdamId();
  v164 = *(v167 - 8);
  __chkstk_darwin(v167);
  v158 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v156 - v13;
  v15 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v15 - 8);
  v162 = &v156 - v16;
  v17 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v17 - 8);
  v171 = &v156 - v18;
  v19 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v19 - 8);
  v170 = &v156 - v20;
  v21 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v21 - 8);
  v169 = &v156 - v22;
  v23 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v23 - 8);
  v161 = &v156 - v24;
  v25 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v159 = *(v25 - 8);
  __chkstk_darwin(v25);
  v160 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v27 - 8);
  v173 = (&v156 - v28);
  v29 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v29 - 8);
  v31 = &v156 - v30;
  v32 = *&v3[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_captionLabel];
  EditorialCard.caption.getter();
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_titleLabel];
  EditorialCard.title.getter();
  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_subtitleLabel];
  EditorialCard.subtitle.getter();
  if (v39)
  {
    v40 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = 0;
  }

  [v38 setText:v40];

  v41 = EditorialCard.appEventFormattedDates.getter();
  sub_10025E33C(v41);
  v42 = EditorialCard.clickAction.getter();
  v163 = v14;
  if (v42)
  {
    v176 = v42;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_1004DBEC4(&qword_100992FB0, &type metadata accessor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v43 = sub_10002849C(&unk_10097B3D0);
    (*(*(v43 - 8) + 56))(v31, 0, 1, v43);
  }

  else
  {
    v44 = sub_10002849C(&unk_10097B3D0);
    (*(*(v44 - 8) + 56))(v31, 1, 1, v44);
  }

  v45 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_clickAction;
  swift_beginAccess();
  sub_100079964(v31, &v4[v45]);
  swift_endAccess();
  v46 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_gradientBlurView];
  if (EditorialCard.artwork.getter())
  {
    v47 = Artwork.backgroundColor.getter();
  }

  else
  {
    v47 = 0;
  }

  v48 = *&v46[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColor];
  *&v46[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColor] = v47;
  v49 = v47;

  sub_10025144C();
  v50 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v50)
  {
    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    v51 = v50;
    BaseObjectGraph.optional<A>(_:)();
    v52 = v176;
    v53 = v4;
    v54 = v46;
    v55 = a1;
    v56 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v57 = *&v51[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v58 = v57;
    sub_1002C55E4(v52);
    v59 = *&v51[v56];
    *&v51[v56] = v52;
    a1 = v55;
    v46 = v54;
    v4 = v53;
    v60 = v52;

    sub_1002C5748(v57);
  }

  v61 = EditorialCard.lockup.getter();
  v62 = &StringUserDefaultsDebugSetting;
  if (v61)
  {
    v63 = v61;
    v156 = v4;
    v64 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView];
    v65 = v159;
    v66 = *(v159 + 104);
    v66(v160, enum case for OfferButtonPresenterViewAlignment.right(_:), v25);
    v67 = v161;
    v66(v161, enum case for OfferButtonPresenterViewAlignment.left(_:), v25);
    (*(v65 + 56))(v67, 0, 1, v25);
    sub_1004DBEC4(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
    v68 = v173;
    AccessibilityConditional.init(value:axValue:)();
    v69 = sub_10002849C(&unk_100973240);
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = *(v64 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
    v71 = Lockup.icon.getter();
    if (v71)
    {
    }

    v161 = v46;
    [v70 setHidden:v71 == 0];
    v160 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView;
    v72 = *(v64 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
    v73 = type metadata accessor for OfferStyle();
    v74 = v169;
    (*(*(v73 - 8) + 56))(v169, 1, 1, v73);
    v75 = type metadata accessor for OfferEnvironment();
    v76 = v170;
    (*(*(v75 - 8) + 56))(v170, 1, 1, v75);
    v77 = sub_10002849C(&unk_1009701A0);
    v78 = v171;
    (*(*(v77 - 8) + 56))(v171, 1, 1, v77);
    v79 = type metadata accessor for OfferTint();
    v80 = v162;
    (*(*(v79 - 8) + 56))(v162, 1, 1, v79);
    sub_1004F3190(v63, v72, v173, v175, 1, 0, v74, v76, v80, v78);
    sub_10002B894(v80, &unk_100973AD0);
    v72[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_10070AB34();
    [v72 setNeedsLayout];
    v81 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
    v82 = *&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v82)
    {
      [v82 setHidden:1];
      v83 = *&v72[v81];
      if (v83)
      {
        [v83 setText:0];
      }
    }

    v84 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
    v85 = *&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
    if (v85)
    {
      if (([v85 isHidden] & 1) == 0)
      {
        v86 = *&v72[v84];
        if (v86)
        {
          if ([v86 hasContent])
          {
            v87 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
            [*&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
            [*&v72[v87] setText:0];
          }
        }
      }
    }

    v168 = a1;
    v88 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
    v89 = [*&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] isHidden];
    v90 = v163;
    if (v89 & 1) == 0 && ([*&v72[v88] hasContent])
    {
      v91 = *&v72[v84];
      if (v91)
      {
        [v91 setHidden:1];
        v92 = *&v72[v84];
        if (v92)
        {
          [v92 setText:0];
        }
      }

      v93 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
      [*&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
      [*&v72[v93] setText:0];
    }

    sub_10002B894(v171, &unk_100970150);
    sub_10002B894(v170, &unk_100970160);
    sub_10002B894(v169, &qword_100973AE0);
    Lockup.adamId.getter();
    v94 = Lockup.crossLinkTitle.getter();
    v96 = v95;
    v97 = Lockup.crossLinkSubtitle.getter();
    v99 = v98;
    v100 = Lockup.includeBetaApps.getter();
    v171 = v63;
    if (v96 && v99)
    {
      v101 = v100;
      v170 = v94;
      v102 = v164;
      (*(v164 + 16))(v158, v90, v167);
      sub_10002849C(&unk_100973AF0);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v169 = v97;
      v104 = v176;
      v103 = v177;
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v105 = v64;
      v106 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v158, v170, v96, v169, v99, v101 & 1, v64, &off_1008B5970, v104, v103);
      (*(v102 + 8))(v90, v167);
      sub_10002B894(v173, &unk_100973230);
      v107 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v105[v107] = v106;
    }

    else
    {

      v110 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *(v64 + v110) = 0;

      sub_10014024C(0, 0);
      (*(v164 + 8))(v90, v167);
      sub_10002B894(v173, &unk_100973230);
    }

    v111 = v174;
    v112 = v160;
    v113 = *(*&v160[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
    if (v113)
    {
      v114 = qword_10096DDB8;
      v115 = v113;
      if (v114 != -1)
      {
        swift_once();
      }

      v116 = type metadata accessor for FontUseCase();
      v117 = sub_1000056A8(v116, qword_1009D08C0);
      v118 = *(v116 - 8);
      v119 = v157;
      (*(v118 + 16))(v157, v117, v116);
      (*(v118 + 56))(v119, 0, 1, v116);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    }

    v120 = v165;
    EditorialCard.mediaOverlayStyle.getter();
    v121 = MediaOverlayStyle.userInterfaceStyle.getter();
    v124 = *(v111 + 8);
    v123 = v111 + 8;
    v122 = v124;
    (v124)(v120, v172);
    v125 = *(*&v112[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
    if (v121 == 2)
    {
      v126 = objc_opt_self();
      v127 = v125;
      v128 = [v126 whiteColor];
    }

    else
    {
      sub_100005744(0, &qword_100970180);
      v129 = v125;
      v128 = static UIColor.appTint.getter();
    }

    v130 = v128;
    [v125 setTintColor:v128];

    [v64 setHidden:0];
    v131 = v166;
    EditorialCard.mediaOverlayStyle.getter();
    v132 = MediaOverlayStyle.userInterfaceStyle.getter();
    v133 = v172;
    (v122)(v131, v172);
    [v64 setOverrideUserInterfaceStyle:v132];
    [*(*&v112[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
    v134 = *(*&v112[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
    sub_100005744(0, &qword_100970180);
    v135 = v134;
    v136 = static UIColor.primaryText.getter();
    v173 = v122;
    v137 = v136;
    v138 = [v136 colorWithAlphaComponent:0.7];
    v174 = v123;
    v139 = v138;

    [v135 setTextColor:v139];
    v140 = *(*&v112[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
    v141 = static UIColor.primaryText.getter();
    v142 = [v141 colorWithAlphaComponent:0.7];

    [v140 setTextColor:v142];
    v143 = *(v64 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel);
    v144 = static UIColor.primaryText.getter();
    v145 = [v144 colorWithAlphaComponent:0.7];

    [v143 setTextColor:v145];
    v62 = &StringUserDefaultsDebugSetting;
    [v64 setNeedsLayout];
    v146 = swift_allocObject();
    v147 = v156;
    swift_unknownObjectWeakInit();
    v148 = swift_allocObject();
    v149 = v171;
    *(v148 + 2) = v146;
    *(v148 + 3) = v149;
    *(v148 + 4) = v175;
    v150 = &v147[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v151 = *&v147[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction];
    *v150 = sub_1004DBEB8;
    v150[1] = v148;

    sub_10001F63C(v151);

    v152 = v161;
    [v161 setHidden:0];
    EditorialCard.mediaOverlayStyle.getter();
    v153 = MediaOverlayStyle.userInterfaceStyle.getter();
    (v173)(v131, v133);
    v154 = v152;
    v4 = v147;
    [v154 setOverrideUserInterfaceStyle:v153];
  }

  else
  {
    v108 = &v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v109 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction];
    *v108 = 0;
    *(v108 + 1) = 0;
    sub_10001F63C(v109);
    [*&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView] setHidden:1];
    [v46 setHidden:1];
  }

  sub_10025FC20();
  return [v4 v62[41].base_meths];
}

uint64_t sub_1004DBEC4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1004DBF0C()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v0, qword_1009CEA50);
  type metadata accessor for FlowcaseItemLayout();
  sub_1004DBEC4(&unk_100979610, &type metadata accessor for FlowcaseItemLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  if (qword_10096D4D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Separator();
  sub_1000056A8(v1, qword_1009CEA68);
  CGSize.adding(separator:in:)();
  v3 = v2;
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 absoluteDimension:v3];
  v8 = [v6 absoluteDimension:v5];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = [objc_opt_self() itemWithLayoutSize:v9];
  v11 = objc_opt_self();
  sub_10002849C(&qword_100973210);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007B0B70;
  *(v12 + 32) = v10;
  sub_100005744(0, &qword_10098EFE0);
  v13 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v11 verticalGroupWithLayoutSize:v9 subitems:isa];

  return v15;
}

void sub_1004DC1C0(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = v3;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v17, a3);
  type metadata accessor for ArtworkView();
  sub_1004DE9F8(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = qword_100988CC0;
    v7 = Strong;
    v8 = [*(Strong + qword_100988CC0) layer];
    [v8 removeAllAnimations];

    [*&v7[v6] setImage:0];
    type metadata accessor for VideoView();
    sub_1004DE9F8(&unk_1009840E0, type metadata accessor for VideoView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  v9 = *(v4 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v11 = *&v9[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    v12 = v9;
    v13 = v11;
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v18, v14);

    v15 = *&v9[v10];
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_1004DC3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {

      return sub_10002B894(v7, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(a3, 1, a2, v7);

      return (*(v11 + 8))(v7, v10);
    }
  }

  return result;
}

double sub_1004DC560(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_1004DC670(a2, v11, a7, a5, v7, ObjectType);
}

double sub_1004DC670(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = AppEvent.title.getter();
  v11 = v10;
  v12 = AppEvent.kind.getter();
  v14 = v13;
  v15 = AppEvent.subtitle.getter();
  v17 = v16;
  v18 = sub_100287254();
  v19 = sub_1004DC75C(v9, v11, v12, a1, v14, v15, v17, v18 & 1, a3, a5, a6);

  return v19;
}

double sub_1004DC75C(uint64_t a1, void *a2, void *a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9, uint64_t a10, int *a11)
{
  v80 = a6;
  v81 = a7;
  v90 = a3;
  v75 = a1;
  v76 = a2;
  v84 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v84);
  v78 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v85);
  v79 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LabelPlaceholderCompatibility();
  v72 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v74 = v70 - v19;
  __chkstk_darwin(v20);
  v70[0] = v70 - v21;
  v22 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v97 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v96 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v95 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v94 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v100 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v93 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v92 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v99 = LayoutViewPlaceholder.init(representing:)();
  v23 = [a9 traitCollection];
  static Separator.thickness(compatibleWith:)();

  swift_allocObject();
  v83 = LayoutViewPlaceholder.init(representing:)();
  v24 = 0;
  v25 = 0;
  if (a8)
  {
    swift_allocObject();
    v25 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v24 = LayoutViewPlaceholder.init(representing:)();
  }

  v91 = v24;
  v82 = v25;
  v26 = [a9 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  v28 = static UIContentSizeCategory.>= infix(_:_:)();

  v98 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for FontUseCase();
  sub_1000056A8(v89, qword_1009D1A60);
  v29 = a9;
  v30 = [a9 traitCollection];
  v31 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v71 = v28;
  v32 = type metadata accessor for Feature();
  v122[3] = v32;
  v88 = sub_1004DE9F8(&qword_100972E50, &type metadata accessor for Feature);
  v122[4] = v88;
  v33 = sub_1000056E0(v122);
  v34 = *(*(v32 - 8) + 104);
  v87 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v86 = v34;
  v34(v33);
  isFeatureEnabled(_:)();
  sub_100007000(v122);

  v35 = v31;
  v70[1] = ~v28;
  v36 = v70[0];
  v73 = v35;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v37 = *(v72 + 1);
  v37(v36, v16);
  if (qword_10096E3A8 != -1)
  {
    swift_once();
  }

  v72 = a11;
  sub_1000056A8(v89, qword_1009D1A78);
  v38 = [v29 traitCollection];
  v39 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v121[3] = v32;
  v121[4] = v88;
  v40 = sub_1000056E0(v121);
  v86(v40, v87, v32);
  isFeatureEnabled(_:)();
  sub_100007000(v121);
  v90 = v29;

  v41 = v39;
  v42 = v74;
  v76 = v41;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v37(v42, v16);
  if (qword_10096E3B0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v89, qword_1009D1A90);
  v43 = [v90 traitCollection];
  v44 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v120[3] = v32;
  v120[4] = v88;
  v45 = sub_1000056E0(v120);
  v86(v45, v87, v32);
  isFeatureEnabled(_:)();
  sub_100007000(v120);

  v46 = v44;
  v47 = v77;
  v98 = v46;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v37(v47, v16);
  if (qword_10096EB98 != -1)
  {
    swift_once();
  }

  v48 = sub_1000056A8(v84, qword_1009D3058);
  v49 = v78;
  sub_100150A20(v48, v78);
  v119 = &protocol witness table for LayoutViewPlaceholder;
  v118 = v22;
  *&v117 = v97;
  v116 = &protocol witness table for LayoutViewPlaceholder;
  v115 = v22;
  v113 = &protocol witness table for LayoutViewPlaceholder;
  *&v114 = v96;
  v112 = v22;
  v110 = &protocol witness table for LayoutViewPlaceholder;
  *&v111 = v95;
  v109 = v22;
  v107 = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v94;
  v106 = v22;
  *&v105 = v100;
  sub_10002C0AC(v122, v104);
  sub_10002C0AC(v121, v103);
  sub_10002C0AC(v120, v101);
  v50 = v82;
  if (v82)
  {
    v51 = v22;
  }

  else
  {
    v51 = 0;
  }

  if (v82)
  {
    v52 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v52 = 0;
  }

  v88 = v52;
  v89 = v51;
  v53 = v91;
  if (v91)
  {
    v54 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v54 = 0;
  }

  if (v91)
  {
    v55 = v22;
  }

  else
  {
    v55 = 0;
  }

  v56 = v79;
  sub_100151060(v49, v79);
  v57 = v85;
  sub_100005A38(&v117, v56 + *(v85 + 20));
  sub_100005A38(&v114, v56 + v57[6]);
  sub_100005A38(&v111, v56 + v57[7]);
  sub_100005A38(&v108, v56 + v57[8]);
  sub_100005A38(&v105, v56 + v57[9]);
  v58 = (v56 + v57[10]);
  v59 = v92;
  *v58 = v93;
  v58[3] = v22;
  v58[4] = &protocol witness table for LayoutViewPlaceholder;
  v60 = (v56 + v57[11]);
  *v60 = v59;
  v60[3] = v22;
  v60[4] = &protocol witness table for LayoutViewPlaceholder;
  v61 = (v56 + v57[12]);
  *v61 = v99;
  v61[3] = v22;
  v61[4] = &protocol witness table for LayoutViewPlaceholder;
  sub_100005A38(v104, v56 + v57[13]);
  sub_100005A38(v103, v56 + v57[14]);
  v62 = v56 + v57[15];
  v63 = v101[1];
  *v62 = v101[0];
  *(v62 + 16) = v63;
  *(v62 + 32) = v102;
  v64 = (v56 + v57[16]);
  *v64 = v83;
  v64[3] = v22;
  v64[4] = &protocol witness table for LayoutViewPlaceholder;
  v65 = (v56 + v57[17]);
  *v65 = v50;
  v65[1] = 0;
  v66 = v88;
  v67 = v89;
  v65[2] = 0;
  v65[3] = v67;
  v65[4] = v66;
  v68 = (v56 + v57[18]);
  *v68 = v53;
  v68[1] = 0;
  v68[2] = 0;
  v68[3] = v55;
  v68[4] = v54;

  sub_100152848(v90, v56, v72);

  sub_1001A9220(v56);
  sub_100007000(v120);
  sub_100007000(v121);
  sub_100007000(v122);
  return a4;
}

uint64_t sub_1004DD270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MetricsPipeline();
  v167 = *(v6 - 8);
  v168 = v6;
  __chkstk_darwin(v6);
  v166 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v8 - 8);
  v163 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v162 = &v144 - v11;
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v160 = &v144 - v13;
  v14 = type metadata accessor for VideoControls();
  __chkstk_darwin(v14 - 8);
  v158 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v157 = &v144 - v17;
  v18 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v18 - 8);
  v156 = &v144 - v19;
  v154 = type metadata accessor for VideoFillMode();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v155 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for VideoConfiguration();
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v165 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v22 - 8);
  v144 = &v144 - v23;
  v24 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v24 - 8);
  v147 = &v144 - v25;
  v26 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v26 - 8);
  v150 = &v144 - v27;
  v28 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v28 - 8);
  v151 = &v144 - v29;
  v30 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v30 - 8);
  v148 = &v144 - v31;
  v32 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v32 - 8);
  v34 = &v144 - v33;
  v35 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v145 = *(v35 - 8);
  __chkstk_darwin(v35);
  v146 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v37 - 8);
  v149 = &v144 - v38;
  v39 = type metadata accessor for MediaOverlayStyle();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = AppEvent.kind.getter();
  sub_100626BC0(v43, v44);
  v45 = AppEvent.title.getter();
  sub_100626BCC(v45, v46);
  v47 = AppEvent.subtitle.getter();
  sub_100626BD8(v47, v48);
  v49 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
  AppEvent.mediaOverlayStyle.getter();
  v50 = MediaOverlayStyle.userInterfaceStyle.getter();
  (*(v40 + 8))(v42, v39);
  v152 = v49;
  [v49 setOverrideUserInterfaceStyle:v50];
  sub_10062715C();
  v169 = a2;
  v170 = a1;
  if ((sub_100287254() & 1) == 0)
  {
    v61 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView;
    v62 = *&v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
    v56 = v3;
    if (v62)
    {
      [v62 removeFromSuperview];
      v63 = *&v3[v61];
    }

    else
    {
      v63 = 0;
    }

    v64 = v165;
    *&v3[v61] = 0;

    sub_100629440();
    v65 = &v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
    v66 = *&v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
    *v65 = 0;
    *(v65 + 1) = 0;
    goto LABEL_47;
  }

  v51 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView;
  if (!*&v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView])
  {
    v52 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10062B2CC();
    v53 = *&v3[v51];
    *&v3[v51] = v52;
    v54 = v52;

    sub_100629278();
  }

  v55 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView;
  v56 = v3;
  if (!*&v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView])
  {
    v57 = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v58 = *&v3[v55];
    if (v58)
    {
      [v58 removeFromSuperview];
      v59 = v3;
      v60 = *&v3[v55];
    }

    else
    {
      v59 = v3;
      v60 = 0;
    }

    *&v59[v55] = v57;
    v67 = v57;

    sub_100629440();
    v56 = v59;
  }

  v68 = *&v56[v51];
  if (v68)
  {
    [v68 setHidden:0];
  }

  v69 = *&v56[v55];
  if (v69)
  {
    [v69 setHidden:0];
    v70 = *&v56[v55];
    if (v70)
    {
      v164 = v56;
      v71 = v70;
      v72 = AppEvent.lockup.getter();
      v73 = v145;
      v74 = *(v145 + 104);
      v74(v146, enum case for OfferButtonPresenterViewAlignment.right(_:), v35);
      v74(v34, enum case for OfferButtonPresenterViewAlignment.left(_:), v35);
      (*(v73 + 56))(v34, 0, 1, v35);
      sub_1004DE9F8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
      v75 = v149;
      AccessibilityConditional.init(value:axValue:)();
      v76 = sub_10002849C(&unk_100973240);
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      v77 = type metadata accessor for OfferStyle();
      v78 = v148;
      (*(*(v77 - 8) + 56))(v148, 1, 1, v77);
      v79 = type metadata accessor for OfferEnvironment();
      v80 = v151;
      (*(*(v79 - 8) + 56))(v151, 1, 1, v79);
      v81 = sub_10002849C(&unk_1009701A0);
      v82 = v150;
      (*(*(v81 - 8) + 56))(v150, 1, 1, v81);
      v83 = type metadata accessor for OfferTint();
      v84 = v147;
      (*(*(v83 - 8) + 56))(v147, 1, 1, v83);
      sub_1004F3190(v72, v71, v75, v169, 0, 0, v78, v80, v84, v82);
      sub_10002B894(v84, &unk_100973AD0);
      v71[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
      sub_10070AB34();
      [v71 setNeedsLayout];
      v85 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
      v86 = *&v71[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
      if (v86)
      {
        [v86 setHidden:1];
        v87 = *&v71[v85];
        if (v87)
        {
          [v87 setText:0];
        }
      }

      v88 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
      v89 = *&v71[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
      if (v89)
      {
        if (([v89 isHidden] & 1) == 0)
        {
          v90 = *&v71[v88];
          if (v90)
          {
            if ([v90 hasContent])
            {
              v91 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
              [*&v71[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
              [*&v71[v91] setText:0];
            }
          }
        }
      }

      v92 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
      if ([*&v71[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] isHidden])
      {

        sub_10002B894(v150, &unk_100970150);
        sub_10002B894(v151, &unk_100970160);
        sub_10002B894(v78, &qword_100973AE0);
        sub_10002B894(v149, &unk_100973230);
        v56 = v164;
        v93 = *&v164[v55];
        if (!v93)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v94 = [*&v71[v92] hasContent];
        v56 = v164;
        if (v94)
        {
          v95 = *&v71[v88];
          if (v95)
          {
            [v95 setHidden:1];
            v96 = *&v71[v88];
            if (v96)
            {
              [v96 setText:0];
            }
          }

          v97 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
          [*&v71[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v71[v97] setText:0];

          sub_10002B894(v150, &unk_100970150);
          sub_10002B894(v151, &unk_100970160);
          sub_10002B894(v78, &qword_100973AE0);
          sub_10002B894(v149, &unk_100973230);
        }

        else
        {

          sub_10002B894(v150, &unk_100970150);
          sub_10002B894(v151, &unk_100970160);
          sub_10002B894(v78, &qword_100973AE0);
          sub_10002B894(v149, &unk_100973230);
        }

        v93 = *&v56[v55];
        if (!v93)
        {
          goto LABEL_43;
        }
      }

      v98 = *(v93 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
      if (!v98)
      {
        goto LABEL_39;
      }

      v99 = qword_10096DD98;
      v100 = v98;
      if (v99 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for FontUseCase();
      v102 = sub_1000056A8(v101, qword_1009D0860);
      v103 = *(v101 - 8);
      v104 = v144;
      (*(v103 + 16))(v144, v102, v101);
      (*(v103 + 56))(v104, 0, 1, v101);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      v93 = *&v56[v55];
      if (v93)
      {
LABEL_39:
        v105 = *(v93 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
        if (v105)
        {
          v106 = qword_10096DDB0;
          v107 = v105;
          if (v106 != -1)
          {
            swift_once();
          }

          v108 = type metadata accessor for FontUseCase();
          v109 = sub_1000056A8(v108, qword_1009D08A8);
          v110 = *(v108 - 8);
          v111 = v144;
          (*(v110 + 16))(v144, v109, v108);
          (*(v110 + 56))(v111, 0, 1, v108);
          dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
        }
      }
    }
  }

LABEL_43:
  AppEvent.lockup.getter();
  v112 = Lockup.clickAction.getter();

  if (v112)
  {
    v113 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v114 = swift_allocObject();
    v115 = v169;
    v114[2] = v113;
    v114[3] = v115;
    v114[4] = v112;
    v112 = swift_allocObject();
    *(v112 + 16) = sub_1004DE9EC;
    *(v112 + 24) = v114;

    v116 = sub_10041D558;
  }

  else
  {
    v116 = 0;
  }

  v64 = v165;
  v117 = &v56[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  v66 = *&v56[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  *v117 = v116;
  v117[1] = v112;
LABEL_47:
  sub_10001F63C(v66);
  if (AppEvent.moduleVideo.getter())
  {
    (*(v153 + 104))(v155, enum case for VideoFillMode.scaleAspectFill(_:), v154);
    Video.preview.getter();
    Artwork.size.getter();
    v118 = v156;
    AspectRatio.init(_:_:)();

    v119 = type metadata accessor for AspectRatio();
    (*(*(v119 - 8) + 56))(v118, 0, 1, v119);
    Video.playbackControls.getter();
    v164 = v56;
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v120 = v160;
    Video.videoUrl.getter();
    v121 = type metadata accessor for URL();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    v122 = v162;
    Video.templateMediaEvent.getter();
    v123 = v163;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_1004DE9F8(&qword_100973190, type metadata accessor for VideoView);
    v124 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v123, &unk_100973A50);
    sub_10002B894(v122, &unk_100973A50);
    v125 = v120;
    v56 = v164;
    sub_10002B894(v125, &qword_100982460);
    sub_10002B894(v171, &qword_10096FB90);
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v127 = Strong;
      [v152 insertSubview:Strong aboveSubview:*&v56[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
      [v56 setNeedsLayout];

      (*(v159 + 8))(v64, v161);
    }

    else
    {
      (*(v159 + 8))(v64, v161);
    }
  }

  else
  {
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    v128 = swift_unknownObjectWeakLoadStrong();
    if (v128)
    {
      v129 = v128;
      [v152 insertSubview:v128 aboveSubview:*&v56[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
      [v56 setNeedsLayout];
    }
  }

  type metadata accessor for UserNotificationsManager();
  type metadata accessor for BaseObjectGraph();
  v130 = v169;
  inject<A, B>(_:from:)();
  v131 = v171[0];

  v132 = AppEvent.notificationConfig.getter();
  type metadata accessor for NotifyMeButtonPresenter();
  v133 = swift_allocObject();
  v134 = v133 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v133 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v133 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v133 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v134 + 8) = &off_1008CC2D0;
  swift_unknownObjectWeakAssign();
  *(v133 + 16) = v131;
  *(v133 + 24) = v132;
  v165 = v132;

  v135 = v56;
  v136 = v166;
  v137 = v168;
  inject<A, B>(_:from:)();
  (*(v167 + 32))(v133 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline, v136, v137);
  *(v133 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_objectGraph) = v130;
  type metadata accessor for ASKBagContract();

  inject<A, B>(_:from:)();
  *(v133 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_bag) = v171[5];
  sub_10034B790();
  sub_10034C234();
  v138 = objc_opt_self();
  v139 = [v138 defaultCenter];

  v140 = static UserNotificationsManager.userNotificationsDidChangeNotification.getter();
  [v139 addObserver:v133 selector:"userNotificationsDidChangeNotification:" name:v140 object:0];

  v141 = [v138 defaultCenter];
  [v141 addObserver:v133 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v142 = [v138 defaultCenter];
  [v142 addObserver:v133 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  sub_10062735C(v133);
  v135[OBJC_IVAR____TtC8AppStore16AppEventCardView_includeBorderInDarkMode] = AppEvent.includeBorderInDarkMode.getter() & 1;
  sub_10062715C();
}

uint64_t sub_1004DE9F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004DEA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SmallLockupLayout.Metrics();
  v44 = *(v10 - 1);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for Artwork.Crop();
  v47 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = a4;
  v50[4] = a5;
  v17 = sub_1000056E0(v50);
  (*(*(a4 - 8) + 16))(v17, a1, a4);
  sub_10002C0AC(v50, v49);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for AppEvent();
  if (!swift_dynamicCast())
  {
    return sub_100007000(v50);
  }

  v18 = v48;
  if (qword_10096EB98 != -1)
  {
    swift_once();
  }

  v46 = v14;
  v43 = a2;
  v19 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_1000056A8(v19, qword_1009D3058);
  AspectRatio.height(fromWidth:)();
  v20 = AppEvent.moduleVideo.getter();
  v42 = v18;
  if (v20)
  {
    Video.preview.getter();

    v21 = v47;
LABEL_8:
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v21 + 8))(v16, v46);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v23 = *(a3 + OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v23 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      type metadata accessor for VideoView();
      sub_1004DE9F8(&unk_1009840E0, type metadata accessor for VideoView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
      type metadata accessor for ArtworkView();
      sub_1004DE9F8(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v21 = v47;
    goto LABEL_14;
  }

  v22 = AppEvent.moduleArtwork.getter();
  v21 = v47;
  if (v22)
  {

    goto LABEL_8;
  }

LABEL_14:
  v26 = *(a3 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (v26)
  {
    v27 = v26;
    AppEvent.lockup.getter();
    v28 = dispatch thunk of Lockup.artwork.getter();

    if (v28)
    {
      v29 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      v31 = v44;
      v30 = v45;
      (*(v44 + 16))(v12, &v27[v29], v45);
      SmallLockupLayout.Metrics.artworkSize.getter();
      (*(v31 + 8))(v12, v30);
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v44 = *(v21 + 8);
      (v44)(v16, v46);
      v32 = Artwork.config(_:mode:prefersLayeredImage:)();
      v41 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v33 = *&v27[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
      v45 = v27;
      v34 = v33;
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v34 setContentMode:Artwork.contentMode.getter()];
      v47 = v32;
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v35 = v41;
      v36 = *&v27[v41];
      Artwork.crop.getter();
      v37 = Artwork.Crop.preferredContentMode.getter();
      (v44)(v16, v46);
      [v36 setContentMode:v37];

      v27 = *&v27[v35];
      v38 = v45;

      type metadata accessor for ArtworkView();
      sub_1004DE9F8(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  else
  {
  }

  return sub_100007000(v50);
}

double *sub_1004DF178(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Artwork.Crop();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _swiftEmptyArrayStorage;
  if (qword_10096EB98 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_1000056A8(v7, qword_1009D3058);
  AspectRatio.height(fromWidth:)();
  if (AppEvent.moduleVideo.getter())
  {
    Video.preview.getter();
  }

  else if (!AppEvent.moduleArtwork.getter())
  {
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  Artwork.crop.getter();
  Artwork.Crop.preferredContentMode.getter();
  (*(v4 + 8))(v6, v3);
  Artwork.config(_:mode:prefersLayeredImage:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v8 = v16;
LABEL_9:
  AppEvent.lockup.getter();
  v9 = dispatch thunk of Lockup.artwork.getter();

  if (v9)
  {
    v10 = [a2 traitCollection];
    v11 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v11)
    {
      if (qword_10096EB90 != -1)
      {
        swift_once();
      }

      v12 = qword_1009D3040;
    }

    else
    {
      if (qword_10096EB88 != -1)
      {
        swift_once();
      }

      v12 = qword_1009D3028;
    }

    v13 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v13, v12);
    SmallLockupLayout.Metrics.artworkSize.getter();
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v4 + 8))(v6, v3);
    Artwork.config(_:mode:prefersLayeredImage:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v16;
  }

  else
  {
  }

  return v8;
}

uint64_t type metadata accessor for VideoView()
{
  result = qword_100988D20;
  if (!qword_100988D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004DF598()
{
  sub_1004E6944();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      type metadata accessor for VideoConfiguration();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1004DF750()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1009D2200;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = VideoConfiguration.allowsAutoPlay.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1004DF87C()
{
  v1 = v0;
  v2 = qword_100988CE0;
  v3 = *(v0 + qword_100988CE0);
  if (v3 || (sub_1004E053C(), (v3 = *(v0 + v2)) != 0))
  {
    v4 = v3;
    v5 = dispatch thunk of VideoPlayer.shouldBePlaying.getter();

    if ((v5 & 1) == 0)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = *(v1 + v2);
      if (v7)
      {
        swift_retain_n();
        v8 = v7;
        if ([v8 isMuted] & 1) != 0 && ((*((swift_isaMask & *v1) + qword_1009D2210 + 752))())
        {

          sub_1004BB7B4(sub_1004E94DC, v6);

LABEL_12:

          return;
        }
      }

      else
      {
        swift_retain_n();
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = *(Strong + qword_100988CE0);

        [v11 play];

        return;
      }

      goto LABEL_12;
    }
  }
}

uint64_t sub_1004DFA48()
{
  type metadata accessor for RoundedCornerView();
  v0 = method lookup function for RoundedCornerView();

  return v0();
}

void sub_1004DFA90(uint64_t a1)
{
  type metadata accessor for RoundedCornerView();
  v2 = method lookup function for RoundedCornerView();
  v2(a1);

  sub_1004E5878();
}

void (*sub_1004DFAF0(uint64_t *a1))(void *a1, char a2)
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
  *(v3 + 32) = v1;
  type metadata accessor for RoundedCornerView();
  v5 = method lookup function for RoundedCornerView();
  *(v4 + 40) = v5(v4);
  return sub_1004DFB90;
}

void sub_1004DFB90(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1004E5878();
  }

  free(v3);
}

uint64_t sub_1004DFBEC(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_100988CB0 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + qword_100988CE0);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer);
      v6 = v3;
      [v5 setPlayer:v6];
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1004DFC98()
{
  v1 = *(v0 + qword_100988CE0);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 currentItem];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 tracks];

  sub_100005744(0, &unk_100988E80);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 assetTrack];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 mediaType];

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
        {

LABEL_23:
          i = 1;
          goto LABEL_24;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        i = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_24:

  return i;
}

uint64_t sub_1004DFED0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = type metadata accessor for VideoConfiguration();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VideoControls();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_1009D21D0);
  if (v12)
  {
    v28[0] = v9;
    v28[1] = a1;

    v13 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
    v14 = qword_1009D2200;
    v15 = (v4 + 16);
    v16 = (v4 + 8);
    if (v13)
    {
      swift_beginAccess();
      v17 = v2 + v14;
      v18 = v29;
      (*v15)(v6, v17, v29);
      VideoConfiguration.autoPlayPlaybackControls.getter();
    }

    else
    {
      swift_beginAccess();
      v24 = v2 + v14;
      v18 = v29;
      (*v15)(v6, v24, v29);
      VideoConfiguration.playbackControls.getter();
    }

    (*v16)(v6, v18);
    v25 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
    v12(v11, v25 & 1);
    sub_10001F63C(v12);
    return (*(v8 + 8))(v11, v28[0]);
  }

  else
  {
    v19 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
    v20 = qword_1009D2200;
    v21 = (v4 + 16);
    if (v19)
    {
      swift_beginAccess();
      v22 = v2 + v20;
      v23 = v29;
      (*v21)(v6, v22, v29);
      VideoConfiguration.autoPlayPlaybackControls.getter();
    }

    else
    {
      swift_beginAccess();
      v27 = v2 + v20;
      v23 = v29;
      (*v21)(v6, v27, v29);
      VideoConfiguration.playbackControls.getter();
    }

    return (*(v4 + 8))(v6, v23);
  }
}

uint64_t sub_1004E01F8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VideoPlayerState();
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_100988CE0);
  if (v8)
  {
    v14 = v4;
    v9 = v8;
    dispatch thunk of VideoPlayer.state.getter();

    return (*(v14 + 32))(a1, v7, v3);
  }

  else
  {
    v11 = enum case for VideoPlayerState.unknown(_:);
    v12 = *(v4 + 104);

    return v12(a1, v11, v3, v5);
  }
}

uint64_t sub_1004E032C(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for VideoConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = qword_1009D2200;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1004E805C(&unk_100988E70, &type metadata accessor for VideoConfiguration);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1004E77F8();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_1004E053C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E1D9C();
  v6 = qword_100988CE0;
  v7 = *(v0 + qword_100988CE0);
  if (v7 || (((*(v3 + 16))(v5, v0 + qword_1009D21C8, v2), v8 = objc_allocWithZone(type metadata accessor for VideoPlayer()), v9 = VideoPlayer.init(with:)(), (v10 = *(v0 + v6)) == 0) ? (v12 = 0) : (v11 = v10, dispatch thunk of VideoPlayer.delegate.setter(), v11, v12 = *(v1 + v6)), *(v1 + v6) = v9, v13 = v9, v12, sub_1004E3D80(), v13, (v7 = *(v1 + v6)) != 0))
  {
    v14 = v7;
    dispatch thunk of VideoPlayer.startPreloading()();
  }
}

void sub_1004E069C(char a1)
{
  if (a1)
  {
    v2 = *(v1 + qword_100988CE8);
    if (v2)
    {
      v7[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v7[5] = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100235C48;
      v7[3] = &unk_1008C6390;
      v3 = _Block_copy(v7);
      v4 = v2;
      [v4 exitFullScreenAnimated:0 completionHandler:v3];
      _Block_release(v3);
    }

    v5 = *(v1 + qword_100988CE0);
    if (v5)
    {
      v6 = v5;
      dispatch thunk of VideoPlayer.releaseAssets()();
    }
  }

  else
  {
    *(v1 + qword_100988D18) = 1;
  }
}

void sub_1004E079C()
{
  v1 = qword_100988CE8;
  v2 = *(v0 + qword_100988CE8);
  if (v2)
  {
    v3 = [v2 view];
  }

  else
  {
    v3 = 0;
  }

  [v3 removeFromSuperview];

  v4 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_1004E081C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a1;
  v5 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - v6;
  v7 = sub_10002849C(&qword_100988E60);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_10002849C(&qword_100988E68);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for MetricsData();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(v3 + qword_1009D2198, v15, &unk_100973A50);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v38 = a3;
    (*(v17 + 32))(v19, v15, v16);
    v21 = qword_100988CE0;
    v22 = *(v3 + qword_100988CE0);
    if (!v22)
    {
      (*(v17 + 8))(v19, v16);
      v20 = 1;
      a3 = v38;
      return (*(v17 + 56))(a3, v20, 1, v16);
    }

    v23 = v3;
    v24 = v22;
    v25 = dispatch thunk of VideoPlayer.playerItem.getter();
    if (v25)
    {
      v26 = *(v23 + v21);
      if (v26)
      {
        v27 = [v26 currentItem];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 asset];

          v30 = String._bridgeToObjectiveC()();
          v31 = [v29 statusOfValueForKey:v30 error:0];

          if (v31 == 2)
          {
            [v25 duration];
            [v25 currentTime];
            CMTimeGetSeconds(&time);

LABEL_12:
            v32 = type metadata accessor for MediaMetricsEvent.ActionType();
            v33 = *(v32 - 8);
            (*(v33 + 16))(v12, v39, v32);
            (*(v33 + 56))(v12, 0, 1, v32);
            v34 = type metadata accessor for MediaMetricsEvent.ActionContext();
            (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
            v35 = v40;
            dispatch thunk of VideoPlayer.videoUrl.getter();
            a3 = v38;
            static MediaMetricsEvent.fillIn(template:actionType:actionDetails:actionContext:url:duration:position:)();

            sub_10002B894(v35, &qword_100982460);
            sub_10002B894(v9, &qword_100988E60);
            sub_10002B894(v12, &qword_100988E68);
            (*(v17 + 8))(v19, v16);
            v20 = 0;
            return (*(v17 + 56))(a3, v20, 1, v16);
          }
        }
      }
    }

    v37 = 0;
    goto LABEL_12;
  }

  sub_10002B894(v15, &unk_100973A50);
  v20 = 1;
  return (*(v17 + 56))(a3, v20, 1, v16);
}

uint64_t sub_1004E0DA8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10002849C(&unk_100988DF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for MediaMetricsEvent.ActionType();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for MediaMetricsEvent.ActionType.stop(_:), v12, v14);
  if (a2)
  {
    v17 = enum case for MediaMetricsEvent.ActionDetails.complete(_:);
    v18 = type metadata accessor for MediaMetricsEvent.ActionDetails();
    (*(*(v18 - 8) + 104))(v8, v17, v18);
  }

  else
  {
    v18 = type metadata accessor for MediaMetricsEvent.ActionDetails();
    if (a1)
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.pause(_:);
    }

    else
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.autopause(_:);
    }

    (*(*(v18 - 8) + 104))(v8, *v19, v18);
  }

  type metadata accessor for MediaMetricsEvent.ActionDetails();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_1004E946C(v8, v11);
  sub_1004E081C(v16, v11, a3);
  sub_10002B894(v11, &unk_100988DF0);
  return (*(v13 + 8))(v16, v12);
}

id sub_1004E1028()
{
  v1 = qword_100988CF8;
  result = [*&v0[qword_100988CF8] isHidden];
  if ((result & 1) == 0)
  {
    v3 = *&v0[v1];
    [v0 bounds];
    [v3 sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    v10 = &v0[qword_1009D21B8];
    if (v0[qword_1009D21B8 + 16])
    {
      [v0 bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MidY = CGRectGetMidY(v20);
    }

    else
    {
      MidX = *v10;
      MidY = v10[1];
    }

    v17 = *&v0[v1];

    return [v17 setFrame:{MidX - v7 * 0.5, MidY - v9 * 0.5, v7, v9}];
  }

  return result;
}

uint64_t sub_1004E1178()
{
  v1 = v0;
  v94 = type metadata accessor for VideoControls();
  v2 = *(v94 - 8);
  __chkstk_darwin(v94);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v84 - v6;
  v7 = type metadata accessor for VideoPlayerState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v85 = &v84 - v12;
  __chkstk_darwin(v13);
  v86 = &v84 - v14;
  __chkstk_darwin(v15);
  v92 = &v84 - v16;
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v22 = __chkstk_darwin(v20);
  v23 = &v84 - v21;
  v24 = qword_100988D18;
  v25 = v1[qword_100988D18];
  v89 = v8;
  v87 = v26;
  if (v25 == 1)
  {
    v91 = v2;
    v27 = *&v1[qword_100988CE0];
    if (v27)
    {
      v28 = v27;
      dispatch thunk of VideoPlayer.state.getter();

      (*(v8 + 32))(v23, v19, v7);
      v29 = *(v8 + 104);
    }

    else
    {
      v29 = *(v8 + 104);
      v29(&v84 - v21, enum case for VideoPlayerState.unknown(_:), v7, v22);
    }

    v32 = v92;
    (v29)(v92, enum case for VideoPlayerState.paused(_:), v7);
    v33 = static VideoPlayerState.== infix(_:_:)();
    v34 = *(v8 + 8);
    v34(v32, v7);
    v34(v23, v7);
    if (v33)
    {
      v1[v24] = 0;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_1004E9464;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v2 = v91;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v35 = qword_100988CE0;
  v36 = *&v1[qword_100988CE0];
  v88 = v7;
  v95 = v31;
  v90 = qword_100988CE0;
  if (!v36)
  {
    v43 = v2;
    v48 = 0;
    v49 = &v1[qword_1009D21E8];
    v50 = v1[qword_1009D21E8] ^ 1;
    goto LABEL_22;
  }

  v37 = [v36 currentItem];
  if (v37)
  {
    v38 = v4;
    v39 = v2;
    v40 = v37;
    [v37 currentTime];
    CMTime.init(seconds:preferredTimescale:)(0.0, 1000000000);
    v41 = static CMTime.== infix(_:_:)();

    v2 = v39;
    v4 = v38;
    v31 = v95;
    v42 = *&v1[v35];
    if (v42)
    {
      goto LABEL_13;
    }

LABEL_17:
    v43 = v2;
    v45 = 0;
    goto LABEL_18;
  }

  v41 = 1;
  v42 = *&v1[v35];
  if (!v42)
  {
    goto LABEL_17;
  }

LABEL_13:
  v43 = v2;
  v44 = v42;
  v45 = dispatch thunk of VideoPlayer.isLoading.getter();

  v46 = *&v1[v35];
  if (!v46)
  {
LABEL_18:
    v48 = 0;
    goto LABEL_19;
  }

  v47 = v46;
  v48 = dispatch thunk of VideoPlayer.isPlaying.getter();

LABEL_19:
  v49 = &v1[qword_1009D21E8];
  v51 = v1[qword_1009D21E8] | v48;
  v52 = v51 | v41;
  v50 = v51 ^ 1;
  if ((v52 & 1) == 0 && (v45 & 1) == 0)
  {
    v48 = 0;
    v50 = v1[qword_100988CD8];
  }

LABEL_22:
  v53 = v1[qword_100988CC8];
  v93 = v30;
  sub_1004E1A14(v50 & 1, v53, v30, v31);
  v54 = v96;
  sub_1004DFED0(v96);
  static VideoControls.prominentPlay.getter();
  sub_1004E805C(&unk_100988DE0, &type metadata accessor for VideoControls);
  v55 = v94;
  v56 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v59 = *(v43 + 8);
  v57 = v43 + 8;
  v58 = v59;
  v59(v4, v55);
  if (v56)
  {
    v60 = v48 ^ 1;
  }

  else
  {
    static VideoControls.prominentPlayOnPause.getter();
    v61 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v58(v4, v55);
    if (v61)
    {
      v62 = *&v1[v90];
      v91 = v57;
      if (v62)
      {
        v63 = v62;
        v64 = v85;
        dispatch thunk of VideoPlayer.state.getter();

        v65 = v88;
        v66 = v89;
        v67 = v86;
        (*(v89 + 32))(v86, v64, v88);
        v68 = *(v66 + 104);
      }

      else
      {
        v65 = v88;
        v66 = v89;
        v68 = *(v89 + 104);
        v67 = v86;
        (v68)(v86, enum case for VideoPlayerState.unknown(_:), v88);
      }

      v69 = v92;
      v86 = v68;
      (v68)(v92, enum case for VideoPlayerState.paused(_:), v65);
      v70 = static VideoPlayerState.== infix(_:_:)();
      v71 = *(v66 + 8);
      v71(v69, v65);
      v71(v67, v65);
      if (v70)
      {
        v60 = 1;
        v55 = v94;
        v54 = v96;
      }

      else
      {
        v72 = *&v1[v90];
        if (v72)
        {
          v73 = v72;
          v74 = v84;
          dispatch thunk of VideoPlayer.state.getter();

          (*(v89 + 32))(v87, v74, v65);
          v54 = v96;
          v75 = v86;
        }

        else
        {
          v75 = v86;
          (v86)(v87, enum case for VideoPlayerState.unknown(_:), v65);
          v54 = v96;
        }

        v76 = v92;
        (v75)(v92, enum case for VideoPlayerState.ended(_:), v65);
        v77 = v87;
        v60 = static VideoPlayerState.== infix(_:_:)();
        v71(v76, v65);
        v71(v77, v65);
        v55 = v94;
      }
    }

    else
    {
      v60 = 0;
      v54 = v96;
    }
  }

  v78 = v60 & ~*v49;
  v79 = objc_opt_self();
  v80 = swift_allocObject();
  *(v80 + 16) = v1;
  *(v80 + 24) = v78 & 1;
  aBlock[4] = sub_1004E9430;
  aBlock[5] = v80;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C6368;
  v81 = _Block_copy(aBlock);
  v82 = v1;

  [v79 animateWithDuration:4 delay:v81 options:0 animations:0.2 completion:0.0];
  _Block_release(v81);
  sub_10001F63C(v93);
  return (v58)(v54, v55);
}

void sub_1004E1A14(char a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  if (a2)
  {
    v8 = a1 & 1;
    if (a1)
    {
      v9 = 0.2;
    }

    else
    {
      v9 = 0.5;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v8;
    v27 = sub_1004E9424;
    v28 = v10;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100007A08;
    v26 = &unk_1008C62A0;
    v11 = _Block_copy(&v23);
    v12 = v4;

    if (a3)
    {
      v27 = a3;
      v28 = a4;
      v23 = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100504C5C;
      v26 = &unk_1008C6318;
      a3 = _Block_copy(&v23);
    }

    v13 = objc_opt_self();
    [v13 animateWithDuration:4 delay:v11 options:a3 animations:v9 completion:0.0];
    _Block_release(a3);
    _Block_release(v11);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v8;
    v27 = sub_1004E9514;
    v28 = v14;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100007A08;
    v26 = &unk_1008C62F0;
    v15 = _Block_copy(&v23);
    v16 = v12;

    [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
    _Block_release(v15);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a1 & 1;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1004E9418;
    *(v19 + 24) = v18;
    v27 = sub_10006F094;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1000489A8;
    v26 = &unk_1008C6250;
    v20 = _Block_copy(&v23);
    v21 = v4;

    [v17 performWithoutAnimation:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1004E1D9C()
{
  v1 = qword_100988CE8;
  if (*&v0[qword_100988CE8])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for AppStoreVideoPlayerViewController()) init];
  [v2 setShowsPlaybackControls:0];
  [v2 setAllowsVideoFrameAnalysis:0];
  [v2 setUpdatesNowPlayingInfoCenter:0];
  [v2 setCanPausePlaybackWhenExitingFullScreen:0];
  [v2 setPreferredUnobscuredArea:*&v0[qword_1009D21C0]];
  [v2 setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
  [v2 setDelegate:v0];
  v3 = v2;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 setClipsToBounds:1];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v0 backgroundColor];
  if (!v8)
  {
    sub_100005744(0, &qword_100970180);
    v8 = static UIColor.placeholderBackground.getter();
  }

  [v7 setBackgroundColor:v8];

  [v3 setModalPresentationStyle:5];
  [v3 setCanToggleVideoGravityWhenEmbeddedInline:0];
  v9 = [v3 view];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 layer];

  type metadata accessor for RoundedCornerView();
  v12 = method lookup function for RoundedCornerView();
  v12();
  [v11 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  v13 = [v3 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v0 bounds];
  [v14 setFrame:?];

  v15 = *&v0[qword_100988CE0];
  if (v15)
  {
    v16 = v15;
    [v16 _setDisallowsVideoLayerDisplayCompositing:1];
    [v3 setPlayer:v16];
  }

  v17 = [v3 view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  [v0 insertSubview:v17 atIndex:0];

  v19 = *&v0[v1];
  *&v0[v1] = v3;

  sub_1004E77F8();
  v20 = [v3 view];

  if (!v20)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = [v20 layer];

  [v21 setAllowsGroupBlending:0];
}

id sub_1004E2164()
{
  v1 = v0;
  v2 = type metadata accessor for VideoControls();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_1009D21E8] == 1)
  {
    v7 = *&v0[qword_100988CE8];
    if (v7)
    {
      [v7 setShowsPlaybackControls:{1, v4}];
    }
  }

  else
  {
    v8 = *&v0[qword_100988CE0];
    if (v8 && (v9 = v8, v10 = dispatch thunk of VideoPlayer.isPlaying.getter(), v9, (v10 & 1) != 0))
    {
      v11 = qword_100988CE8;
      v12 = *&v1[qword_100988CE8];
      if (v12)
      {
        v13 = v12;
        sub_1004DFED0(v6);
        v14 = VideoControls.containsInlineControls.getter();
        (*(v3 + 8))(v6, v2);
        [v13 setShowsPlaybackControls:v14 & 1];

        v15 = *&v1[v11];
        if (v15)
        {
          [v15 flashPlaybackControlsWithDuration:5.0];
        }
      }
    }

    else
    {
      v16 = *&v1[qword_100988CE8];
      if (v16)
      {
        [v16 setShowsPlaybackControls:{0, v4}];
      }
    }
  }

  return [v1 accessibilityUpdatePlayerControllerControls];
}

void sub_1004E2320()
{
  v1 = v0;
  if (qword_10096E640 != -1)
  {
    swift_once();
  }

  v2 = *&qword_100988C80;
  v3 = *algn_100988C88;
  v4 = *&qword_100988C90;
  v5 = unk_100988C98;
  v6 = &v0[qword_1009D21B0];
  v7 = *&v0[qword_1009D21B0];
  v8 = *&v0[qword_1009D21B0 + 16];
  v9 = [v0 traitCollection];
  v10 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v11 = *&v1[qword_100988CE8];
  if (v11)
  {
    v12 = 8;
    if (v10)
    {
      v13 = 24;
    }

    else
    {
      v13 = 8;
    }

    if ((v10 & 1) == 0)
    {
      v12 = 24;
    }

    v14 = v3 + *&v6[v13];
    v15 = v5 + *&v6[v12];
    v16 = objc_opt_self();
    v17 = v11;
    v18 = [v16 valueWithUIEdgeInsets:{v2 + v7, v14, v4 + v8, v15}];
    [v17 setOverrideLayoutMarginsWhenEmbeddedInline:v18];
  }
}

void sub_1004E24B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_1009D21E8] != 1)
  {
LABEL_4:
    [v1 frame];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];

    CGSize.scaled(_:)();
    v13 = v16;
    v14 = v17;
    goto LABEL_6;
  }

  sub_100031660(&v0[qword_1009D21A8], aBlock, &unk_100988E00);
  if (v37)
  {
    sub_10002A400(aBlock, v37);
    v12 = dispatch thunk of NetworkInquiry.isConstrained.getter();
    sub_100007000(aBlock);
    v13 = 0.0;
    v14 = 0.0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  sub_10002B894(aBlock, &unk_100988E00);
  v13 = 0.0;
  v14 = 0.0;
LABEL_6:
  v18 = qword_100988CE0;
  v19 = *&v1[qword_100988CE0];
  if (!v19 || (v20 = v19, v21 = dispatch thunk of VideoPlayer.playerItem.getter(), v20, !v21) || (([v21 preferredMaximumResolution], v23 = v22, v25 = v24, v21, v23 == v13) ? (v26 = v25 == v14) : (v26 = 0), !v26))
  {
    sub_100005744(0, &qword_1009729E0);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v27 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v28 = *&v1[v18];
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v13;
    *(v29 + 32) = v14;
    v38 = sub_1004E940C;
    v39 = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    v37 = &unk_1008C61D8;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    sub_1004E805C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v34 + 8))(v4, v2);
    (*(v32 + 8))(v7, v33);
  }
}

void sub_1004E29B0(uint64_t a1)
{
  v3 = type metadata accessor for VideoPlaybackFailure();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, a1, v3, v5);
  if ((*(v4 + 88))(v7, v3) == enum case for VideoPlaybackFailure.videoDecodersUnavailable(_:))
  {
    (*(v4 + 96))(v7, v3);
    v8 = *v7;
    v9 = [objc_opt_self() defaultCenter];
    v10 = static NSNotificationName.VideoDecoderUnavailable.getter();
    sub_10002849C(&unk_10097E340);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B1890;
    v17 = static VideoDecoderUnavailableUserInfoKey.playbackId.getter();
    v18 = v12;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for AnyHashable;
    v13 = swift_allocObject();
    *(inited + 72) = v13;
    sub_10003D4AC(v1 + qword_1009D21D8, v13 + 16);
    v17 = static VideoDecoderUnavailableUserInfoKey.error.getter();
    v18 = v14;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = sub_10002849C(&unk_100988E50);
    *(inited + 144) = v8;
    v15 = v8;
    sub_100397CE8(inited);
    swift_setDeallocating();
    sub_10002849C(&unk_1009827A0);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1004E2CA0()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v27 - v5;
  v6 = type metadata accessor for VideoConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = qword_1009D2200;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, &v1[v13], v6);
  v15 = VideoConfiguration.roundedCorners.getter();
  v16 = *(v7 + 8);
  v16(v12, v6);
  if ((v15 & 1) == 0)
  {
    [v1 _continuousCornerRadius];
    if (v20 == 0.0)
    {
      [v1 _cornerRadius];
      v21 = v30;
      if (v22 == 0.0)
      {
        v23 = v29;
        v24 = v31;
        (*(v30 + 104))(v29, enum case for CornerStyle.arc(_:), v31);
        goto LABEL_12;
      }

      [v1 _cornerRadius];
      v25 = enum case for CornerStyle.arc(_:);
    }

    else
    {
      [v1 _continuousCornerRadius];
      v25 = enum case for CornerStyle.continuous(_:);
      v21 = v30;
    }

    v23 = v29;
    v24 = v31;
    (*(v21 + 104))(v29, v25, v31);
    goto LABEL_12;
  }

  v14(v9, &v1[v13], v6);
  VideoConfiguration.deviceCornerRadiusFactor.getter();
  v18 = v17;
  v16(v9, v6);
  if (v18)
  {
    v19 = &enum case for CornerStyle.arc(_:);
  }

  else
  {
    [*&v1[qword_100988CC0] frame];
    v19 = &enum case for CornerStyle.continuous(_:);
  }

  v21 = v30;
  v24 = v31;
  v23 = v28;
  (*(v30 + 104))(v28, *v19, v31);
LABEL_12:
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  return (*(v21 + 8))(v23, v24);
}

char *sub_1004E3018()
{
  v1 = v0;
  v2 = qword_100988CE0;
  v3 = *(v0 + qword_100988CE0);
  if (v3)
  {
    v4 = v3;
    v5 = dispatch thunk of VideoPlayer.shouldBePlaying.getter();

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = v6;
      dispatch thunk of VideoPlayer.delegate.setter();

      v6 = *(v1 + v2);
    }

    *(v1 + v2) = 0;

    result = sub_1004E3D80();
    if (v5)
    {
      sub_1004E053C();
      v9 = *((swift_isaMask & *v1) + qword_1009D2210 + 712);

      return v9();
    }
  }

  else
  {

    return sub_1004E3D80();
  }

  return result;
}

void sub_1004E3134()
{
  v1 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[qword_100988CE0];
  if (v9)
  {
    v10 = v9;
    [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
    v11 = [v10 isMuted];
    [v0 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
    (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
    v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
    if (!v11)
    {
      v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
    }

    (*(v2 + 104))(v4, *v12, v1);
    sub_1004E3360(v8, v4);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1004E3360(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v74 = &v62 - v4;
  v5 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100988E10);
  __chkstk_darwin(v7 - 8);
  v71 = &v62 - v8;
  v9 = sub_10002849C(&qword_100988E18);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_10002849C(&qword_100988E20);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_10002849C(&qword_100988E28);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v76 = type metadata accessor for ActionMetrics();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v62 - v20;
  v21 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = type metadata accessor for MetricsData();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(v2 + qword_1009D21A0, v23, &unk_100973A50);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &unk_100973A50;
    v29 = v23;
    return sub_10002B894(v29, v28);
  }

  (*(v25 + 32))(v27, v23, v24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v25 + 8))(v27, v24);
  }

  v32 = Strong;
  v33 = qword_100988CE0;
  v34 = *(v2 + qword_100988CE0);
  if (!v34)
  {
    (*(v25 + 8))(v27, v24);
  }

  v35 = v2;
  v66 = v34;
  v36 = dispatch thunk of VideoPlayer.playerItem.getter();
  v67 = v32;
  v65 = v2;
  if (!v36)
  {
    goto LABEL_14;
  }

  v37 = v36;
  v38 = *(v35 + v33);
  if (!v38 || (v39 = [v38 currentItem]) == 0 || (v40 = v39, v41 = objc_msgSend(v39, "asset"), v40, v42 = String._bridgeToObjectiveC()(), v43 = objc_msgSend(v41, "statusOfValueForKey:error:", v42, 0), v41, v42, v43 != 2))
  {

LABEL_14:
    v64 = 0.0;
    v63 = 1;
    goto LABEL_15;
  }

  [v37 currentTime];
  Seconds = CMTimeGetSeconds(&time);

  v63 = 0;
  v64 = Seconds;
LABEL_15:
  sub_10002849C(&unk_100988E30);
  v62 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  v45 = enum case for MediaClickMetricsEvent.TargetType.button(_:);
  v46 = type metadata accessor for MediaClickMetricsEvent.TargetType();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v17, v45, v46);
  (*(v47 + 56))(v17, 0, 1, v46);
  v48 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v49 = *(v48 - 8);
  (*(v49 + 16))(v14, v69, v48);
  (*(v49 + 56))(v14, 0, 1, v48);
  v50 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v11, v70, v50);
  (*(v51 + 56))(v11, 0, 1, v50);
  LODWORD(v51) = *(v65 + qword_1009D21E8);
  v52 = type metadata accessor for MediaClickMetricsEvent.ActionContext();
  v53 = *(v52 - 8);
  v54 = &enum case for MediaClickMetricsEvent.ActionContext.fullscreen(_:);
  if (!v51)
  {
    v54 = &enum case for MediaClickMetricsEvent.ActionContext.inline(_:);
  }

  v55 = v71;
  (*(*(v52 - 8) + 104))(v71, *v54, v52);
  (*(v53 + 56))(v55, 0, 1, v52);
  static MediaClickMetricsEvent.fillIn(template:targetType:targetId:actionType:actionContext:position:)();
  sub_10002B894(v55, &qword_100988E10);
  sub_10002B894(v11, &qword_100988E18);
  sub_10002B894(v14, &qword_100988E20);
  sub_10002B894(v17, &qword_100988E28);
  ScalarDictionary.init()();
  v56 = v75;
  ActionMetrics.init(data:custom:)();
  v57 = sub_10002849C(&unk_100974490);
  v58 = v74;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v59 = *(v57 - 8);
  if ((*(v59 + 48))(v58, 1, v57) == 1)
  {

    (*(v73 + 8))(v56, v76);
    (*(v25 + 8))(v27, v24);
    v28 = &unk_100972A00;
    v29 = v58;
    return sub_10002B894(v29, v28);
  }

  type metadata accessor for BlankAction();
  v60 = v73;
  (*(v73 + 16))(v68, v56, v76);
  v61 = BlankAction.__allocating_init(actionMetrics:)();
  sub_1005FA048(v61, 1, v67, v58);

  (*(v60 + 8))(v75, v76);
  (*(v25 + 8))(v27, v24);
  return (*(v59 + 8))(v58, v57);
}

char *sub_1004E3D80()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100988CE0;
  v8 = *&v0[qword_100988CE0];
  if (v8)
  {
    sub_1004E805C(&unk_100988E40, type metadata accessor for VideoView);
    v9 = v8;
    v10 = v0;
    dispatch thunk of VideoPlayer.delegate.setter();

    v11 = *&v0[v7];
    if (v11)
    {
      v12 = qword_1009D2200;
      swift_beginAccess();
      (*(v3 + 16))(v6, &v10[v12], v2);
      v13 = v11;
      VideoConfiguration.looping.getter();
      (*(v3 + 8))(v6, v2);
      dispatch thunk of VideoPlayer.shouldLoopPlayback.setter();

      v14 = *&v1[v7];
      if (v14)
      {
        [v14 _setDisallowsVideoLayerDisplayCompositing:1];
      }
    }
  }

  v15 = *&v1[qword_100988CE8];
  if (v15)
  {
    [v15 setPlayer:{*&v1[v7], v4}];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *&result[OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer];
    v18 = *&v1[v7];
    [v17 setPlayer:v18];

    result = swift_unknownObjectRelease();
  }

  v19 = qword_100988D00;
  if (v1[qword_100988D00] == 1)
  {
    [v1 updateAudioSessionCategoryWithIsAudioOn:1];
    result = *&v1[v7];
    if (result)
    {
      result = [result setMuted:0];
    }

    v1[v19] = 0;
  }

  return result;
}

id sub_1004E3FEC(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for VideoView();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_1004E4048(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[qword_100988CE8];
  v6 = a3;
  v7 = a1;
  if (v5)
  {
    v5 = [v5 view];
  }

  [v5 setBackgroundColor:a3];

  v8.receiver = a1;
  v8.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v8, "setBackgroundColor:", a3);
}

id sub_1004E40F8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, "frame");
}

void sub_1004E413C(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for VideoView();
  v20.receiver = a1;
  v20.super_class = v10;
  v11 = a1;
  objc_msgSendSuper2(&v20, "frame");
  v13 = v12;
  v15 = v14;
  v19.receiver = v11;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, "setFrame:", a2, a3, a4, a5);
  [v11 frame];
  v18 = v17 == v13 && v16 == v15;
  if (!v18 && (*(v11 + qword_100988CD0) & 1) == 0)
  {
    sub_1004E24B8();
  }
}

uint64_t sub_1004E4224()
{
  v0 = ASKDeviceTypeGetCurrent();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v5 = 8.0;
  if (v1 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v3 != v4)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v5 = 8.0;
    }

    else
    {
      v5 = 6.0;
    }
  }

  qword_100988C80 = *&v5;
  *algn_100988C88 = v5;
  qword_100988C90 = *&v5;
  unk_100988C98 = *&v5;
  return result;
}

char *sub_1004E42E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v67 = a5;
  v68 = a4;
  v69 = a3;
  v61 = type metadata accessor for AutomationSemantics();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for URL();
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v58 = v7;
  v17 = objc_allocWithZone(v7);
  swift_weakInit();
  *&v17[qword_100988CA8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_100988CB0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_100988CB8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = qword_100988CC0;
  *&v17[v18] = [objc_allocWithZone(UIImageView) init];
  v17[qword_100988CC8] = 0;
  v17[qword_100988CD0] = 0;
  v17[qword_100988CD8] = 0;
  *&v17[qword_100988CE0] = 0;
  *&v17[qword_100988CE8] = 0;
  v19 = qword_100988CF0;
  type metadata accessor for AutoPlayVideoSettingsManager();
  *&v17[v19] = static AutoPlayVideoSettingsManager.shared.getter();
  v20 = qword_100988CF8;
  *&v17[v20] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v21 = a2;
  v22 = &v17[qword_1009D21B0];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v24 = &v17[qword_1009D21B8];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *&v17[qword_1009D21C0] = 1;
  v17[qword_100988D00] = 0;
  v25 = &v17[qword_1009D21D0];
  *v25 = 0;
  v25[1] = 0;
  *&v17[qword_1009D21E0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_1009D21E8] = 0;
  v17[qword_1009D21F0] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_100988D08] = 0;
  v17[qword_1009D2208] = 0;
  *&v17[qword_100988D10] = 0;
  v17[qword_100988D18] = 0;
  swift_beginAccess();
  v64 = a7;
  swift_weakAssign();
  v63 = a1;
  sub_10003D4AC(a1, &v17[qword_1009D21D8]);
  v26 = URL.scheme.getter();
  v28 = v27;
  v29 = static Artwork.URLTemplate.resourceScheme.getter();
  v57 = a2;
  if (!v28)
  {

    v31 = v65;
    v32 = v62;
    goto LABEL_9;
  }

  if (v26 == v29 && v28 == v30)
  {

    v31 = v65;
    v32 = v62;
    goto LABEL_7;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v31 = v65;
  v32 = v62;
  if ((v33 & 1) == 0)
  {
LABEL_9:
    (*(v32 + 16))(&v17[qword_1009D21C8], v21, v31);
    goto LABEL_10;
  }

LABEL_7:
  v34 = [objc_opt_self() mainBundle];
  URL.lastPathComponent.getter();
  v35 = String._bridgeToObjectiveC()();

  v36 = [v34 URLForResource:v35 withExtension:0];

  if (!v36)
  {
    goto LABEL_9;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = *(v32 + 32);
  v37(v16, v13, v31);
  v37(&v17[qword_1009D21C8], v16, v31);
LABEL_10:
  v38 = v32;
  sub_100031660(v68, &v17[qword_1009D2198], &unk_100973A50);
  sub_100031660(v67, &v17[qword_1009D21A0], &unk_100973A50);
  v39 = qword_1009D2200;
  v40 = type metadata accessor for VideoConfiguration();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v17[v39], v69, v40);
  sub_100031660(v66, &v17[qword_1009D21A8], &unk_100988E00);
  v72.receiver = v17;
  v72.super_class = v58;
  v42 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v42 setClipsToBounds:0];
  v43 = qword_100988CC0;
  [*&v42[qword_100988CC0] setUserInteractionEnabled:0];
  [*&v42[v43] setClipsToBounds:1];
  [v42 addSubview:*&v42[v43]];
  v44 = objc_opt_self();
  v45 = [v44 defaultCenter];
  v46 = static NSNotificationName.AutoPlayVideoSettingsDidChange.getter();
  [v45 addObserver:v42 selector:"didChangeAutoPlayVideoSetting" name:v46 object:0];

  v47 = [v44 defaultCenter];
  [v47 addObserver:v42 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v48 = qword_100988CF8;
  [*&v42[qword_100988CF8] setHidden:1];
  v49 = *&v42[v48];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = &v49[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  v52 = *&v49[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  *v51 = sub_1000FA7C8;
  v51[1] = v50;
  v53 = v49;

  sub_10001F63C(v52);

  memset(v71, 0, sizeof(v71));
  memset(v70, 0, sizeof(v70));
  v54 = v59;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v70, &unk_1009711D0);
  sub_10002B894(v71, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  (*(v60 + 8))(v54, v61);
  [v42 addSubview:*&v42[v48]];
  sub_1004E77F8();

  sub_10002B894(v66, &unk_100988E00);
  sub_10002B894(v67, &unk_100973A50);
  sub_10002B894(v68, &unk_100973A50);
  (*(v41 + 8))(v69, v40);
  (*(v38 + 8))(v57, v65);
  sub_10003D614(v63);

  return v42;
}