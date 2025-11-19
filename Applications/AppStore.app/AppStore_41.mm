char *sub_100497EB4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  *&v4[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView] = 0;
  v17 = &v4[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler];
  type metadata accessor for ArtworkView();
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView] = static ArtworkView.iconArtworkView.getter();
  if (qword_10096E0E0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1220);
  v20 = *(v18 - 8);
  v51 = *(v20 + 16);
  v51(v16, v19, v18);
  v50 = *(v20 + 56);
  v50(v16, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v49 = *(v11 + 104);
  v49(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = type metadata accessor for DynamicTypeLabel();
  v48 = v10;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096E0E8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v18, qword_1009D1238);
  v51(v16, v25, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v26 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E0D0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v18, qword_1009D11F0);
  v51(v16, v27, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v28 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton] = sub_1000F5284(0);
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v34 = v30;
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v34 setScrollEnabled:1];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel] setTextAlignment:1];
  v36 = OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel;
  [*&v34[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel] setTextAlignment:1];
  v37 = OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel;
  [*&v34[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel] setTextAlignment:1];
  v38 = *&v34[v35];
  sub_100028BB8();
  v39 = v38;
  v40 = static UIColor.secondaryText.getter();
  [v39 setTextColor:v40];

  v41 = *&v34[v36];
  v42 = static UIColor.primaryText.getter();
  [v41 setTextColor:v42];

  v43 = *&v34[v37];
  v44 = static UIColor.tertiaryText.getter();
  [v43 setTextColor:v44];

  [v34 addSubview:*&v34[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView]];
  [v34 addSubview:*&v34[v35]];
  [v34 addSubview:*&v34[v36]];
  [v34 addSubview:*&v34[v37]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView]];

  return v34;
}

double sub_1004985C8()
{
  v1 = type metadata accessor for InstallPageInstallingViewLayout.Metrics();
  __chkstk_darwin(v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InstallPageInstallingViewLayout();
  v30 = *(v4 - 8);
  v31 = v4;
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v29[0] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v29[1] = v3;
  sub_1004975A4(v3);

  v8 = *&v0[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView];
  v53 = type metadata accessor for ArtworkView();
  v54 = &protocol witness table for UIView;
  v52 = v8;
  v9 = *&v0[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView];
  if (v9)
  {
    v10 = type metadata accessor for InstallProgressView();
    v11 = &protocol witness table for UIView;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v48 = 0;
    v49 = 0;
  }

  v47 = v9;
  v50 = v10;
  v51 = v11;
  v12 = *&v0[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel];
  v45 = type metadata accessor for DynamicTypeLabel();
  v46 = &protocol witness table for UILabel;
  v43 = &protocol witness table for UILabel;
  v44 = v12;
  v13 = *&v0[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel];
  v42 = v45;
  v40 = &protocol witness table for UILabel;
  v41 = v13;
  v14 = *&v0[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel];
  v39 = v45;
  v38 = v14;
  v15 = *&v0[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView];
  v36 = type metadata accessor for AgeRatingBadgeView();
  v37 = &protocol witness table for UIView;
  v35 = v15;
  v16 = *&v0[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton];
  v33 = type metadata accessor for OfferButton();
  v34 = &protocol witness table for UIView;
  v32 = v16;
  v17 = v8;
  v18 = v9;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v29[0];
  InstallPageInstallingViewLayout.init(metrics:iconView:progressView:titleText:subtitleText:descriptionText:ageRatingView:offerButton:)();
  sub_100498D74();
  v25 = v31;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v27 = v26;
  (*(v30 + 8))(v24, v25);
  return v27;
}

uint64_t sub_1004988D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InstallPageInstallingViewLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InstallPageInstallingViewLayout();
  v33 = *(v8 - 8);
  v34 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v32[0] = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.receiver = v1;
  v61.super_class = ObjectType;
  v32[2] = ObjectType;
  objc_msgSendSuper2(&v61, "layoutSubviews", v9);
  v11 = [v1 traitCollection];
  v32[1] = v7;
  sub_1004975A4(v7);

  v12 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView];
  v59 = type metadata accessor for ArtworkView();
  v60 = &protocol witness table for UIView;
  v58 = v12;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView];
  if (v13)
  {
    v14 = type metadata accessor for InstallProgressView();
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v13;
  v56 = v14;
  v57 = v15;
  v16 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel];
  v51 = type metadata accessor for DynamicTypeLabel();
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v16;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel];
  v48 = v51;
  v46 = &protocol witness table for UILabel;
  v47 = v17;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel];
  v45 = v51;
  v44 = v18;
  v19 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView];
  v42 = type metadata accessor for AgeRatingBadgeView();
  v43 = &protocol witness table for UIView;
  v41 = v19;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v20;
  v21 = v12;
  v22 = v13;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v32[0];
  InstallPageInstallingViewLayout.init(metrics:iconView:progressView:titleText:subtitleText:descriptionText:ageRatingView:offerButton:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v29 = v35;
  InstallPageInstallingViewLayout.placeChildren(relativeTo:in:)();
  [v1 frame];
  Width = CGRectGetWidth(v62);
  LayoutRect.size.getter();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v29, v37);
  return (*(v33 + 8))(v28, v34);
}

unint64_t sub_100498D74()
{
  result = qword_1009871E0;
  if (!qword_1009871E0)
  {
    type metadata accessor for InstallPageInstallingViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009871E0);
  }

  return result;
}

uint64_t sub_100498DCC(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView);
    v4 = *&v3[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_100028004();
      v8 = v4;
      v9 = static NSObject.== infix(_:_:)();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_100498E84(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView);
  v3 = *&v2[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1004999A4(&qword_100973190, 255, type metadata accessor for VideoView);
    v6 = v2;
    v7 = [v5 superview];
    if (v7)
    {
      v8 = v7;
      sub_100028004();
      v9 = v3;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          [v11 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v2;
  }

  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v3 addSubview:v14];
  }

  sub_1001B8790();
  [v3 setNeedsLayout];
}

void (*sub_100499020(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100499094;
}

void sub_100499094(uint64_t a1, char a2)
{
  v4 = *a1;
  v30 = *(*(a1 + 8) + *(a1 + 16));
  v5 = *&v30[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1004999A4(&qword_100973190, 255, type metadata accessor for VideoView);
      v8 = v4;
      v9 = v30;
      v10 = [v7 superview];
      if (v10)
      {
        v11 = v10;
        sub_100028004();
        v12 = v5;
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v4;
      v23 = v30;
    }

    swift_unknownObjectWeakAssign();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      [v5 addSubview:v25];
    }

    sub_1001B8790();
    [v5 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1004999A4(&qword_100973190, 255, type metadata accessor for VideoView);
      v16 = v30;
      v17 = [v7 superview];
      if (v17)
      {
        v18 = v17;
        sub_100028004();
        v19 = v5;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v24 = v30;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      [v5 addSubview:v28];
    }

    sub_1001B8790();
    [v5 setNeedsLayout];

    v27 = v30;
  }
}

char *sub_100499384(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView] = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{a1, a2, a3, a4}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v9 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v13 = v9;
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView]];

  return v13;
}

id sub_10049965C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t (*sub_1004996F8(uint64_t **a1))()
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
  v2[4] = sub_100499020(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100499768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1004997BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100499828(uint64_t *a1))()
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

uint64_t sub_1004999A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100499B5C()
{
  ObjectType = swift_getObjectType();
  v29 = ObjectType;
  v37 = type metadata accessor for LayoutRect();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ChartOrCategoryBrickContext();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10002849C(&qword_100987258);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PlaceholderBrick();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v14, v29);
  v17 = enum case for ChartOrCategoryBrickStyle.tile(_:);
  v18 = type metadata accessor for ChartOrCategoryBrickStyle();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  PlaceholderBrick.init(style:title:badge:artworks:)();
  *(&v44 + 1) = v12;
  v45 = &protocol witness table for PlaceholderBrick;
  v20 = sub_1000056E0(&v43);
  (*(v13 + 16))(v20, v16, v12);
  v21 = [v0 traitCollection];
  sub_10002C0AC(&v43, v41);
  ChartOrCategoryBrickContext.init(model:fontStyles:in:)();
  sub_100007000(&v43);
  v22 = v31;
  (*(v4 + 16))(v30, v8, v31);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v23 = *&v0[OBJC_IVAR____TtC8AppStore28CategoryBrickPlaceholderView_artworkPlaceholder];
  v24 = type metadata accessor for ArtworkView();
  v40 = &protocol witness table for UIView;
  v39 = v24;
  v38 = v23;
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  v25 = v23;
  v26 = v32;
  ChartOrCategoryBrickCollectionViewCellLayout.init(context:badgeTextView:titleTextView:artworkView:textExclusionRect:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v27 = v33;
  ChartOrCategoryBrickCollectionViewCellLayout.placeChildren(relativeTo:in:)();
  (*(v36 + 8))(v27, v37);
  (*(v34 + 8))(v26, v35);
  (*(v4 + 8))(v8, v22);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_10049A134(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a2;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v11 - 8);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = _swiftEmptyArrayStorage;
    v37 = ObjectType;
    if (!i)
    {
      goto LABEL_11;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      ++v16;
      v18 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoryButton());

      sub_1005CD930(v17, a3, a4);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (i != v16);
    v14 = aBlock[0];
LABEL_11:
    v36 = v8;
    v19 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews;
    ObjectType = v43;
    *&v43[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews] = v14;

    v20 = [ObjectType traitCollection];
    v21 = [v20 preferredContentSizeCategory];

    LOBYTE(v20) = UIContentSizeCategory.isAccessibilityCategory.getter();
    sub_10049B2C4(v20 & 1);
    v8 = *&ObjectType[v19];
    if (v8 >> 62)
    {
      a3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!a3)
    {
LABEL_25:

      v27 = v43;
      [v43 setNeedsLayout];
      [v27 layoutIfNeeded];
      sub_100005744(0, &qword_1009729E0);
      v28 = static OS_dispatch_queue.main.getter();
      v29 = swift_allocObject();
      v30 = v37;
      *(v29 + 16) = v27;
      *(v29 + 24) = v30;
      aBlock[4] = sub_10049BB9C;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C4B80;
      v31 = _Block_copy(aBlock);
      v32 = v27;

      v33 = v38;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10049BBA4(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0);
      sub_1000079A4();
      v34 = v40;
      v35 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*(v42 + 8))(v34, v35);
      return (*(v39 + 8))(v33, v41);
    }

    a4 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v8 & 0xC000000000000001;
    v22 = &unk_10098D000;
    v44 = v8;
    while (1)
    {
      if (v47)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a4 >= *(v46 + 16))
        {
          goto LABEL_27;
        }

        v23 = *(v8 + 8 * a4 + 32);
      }

      ObjectType = v23;
      v24 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      ArcadeDownloadPackCategory.artwork.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();

      ArcadeDownloadPackCategory.artwork.getter();
      v25 = Artwork.artwork.getter();

      if (v25)
      {
        a1 = v22;
        v26 = *&ObjectType[v22[368]];
        Artwork.style.getter();
        ArtworkView.style.setter();
        [v26 setContentMode:Artwork.contentMode.getter()];
        ArtworkLoaderConfig.size.getter();
        ArtworkView.imageSize.setter();
        if (!Artwork.backgroundColor.getter())
        {
          sub_100005744(0, &qword_100970180);
          static UIColor.placeholderBackground.getter();
        }

        ArtworkView.backgroundColor.setter();

        v22 = a1;
        v8 = v44;
      }

      type metadata accessor for ArtworkView();
      sub_10049BBA4(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      ++a4;
      if (v24 == a3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_10049A824(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v15 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = type metadata accessor for ArcadeDownloadPackCategoryButton();
      v20.receiver = v6;
      v20.super_class = v8;
      v9 = objc_msgSendSuper2(&v20, "isSelected");
      v19.receiver = v6;
      v19.super_class = v8;
      objc_msgSendSuper2(&v19, "setEnabled:", (v9 | a1) & 1);
      v10 = *&v6[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel];
      v18.receiver = v6;
      v18.super_class = v8;
      if (objc_msgSendSuper2(&v18, "isEnabled"))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.4;
      }

      [v10 setAlpha:{v11, v15}];
      v12 = *&v6[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView];
      v17.receiver = v6;
      v17.super_class = v8;
      if (objc_msgSendSuper2(&v17, "isEnabled"))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.4;
      }

      [v12 setAlpha:v13];

      ++v4;
      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

uint64_t sub_10049A9D8(uint64_t a1, void *a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ImpressionMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    v22 = v10 & 0xC000000000000001;
    v13 = (v7 + 48);
    v17 = (v7 + 8);
    v18 = (v7 + 32);
    while (1)
    {
      if (v22)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v7 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      ArcadeDownloadPackCategory.impressionMetrics.getter();
      if ((*v13)(v5, 1, v6) == 1)
      {

        sub_100453E30(v5);
      }

      else
      {
        (*v18)(v9, v5, v6);
        [v7 bounds];
        [v20 convertRect:v7 fromCoordinateSpace:?];
        ImpressionsCalculator.addElement(_:at:)();

        (*v17)(v9, v6);
      }

      ++v12;
      if (v15 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

char *sub_10049AC60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn;
  v12 = [objc_allocWithZone(UIStackView) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews] = _swiftEmptyArrayStorage;
  sub_10002849C(&qword_100973210);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B15F0;
  v14 = *&v4[v10];
  *(v13 + 32) = v14;
  *(v13 + 40) = v12;
  v15 = objc_allocWithZone(UIStackView);
  sub_100005744(0, &qword_100972EB0);
  v16 = v14;
  v17 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v15 initWithArrangedSubviews:isa];

  *&v4[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView] = v19;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v41 = ObjectType;
  v20 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  sub_10002849C(&qword_10097B110);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B10D0;
  v22 = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v21 + 32) = v22;
  *(v21 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = ObjectType;
  v42[0] = v20;
  v23 = v20;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v42);
  v24 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn;
  [*&v23[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn] setAxis:1];
  [*&v23[v24] setSpacing:50.0];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn;
  [*&v23[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn] setAxis:1];
  [*&v23[v25] setSpacing:50.0];
  [*&v23[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView;
  [*&v23[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView] setDistribution:1];
  [*&v23[v26] setAlignment:1];
  [*&v23[v26] setAxis:0];
  [*&v23[v26] setSpacing:8.0];
  [v23 addSubview:*&v23[v26]];
  [*&v23[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007BB060;
  v29 = [*&v23[v26] leftAnchor];
  v30 = [v23 leftAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v28 + 32) = v31;
  v32 = [*&v23[v26] rightAnchor];
  v33 = [v23 rightAnchor];

  v34 = [v32 constraintEqualToAnchor:v33];
  *(v28 + 40) = v34;
  *(v28 + 48) = sub_10049B1A4();
  v35 = [*&v23[v26] bottomAnchor];
  v36 = [v23 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v28 + 56) = v37;
  sub_100005744(0, &qword_1009766E0);
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B10D0;
  *(v39 + 32) = v22;
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = v41;
  v42[0] = v23;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v42);
  return v23;
}

id sub_10049B1A4()
{
  v1 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView] topAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:150.0];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_10049B2C4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn);
  [v2 setHidden:a1 & 1];
  v29 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn);
  v4 = [v3 arrangedSubviews];
  sub_100005744(0, &qword_100972EB0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_13;
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
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = [v2 arrangedSubviews];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 removeFromSuperview];

      ++v14;
      if (v17 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v18 = *(v29 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews);
  if (a1)
  {
    if (v18 >> 62)
    {
      goto LABEL_63;
    }

    for (k = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = _CocoaArrayWrapper.endIndex.getter())
    {
      v31 = v3;

      if (!k)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v20 = *(v18 + 8 * v3 + 32);
        }

        v21 = v20;
        v22 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        [v31 addArrangedSubview:v20];

        ++v3;
        if (v22 == k)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

LABEL_53:
  }

  else
  {
    if (v18 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      v24 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v25 = *(v18 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_60;
        }

        if (v24)
        {
          v28 = v2;
        }

        else
        {
          v28 = v3;
        }

        [v28 addArrangedSubview:v26];

        ++v24;
      }

      while (v27 != v23);
    }
  }
}

uint64_t sub_10049B6CC(char *a1)
{
  v2 = sub_10049B1A4();
  [v2 setConstant:0.0];

  [*&a1[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn] setSpacing:8.0];
  [*&a1[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn] setSpacing:8.0];
  sub_100005744(0, &qword_100972EB0);
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
}

id sub_10049B884()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  result = [*&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn] isHidden];
  if (v3 != result)
  {
    sub_10049B2C4(v3);
    [*&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView] layoutIfNeeded];
    v5 = *&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews];
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

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
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setNeedsLayout];
        [v9 invalidateIntrinsicContentSize];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

double sub_10049BB20()
{
  [*(*v0 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView) systemLayoutSizeFittingSize:?];
  v2 = v1;
  v3 = sub_10049B1A4();
  [v3 constant];

  return v2;
}

uint64_t sub_10049BBA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10049BBEC()
{
  v1 = [*(v0 + 16) superview];
  [v1 invalidateIntrinsicContentSize];
}

void sub_10049BC44()
{
  v1 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

_BYTE *sub_10049BD08(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  isEscapingClosureAtFileLocation = type metadata accessor for DirectionalTextAlignment();
  v7 = *(isEscapingClosureAtFileLocation - 8);
  __chkstk_darwin(isEscapingClosureAtFileLocation);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v4[OBJC_IVAR____TtC8AppStore14CountBadgeView_size] = a1 & 1;
  if ((a1 & 1) == 0)
  {
    if (qword_10096E370 != -1)
    {
      swift_once();
    }

    v17 = qword_1009D19D0;
    goto LABEL_7;
  }

  if (qword_10096E378 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = qword_1009D19E8;
LABEL_7:
    v18 = sub_1000056A8(v10, v17);
    (*(v11 + 16))(v13, v18, v10);
    (*(v11 + 32))(v16, v13, v10);
    v19 = *(v11 + 56);
    v11 += 56;
    v19(v16, 0, 1, v10);
    v20 = *(v7 + 104);
    v7 += 104;
    v20(v9, enum case for DirectionalTextAlignment.none(_:), isEscapingClosureAtFileLocation);
    v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    *&v4[OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v22 = type metadata accessor for CountBadgeView();
    v39.receiver = v4;
    v39.super_class = v22;
    v23 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v35);
    v24 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 2) = v23;
    v9[24] = a1 & 1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10049C888;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10006F094;
    v38 = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000489A8;
    aBlock[3] = &unk_1008C4CB0;
    v16 = _Block_copy(aBlock);
    v13 = v38;
    v4 = v23;

    [v24 performWithoutAnimation:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v25 = objc_opt_self();
  v26 = [v25 redColor];
  [v4 setBackgroundColor:v26];

  v27 = OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel;
  v28 = *&v4[OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel];
  if (v36)
  {
    v29 = v28;
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = v28;
    v30 = 0;
  }

  [v28 setText:v30];

  v32 = *&v4[v27];
  v33 = [v25 whiteColor];
  [v32 setTextColor:v33];

  [v4 addSubview:*&v4[v27]];
  [v4 setUserInteractionEnabled:0];

  return v4;
}

id sub_10049C2CC(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel];
  v5 = [v4 text];
  if (a2)
  {
    if (v5)
    {

      v6 = String._bridgeToObjectiveC()();

LABEL_9:
      [v4 setText:v6];

      return [v2 setNeedsLayout];
    }

    v14 = String._bridgeToObjectiveC()();

    [v4 setText:v14];

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v23 = sub_10049C8D4;
    v24 = v16;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100007A08;
    v22 = &unk_1008C4DA0;
    v9 = _Block_copy(&v19);
    v17 = v2;

    [v15 animateWithDuration:4 delay:v9 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    if (!v5)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v23 = sub_10049C8AC;
    v24 = v8;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100007A08;
    v22 = &unk_1008C4D00;
    v9 = _Block_copy(&v19);
    v10 = v2;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v23 = sub_10049C8B4;
    v24 = v11;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100504C5C;
    v22 = &unk_1008C4D50;
    v12 = _Block_copy(&v19);
    v13 = v10;

    [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.2 completion:0.0];
    _Block_release(v12);
  }

  _Block_release(v9);
  return [v2 setNeedsLayout];
}

id sub_10049C7B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountBadgeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10049C834()
{
  result = qword_1009872E8;
  if (!qword_1009872E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009872E8);
  }

  return result;
}

id sub_10049C888()
{
  v1 = 9.0;
  if (*(v0 + 24))
  {
    v1 = 12.0;
  }

  return [*(v0 + 16) _setContinuousCornerRadius:v1];
}

id sub_10049C8D4()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

id sub_10049C914()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel);
  result = [v1 text];
  if (result)
  {
    v3 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String.count.getter();

    if (v4 >= 2)
    {
      return [v1 sizeThatFits:{0.0, 0.0}];
    }
  }

  return result;
}

uint64_t sub_10049CA18(void *a1, unint64_t a2)
{
  v281 = a2;
  v242 = type metadata accessor for AutomationSemantics();
  v241 = *(v242 - 8);
  __chkstk_darwin(v242);
  v238 = &v228 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v239 = &v228 - v6;
  __chkstk_darwin(v7);
  v240 = &v228 - v8;
  v261 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  v260 = *(v261 - 8);
  __chkstk_darwin(v261);
  v262 = &v228 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlatformSelectorViewLayout();
  v266 = *(v10 - 8);
  __chkstk_darwin(v10);
  v265 = &v228 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for DirectionalTextAlignment();
  v256 = *(v257 - 8);
  __chkstk_darwin(v257);
  v258 = &v228 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v255 = &v228 - v14;
  v264 = type metadata accessor for BadgeDisplayStyle();
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  v254 = &v228 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v259 = &v228 - v17;
  __chkstk_darwin(v18);
  v253 = &v228 - v19;
  v252 = type metadata accessor for FloatingPointRoundingRule();
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v250 = &v228 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for PageGrid();
  v248 = *(v249 - 8);
  __chkstk_darwin(v249);
  v247 = &v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for ProductMedia.DescriptionPlacement();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = &v228 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for Shelf.ContentType();
  v270 = *(v276 - 8);
  __chkstk_darwin(v276);
  v230 = &v228 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v269);
  v271 = &v228 - v24;
  v25 = sub_10002849C(&unk_1009731F0);
  v267 = *(v25 - 8);
  __chkstk_darwin(v25);
  v268 = &v228 - v26;
  v27 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v27);
  v29 = &v228 - v28;
  v30 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v30 - 8);
  v32 = &v228 - v31;
  v33 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v33 - 8);
  v237 = (&v228 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v37 = &v228 - v36;
  __chkstk_darwin(v38);
  v277 = &v228 - v39;
  type metadata accessor for ProductMedia();
  sub_10049FC48(&qword_1009717E8, &type metadata accessor for ProductMedia);
  v40 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  v42 = v285;
  if (!v285)
  {
    return result;
  }

  v235 = v37;
  v233 = v10;
  v43 = sub_100079F24();
  v44 = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph);
  *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph) = v281;

  sub_10057A438(v44);

  *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits) = v43;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v45 = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_flowLayout);
  ObjectType = swift_getObjectType();
  v280 = v43;
  [v43 pageMarginInsets];
  [v45 setSectionInset:?];

  v279 = v2;
  sub_10057A32C(v46);
  v47 = ProductMedia.platform.getter();
  v48 = ProductMedia.allPlatforms.getter();
  v236 = ProductMedia.platformDescription.getter();
  v272 = v49;
  v273 = v42;
  v243 = ProductMedia.allPlatformsDescription.getter();
  v275 = v50;
  v229 = sub_10002849C(&qword_100973210);
  v51 = swift_allocObject();
  v228 = xmmword_1007B0B70;
  *(v51 + 16) = xmmword_1007B0B70;
  *(v51 + 32) = v47;
  v278 = v47;

  v281 = v48;
  v231 = sub_1006E1F58(v48, v51);

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100094E74(&v29[*(v27 + 48)], v32);
  v52 = v267;
  v53 = (*(v267 + 6))(v32, 1, v25);
  v274 = v40;
  if (v53 == 1)
  {
    sub_10002B894(v29, &unk_10098FFB0);
    sub_10002B894(v32, &unk_10098FFB0);
    v54 = v25;
    v55 = v270;
    v56 = v277;
    v57 = v276;
    v234 = *(v270 + 7);
    v234(v277, 1, 1, v276);
  }

  else
  {
    swift_getKeyPath();
    v56 = v277;
    ReadOnlyLens.subscript.getter();

    v52[1](v32, v25);
    v54 = v25;
    v55 = v270;
    v57 = v276;
    v234 = *(v270 + 7);
    v234(v56, 0, 1, v276);
    sub_10002B894(v29, &unk_10098FFB0);
  }

  swift_getKeyPath();
  v58 = v268;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  v59 = v235;
  ReadOnlyLens.subscript.getter();

  v52[1](v58, v54);
  v60 = v59;
  v234(v59, 0, 1, v57);
  v61 = v269[12];
  v62 = v271;
  sub_100031660(v56, v271, &unk_100992460);
  sub_100031660(v59, v62 + v61, &unk_100992460);
  v63 = v56;
  v64 = *(v55 + 6);
  v65 = v64(v62, 1, v57);
  v276 = v281 >> 62;
  if (v65 == 1)
  {
    sub_10002B894(v60, &unk_100992460);
    sub_10002B894(v56, &unk_100992460);
    v66 = v64(v62 + v61, 1, v57);
    v67 = v279;
    if (v66 == 1)
    {
      sub_10002B894(v62, &unk_100992460);
LABEL_21:
      LODWORD(v277) = 0;
      v79 = 1;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v63 = v237;
  sub_100031660(v62, v237, &unk_100992460);
  v68 = v64(v62 + v61, 1, v57);
  v67 = v279;
  if (v68 == 1)
  {
    sub_10002B894(v60, &unk_100992460);
    sub_10002B894(v277, &unk_100992460);
    v69 = *(v55 + 1);
    v55 = (v55 + 8);
    v69(v63, v57);
LABEL_10:
    sub_10002B894(v62, &qword_100975F10);
    v70 = v278;
    goto LABEL_11;
  }

  v76 = v230;
  (*(v55 + 4))(v230, v62 + v61, v57);
  sub_10049FC48(&qword_100972720, &type metadata accessor for Shelf.ContentType);
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();
  v78 = *(v55 + 1);
  v55 = (v55 + 8);
  v78(v76, v57);
  sub_10002B894(v60, &unk_100992460);
  sub_10002B894(v277, &unk_100992460);
  v78(v63, v57);
  sub_10002B894(v62, &unk_100992460);
  v70 = v278;
  if (v77)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!v276)
  {
    v71 = v281;
    v72 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72)
    {
      goto LABEL_13;
    }

LABEL_23:

    *&v285 = v70;
    goto LABEL_24;
  }

  v71 = v281;
  v72 = _CocoaArrayWrapper.endIndex.getter();
  if (!v72)
  {
    goto LABEL_23;
  }

LABEL_13:
  v73 = v72 - 1;
  if (__OFSUB__(v72, 1))
  {
    __break(1u);
  }

  else if ((v71 & 0xC000000000000001) == 0)
  {
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v73 < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v74 = *(v71 + 8 * v73 + 32);

      *&v285 = v70;
      if (v74)
      {
        goto LABEL_18;
      }

LABEL_24:

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_89;
  }

  v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  *&v285 = v70;
  if (!v74)
  {
    goto LABEL_24;
  }

LABEL_18:
  *&v282 = v74;
  type metadata accessor for MediaPlatform();
  sub_10049FC48(&qword_100975F18, &type metadata accessor for MediaPlatform);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v75)
  {
    goto LABEL_21;
  }

LABEL_25:
  v79 = 0;
  LODWORD(v277) = v231 ^ 1;
LABEL_26:
  v80 = v244;
  ProductMedia.descriptionPlacement(when:)();
  v81 = (*(v245 + 88))(v80, v246);
  LODWORD(v271) = v79;
  if (v81 != enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v85 = v261;
    if (v81 != enum case for ProductMedia.DescriptionPlacement.bottom(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v86 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
    v87 = *(v67 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView);
    if (v87)
    {
      [v87 removeFromSuperview];
      v88 = *(v67 + v86);
    }

    else
    {
      v88 = 0;
    }

    *(v67 + v86) = 0;

    [v67 setNeedsLayout];
    v270 = type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v127 = v247;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v248 + 8))(v127, v249);
    if (v277)
    {
      if (qword_10096CFC8 != -1)
      {
        swift_once();
      }

      [qword_1009738D0 size];
    }

    else
    {
      if (v276)
      {
        v128 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v128 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v128 > 1)
      {
        type metadata accessor for MediaPlatform();
        v129 = swift_allocObject();
        *(v129 + 16) = v228;
        *(v129 + 32) = v278;

        v130 = static MediaPlatform.systemImages(platforms:)();

        goto LABEL_63;
      }
    }

    type metadata accessor for MediaPlatform();
    v130 = static MediaPlatform.systemImages(platforms:)();
LABEL_63:

    if (qword_10096CFD0 != -1)
    {
      swift_once();
    }

    v131 = sub_1000056A8(v85, qword_1009738D8);
    PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
    sub_10002A400(&v285, *(&v286 + 1));
    v132 = v250;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v134 = v133;
    (*(v251 + 8))(v132, v252);
    sub_1000CAA9C(v130, v134);
    sub_100007000(&v285);
    if (v130 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    v135 = v257;

    v136 = v280;
    static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
    v137 = sub_1000CA78C(v130, v136);

    v269 = v137;
    v138 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
    if (qword_10096DE48 != -1)
    {
      swift_once();
    }

    v139 = type metadata accessor for FontUseCase();
    v140 = sub_1000056A8(v139, qword_1009D0A58);
    v141 = *(v139 - 8);
    v142 = v255;
    (*(v141 + 16))(v255, v140, v139);
    (*(v141 + 56))(v142, 0, 1, v139);
    (*(v256 + 104))(v258, enum case for DirectionalTextAlignment.none(_:), v135);
    v143 = type metadata accessor for DynamicTypeLabel();
    v144 = objc_allocWithZone(v143);
    v145 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    [v145 setAttributedText:v138];
    v268 = v138;
    if (qword_10096CFC8 != -1)
    {
      swift_once();
    }

    v274 = qword_1009738D0;
    [qword_1009738D0 size];
    v146 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v147 = LayoutViewPlaceholder.init(representing:)();
    (*(v260 + 16))(v262, v131, v85);
    v148 = v263;
    v149 = v254;
    v150 = v264;
    (*(v263 + 16))(v259, v254, v264);
    *(&v286 + 1) = v143;
    v287 = &protocol witness table for UILabel;
    *&v285 = v145;
    *(&v283 + 1) = v146;
    v284 = &protocol witness table for LayoutViewPlaceholder;
    *&v282 = v147;
    v151 = v145;

    v152 = v265;
    PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
    [v280 pageMarginInsets];
    CGSize.subtracting(insets:)();
    sub_10049FC48(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout);
    v115 = v233;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    CGSize.adding(outsets:)();
    v154 = v153;
    v156 = v155;

    (v266[1])(v152, v115);
    (*(v148 + 8))(v149, v150);
    v121 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView;
    v122 = v279;
    v157 = *(v279 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView);
    if (v157)
    {
      [v157 setFrame:{0.0, 0.0, v154, v156}];
      v124 = v278;
      v120 = &OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
      goto LABEL_78;
    }

    v125 = [objc_allocWithZone(v270) initWithFrame:{0.0, 0.0, v154, v156}];
    v126 = *(v122 + v121);
    v120 = &OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
    if (!v126)
    {
      v115 = 0;
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  v82 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView;
  v83 = *(v67 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView);
  v55 = v261;
  if (v83)
  {
    [v83 removeFromSuperview];
    v84 = *(v67 + v82);
  }

  else
  {
    v84 = 0;
  }

  *(v67 + v82) = 0;

  [v67 setNeedsLayout];
  v63 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v89 = v247;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v248 + 8))(v89, v249);
  if (v277)
  {
    if (qword_10096CFC8 == -1)
    {
LABEL_35:
      [qword_1009738D0 size];
      goto LABEL_40;
    }

LABEL_89:
    swift_once();
    goto LABEL_35;
  }

  if (v276)
  {
    v90 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v90 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v90 > 1)
  {
    type metadata accessor for MediaPlatform();
    v91 = swift_allocObject();
    *(v91 + 16) = v228;
    *(v91 + 32) = v278;

    v92 = static MediaPlatform.systemImages(platforms:)();

    goto LABEL_41;
  }

LABEL_40:
  type metadata accessor for MediaPlatform();
  v92 = static MediaPlatform.systemImages(platforms:)();
LABEL_41:

  if (qword_10096CFD0 != -1)
  {
    swift_once();
  }

  v93 = sub_1000056A8(v55, qword_1009738D8);
  PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
  sub_10002A400(&v285, *(&v286 + 1));
  v94 = v250;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v96 = v95;
  (*(v251 + 8))(v94, v252);
  sub_1000CAA9C(v92, v96);
  sub_100007000(&v285);
  if (v92 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v97 = v257;

  v98 = v280;
  static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
  v99 = sub_1000CA78C(v92, v98);

  v270 = v99;
  v100 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
  if (qword_10096DE48 != -1)
  {
    swift_once();
  }

  v268 = v63;
  v101 = type metadata accessor for FontUseCase();
  v102 = sub_1000056A8(v101, qword_1009D0A58);
  v103 = *(v101 - 8);
  v104 = v255;
  (*(v103 + 16))(v255, v102, v101);
  (*(v103 + 56))(v104, 0, 1, v101);
  (*(v256 + 104))(v258, enum case for DirectionalTextAlignment.none(_:), v97);
  v105 = type metadata accessor for DynamicTypeLabel();
  v106 = objc_allocWithZone(v105);
  v107 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  [v107 setAttributedText:v100];
  v269 = v100;
  if (qword_10096CFC8 != -1)
  {
    swift_once();
  }

  v274 = qword_1009738D0;
  [qword_1009738D0 size];
  v108 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v109 = LayoutViewPlaceholder.init(representing:)();
  (*(v260 + 16))(v262, v93, v55);
  v110 = v263;
  v111 = v253;
  v112 = v264;
  (*(v263 + 16))(v259, v253, v264);
  *(&v286 + 1) = v105;
  v287 = &protocol witness table for UILabel;
  *&v285 = v107;
  *(&v283 + 1) = v108;
  v284 = &protocol witness table for LayoutViewPlaceholder;
  *&v282 = v109;
  v113 = v107;

  v114 = v265;
  PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
  [v280 pageMarginInsets];
  CGSize.subtracting(insets:)();
  sub_10049FC48(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout);
  v115 = v233;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v117 = v116;
  v119 = v118;

  (v266[1])(v114, v115);
  (*(v110 + 8))(v111, v112);
  v120 = &OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
  v121 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
  v122 = v279;
  v123 = *(v279 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v123)
  {
    v125 = [objc_allocWithZone(v268) initWithFrame:{0.0, 0.0, v117, v119}];
    v126 = *(v122 + v121);
    if (!v126)
    {
      v115 = 0;
      goto LABEL_77;
    }

LABEL_74:
    [v126 removeFromSuperview];
    v115 = *(v122 + v121);
LABEL_77:
    v124 = v278;
    *(v122 + v121) = v125;
    v158 = v125;

    v159 = [v122 contentView];
    [v159 addSubview:v158];

    [v122 setNeedsLayout];
    goto LABEL_78;
  }

  [v123 setFrame:{0.0, 0.0, v117, v119}];
  v124 = v278;
LABEL_78:
  v270 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
  v160 = *(v122 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView);
  v161 = v281;
  if (!v160)
  {
    goto LABEL_123;
  }

  type metadata accessor for PlatformSelectorView();
  v162 = swift_dynamicCastClass();
  if (!v162)
  {
    goto LABEL_123;
  }

  v163 = v162;
  if (v277)
  {
    goto LABEL_93;
  }

  if (v276)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 1)
    {
      goto LABEL_83;
    }

LABEL_93:

    v164 = 0;
    goto LABEL_94;
  }

  if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_93;
  }

LABEL_83:
  v161 = swift_allocObject();
  *(v161 + 16) = v228;
  *(v161 + 32) = v124;

  v164 = 1;
LABEL_94:
  v268 = v160;
  v165 = sub_1000CAB9C(v161);

  if (v164)
  {
    v166 = v236;
  }

  else
  {
    v166 = v243;
  }

  v168 = &v163[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text];
  *v168 = v166;
  v168[1] = v167;

  v169 = _swiftEmptyArrayStorage;
  *&v285 = _swiftEmptyArrayStorage;
  v170 = *(v165 + 2);
  v269 = v163;
  if (v170)
  {
    v171 = 0;
    v172 = v165 + 7;
    v265 = v170 - 1;
    v169 = _swiftEmptyArrayStorage;
    v266 = (v165 + 7);
    do
    {
      v267 = v169;
      v173 = &v172[4 * v171];
      v163 = v171;
      while (1)
      {
        if (v163 >= *(v165 + 2))
        {
          __break(1u);
          goto LABEL_131;
        }

        v174 = String._bridgeToObjectiveC()();
        v175 = [objc_opt_self() _systemImageNamed:v174];

        if (v175)
        {
          break;
        }

LABEL_101:
        ++v163;
        v173 += 4;
        if (v170 == v163)
        {
          v163 = v269;
          v169 = v267;
          goto LABEL_113;
        }
      }

      if (qword_10096CFC0 != -1)
      {
        swift_once();
      }

      v176 = [v175 imageWithTintColor:qword_1009CDD58];

      if (!v176)
      {
        goto LABEL_101;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v171 = v163 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v169 = v285;
      v177 = v265 == v163;
      v163 = v269;
      v172 = v266;
    }

    while (!v177);
  }

LABEL_113:
  v178 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images;
  *&v163[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images] = v169;

  v179 = *&v163[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView];
  if (v277)
  {
    if (qword_10096CFC8 != -1)
    {
      swift_once();
    }

    v180 = v274;
  }

  else
  {
    v180 = 0;
  }

  [v179 setImage:v180];

  v181 = *&v163[v178];
  if (v181)
  {
    if (v181 >> 62)
    {
LABEL_131:
      v182 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v182 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v182 = 0;
  }

  *&v163[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_numberOfBadges] = v182;
  v183 = v280;
  *&v163[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_pageTraits] = v280;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1000C9724();
  [v183 pageMarginInsets];
  [v163 setLayoutMargins:?];
  [v163 setNeedsLayout];
  v285 = 0u;
  v286 = 0u;
  v282 = 0u;
  v283 = 0u;
  v184 = v238;
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_10002B894(&v282, &unk_1009711D0);
  sub_10002B894(&v285, &unk_1009711D0);
  *&v285 = v165;
  *(&v285 + 1) = sub_1000CA47C;
  *&v286 = 0;

  sub_10002849C(&qword_1009872F0);
  sub_10049FB60();
  v185 = BidirectionalCollection<>.joined(separator:)();
  v187 = v186;

  *(&v286 + 1) = &type metadata for String;
  *&v285 = v185;
  *(&v285 + 1) = v187;
  v188 = v239;
  AutomationSemantics.attribute(key:value:)();
  LOBYTE(v115) = v241 + 8;
  v120 = *(v241 + 8);
  v189 = v242;
  (v120)(v184, v242);
  sub_10002B894(&v285, &unk_1009711D0);
  *&v285 = v165;
  *(&v285 + 1) = sub_1000CA488;
  *&v286 = 0;
  v190 = BidirectionalCollection<>.joined(separator:)();
  v192 = v191;

  *(&v286 + 1) = &type metadata for String;
  *&v285 = v190;
  *(&v285 + 1) = v192;
  v193 = v240;
  AutomationSemantics.attribute(key:value:)();
  (v120)(v188, v189);
  sub_10002B894(&v285, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (v120)(v193, v189);
  v124 = v278;
  v122 = v279;
  v161 = v281;
LABEL_123:
  v194 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView;
  v195 = *(v122 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView);
  if (!v195 || (type metadata accessor for PlatformSelectorView(), (v196 = swift_dynamicCastClass()) == 0))
  {

    goto LABEL_166;
  }

  v120 = v196;
  v268 = v194;
  if (v277)
  {
    goto LABEL_133;
  }

  if (v276)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 1)
    {
      goto LABEL_128;
    }

LABEL_133:

    v197 = 0;
    goto LABEL_134;
  }

  if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_133;
  }

LABEL_128:
  v161 = swift_allocObject();
  *(v161 + 16) = v228;
  *(v161 + 32) = v124;

  v197 = 1;
LABEL_134:
  v267 = v195;
  v194 = sub_1000CAB9C(v161);

  if (v197)
  {
    v198 = v236;
  }

  else
  {
    v198 = v243;
  }

  if (v197)
  {
    v161 = v272;
  }

  else
  {
    v161 = v275;
  }

  v199 = (v120 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text);
  *v199 = v198;
  v199[1] = v161;

  v200 = _swiftEmptyArrayStorage;
  *&v285 = _swiftEmptyArrayStorage;
  v201 = *(v194 + 2);
  v269 = v120;
  if (v201)
  {
    v202 = 0;
    v203 = v194 + 7;
    v266 = (v201 - 1);
    v200 = _swiftEmptyArrayStorage;
    v115 = UICubicTimingParameters_ptr;
    v122 = &selRef_numberOfSegments;
    v272 = v194 + 7;
    do
    {
      v275 = v200;
      v124 = &v203[4 * v202];
      v120 = v202;
      while (1)
      {
        if (v120 >= *(v194 + 2))
        {
          __break(1u);
          goto LABEL_176;
        }

        v161 = *(v124 - 2);

        v204 = String._bridgeToObjectiveC()();
        v205 = [objc_opt_self() _systemImageNamed:v204];

        if (v205)
        {
          break;
        }

LABEL_144:
        v120 = (v120 + 1);
        v124 += 4;
        if (v201 == v120)
        {
          v120 = v269;
          v200 = v275;
          goto LABEL_156;
        }
      }

      if (qword_10096CFC0 != -1)
      {
        swift_once();
      }

      v206 = [v205 imageWithTintColor:qword_1009CDD58];

      if (!v206)
      {
        goto LABEL_144;
      }

      v161 = &v285;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v202 = (v120 + 1);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v200 = v285;
      v177 = v266 == v120;
      v120 = v269;
      v203 = v272;
    }

    while (!v177);
  }

LABEL_156:
  v207 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images;
  *(v120 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images) = v200;

  v208 = *(v120 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView);
  if (v277)
  {
    v122 = v279;
    if (qword_10096CFC8 != -1)
    {
      swift_once();
    }

    v209 = v274;
  }

  else
  {
    v209 = 0;
    v122 = v279;
  }

  [v208 setImage:v209];

  v210 = *(v120 + v207);
  if (v210)
  {
    if (v210 >> 62)
    {
      goto LABEL_208;
    }

    v211 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v211 = 0;
  }

  while (1)
  {
    *(v120 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_numberOfBadges) = v211;
    v212 = v280;
    *(v120 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_pageTraits) = v280;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_1000C9724();
    [v212 pageMarginInsets];
    [v120 setLayoutMargins:?];
    [v120 setNeedsLayout];
    v285 = 0u;
    v286 = 0u;
    v282 = 0u;
    v283 = 0u;
    v213 = v238;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_10002B894(&v282, &unk_1009711D0);
    sub_10002B894(&v285, &unk_1009711D0);
    *&v285 = v194;
    *(&v285 + 1) = sub_1000CA47C;
    *&v286 = 0;

    sub_10002849C(&qword_1009872F0);
    sub_10049FB60();
    v214 = BidirectionalCollection<>.joined(separator:)();
    v216 = v215;

    *(&v286 + 1) = &type metadata for String;
    *&v285 = v214;
    *(&v285 + 1) = v216;
    v115 = v239;
    AutomationSemantics.attribute(key:value:)();
    v120 = *(v241 + 8);
    v217 = v242;
    (v120)(v213, v242);
    sub_10002B894(&v285, &unk_1009711D0);
    *&v285 = v194;
    *(&v285 + 1) = sub_1000CA488;
    *&v286 = 0;
    v218 = BidirectionalCollection<>.joined(separator:)();
    v220 = v219;

    *(&v286 + 1) = &type metadata for String;
    *&v285 = v218;
    *(&v285 + 1) = v220;
    v221 = v240;
    AutomationSemantics.attribute(key:value:)();
    (v120)(v115, v217);
    sub_10002B894(&v285, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    (v120)(v221, v217);
    v124 = v278;
    v161 = v281;
    v194 = v268;
LABEL_166:
    if (v276)
    {
LABEL_176:
      v222 = _CocoaArrayWrapper.endIndex.getter();
      if (!v222)
      {
LABEL_177:

        goto LABEL_178;
      }
    }

    else
    {
      v222 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v222)
      {
        goto LABEL_177;
      }
    }

    if ((v161 & 0xC000000000000001) != 0)
    {

      v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      *&v285 = v124;
      if (!v120)
      {
        goto LABEL_178;
      }

LABEL_171:
      *&v282 = v120;
      type metadata accessor for MediaPlatform();
      sub_10049FC48(&qword_100975F18, &type metadata accessor for MediaPlatform);

      LOBYTE(v115) = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v271)
      {
        v161 = v281;
        goto LABEL_181;
      }

      if (v115)
      {
        v223 = 1;
        goto LABEL_193;
      }

LABEL_190:
      *(v122 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
      sub_10057B5A4();
LABEL_195:
      v227 = *(v194 + v122) != 0;
      goto LABEL_199;
    }

    if (!*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      v225 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_186:

      *&v285 = v124;
      if (v225)
      {
        *&v282 = v225;
        type metadata accessor for MediaPlatform();
        sub_10049FC48(&qword_100975F18, &type metadata accessor for MediaPlatform);
        v223 = dispatch thunk of static Equatable.== infix(_:_:)();

        if ((v115 & 1) == 0)
        {
          v226 = 0;
          goto LABEL_194;
        }
      }

      else
      {

        if ((v115 & 1) == 0)
        {
          goto LABEL_197;
        }

        v223 = 0;
      }

LABEL_193:
      v226 = *(v270 + v122) != 0;
LABEL_194:
      *(v122 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = v226;
      sub_10057B5A4();
      if ((v223 & 1) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_195;
    }

    v120 = *(v161 + 32);

    *&v285 = v124;
    if (v120)
    {
      goto LABEL_171;
    }

LABEL_178:
    if (!v271)
    {

      goto LABEL_190;
    }

    if (!v222)
    {
      break;
    }

    LOBYTE(v115) = 0;
LABEL_181:
    v224 = v222 - 1;
    if (__OFSUB__(v222, 1))
    {
      goto LABEL_204;
    }

    if ((v161 & 0xC000000000000001) != 0)
    {
      goto LABEL_205;
    }

    if ((v224 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v224 < *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v225 = *(v161 + 8 * v224 + 32);

      goto LABEL_186;
    }

    __break(1u);
LABEL_208:
    v211 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_197:
  *(v122 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  sub_10057B5A4();
LABEL_198:
  v227 = 0;
LABEL_199:
  *(v122 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = v227;
  sub_10057B5B8();
  [v122 setNeedsLayout];

  swift_unknownObjectRelease();
}

uint64_t sub_10049FA28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0);
}

uint64_t sub_10049FA94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_10049FB60()
{
  result = qword_1009872F8;
  if (!qword_1009872F8)
  {
    sub_10002D1A8(&qword_1009872F0);
    sub_10049FBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009872F8);
  }

  return result;
}

unint64_t sub_10049FBE4()
{
  result = qword_100987300;
  if (!qword_100987300)
  {
    sub_10002D1A8(&qword_100987308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987300);
  }

  return result;
}

uint64_t sub_10049FC48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10049FC90()
{
  v0 = type metadata accessor for FontSource();
  v57 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v45 - v7;
  v9 = sub_10002849C(&unk_100970EA0);
  __chkstk_darwin(v9 - 8);
  v49 = v45 - v10;
  v11 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
  sub_100005644(v11, qword_1009D1F00);
  v45[2] = sub_1000056A8(v11, qword_1009D1F00);
  if (qword_10096E510 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v3, qword_1009D1F18);
  v13 = *(v4 + 16);
  v13(v8, v12, v3);
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  v15 = v14;
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v8, v3);
  v75 = v15;
  v76 = v17;
  v19 = v56;
  v13(v56, v12, v3);
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  v21 = v20;
  v23 = v22;
  v18(v19, v3);
  v74[0] = v21;
  v74[1] = v23;
  sub_10002849C(&qword_100973F50);
  type metadata accessor for CGSize(0);
  Conditional<>.init(regularValue:compactValue:)();
  v77 = &type metadata for Double;
  v78 = &protocol witness table for Double;
  v75 = 0x402E000000000000;
  if (qword_10096DCE8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v47 = sub_1000056A8(v24, qword_1009D0650);
  v25 = *(v24 - 8);
  v54 = *(v25 + 16);
  v55 = v25 + 16;
  v54(v2, v47, v24);
  v48 = enum case for FontSource.useCase(_:);
  v26 = v57;
  v27 = v57 + 104;
  v53 = *(v57 + 104);
  v53(v2);
  v56 = type metadata accessor for StaticDimension();
  v74[3] = v56;
  v74[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v71);
  v29 = *(v26 + 16);
  v29(v28, v2, v0);
  v50 = v29;
  StaticDimension.init(_:scaledLike:)();
  v52 = *(v26 + 8);
  v52(v2, v0);
  v54(v2, v47, v24);
  v30 = v48;
  (v53)(v2, v48, v0);
  v72 = v56;
  v73 = &protocol witness table for StaticDimension;
  sub_1000056E0(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v68);
  v29(v31, v2, v0);
  v32 = v54;
  StaticDimension.init(_:scaledLike:)();
  v52(v2, v0);
  v51 = v24;
  v32(v2, v47, v24);
  v45[1] = v27;
  (v53)(v2, v30, v0);
  v69 = v56;
  v70 = &protocol witness table for StaticDimension;
  sub_1000056E0(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v33 = sub_1000056E0(v65);
  v47 = v26 + 16;
  v50(v33, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v57 = v26 + 8;
  v52(v2, v0);
  if (qword_10096DCF0 != -1)
  {
    swift_once();
  }

  v34 = v51;
  v46 = sub_1000056A8(v51, qword_1009D0668);
  v35 = v54;
  v54(v2, v46, v34);
  v36 = v48;
  v37 = v53;
  v53(v2);
  v66 = v56;
  v67 = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v62);
  v50(v38, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v52(v2, v0);
  v35(v2, v46, v51);
  v37(v2, v36, v0);
  v39 = v56;
  v63 = v56;
  v64 = &protocol witness table for StaticDimension;
  sub_1000056E0(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v40 = sub_1000056E0(v59);
  v41 = v50;
  v50(v40, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v42 = v52;
  v52(v2, v0);
  v54(v2, v46, v51);
  (v53)(v2, v36, v0);
  v60 = v39;
  v61 = &protocol witness table for StaticDimension;
  sub_1000056E0(v59);
  v58[3] = v0;
  v58[4] = &protocol witness table for FontSource;
  v43 = sub_1000056E0(v58);
  v41(v43, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v42(v2, v0);
  return InAppPurchaseLockupViewLayout.Metrics.init(iconSize:iconMargin:titlePrimaryLineSpace:titleSecondaryLineSpace:subtitleLineSpace:descriptionPrimaryLineSpace:descriptionSecondaryLineSpace:offerButtonMargin:offerButtonSize:isHeightConstrained:)();
}

uint64_t sub_1004A04D4()
{
  v0 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  sub_100005644(v0, qword_1009D1F18);
  sub_1000056A8(v0, qword_1009D1F18);
  return InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
}

uint64_t sub_1004A0534()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_100987310);
  sub_1000056A8(v0, qword_100987310);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

id sub_1004A05D0()
{
  v1 = v0;
  v2 = type metadata accessor for InAppPurchaseTheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v39 - v6;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = *&v0[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView];
  v14 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  v15 = *(v3 + 16);
  v15(v12, &v1[v14], v2);
  v16 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v16, v12, v2);
  swift_endAccess();
  v15(v9, (v13 + v16), v2);
  sub_1002EBEE4(v9);
  v17 = *(v3 + 8);
  v17(v9, v2);
  v41 = v17;
  v17(v12, v2);
  v42 = v1;
  v18 = &v1[v14];
  v19 = v39;
  v20 = v40;
  v15(v39, v18, v2);
  (*(v3 + 104))(v20, enum case for InAppPurchaseTheme.spotlight(_:), v2);
  sub_1004A2280(&unk_100970E30, &type metadata accessor for InAppPurchaseTheme);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v45 == v43 && v46 == v44)
  {
    v21 = v20;
    v22 = v41;
    v41(v21, v2);
    v22(v19, v2);

LABEL_5:
    v26 = v42;
    v27 = *&v42[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel];
    v28 = [v42 tintColor];
    [v27 setTextColor:v28];

    v29 = *&v26[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel];
    if (v29)
    {
      v30 = [v26 tintColor];
      [v29 setTextColor:v30];
    }

    v31 = *&v26[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel];
    v32 = [v26 tintColor];
    [v31 setTextColor:v32];
    goto LABEL_11;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v24 = v20;
  v25 = v41;
  v41(v24, v2);
  v25(v19, v2);

  if (v23)
  {
    goto LABEL_5;
  }

  v26 = v42;
  v33 = *&v42[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel];
  sub_100028BB8();
  v34 = static UIColor.primaryText.getter();
  [v33 setTextColor:v34];

  v35 = *&v26[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel];
  if (v35)
  {
    v36 = static UIColor.primaryText.getter();
    [v35 setTextColor:v36];
  }

  v37 = *&v26[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel];
  v32 = static UIColor.secondaryText.getter();
  [v37 setTextColor:v32];
LABEL_11:

  return [v26 setNeedsLayout];
}

char *sub_1004A0A78(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_theme;
  v15 = enum case for InAppPurchaseTheme.infer(_:);
  v16 = type metadata accessor for InAppPurchaseTheme();
  (*(*(v16 - 8) + 104))(&v2[v14], v15, v16);
  v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_isHeightConstrained] = 0;
  if (qword_10096E510 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v11, qword_1009D1F18);
  InAppPurchaseIconLayout.Metrics.mainIconDimension.getter();
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v17 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v53 = a1;
  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView] = sub_1002EB7C0(v13, a1 & 1);
  if (qword_10096DCE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D0650);
  v20 = *(v18 - 8);
  v21 = *(v20 + 16);
  v52 = v19;
  v58 = v21;
  (v21)(v10);
  v57 = *(v20 + 56);
  v57(v10, 0, 1, v18);
  v22 = *(v5 + 104);
  v56 = enum case for DirectionalTextAlignment.none(_:);
  v55 = v22;
  v22(v7);
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096DCF0 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v18, qword_1009D0668);
  v58(v10, v25, v18);
  v57(v10, 0, 1, v18);
  v55(v7, v56, v4);
  v26 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = objc_allocWithZone(type metadata accessor for OfferButton());
  v28 = sub_1000F5284(0);
  v29 = 0;
  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_offerButton] = v28;
  if (v53)
  {
    v58(v10, v52, v18);
    v57(v10, 0, 1, v18);
    v55(v7, v56, v4);
    v30 = objc_allocWithZone(v23);
    v29 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  }

  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel] = v29;
  v31 = type metadata accessor for InAppPurchaseLockupView();
  v60.receiver = v2;
  v60.super_class = v31;
  v32 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v36 = v32;
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_10096E518 != -1)
  {
    swift_once();
  }

  v37 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v37, qword_100987310);
  v59 = v36;
  v38 = v36;
  Conditional.evaluate(with:)();

  v39 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel;
  UILabel.alignment.setter();
  v40 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel;
  if (*&v38[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel])
  {
    UILabel.alignment.setter();
  }

  v41 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel;
  UILabel.alignment.setter();
  v42 = *&v38[v41];
  sub_100028BB8();
  v43 = v42;
  v44 = static UIColor.secondaryText.getter();
  [v43 setTextColor:v44];

  v45 = *&v38[v39];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v38 addSubview:*&v38[v39]];
  v46 = *&v38[v41];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v38 addSubview:*&v38[v41]];
  [v38 addSubview:*&v38[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_offerButton]];
  [v38 addSubview:*&v38[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView]];
  v47 = *&v38[v40];
  if (v47)
  {
    v48 = v47;
    dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();
    [v38 addSubview:v48];
  }

  sub_10002849C(&qword_10097B110);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007B10D0;
  *(v49 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v49 + 40) = &protocol witness table for UITraitLayoutDirection;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v38;
}

void sub_1004A12F0()
{
  v1 = v0;
  v2 = type metadata accessor for InAppPurchaseTheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for InAppPurchaseLockupView();
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "tintColorDidChange");
  v10 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  (*(v3 + 16))(v8, &v1[v10], v2);
  (*(v3 + 104))(v5, enum case for InAppPurchaseTheme.spotlight(_:), v2);
  sub_1004A2280(&unk_100970E30, &type metadata accessor for InAppPurchaseTheme);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v20[3] == v20[1] && v20[4] == v20[2])
  {
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v8, v2);
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  v14 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel];
  v15 = [v1 tintColor];
  [v14 setTextColor:v15];

  v16 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel];
  if (v16)
  {
    v17 = [v1 tintColor];
    [v16 setTextColor:v17];
  }

  v18 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel];
  v19 = [v1 tintColor];
  [v18 setTextColor:v19];
}

uint64_t sub_1004A1658()
{
  v1 = v0;
  v44 = type metadata accessor for LayoutRect();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for InAppPurchaseLockupViewLayout();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for InAppPurchaseLockupView();
  v62.receiver = v1;
  v62.super_class = v10;
  objc_msgSendSuper2(&v62, "layoutSubviews");
  if (qword_10096E508 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v4, qword_1009D1F00);
  v38 = v5;
  v12 = *(v5 + 16);
  v12(v9, v11, v4);
  v13 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_offerButton];
  v36 = v10;
  LayoutMarginsAware<>.layoutFrame.getter();
  v14 = &v13[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v13[v15], &v59);
    sub_10002A400(&v59, v60);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v17 = v16;
    v19 = v18;
    sub_100007000(&v59);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  InAppPurchaseLockupViewLayout.Metrics.offerButtonSize.setter();
  InAppPurchaseLockupViewLayout.Metrics.isHeightConstrained.setter();
  v12(v37, v9, v4);
  v20 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView];
  v60 = type metadata accessor for InAppPurchaseView();
  v61 = &protocol witness table for UIView;
  v59 = v20;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel];
  v22 = type metadata accessor for DynamicTypeLabel();
  v57 = v22;
  v58 = &protocol witness table for UILabel;
  v56 = v21;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel];
  if (v23)
  {
    v24 = &protocol witness table for UILabel;
    v25 = v22;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v23;
  v54 = v25;
  v55 = v24;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel];
  v50 = &protocol witness table for UILabel;
  v49 = v22;
  v48 = v26;
  v27 = type metadata accessor for OfferButton();
  v47 = &protocol witness table for UIView;
  v46 = v27;
  v45 = v13;
  v28 = v20;
  v29 = v21;
  v30 = v23;
  v31 = v26;
  v32 = v13;
  v33 = v39;
  InAppPurchaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v34 = v41;
  InAppPurchaseLockupViewLayout.placeChildren(relativeTo:in:)();
  (*(v43 + 8))(v34, v44);
  (*(v40 + 8))(v33, v42);
  return (*(v38 + 8))(v9, v4);
}

id sub_1004A1CFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseLockupView()
{
  result = qword_100987358;
  if (!qword_100987358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004A1E44()
{
  result = type metadata accessor for InAppPurchaseTheme();
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

double sub_1004A1F00(void *a1)
{
  v2 = type metadata accessor for OfferButtonMetrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E508 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v9, qword_1009D1F00);
  (*(v10 + 16))(v12, v13, v9);
  v14 = [a1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v15 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v15 = qword_100991028;
  }

  v16 = sub_1000056A8(v2, v15);
  (*(v3 + 16))(v5, v16, v2);

  (*(v3 + 32))(v8, v5, v2);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  InAppPurchaseLockupViewLayout.Metrics.offerButtonSize.setter();
  type metadata accessor for InAppPurchaseLockupViewLayout();
  sub_1004A2280(&qword_100986CC0, &type metadata accessor for InAppPurchaseLockupViewLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v18 = v17;
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_1004A2280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004A22C8(void *a1)
{
  if (qword_10096E518 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v2, qword_100987310);
  v3 = a1;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  if (*&v3[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel])
  {
    UILabel.alignment.setter();
  }

  return UILabel.alignment.setter();
}

char *sub_1004A23B8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = 0;
  v4 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer;
  *&v2[v4] = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_riverViewStyling;
  v67 = type metadata accessor for RiverViewStyling();
  v69 = *(v67 - 8);
  (*(v69 + 16))(&v2[v8], a1, v67);
  v9 = sub_1004A58D8(0.0, 0.0, 1.0, 0.0);
  v10 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_leftMaskLayer;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_leftMaskLayer] = v9;
  v11 = v10;
  v64 = v10;
  v12 = sub_1004A58D8(1.0, 0.0, 0.0, 0.0);
  v70 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_rightMaskLayer;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_rightMaskLayer] = v12;
  v13 = sub_1004A58D8(0.0, 0.0, 0.0, 1.0);
  v14 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topMaskLayer;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topMaskLayer] = v13;
  v15 = sub_1004A58D8(0.0, 1.0, 0.0, 0.0);
  v65 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomMaskLayer;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomMaskLayer] = v15;
  v16 = *&v2[v14];
  v17 = *&v2[v11];
  v18 = objc_allocWithZone(CAGradientLayer);
  v19 = v16;
  v20 = v17;
  v21 = [v18 init];
  [v21 setType:kCAGradientLayerAxial];
  sub_10002849C(&qword_100973210);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B15F0;
  sub_100005744(0, &qword_10097FB80);
  *(v22 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v22 + 40) = NSNumber.init(floatLiteral:)(0.75);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setLocations:isa];

  [v21 setStartPoint:{0.0, 0.0}];
  [v21 setEndPoint:{1.0, 1.0}];
  [v19 setMask:v20];
  [v21 setMask:v19];

  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer] = v21;
  v24 = *&v2[v14];
  v25 = *&v2[v70];
  v26 = objc_allocWithZone(CAGradientLayer);
  v27 = v24;
  v28 = v25;
  v29 = [v26 init];
  [v29 setType:kCAGradientLayerAxial];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007B15F0;
  *(v30 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v30 + 40) = NSNumber.init(floatLiteral:)(0.75);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v29 setLocations:v31];

  [v29 setStartPoint:{1.0, 0.0}];
  [v29 setEndPoint:{0.0, 1.0}];
  [v27 setMask:v28];
  [v29 setMask:v27];

  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer] = v29;
  v32 = *&v2[v65];
  v33 = *&v2[v64];
  v34 = objc_allocWithZone(CAGradientLayer);
  v35 = v32;
  v36 = v33;
  v37 = [v34 init];
  [v37 setType:kCAGradientLayerAxial];
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1007B15F0;
  *(v38 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v38 + 40) = NSNumber.init(floatLiteral:)(0.75);
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v37 setLocations:v39];

  [v37 setStartPoint:{0.0, 1.0}];
  [v37 setEndPoint:{1.0, 0.0}];
  [v35 setMask:v36];
  [v37 setMask:v35];

  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer] = v37;
  v40 = *&v2[v65];
  v41 = *&v2[v70];
  v42 = objc_allocWithZone(CAGradientLayer);
  v43 = v40;
  v44 = v41;
  v45 = [v42 init];
  [v45 setType:kCAGradientLayerAxial];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1007B15F0;
  *(v46 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v46 + 40) = NSNumber.init(floatLiteral:)(0.75);
  v47 = Array._bridgeToObjectiveC()().super.isa;

  [v45 setLocations:v47];

  [v45 setStartPoint:{1.0, 1.0}];
  [v45 setEndPoint:{0.0, 0.0}];
  [v43 setMask:v44];
  [v45 setMask:v43];

  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer] = v45;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_overlayLayer] = sub_1004A5B04();
  v72.receiver = v2;
  v72.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 whiteColor];
  [v50 setBackgroundColor:v51];

  v52 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView;
  [v50 addSubview:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView]];
  v53 = [*&v50[v52] layer];

  v54 = sub_100246F70();

  [v53 setMeshTransform:v54];

  v55 = [*&v50[v52] layer];
  v56 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer;
  [v55 addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer]];

  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_overlayLayer]];
  v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = 1;
  v57 = objc_opt_self();
  v58 = [v57 defaultCenter];
  [v58 addObserver:v50 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v59 = [v57 defaultCenter];
  [v59 addObserver:v50 selector:"willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  v60 = [v57 defaultCenter];
  [v60 addObserver:v50 selector:"didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  sub_10002849C(&qword_10097B110);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007B10D0;
  *(v61 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v61 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v71[3] = ObjectType;
  v71[0] = v50;
  v62 = v50;
  UIView.registerForTraitChanges(_:target:action:)();

  swift_unknownObjectRelease();

  (*(v69 + 8))(a1, v67);
  sub_100007000(v71);
  return v62;
}

void sub_1004A2DB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();

  LOBYTE(a1) = sub_1006E21AC(v4, a1);

  if (a1)
  {
    return;
  }

  v5 = *&v1[v3];
  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_1004A2ECC();
    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v1[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] == 1 && (v6 = [v1 window]) != 0 && (v6, (objc_msgSend(v1, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_1004A3194();
    sub_1004A2ECC();
    sub_1004A3C4C();
    sub_1004A41C4();
    sub_1004A4308();
    sub_1004A3E44();
  }

  else
  {
    sub_1004A3194();
  }
}

uint64_t sub_1004A2ECC()
{
  sub_10002849C(&qword_100973210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007CFF90;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView];
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  *(inited + 72) = [v7 layer];
  *(inited + 80) = [v0 layer];
  v13 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = *(inited + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v15 = i;
    [i removeAllAnimations];

    if (v13)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_23;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    [v16 removeAllAnimations];

    if (v13)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_23;
      }

      v18 = *(inited + 48);
    }

    v19 = v18;
    [v18 removeAllAnimations];

    if (v13)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_23;
      }

      v20 = *(inited + 56);
    }

    v21 = v20;
    [v20 removeAllAnimations];

    if (v13)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_23;
      }

      v22 = *(inited + 64);
    }

    v23 = v22;
    [v22 removeAllAnimations];

    if (v13)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_23;
      }

      v24 = *(inited + 72);
    }

    v25 = v24;
    [v24 removeAllAnimations];

    if (v13)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v26 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v27 = v26;
  [v26 removeAllAnimations];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1004A3194()
{
  v2 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
    {
      return;
    }

LABEL_3:
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer);
    swift_beginAccess();
    v5 = *(v0 + v2);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v42 = v4;
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(v5 + 32);
      v7 = v4;
      v8 = v6;
    }

    v9 = v8;
    swift_endAccess();
    sub_10002849C(&qword_100973210);
    inited = swift_initStackObject();
    v46 = xmmword_1007B15F0;
    *(inited + 16) = xmmword_1007B15F0;
    v1 = &selRef_loadView;
    *(inited + 32) = [v9 CGColor];
    v11 = [v9 colorWithAlphaComponent:0.0];
    v12 = [v11 CGColor];

    *(inited + 40) = v12;
    sub_1002A4E98(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setColors:isa];

    v14 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer);
    swift_beginAccess();
    v15 = *(v0 + v2);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v43 = v14;
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_24;
      }

      v16 = *(v15 + 40);
      v17 = v14;
      v18 = v16;
    }

    v19 = v18;
    swift_endAccess();
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1007B15F0;
    *(v20 + 32) = [v19 CGColor];
    v21 = [v19 colorWithAlphaComponent:0.0];
    v22 = [v21 CGColor];

    *(v20 + 40) = v22;
    sub_1002A4E98(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v23 = Array._bridgeToObjectiveC()().super.isa;

    [v14 setColors:v23];

    v4 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer);
    swift_beginAccess();
    v24 = *(v0 + v2);
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_26;
      }

      v25 = *(v24 + 48);
      v26 = v4;
      v27 = v25;
      goto LABEL_12;
    }

LABEL_22:
    v44 = v4;
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v28 = v27;
    swift_endAccess();
    v29 = swift_initStackObject();
    *(v29 + 16) = v46;
    *(v29 + 32) = [v28 v1[347]];
    v30 = [v28 colorWithAlphaComponent:0.0];
    v31 = [v30 v1[347]];

    *(v29 + 40) = v31;
    sub_1002A4E98(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v4 setColors:v32];

    v14 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer);
    swift_beginAccess();
    v33 = *(v0 + v2);
    if ((v33 & 0xC000000000000001) == 0)
    {
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v34 = *(v33 + 56);
        v35 = v14;
        v36 = v34;
LABEL_15:
        v37 = v36;
        swift_endAccess();
        v38 = swift_initStackObject();
        *(v38 + 16) = v46;
        *(v38 + 32) = [v37 v1[347]];
        v39 = [v37 colorWithAlphaComponent:0.0];
        v40 = [v39 v1[347]];

        *(v38 + 40) = v40;
        sub_1002A4E98(v38);
        swift_setDeallocating();
        swift_arrayDestroy();
        v41 = Array._bridgeToObjectiveC()().super.isa;

        [v14 setColors:v41];

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    v45 = v14;
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= 4)
  {
    goto LABEL_3;
  }
}

void sub_1004A3758()
{
  if (v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] == 1 && (v1 = [v0 window]) != 0 && (v1, (objc_msgSend(v0, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 animationForKey:v6];

    if (v7)
    {
    }

    else
    {
      sub_1004A3194();
      sub_1004A2ECC();
      sub_1004A3C4C();
      sub_1004A41C4();
      sub_1004A4308();
    }

    sub_1004A3E44();
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 animationForKey:v3];

    if (v4)
    {

      sub_1004A4048();
    }
  }
}

id sub_1004A38D4()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView];
  [v0 bounds];
  v2 = -CGRectGetMidY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);
  [v0 bounds];
  Height = CGRectGetHeight(v26);
  [v1 setFrame:{0.0, v2, Width, Height + Height}];
  v5 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
  [v0 bounds];
  [v5 frame];
  [v5 setFrame:?];
  [v0 bounds];
  MidY = CGRectGetMidY(v27);
  [v5 frame];
  [v5 setFrame:{0.0, MidY}];
  [v0 bounds];
  v7 = CGRectGetWidth(v28);
  [v0 bounds];
  v8 = CGRectGetHeight(v29);
  v9 = hypot(v7, v8) * 1.2;
  [v0 bounds];
  v10 = CGRectGetWidth(v30);
  v11 = v10 + v10;
  if (v11 > v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  [v0 bounds];
  v13 = CGRectGetHeight(v31);
  v14 = v13 + v13;
  if (v14 > v9)
  {
    v9 = v14;
  }

  [v0 bounds];
  v15 = (v12 - CGRectGetWidth(v32)) * -0.5;
  [v0 bounds];
  v16 = (v9 - CGRectGetHeight(v33)) * -0.5;
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  v17 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer;
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_overlayLayer] setFrame:{v15, v16, v12, v9}];
  v18 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topMaskLayer];
  [*&v0[v17] bounds];
  [v18 setFrame:?];
  v19 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomMaskLayer];
  [*&v0[v17] bounds];
  [v19 setFrame:?];
  v20 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_leftMaskLayer];
  [*&v0[v17] bounds];
  [v20 setFrame:?];
  v21 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_rightMaskLayer];
  [*&v0[v17] bounds];
  return [v21 setFrame:?];
}

void sub_1004A3C4C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(CABasicAnimation) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setKeyPath:v3];

  v4 = sub_100246F70();
  [v2 setFromValue:v4];

  v5 = sub_100246FD0();
  [v2 setToValue:v5];

  v6 = v2;
  [v6 setDuration:3.5];
  [v6 setAutoreverses:1];
  LODWORD(v7) = 2139095039;
  [v6 setRepeatCount:v7];
  v8 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v9) = 1054280253;
  LODWORD(v10) = 1056293519;
  LODWORD(v11) = 1.0;
  v12 = [v8 initWithControlPoints:v9 :0.0 :v10 :v11];
  [v6 setTimingFunction:v12];

  v13 = [*(v1 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView) layer];
  v14 = String._bridgeToObjectiveC()();
  [v13 addAnimation:v6 forKey:v14];
}

void sub_1004A3E44()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 1.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 timeOffset];
      v9 = v8;

      v10 = [v0 layer];
      LODWORD(v11) = 1.0;
      [v10 setSpeed:v11];

      v12 = [v0 layer];
      [v12 setTimeOffset:0.0];

      v13 = [v0 layer];
      [v13 setBeginTime:0.0];

      v14 = [v0 layer];
      [v14 convertTime:0 fromLayer:CACurrentMediaTime()];
      v16 = v15;

      v17 = [v0 layer];
      [v17 setBeginTime:v16 - v9];
    }
  }
}

void sub_1004A4048()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 0.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 convertTime:0 fromLayer:CACurrentMediaTime()];
      v9 = v8;

      v10 = [v0 layer];
      [v10 setSpeed:0.0];

      v11 = [v0 layer];
      [v11 setTimeOffset:v9];
    }
  }
}

void sub_1004A41C4()
{
  v1 = [objc_allocWithZone(CABasicAnimation) init];
  v2 = String._bridgeToObjectiveC()();
  [v1 setKeyPath:v2];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setToValue:isa];

  v4 = v1;
  [v4 setDuration:20.0];
  LODWORD(v5) = 2139095039;
  [v4 setRepeatCount:v5];

  v6 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer);
  v7 = String._bridgeToObjectiveC()();
  [v6 addAnimation:v4 forKey:v7];
}

void sub_1004A4308()
{
  v4 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v101 = v0;
  v5 = *&v0[v4];
  if (v5 >> 62)
  {
    goto LABEL_155;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:
    v6 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_riverViewStyling;
    v7 = v101;
    RiverViewStyling.speed.getter();
    v9 = v8;
    RiverViewStyling.itemSize.getter();
    v11 = v10;
    v12 = &v101[v6];
    RiverViewStyling.interItemSpacing.getter();
    v14 = v13;
    v15 = *&v101[v4];
    if (!(v15 >> 62))
    {
      v7 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v7 >> 1;
      goto LABEL_5;
    }

    v97 = _CocoaArrayWrapper.endIndex.getter();
    if (v97 < -1)
    {
      __break(1u);
LABEL_159:
      if (v6 < 0)
      {
        v1 = v6;
      }

      else
      {
        v1 = v16;
      }

      v97 = _CocoaArrayWrapper.endIndex.getter();
      if (v97 < 0)
      {
        __break(1u);
        goto LABEL_181;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v12)
      {
        goto LABEL_7;
      }

LABEL_164:
      __break(1u);
LABEL_165:
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (v30 >= v12)
      {
        goto LABEL_26;
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    while (1)
    {
      v7 = v97;
      v12 = v97 / 2;
LABEL_5:
      swift_beginAccess();
      v6 = *&v101[v4];
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v2 = v6 >> 62;
      if (v6 >> 62)
      {
        goto LABEL_159;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
      {
        goto LABEL_164;
      }

LABEL_7:
      if ((v6 & 0xC000000000000001) != 0 && v7 + 1 > 2)
      {
        sub_100005744(0, &qword_100970180);

        v17 = 0;
        do
        {
          v18 = v17 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v17);
          v17 = v18;
        }

        while (v12 != v18);
        if (!v2)
        {
LABEL_12:
          v19 = 0;
          v20 = v6 & 0xFFFFFFFFFFFFFF8;
          v1 = v20 + 32;
          v21 = (2 * v12) | 1;
          goto LABEL_15;
        }
      }

      else
      {

        if (!v2)
        {
          goto LABEL_12;
        }
      }

      v20 = _CocoaArrayWrapper.subscript.getter();
      v1 = v22;
      v19 = v23;
      v21 = v24;
LABEL_15:
      swift_endAccess();
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      v3 = type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        swift_unknownObjectRelease();
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = *(v26 + 2);

      if (__OFSUB__(v21 >> 1, v19))
      {
        __break(1u);
LABEL_177:
        swift_unknownObjectRelease();
LABEL_16:
        sub_1005E7C78(v20, v1, v19, v21);
        v7 = v25;
        goto LABEL_23;
      }

      if (v27 != (v21 >> 1) - v19)
      {
        goto LABEL_177;
      }

      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v7)
      {
        goto LABEL_24;
      }

      v7 = _swiftEmptyArrayStorage;
LABEL_23:
      swift_unknownObjectRelease();
LABEL_24:
      v104 = v7;
      v28 = *&v101[v4];
      if (v28 >> 62)
      {
        goto LABEL_165;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFF8;
      v30 = *(v29 + 16);
      if (v30 < v12)
      {
        goto LABEL_166;
      }

LABEL_26:
      swift_beginAccess();
      v7 = *&v101[v4];
      v29 = v7 & 0xFFFFFFFFFFFFFF8;
      v4 = v7 >> 62;
      if (!(v7 >> 62))
      {
        v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31 >= v12)
        {
          if (v31 >= v30)
          {
LABEL_29:
            if ((v7 & 0xC000000000000001) == 0 || v12 == v30)
            {

              if (!v4)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (v12 >= v30)
              {
                __break(1u);
                goto LABEL_178;
              }

              sub_100005744(0, &qword_100970180);

              v32 = v12;
              do
              {
                v33 = v32 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v32);
                v32 = v33;
              }

              while (v30 != v33);
              if (!v4)
              {
LABEL_36:
                v7 &= 0xFFFFFFFFFFFFFF8uLL;
                v1 = v7 + 32;
                v30 = (2 * v30) | 1;
                goto LABEL_39;
              }
            }

            v7 = _CocoaArrayWrapper.subscript.getter();
            v1 = v34;
            v12 = v35;
            v30 = v36;
LABEL_39:
            swift_endAccess();
            if ((v30 & 1) == 0)
            {
LABEL_40:
              sub_1005E7C78(v7, v1, v12, v30);
              v38 = v37;
              goto LABEL_47;
            }

            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v39 = swift_dynamicCastClass();
            if (!v39)
            {
              swift_unknownObjectRelease();
              v39 = _swiftEmptyArrayStorage;
            }

            v40 = *(v39 + 2);

            if (__OFSUB__(v30 >> 1, v12))
            {
LABEL_178:
              __break(1u);
            }

            else if (v40 == (v30 >> 1) - v12)
            {
              v38 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v38)
              {
                v38 = _swiftEmptyArrayStorage;
LABEL_47:
                swift_unknownObjectRelease();
              }

              v103 = v38;
              sub_1004A51CC(2);
              sub_1004A51CC(2);
              v12 = *&v101[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer];
              v30 = v104;
              v3 = (v104 & 0xFFFFFFFFFFFFFF8);
              if (!(v104 >> 62))
              {
                v2 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:
                v4 = v30 & 0xC000000000000001;
                v98 = v12;
                v102 = v3;
                if (!v2)
                {
LABEL_71:
                  v50 = (v11 + v14) / v9;
                  v51 = (v50 + v50) * 0.15;
                  v52 = _swiftEmptyArrayStorage[2];
                  if (v52 == 0.0)
                  {

                    v54 = v30;
                  }

                  else
                  {
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v53 = 5;
                    v54 = v30;
                    do
                    {
                      v55 = *&_swiftEmptyArrayStorage[v53];
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v53 += 2;
                      --*&v52;
                    }

                    while (v52 != 0.0);
                  }

                  v1 = 0xEE006E6F6974616DLL;
                  v56 = sub_1004A5F80(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 * 0.5);

                  v57 = String._bridgeToObjectiveC()();
                  [v98 addAnimation:v56 forKey:v57];

                  v99 = *&v101[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer];
                  if (v2)
                  {
                    v58 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      else
                      {
                        if (v58 >= *(v3 + 2))
                        {
                          goto LABEL_149;
                        }

                        v59 = *(v54 + 8 * v58 + 32);
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      if (v58)
                      {
                        v1 = v59;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_100144208(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v62 = _swiftEmptyArrayStorage[2];
                        v61 = _swiftEmptyArrayStorage[3];
                        v63 = v1;
                        if (*&v62 >= *&v61 >> 1)
                        {
                          sub_100144208((*&v61 > 1uLL), *&v62 + 1, 1);
                          v63 = v1;
                        }

                        *&_swiftEmptyArrayStorage[2] = *&v62 + 1;
                        v64 = &_swiftEmptyArrayStorage[2 * *&v62];
                        *(v64 + 4) = v58;
                        *(v64 + 5) = v63;
                        v3 = v102;
                        if (v60 == v2)
                        {
                          break;
                        }

                        v58 = v60;
                      }

                      else
                      {

                        ++v58;
                        if (v60 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v1 = *&_swiftEmptyArrayStorage[2];
                  if (v1)
                  {
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v65 = 5;
                    v66 = v99;
                    do
                    {
                      v67 = *&_swiftEmptyArrayStorage[v65];
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v65 += 2;
                      --v1;
                    }

                    while (v1);
                  }

                  else
                  {

                    v66 = v99;
                  }

                  v68 = sub_1004A5F80(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + v50 * 0.5);

                  v69 = String._bridgeToObjectiveC()();
                  [v66 addAnimation:v68 forKey:v69];

                  v70 = *&v101[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
                  if (v103 >> 62)
                  {
                    v2 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v2 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v4 = v103 & 0xC000000000000001;
                  v100 = v70;
                  if (v2)
                  {
                    v1 = 0;
                    v3 = v103 + 4;
                    do
                    {
                      v71 = v1;
                      if (v4)
                      {
                        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      else
                      {
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v1 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_150;
                        }

                        v73 = *&v3[v1];
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      if (v1)
                      {

                        if (v74 == v2)
                        {
                          break;
                        }

                        if (v4)
                        {
                          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          if (v74 >= *(v72 + 16))
                          {
                            goto LABEL_150;
                          }

                          v75 = *&v3[v74];
                        }

                        v73 = v75;
                        v1 = v74 | 1;
                      }

                      else
                      {
                        v1 = v74;
                        v74 = v71;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_100144208(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
                      }

                      v77 = _swiftEmptyArrayStorage[2];
                      v76 = _swiftEmptyArrayStorage[3];
                      if (*&v77 >= *&v76 >> 1)
                      {
                        sub_100144208((*&v76 > 1uLL), *&v77 + 1, 1);
                      }

                      *&_swiftEmptyArrayStorage[2] = *&v77 + 1;
                      v78 = &_swiftEmptyArrayStorage[2 * *&v77];
                      *(v78 + 4) = v74;
                      *(v78 + 5) = v73;
                    }

                    while (v1 != v2);
                  }

                  v79 = _swiftEmptyArrayStorage[2];
                  if (v79 != 0.0)
                  {
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v1 = 40;
                    do
                    {
                      v80 = *(_swiftEmptyArrayStorage + v1);
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v1 += 16;
                      --*&v79;
                    }

                    while (v79 != 0.0);
                  }

                  v81 = sub_1004A5F80(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, 0.0);

                  v82 = String._bridgeToObjectiveC()();
                  [v100 addAnimation:v81 forKey:v82];

                  v83 = *&v101[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer];
                  v84 = v103 & 0xFFFFFFFFFFFFFF8;
                  if (v2)
                  {
                    v3 = _swiftEmptyArrayStorage;
                    v85 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      else
                      {
                        if (v85 >= *(v84 + 16))
                        {
                          goto LABEL_152;
                        }

                        v86 = *&v103[v85 + 4];
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      if (v85)
                      {
                        v1 = v86;
                        v101 = v83;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_100144208(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v89 = _swiftEmptyArrayStorage[2];
                        v88 = _swiftEmptyArrayStorage[3];
                        v90 = v1;
                        if (*&v89 >= *&v88 >> 1)
                        {
                          sub_100144208((*&v88 > 1uLL), *&v89 + 1, 1);
                          v90 = v1;
                        }

                        *&_swiftEmptyArrayStorage[2] = *&v89 + 1;
                        v91 = &_swiftEmptyArrayStorage[2 * *&v89];
                        *(v91 + 4) = v85;
                        *(v91 + 5) = v90;
                        v84 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v87 == v2)
                        {
                          break;
                        }

                        v85 = v87;
                      }

                      else
                      {

                        ++v85;
                        if (v87 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v92 = _swiftEmptyArrayStorage[2];
                  if (v92 != 0.0)
                  {
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v93 = 5;
                    do
                    {
                      v94 = *&_swiftEmptyArrayStorage[v93];
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v93 += 2;
                      --*&v92;
                    }

                    while (v92 != 0.0);
                  }

                  v95 = sub_1004A5F80(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + 0.0);

                  v96 = String._bridgeToObjectiveC()();
                  [v83 addAnimation:v95 forKey:v96];

                  return;
                }

                v41 = 0;
                v42 = v30 + 32;
                while (1)
                {
                  if (v4)
                  {
                    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v41 >= *(v3 + 2))
                    {
                      goto LABEL_147;
                    }

                    v43 = *(v42 + 8 * v41);
                  }

                  v44 = v43;
                  v45 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
                    goto LABEL_153;
                  }

                  if (v41)
                  {

                    if (v45 == v2)
                    {
                      goto LABEL_71;
                    }

                    if (v4)
                    {
                      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v45 >= *(v3 + 2))
                      {
LABEL_147:
                        __break(1u);
LABEL_148:
                        __break(1u);
LABEL_149:
                        __break(1u);
LABEL_150:
                        __break(1u);
LABEL_151:
                        __break(1u);
LABEL_152:
                        __break(1u);
LABEL_153:
                        __break(1u);
LABEL_154:
                        __break(1u);
LABEL_155:
                        if (_CocoaArrayWrapper.endIndex.getter() < 4)
                        {
                          return;
                        }

                        goto LABEL_3;
                      }

                      v46 = *(v42 + 8 * v45);
                    }

                    v44 = v46;
                    v1 = v45 | 1;
                  }

                  else
                  {
                    v1 = v41 + 1;
                    v45 = v41;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_100144208(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
                  }

                  v48 = _swiftEmptyArrayStorage[2];
                  v47 = _swiftEmptyArrayStorage[3];
                  if (*&v48 >= *&v47 >> 1)
                  {
                    sub_100144208((*&v47 > 1uLL), *&v48 + 1, 1);
                  }

                  *&_swiftEmptyArrayStorage[2] = *&v48 + 1;
                  v49 = &_swiftEmptyArrayStorage[2 * *&v48];
                  *(v49 + 4) = v45;
                  *(v49 + 5) = v44;
                  v41 = v1;
                  v3 = v102;
                  if (v1 == v2)
                  {
                    goto LABEL_71;
                  }
                }
              }

LABEL_174:
              v2 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_50;
            }

            swift_unknownObjectRelease();
            goto LABEL_40;
          }

LABEL_172:
          __break(1u);
        }

        __break(1u);
        goto LABEL_174;
      }

LABEL_167:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v1 = v7;
      }

      else
      {
        v1 = v29;
      }

      v97 = _CocoaArrayWrapper.endIndex.getter();
      if (v97 >= v12)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= v30)
        {
          goto LABEL_29;
        }

        goto LABEL_172;
      }

LABEL_181:
      __break(1u);
    }
  }
}

uint64_t sub_1004A51CC(uint64_t a1)
{
  v5 = v1;
  v7 = *v5;
  v8 = *v5 >> 62;
  if (!v8)
  {
    result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result <= a1)
    {
      return result;
    }

LABEL_3:
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v8)
      {
        if (v7 < 0)
        {
          v2 = v7;
        }

        else
        {
          v2 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        v3 = _CocoaArrayWrapper.endIndex.getter();
        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
          goto LABEL_54;
        }

        if (v3 >= a1)
        {
          v13 = a1;
        }

        else
        {
          v13 = v3;
        }

        if (v3 < 0)
        {
          v13 = a1;
        }

        v12 = a1 == 0;
        if (a1)
        {
          v3 = v13;
        }

        else
        {
          v3 = 0;
        }

        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 >= a1)
        {
          v11 = a1;
        }

        else
        {
          v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = a1 == 0;
        if (a1)
        {
          v3 = v11;
        }

        else
        {
          v3 = 0;
        }
      }

      if (v10 >= v3)
      {
        if ((v7 & 0xC000000000000001) != 0 && v3)
        {
          sub_100005744(0, &qword_100970180);

          v14 = 0;
          do
          {
            v15 = v14 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v14);
            v14 = v15;
          }

          while (v3 != v15);
          if (!v8)
          {
LABEL_30:
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
            v2 = v7 + 32;
            v3 = (2 * v3) | 1;
            v8 = 0;
            if (v12)
            {
              goto LABEL_38;
            }

            result = *(v7 + 16);
            if (result < 0)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }
        }

        else
        {

          if (!v8)
          {
            goto LABEL_30;
          }
        }

        v7 = _CocoaArrayWrapper.subscript.getter();
        v2 = v16;
        v8 = v17;
        v3 = v18;
        if (v12)
        {
          goto LABEL_38;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 0)
        {
LABEL_37:
          sub_1004A6B10(0, a1, sub_100399C40, &qword_100970180);
LABEL_38:
          v4 = *v5;
          if ((v3 & 1) == 0)
          {
            swift_unknownObjectRetain();
LABEL_40:
            sub_1005E7C78(v7, v2, v8, v3);
            v20 = v19;
            goto LABEL_47;
          }

          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v21 = swift_dynamicCastClass();
          if (!v21)
          {
            swift_unknownObjectRelease();
            v21 = &_swiftEmptyArrayStorage;
          }

          v22 = *(v21 + 2);

          if (!__OFSUB__(v3 >> 1, v8))
          {
            if (v22 == (v3 >> 1) - v8)
            {
              v20 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v20)
              {
LABEL_48:
                sub_1003946E0(v20);
                result = swift_unknownObjectRelease();
                *v5 = v4;
                return result;
              }

              v20 = &_swiftEmptyArrayStorage;
LABEL_47:
              swift_unknownObjectRelease();
              goto LABEL_48;
            }

            goto LABEL_56;
          }

LABEL_55:
          __break(1u);
LABEL_56:
          swift_unknownObjectRelease();
          goto LABEL_40;
        }

LABEL_36:
        if (result < a1)
        {
          __break(1u);
          return result;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result > a1)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1004A5510(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for RiverTodayCardBackgroundView()
{
  result = qword_100987408;
  if (!qword_100987408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004A5804()
{
  result = type metadata accessor for RiverViewStyling();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_1004A58D8(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10002849C(&qword_100973210);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B15F0;
  sub_100005744(0, &qword_10097FB80);
  *(v9 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v9 + 40) = NSNumber.init(floatLiteral:)(0.75);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setLocations:isa];

  [v8 setStartPoint:{a1, a2}];
  [v8 setEndPoint:{a3, a4}];
  sub_10002849C(&qword_1009701B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B1890;
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  type metadata accessor for CGColor(0);
  v16 = v15;
  *(v11 + 56) = v15;
  *(v11 + 32) = v14;
  v17 = [v12 clearColor];
  v18 = [v17 CGColor];

  *(v11 + 88) = v16;
  *(v11 + 64) = v18;
  v19 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setColors:v19];

  return v8;
}

char *sub_1004A5B04()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10002849C(&qword_100973210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B48F0;
  v2 = objc_opt_self();
  *(inited + 32) = [v2 blackColor];
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  *(inited + 40) = v4;
  v5 = [v2 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.0];

  *(inited + 48) = v6;
  v35 = _swiftEmptyArrayStorage;
  result = sub_100143FA4(0, 3, 0);
  v8 = _swiftEmptyArrayStorage;
  v9 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
      return result;
    }

    v10 = *(inited + 32);
  }

  v11 = v10;
  v12 = [v10 CGColor];
  type metadata accessor for CGColor(0);
  v14 = v13;
  v34 = v13;

  *&v33 = v12;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (*&v16 >= *&v15 >> 1)
  {
    sub_100143FA4((*&v15 > 1uLL), *&v16 + 1, 1);
    v8 = v35;
  }

  *(v8 + 2) = *&v16 + 1;
  sub_100056164(&v33, &v8[4 * *&v16 + 4]);
  if (v9)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v17 = *(inited + 40);
  }

  v18 = v17;
  v19 = [v17 CGColor];
  v34 = v14;

  *&v33 = v19;
  v35 = v8;
  v21 = *(v8 + 2);
  v20 = *(v8 + 3);
  if (v21 >= v20 >> 1)
  {
    sub_100143FA4((v20 > 1), v21 + 1, 1);
    v8 = v35;
  }

  *(v8 + 2) = v21 + 1;
  sub_100056164(&v33, &v8[4 * v21 + 4]);
  if (v9)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v22 = *(inited + 48);
  }

  v23 = v22;
  v24 = [v22 CGColor];
  v34 = v14;

  *&v33 = v24;
  v35 = v8;
  v26 = *(v8 + 2);
  v25 = *(v8 + 3);
  if (v26 >= v25 >> 1)
  {
    sub_100143FA4((v25 > 1), v26 + 1, 1);
    v8 = v35;
  }

  *(v8 + 2) = v26 + 1;
  sub_100056164(&v33, &v8[4 * v26 + 4]);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setColors:isa];

  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  sub_100005744(0, &qword_10097FB80);
  *(v28 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v28 + 40) = NSNumber.init(floatLiteral:)(0.4);
  *(v28 + 48) = NSNumber.init(floatLiteral:)(1.0);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setLocations:v29];

  [v0 setStartPoint:{0.0, 1.0}];
  [v0 setEndPoint:{1.0, 0.0}];
  v30 = v0;
  LODWORD(v31) = 1045220557;
  [v30 setOpacity:v31];
  [v30 setCompositingFilter:kCAFilterPlusD];

  return v30;
}

id sub_1004A5F80(unint64_t a1, double a2, double a3, double a4)
{
  v7 = a1;
  v64 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = &v71;
    v68 = v7;
    if (i)
    {
      v67 = (v7 & 0xC000000000000001);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v10 = *(v7 + 32);
      }

      v72[0] = v10;
      v70 = _swiftEmptyArrayStorage;
      if (!v10)
      {
        v63 = _swiftEmptyArrayStorage;
LABEL_12:
        sub_1004A6860(v9 + 32);
        v13 = 0;
        v70 = _swiftEmptyArrayStorage;
        v66 = v7 & 0xFFFFFFFFFFFFFF8;
        v65 = i;
        while (1)
        {
          if (v67)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *(v66 + 16))
            {
              goto LABEL_66;
            }

            v14 = *(v7 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            break;
          }

          sub_10002849C(&qword_10096FC98);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007B1890;
          sub_10002849C(&qword_100973210);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1007B15F0;
          *(v18 + 32) = [v15 CGColor];
          v19 = [v15 colorWithAlphaComponent:0.0];
          v20 = [v19 CGColor];

          *(v18 + 40) = v20;
          *(inited + 32) = v18;
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1007B15F0;
          *(v21 + 32) = [v15 CGColor];
          v22 = [v15 colorWithAlphaComponent:0.0];
          v23 = [v22 CGColor];

          v7 = v68;
          *(v21 + 40) = v23;
          *(inited + 40) = v21;

          sub_1003945DC(inited);
          ++v13;
          if (v16 == v65)
          {
            i = _swiftEmptyArrayStorage;
            v12 = v63;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v11 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v63 = v70;
        goto LABEL_12;
      }

LABEL_74:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_9;
    }

    v72[0] = 0;
    sub_1004A6860(v72);
    v12 = _swiftEmptyArrayStorage;
    i = _swiftEmptyArrayStorage;
LABEL_20:
    if (v12 >> 62)
    {
      v62 = v12;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v62;
    }

    else
    {
      v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v24 = v12;
      v70 = _swiftEmptyArrayStorage;
      sub_1001441C8(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        goto LABEL_73;
      }

      v67 = _swiftEmptyArrayStorage;
      v25 = 0;
      v26 = v24;
      v27 = v24 & 0xC000000000000001;
      v28 = v24;
      do
      {
        if (v27)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v29 = *(v26 + 8 * v25 + 32);
        }

        v30 = v29;
        sub_10002849C(&qword_100973210);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1007B15F0;
        *(v31 + 32) = [v30 CGColor];
        v32 = [v30 colorWithAlphaComponent:0.0];
        v33 = [v32 CGColor];

        *(v31 + 40) = v33;
        v35 = *&_swiftEmptyArrayStorage[2];
        v34 = *&_swiftEmptyArrayStorage[3];
        if (v35 >= v34 >> 1)
        {
          sub_1001441C8((v34 > 1), v35 + 1, 1);
        }

        ++v25;
        *&_swiftEmptyArrayStorage[2] = v35 + 1;
        *&_swiftEmptyArrayStorage[v35 + 4] = v31;
        v26 = v28;
      }

      while (v9 != v25);

      v7 = v68;
    }

    else
    {
    }

    sub_1003945DC(_swiftEmptyArrayStorage);
    v36 = v64 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a3 = a2 + a3;
    v37 = _swiftEmptyArrayStorage[2];
    if (v37 == 0.0)
    {
      break;
    }

    v69 = v36;
    v38 = sub_100033F44(0, 1, 1, _swiftEmptyArrayStorage);
    v39 = 0;
    do
    {
      if (v39)
      {
        v40 = a3 * (v39 >> 1) + a2;
      }

      else
      {
        v40 = a3 * (v39 >> 1);
      }

      v42 = *(v38 + 2);
      v41 = *(v38 + 3);
      v7 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v38 = sub_100033F44((v41 > 1), v42 + 1, 1, v38);
      }

      ++v39;
      *(v38 + 2) = v7;
      v38[v42 + 4] = v40;
    }

    while (*&v37 != v39);
LABEL_47:
    v70 = _swiftEmptyArrayStorage;
    sub_1001441A8(0, v7, 0);
    v43 = *(v38 + 2);
    if (v43)
    {
      a2 = v38[4];
      v45 = *&_swiftEmptyArrayStorage[2];
      v44 = *&_swiftEmptyArrayStorage[3];
      if (v45 >= v44 >> 1)
      {
        sub_1001441A8((v44 > 1), v45 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = v45 + 1;
      _swiftEmptyArrayStorage[v45 + 4] = a2;
      v46 = v7 - 1;
      if (v7 == 1)
      {
LABEL_51:

        v47 = v69;
        goto LABEL_52;
      }

      v51 = 0;
      v52 = v43 - 1;
      while (v52 != v51)
      {
        if ((v51 + 1) >= *(v38 + 2))
        {
          goto LABEL_68;
        }

        a2 = v38[v51 + 5];
        v70 = _swiftEmptyArrayStorage;
        v53 = *&_swiftEmptyArrayStorage[3];
        v7 = v45 + v51 + 2;
        if (v51 + 1 + v45 >= v53 >> 1)
        {
          sub_1001441A8((v53 > 1), v45 + v51 + 2, 1);
        }

        *&_swiftEmptyArrayStorage[2] = v7;
        _swiftEmptyArrayStorage[v45 + 5 + v51++] = a2 + a4;
        if (v46 == v51)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v7 = *&_swiftEmptyArrayStorage[2];
  if (v7)
  {
    v69 = v36;
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  v61 = v36;

  v47 = v61;
LABEL_52:
  v48 = a3 * v47 + a4;
  v49 = _swiftEmptyArrayStorage[2];
  if (v49 != 0.0)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v50 = 4;
    do
    {
      [objc_allocWithZone(NSNumber) initWithDouble:_swiftEmptyArrayStorage[v50] / v48];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v50;
      --*&v49;
    }

    while (v49 != 0.0);
  }

  v54 = String._bridgeToObjectiveC()();
  v55 = [objc_opt_self() animationWithKeyPath:v54];

  sub_1002A5064(_swiftEmptyArrayStorage);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 setValues:isa];

  sub_100005744(0, &qword_10097FB80);
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v55 setKeyTimes:v57];

  v58 = v55;
  [v58 setDuration:v48];
  LODWORD(v59) = 2139095039;
  [v58 setRepeatCount:v59];
  [v58 setCalculationMode:kCAAnimationLinear];
  [v58 setRemovedOnCompletion:0];

  return v58;
}

uint64_t sub_1004A6860(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100973268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004A68C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  sub_10002849C(&qword_10096FD40);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A69E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100005744(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A6B10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_1004A69E0(v7, v6, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

char *sub_1004A6C04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100005744(0, &qword_100983870);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1004A6D30(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_100399C40(result);

  return sub_1004A6C04(v6, v5, 1, v3);
}

unint64_t sub_1004A6E1C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_10002849C(&unk_10097A950);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A6F34(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1004A700C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ArtworkView();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A710C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_100399C40(result);

  return sub_1004A700C(v4, v2, 0);
}

void sub_1004A71E4()
{
  *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating) = 0;
  v1 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1004A72D0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1004A7394()
{
  result = qword_100987418;
  if (!qword_100987418)
  {
    type metadata accessor for CreateCalendarEventAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987418);
  }

  return result;
}

uint64_t sub_1004A73EC(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_1009764A0);
  v4 = Promise.__allocating_init()();
  type metadata accessor for EventStoreManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v5 = v10[0];
  sub_1005AA400();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v6[5] = v5;
  v7 = sub_1000076C0();
  swift_retain_n();

  v8 = v5;
  v10[3] = v7;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = static OS_dispatch_queue.main.getter();
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v10);
  return v4;
}

uint64_t sub_1004A7554(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ActionOutcome();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v10 = v7;
    v11 = sub_1005AA56C();
    if (!v11)
    {
      (*(v6 + 104))(v9, enum case for ActionOutcome.unsupported(_:), v10);
      Promise.resolve(_:)();
      return (*(v6 + 8))(v9, v10);
    }

    sub_1005D01FC(v11, 1, a3);
  }

  else
  {
    result = CreateCalendarEventAction.notAuthorizedAction.getter();
    if (!result)
    {
      return result;
    }

    sub_1005D0214(result, 1, a3);
  }

  Promise.pipe(to:)();
}

uint64_t sub_1004A76F0()
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_1000056E0(v4);
  (*(*(v3 - 8) + 16))(v1);
  static LogMessage.sensitive(_:)();
  sub_10003D444(v4);
  Logger.error(_:)();

  return Promise.reject(_:)();
}

void sub_1004A799C()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore30LocalizationTestViewController_objectGraph];
  v3 = qword_10096E520;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100987420;

  sub_1004AA77C(v2, v41 + 8);
  *&v41[0] = v2;
  *(&v42 + 1) = v4;
  v39[7] = v41[2];
  v39[8] = v41[3];
  v39[9] = v42;
  v39[5] = v41[0];
  v39[6] = v41[1];
  v5 = objc_allocWithZone(sub_10002849C(&qword_100987458));
  sub_1004AAB00(v41, v39);
  v6 = UIHostingController.init(rootView:)();
  [v1 addChildViewController:v6];
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v6 view];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v10 addSubview:v11];

  sub_10002849C(&qword_100973210);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007BB060;
  v13 = [v6 view];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [v13 topAnchor];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v12 + 32) = v18;
  v19 = [v6 view];

  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = [v19 leadingAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v12 + 40) = v24;
  v25 = [v6 view];

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = [v25 bottomAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v12 + 48) = v30;
  v31 = [v6 view];

  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = [v31 trailingAnchor];

  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor:v36];
    *(v12 + 56) = v37;
    sub_100005744(0, &qword_1009766E0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v35 activateConstraints:isa];

    [v6 didMoveToParentViewController:v1];
    sub_1004AAB38(v41);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1004A7F6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v64 = sub_10002849C(&qword_1009874A8);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v55 - v3;
  v76 = sub_10002849C(&qword_1009874B0);
  v66 = *(v76 - 8);
  __chkstk_darwin(v76);
  v82 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v55 - v6;
  v61 = type metadata accessor for Prominence();
  v7 = *(v61 - 1);
  __chkstk_darwin(v61);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10002849C(&qword_1009874B8);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v55 - v10;
  v74 = sub_10002849C(&qword_1009874C0);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v55 - v14;
  v15 = *(a1 + 24);
  v87 = *(a1 + 8);
  v88 = v15;
  *v89 = *(a1 + 40);
  *&v89[9] = *(a1 + 49);
  sub_1004A8A04();
  static Font.footnote.getter();
  v72 = Text.font(_:)();
  v71 = v16;
  v60 = v17;
  v81 = v18;

  if (v88)
  {
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    *&v84 = 0x100000000000002ELL;
    *(&v84 + 1) = 0x80000001008165B0;
    String.append(_:)(v87);
  }

  static Font.footnote.getter();
  v79 = Text.font(_:)();
  v78 = v19;
  v57 = v20;
  v80 = v21;

  static Font.footnote.getter();
  v68 = Text.font(_:)();
  v67 = v22;
  v56 = v23;
  v69 = v24;

  *&v84 = 0xD000000000000017;
  *(&v84 + 1) = 0x8000000100816550;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v25);
  *(&v55 - 2) = a1;
  sub_10002849C(&qword_1009874C8);
  sub_1004AB200();
  Section<>.init(header:content:)();
  v26 = enum case for Prominence.increased(_:);
  v27 = *(v7 + 104);
  v28 = v9;
  v29 = v9;
  v30 = v61;
  v27(v29, enum case for Prominence.increased(_:), v61);
  sub_1004AB398(&qword_1009874E0, &qword_1009874B8, &unk_1007D0280, sub_1004AB200);
  v31 = v58;
  View.headerProminence(_:)();
  v55 = *(v7 + 8);
  v55(v28, v30);
  v32 = (*(v59 + 8))(v11, v31);
  v84 = xmmword_1007D0080;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v32);
  *(&v55 - 2) = a1;
  sub_10002849C(&qword_1009874E8);
  sub_1004AB2E0();
  v33 = v62;
  Section<>.init(header:content:)();
  v27(v28, v26, v30);
  sub_1004AB398(&qword_100987508, &qword_1009874A8, &unk_1007D0270, sub_1004AB2E0);
  v34 = v75;
  v35 = v64;
  View.headerProminence(_:)();
  v55(v28, v30);
  (*(v63 + 8))(v33, v35);
  v36 = v60 & 1;
  LOBYTE(v84) = v60 & 1;
  v83 = v57 & 1;
  LOBYTE(v28) = v57 & 1;
  LODWORD(v63) = v57 & 1;
  v62 = *(v73 + 16);
  v37 = v70;
  v38 = v74;
  (v62)(v70, v77, v74);
  v39 = v66;
  v61 = *(v66 + 16);
  (v61)(v82, v34, v76);
  v40 = v65;
  v41 = v72;
  v42 = v71;
  *v65 = v72;
  v40[1] = v42;
  *(v40 + 16) = v36;
  v43 = v79;
  v40[3] = v81;
  v40[4] = v43;
  v40[5] = v78;
  *(v40 + 48) = v28;
  v44 = v68;
  v40[7] = v80;
  v40[8] = v44;
  v40[9] = v67;
  LODWORD(v64) = v56 & 1;
  *(v40 + 80) = v56 & 1;
  v40[11] = v69;
  v45 = sub_10002849C(&qword_100987510);
  (v62)(v40 + *(v45 + 80), v37, v38);
  v46 = v40 + *(v45 + 96);
  v47 = v76;
  (v61)(v46, v82, v76);
  sub_100170840(v41, v42, v36);

  sub_100170840(v79, v78, v63);

  v48 = v68;
  v49 = v67;
  LOBYTE(v45) = v64;
  sub_100170840(v68, v67, v64);
  v50 = *(v39 + 8);

  v51 = v47;
  v50(v75, v47);
  v52 = *(v73 + 8);
  v53 = v74;
  v52(v77, v74);
  v50(v82, v51);
  v52(v70, v53);
  sub_100170894(v48, v49, v45);

  sub_100170894(v79, v78, v83);

  sub_100170894(v72, v71, v84);
}

uint64_t sub_1004A8A04()
{
  if (*(v0 + 18))
  {
    _StringGuts.grow(_:)(20);

    v2 = 0x1000000000000012;
  }

  else
  {
    _StringGuts.grow(_:)(41);

    v2 = 0x1000000000000027;
  }

  String.append(_:)(*(v0 + 24));
  return v2;
}

uint64_t sub_1004A8AC0()
{

  sub_10002849C(&qword_100987548);
  sub_100097060(&qword_100987550, &qword_100987548);
  sub_1004AB284();
  sub_1004AB47C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1004A8B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&qword_100987518);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = type metadata accessor for IntentViewConfiguration();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&qword_100987500);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  if (*(a1 + 64))
  {
    v20[6] = 0xD000000000000016;
    v20[7] = 0x80000001007D02A0;
    v21 = 1;
    v20[3] = static Transaction._loading.getter();
    IntentViewConfiguration.init()();
    v20[2] = sub_10002849C(&qword_1009874C8);
    v20[4] = v4;
    v20[5] = a2;
    v20[1] = sub_10002849C(&qword_100987520);
    sub_10002849C(&qword_100987528);
    sub_1004AB428();
    sub_1004AB200();
    sub_100097060(&qword_100987538, &qword_100987520);
    sub_100097060(&qword_100987540, &qword_100987528);
    IntentView.init(what:transaction:configuration:working:failed:content:)();
    (*(v9 + 16))(v6, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_100097060(&qword_1009874F8, &qword_100987500);
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {

    static Font.footnote.getter();
    v13 = Text.font(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    *v6 = v13;
    *(v6 + 1) = v15;
    v6[16] = v17 & 1;
    *(v6 + 3) = v19;
    swift_storeEnumTagMultiPayload();
    sub_100097060(&qword_1009874F8, &qword_100987500);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1004A8FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return ContentUnavailableView.init<>(error:retry:)(a1, a2, a3);
}

uint64_t sub_1004A9044()
{

  sub_10002849C(&qword_100987548);
  sub_100097060(&qword_100987550, &qword_100987548);
  sub_1004AB284();
  sub_1004AB47C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1004A911C()
{
  v1 = sub_10002849C(&qword_100987480);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-v3];
  v5 = v0[3];
  v13[2] = v0[2];
  v13[3] = v5;
  v13[4] = v0[4];
  v6 = v0[1];
  v13[0] = *v0;
  v13[1] = v6;
  v9 = v13;
  sub_10002849C(&qword_100987488);
  sub_100097060(&qword_100987490, &qword_100987488);
  List<>.init(content:)();
  v11 = type metadata accessor for JSIntentDispatcher();
  v12 = sub_1004AB1B0(&qword_100987498, &type metadata accessor for JSIntentDispatcher);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_100097060(&qword_1009874A0, &qword_100987480);
  View.intentDispatcher(_:with:)();
  (*(v2 + 8))(v4, v1);
  return sub_100007000(v10);
}

uint64_t sub_1004A934C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[6] != a1[4] || a1[7] != a1[5])
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  static Font.title3.getter();
  v5 = Text.font(_:)();
  v7 = v6;
  v25 = v8;
  v10 = v9;

  v11 = static HorizontalAlignment.leading.getter();
  v26[0] = 0;
  sub_1004A9614(a1, &v39);
  v32 = *&v40[48];
  v33 = *&v40[64];
  v34 = *&v40[80];
  v35 = *&v40[96];
  v28 = v39;
  v29 = *v40;
  v30 = *&v40[16];
  v31 = *&v40[32];
  v36[0] = v39;
  v36[1] = *v40;
  v36[2] = *&v40[16];
  v36[3] = *&v40[32];
  v36[4] = *&v40[48];
  v36[5] = *&v40[64];
  v36[6] = *&v40[80];
  v36[7] = *&v40[96];
  sub_100031660(&v28, &v37, &qword_100987578);
  sub_10002B894(v36, &qword_100987578);
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[119] = v35;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v37 = v11;
  *(&v37 + 1) = 0x4020000000000000;
  v38[0] = 0;
  *&v38[65] = *&v27[64];
  v13 = *&v27[48];
  v12 = *&v27[64];
  *&v38[49] = *&v27[48];
  *&v38[33] = *&v27[32];
  v15 = *&v27[16];
  v14 = *&v27[32];
  *&v38[17] = *&v27[16];
  *&v38[128] = *(&v35 + 1);
  *&v38[113] = *&v27[112];
  v17 = *&v27[96];
  v16 = *&v27[112];
  *&v38[97] = *&v27[96];
  v18 = *&v27[80];
  *&v38[81] = *&v27[80];
  v19 = *v27;
  *&v38[1] = *v27;
  v20 = *&v38[96];
  *(a2 + 128) = *&v38[80];
  *(a2 + 144) = v20;
  *(a2 + 160) = *&v38[112];
  v21 = *&v38[32];
  *(a2 + 64) = *&v38[16];
  *(a2 + 80) = v21;
  v22 = *&v38[64];
  *(a2 + 96) = *&v38[48];
  *(a2 + 112) = v22;
  v23 = *v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v23;
  *&v40[81] = v18;
  *&v40[97] = v17;
  *v41 = v16;
  *&v40[17] = v15;
  *&v40[33] = v14;
  *&v40[49] = v13;
  *&v40[65] = v12;
  v26[152] = v25 & 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v10;
  *(a2 + 176) = *&v38[128];
  *&v39 = v11;
  *(&v39 + 1) = 0x4020000000000000;
  v40[0] = 0;
  *&v41[15] = *&v27[127];
  *&v40[1] = v19;
  sub_100170840(v5, v7, v25 & 1);

  sub_100031660(&v37, v26, &qword_100987580);
  sub_10002B894(&v39, &qword_100987580);
  sub_100170894(v5, v7, v25 & 1);
}

uint64_t sub_1004A9614@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v38 = a1[8];
  v41 = a1[9];

  static Font.title3.getter();
  v40 = Text.font(_:)();
  v44 = v6;
  v45 = v7;
  v43 = v8;

  v9 = v4 == v2 && v5 == v3;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v21._countAndFlagsBits = v2;
    v21._object = v3;
    String.append(_:)(v21);
    static Font.footnote.getter();
    v22 = Text.font(_:)();
    v24 = v23;
    v37 = v25;
    v27 = v26;

    v28._countAndFlagsBits = v4;
    v28._object = v5;
    String.append(_:)(v28);
    static Font.footnote.getter();
    v29 = Text.font(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    LOBYTE(v55[0]) = v37 & 1;
    sub_100170840(v22, v24, v37 & 1);

    sub_100170840(v29, v31, v33 & 1);

    sub_100170894(v29, v31, v33 & 1);

    sub_100170894(v22, v24, v37 & 1);

    sub_100170840(v22, v24, v37 & 1);

    sub_100170840(v29, v31, v33 & 1);
    *&v56 = v22;
    *(&v56 + 1) = v24;
    LOBYTE(v57) = v37 & 1;
    *(&v57 + 1) = v27;
    *&v58 = v29;
    *(&v58 + 1) = v31;
    LOBYTE(v59) = v33 & 1;
    *(&v59 + 1) = v35;

    v10 = v41;
    if (v41)
    {
      goto LABEL_7;
    }

LABEL_9:
    v20 = 0;
    v42 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = v41;
  if (!v41)
  {
    goto LABEL_9;
  }

LABEL_7:
  *&v55[0] = 0x203A65746F4ELL;
  *(&v55[0] + 1) = 0xE600000000000000;
  v11 = v38;
  String.append(_:)(*(&v10 - 1));
  static Font.caption2.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v16 & 1;
  v20 = v12;
  v42 = v14;
  sub_100170840(v12, v14, v16 & 1);

LABEL_10:
  v50 = v56;
  v51 = v57;
  v52 = v58;
  v54[0] = v56;
  v54[1] = v57;
  v53 = v59;
  v54[2] = v58;
  v54[3] = v59;
  v48 = v58;
  v49 = v59;
  v46 = v56;
  v47 = v57;
  sub_100170840(v40, v44, v43 & 1);

  sub_100170840(v40, v44, v43 & 1);

  sub_100031660(v54, v55, &qword_100987588);
  sub_1001707FC(v20, v42, v19, v18);
  sub_10002B894(&v56, &qword_100987588);
  sub_100170850(v20, v42, v19, v18);
  sub_100170894(v40, v44, v43 & 1);

  *a2 = v40;
  *(a2 + 8) = v44;
  *(a2 + 16) = v43 & 1;
  *(a2 + 24) = v45;
  *(a2 + 32) = v46;
  *(a2 + 48) = v47;
  *(a2 + 64) = v48;
  *(a2 + 80) = v49;
  *(a2 + 96) = v20;
  *(a2 + 104) = v42;
  *(a2 + 112) = v19;
  *(a2 + 120) = v18;
  sub_100170850(v20, v42, v19, v18);
  v55[0] = v50;
  v55[1] = v51;
  v55[2] = v52;
  v55[3] = v53;
  sub_10002B894(v55, &qword_100987588);
  sub_100170894(v40, v44, v43 & 1);
}

double sub_1004A9AC0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v28[1] = v1[1];
  v4 = v1[3];
  v28[2] = v1[2];
  v28[3] = v4;
  v28[4] = v1[4];
  v28[0] = v3;
  v5 = static VerticalAlignment.top.getter();
  v27 = 0;
  sub_1004A934C(v28, &v14);
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v41[8] = v22;
  v41[9] = v23;
  v41[10] = v24;
  v41[4] = v18;
  v41[5] = v19;
  v41[6] = v20;
  v41[7] = v21;
  v41[0] = v14;
  v41[1] = v15;
  v40 = v25;
  v42 = v25;
  v41[2] = v16;
  v41[3] = v17;
  sub_100031660(&v29, v13, &qword_100987570);
  sub_10002B894(v41, &qword_100987570);
  *(&v26[8] + 7) = v37;
  *(&v26[9] + 7) = v38;
  *(&v26[10] + 7) = v39;
  *(&v26[11] + 7) = v40;
  *(&v26[4] + 7) = v33;
  *(&v26[5] + 7) = v34;
  *(&v26[6] + 7) = v35;
  *(&v26[7] + 7) = v36;
  *(v26 + 7) = v29;
  *(&v26[1] + 7) = v30;
  *(&v26[2] + 7) = v31;
  *(&v26[3] + 7) = v32;
  v6 = v26[9];
  *(a1 + 145) = v26[8];
  *(a1 + 161) = v6;
  *(a1 + 177) = v26[10];
  *(a1 + 192) = *(&v26[10] + 15);
  v7 = v26[5];
  *(a1 + 81) = v26[4];
  *(a1 + 97) = v7;
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  v9 = v26[1];
  *(a1 + 17) = v26[0];
  *(a1 + 33) = v9;
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  v12 = v27;
  *a1 = v5;
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

uint64_t sub_1004A9CD0()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  v2 = v1;
  if (!v1)
  {
    v3 = [v0 ams_fetchLocaliTunesAccount];
    v11 = 0;
    v4 = [v3 resultWithError:&v11];

    if (!v4)
    {
      v9 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v2 = 0;
      goto LABEL_7;
    }

    v5 = v11;
    v2 = v4;
    v1 = 0;
  }

  v6 = v1;
  v7 = [v2 ams_storefront];

  if (!v7)
  {
LABEL_7:

    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

__n128 sub_1004A9E58@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1004AACF4(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v7[4];
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_1004A9EA8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1004A9EB4()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100987470);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007D0090;
  v73 = 0x8000000100816090;
  v5._countAndFlagsBits = 0xD000000000000016;
  v5._object = 0x80000001008160C0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = localizedString(_:comment:)(v5, v6);
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v3, v0);
  v75 = v1 + 8;
  *(v4 + 32) = v8;
  *(v4 + 40) = v10;
  v12 = v73;
  *(v4 + 48) = 0xD000000000000025;
  *(v4 + 56) = v12;
  *(v4 + 64) = 1852141647;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 80) = v7;
  v73 = 0x80000001008160E0;
  *(v4 + 96) = 0u;
  v13._countAndFlagsBits = 0x525F5245544F4F46;
  v13._object = 0xED00004D45454445;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = localizedString(_:comment:)(v13, v14);
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  v11(v3, v0);
  *(v4 + 112) = v16;
  *(v4 + 120) = v18;
  v19 = v73;
  *(v4 + 128) = 0xD000000000000025;
  *(v4 + 136) = v19;
  *(v4 + 144) = 0x6D6565646552;
  *(v4 + 152) = 0xE600000000000000;
  *(v4 + 160) = v15;
  v73 = 0x8000000100816110;
  *(v4 + 176) = 0u;
  v20._object = 0x80000001007FBBD0;
  v20._countAndFlagsBits = 0xD000000000000013;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = localizedStringWithCount(_:count:comment:)(v20, 2, v21);
  countAndFlagsBits = v22._countAndFlagsBits;
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v74 = v0;
  v11(v3, v0);
  *(v4 + 192) = v23;
  *(v4 + 200) = v25;
  v26 = v73;
  *(v4 + 208) = 0xD000000000000041;
  *(v4 + 216) = v26;
  *(v4 + 224) = 0x676E697461522032;
  *(v4 + 232) = 0xE900000000000073;
  *(v4 + 240) = countAndFlagsBits;
  *(v4 + 248) = v22._object;
  v73 = 0x8000000100816160;
  *(v4 + 256) = 0u;
  v27._object = 0x80000001007FBBD0;
  v27._countAndFlagsBits = 0xD000000000000013;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v29 = localizedStringWithCount(_:count:comment:)(v27, 1, v28);
  UUID.init()();
  v30 = UUID.uuidString.getter();
  v32 = v31;
  v11(v3, v0);
  *(v4 + 272) = v30;
  *(v4 + 280) = v32;
  v33 = v73;
  *(v4 + 288) = 0xD000000000000041;
  *(v4 + 296) = v33;
  *(v4 + 304) = 0x676E697461522031;
  *(v4 + 312) = 0xE800000000000000;
  *(v4 + 320) = v29;
  v73 = 0x80000001008161F0;
  v34._countAndFlagsBits = 0xD000000000000028;
  *(v4 + 336) = 0u;
  v34._object = 0x8000000100816210;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v36 = localizedStringWithCount(_:count:comment:)(v34, 3, v35);
  UUID.init()();
  v37 = UUID.uuidString.getter();
  v39 = v38;
  v40 = v74;
  v72 = v11;
  v11(v3, v74);
  *(v4 + 352) = v37;
  *(v4 + 360) = v39;
  *(v4 + 368) = 0xD000000000000036;
  *(v4 + 376) = 0x80000001008161B0;
  v41 = v73;
  *(v4 + 384) = 0xD000000000000017;
  *(v4 + 392) = v41;
  *(v4 + 400) = v36;
  v73 = 0x8000000100816240;
  countAndFlagsBits = 0x8000000100816290;
  *(v4 + 416) = 0u;
  v42._object = 0x80000001008162B0;
  v42._countAndFlagsBits = 0xD00000000000002FLL;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v44 = localizedStringWithCount(_:count:comment:)(v42, 1, v43);
  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v11(v3, v40);
  *(v4 + 432) = v45;
  *(v4 + 440) = v47;
  v48 = v73;
  *(v4 + 448) = 0xD000000000000045;
  *(v4 + 456) = v48;
  v49 = countAndFlagsBits;
  *(v4 + 464) = 0xD000000000000014;
  *(v4 + 472) = v49;
  *(v4 + 480) = v44;
  v73 = 0x8000000100816330;
  *(v4 + 496) = 0u;
  v50._object = 0x80000001008162B0;
  v50._countAndFlagsBits = 0xD00000000000002FLL;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v52 = localizedStringWithCount(_:count:comment:)(v50, 2, v51);
  countAndFlagsBits = v52._countAndFlagsBits;
  UUID.init()();
  v53 = UUID.uuidString.getter();
  v55 = v54;
  v56 = v72;
  v72(v3, v40);
  *(v4 + 512) = v53;
  *(v4 + 520) = v55;
  *(v4 + 528) = 0xD000000000000045;
  *(v4 + 536) = 0x80000001008162E0;
  *(v4 + 544) = 0xD000000000000015;
  *(v4 + 552) = 0x8000000100816330;
  *(v4 + 560) = countAndFlagsBits;
  *(v4 + 568) = v52._object;
  countAndFlagsBits = 0x8000000100816350;
  v57._countAndFlagsBits = 0xD00000000000002CLL;
  *(v4 + 576) = 0u;
  v57._object = 0x80000001008163B0;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v59 = localizedStringWithCount(_:count:comment:)(v57, 2, v58);
  UUID.init()();
  v60 = UUID.uuidString.getter();
  v62 = v61;
  v63 = v74;
  v56(v3, v74);
  *(v4 + 592) = v60;
  *(v4 + 600) = v62;
  *(v4 + 608) = 0xD000000000000050;
  *(v4 + 616) = countAndFlagsBits;
  *(v4 + 624) = 0xD000000000000015;
  *(v4 + 632) = v73;
  *(v4 + 640) = v59;
  v64._countAndFlagsBits = 0xD000000000000011;
  *(v4 + 656) = 0u;
  v64._object = 0x8000000100816410;
  v65 = localizedStringForAdsLanguage(_:)(v64);
  UUID.init()();
  v66 = UUID.uuidString.getter();
  v68 = v67;
  result = (v56)(v3, v63);
  *(v4 + 672) = v66;
  *(v4 + 680) = v68;
  *(v4 + 688) = 0xD000000000000023;
  *(v4 + 696) = 0x80000001008163E0;
  *(v4 + 704) = 0xB9B4E88D85E5;
  *(v4 + 712) = 0xA600000000000000;
  *(v4 + 720) = v65;
  *(v4 + 736) = 0xD00000000000002FLL;
  *(v4 + 744) = 0x8000000100816430;
  qword_100987420 = v4;
  return result;
}

void sub_1004AA5B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 valueWithNewObjectInContext:a1];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 valueWithObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() inContext:a1];
    swift_unknownObjectRelease();
    if (v7)
    {
      JSValue.subscript.setter();
      a2[3] = sub_100005744(0, &qword_1009875A0);
      a2[4] = &protocol witness table for JSValue;

      *a2 = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004AA6E0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1004AA750@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1004AB7E0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1004AA77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&qword_100979740);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_1004A9CD0();
  v32 = v9;
  v33 = v8;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;

  _StringGuts.grow(_:)(64);
  v10._object = 0x8000000100816030;
  v10._countAndFlagsBits = 0x1000000000000032;
  String.append(_:)(v10);
  v11._object = 0x8000000100816070;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x206562206F742022;
  v12._object = 0xEC00000065757274;
  String.append(_:)(v12);
  object = v37._object;
  countAndFlagsBits = v37._countAndFlagsBits;
  PreferenceKey.init(_:)();
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  Preferences.subscript.getter();

  (*(v5 + 8))(v7, v4);
  v13 = v37._countAndFlagsBits;
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  v34 = a1;
  inject<A, B>(_:from:)();
  v29 = v37._countAndFlagsBits;
  v14 = ASKBagContract.adsOverrideLanguage.getter();
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

  if (v16 == 0x2D736E61482D687ALL && v17 == 0xEA00000000004E43)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v27 = v18 & 1;
  v28 = v13 & 1;
  v19 = [objc_opt_self() mainBundle];
  v20 = NSBundle.preferredLocalization(fromLanguageCodes:)(&off_1008B00F8);

  v37 = v20;
  v35 = 26746;
  v36 = 0xE200000000000000;
  sub_1004AAB68();
  sub_1004AABBC();
  LOBYTE(v19) = BidirectionalCollection<>.starts<A>(with:)();

  v21 = v19 & 1;
  v23 = v32;
  v22 = v33;
  v37._countAndFlagsBits = v33;
  v37._object = v32;
  v35 = 0x312D313434333431;
  v36 = 0xE800000000000000;
  LOBYTE(v19) = BidirectionalCollection<>.starts<A>(with:)();

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v27;
  *(a2 + 17) = v21;
  *(a2 + 18) = v19 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  v25 = object;
  *(a2 + 40) = countAndFlagsBits;
  *(a2 + 48) = v25;
  *(a2 + 56) = v28;
  return result;
}

unint64_t sub_1004AAB68()
{
  result = qword_100987460;
  if (!qword_100987460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987460);
  }

  return result;
}

unint64_t sub_1004AABBC()
{
  result = qword_100987468;
  if (!qword_100987468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987468);
  }

  return result;
}

uint64_t sub_1004AAC20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1004AAC68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1004AACF4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v59 = a2;
  v4 = type metadata accessor for UUID();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONObject();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = 0xE400000000000000;
  JSONObject.subscript.getter();
  v53 = JSONObject.string.getter();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v17, v6);
  if (v20)
  {
    v58 = v20;
    v22 = 0x6465746365707865;
    v18 = 0xE800000000000000;
    JSONObject.subscript.getter();
    v51 = JSONObject.string.getter();
    v24 = v23;
    v21(v14, v6);
    v25 = a1;
    if (v24)
    {
      v50 = v24;
      v22 = 0x6C6175746361;
      JSONObject.subscript.getter();
      v26 = JSONObject.string.getter();
      v28 = v27;
      v21(v11, v6);
      if (v28)
      {
        v48 = v26;
        v49 = v28;
        v29 = v52;
        JSONObject.subscript.getter();
        v30 = v21;
        v31 = JSONObject.string.getter();
        v33 = v32;
        v30(v29, v6);
        v34 = v54;
        UUID.init()();
        v35 = UUID.uuidString.getter();
        v37 = v36;
        v38 = type metadata accessor for JSONContext();
        (*(*(v38 - 8) + 8))(v59, v38);
        v30(v25, v6);
        result = (*(v55 + 8))(v34, v56);
        v40 = v57;
        *v57 = v35;
        v40[1] = v37;
        v41 = v58;
        v40[2] = v53;
        v40[3] = v41;
        v42 = v50;
        v40[4] = v51;
        v40[5] = v42;
        v43 = v49;
        v40[6] = v48;
        v40[7] = v43;
        v40[8] = v31;
        v40[9] = v33;
        return result;
      }

      v44 = v21;

      v18 = 0xE600000000000000;
    }

    else
    {
      v44 = v21;
    }
  }

  else
  {
    v44 = v21;
    v25 = a1;
    v22 = 1701667182;
  }

  v45 = type metadata accessor for JSONError();
  sub_1004AB1B0(&qword_100987478, &type metadata accessor for JSONError);
  swift_allocError();
  *v46 = v22;
  v46[1] = v18;
  v46[2] = &type metadata for LocalizationTestCase;
  (*(*(v45 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v45);
  swift_willThrow();
  v47 = type metadata accessor for JSONContext();
  (*(*(v47 - 8) + 8))(v59, v47);
  return v44(v25, v6);
}

uint64_t sub_1004AB1B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004AB200()
{
  result = qword_1009874D0;
  if (!qword_1009874D0)
  {
    sub_10002D1A8(&qword_1009874C8);
    sub_1004AB284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009874D0);
  }

  return result;
}

unint64_t sub_1004AB284()
{
  result = qword_1009874D8;
  if (!qword_1009874D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009874D8);
  }

  return result;
}

unint64_t sub_1004AB2E0()
{
  result = qword_1009874F0;
  if (!qword_1009874F0)
  {
    sub_10002D1A8(&qword_1009874E8);
    sub_100097060(&qword_1009874F8, &qword_100987500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009874F0);
  }

  return result;
}

uint64_t sub_1004AB398(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004AB428()
{
  result = qword_100987530;
  if (!qword_100987530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987530);
  }

  return result;
}

unint64_t sub_1004AB47C()
{
  result = qword_100987558;
  if (!qword_100987558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987558);
  }

  return result;
}

uint64_t sub_1004AB508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1004AB550(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1004AB5A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1004AB5E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_1004AB64C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1004AB668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1004AB6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004AB714()
{
  result = qword_100987560;
  if (!qword_100987560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987560);
  }

  return result;
}

unint64_t sub_1004AB770()
{
  result = qword_100987568;
  if (!qword_100987568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987568);
  }

  return result;
}

uint64_t sub_1004AB7E0(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = type metadata accessor for JSONContext();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100987590);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for JSONObject();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JSONArray();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v33 = a1;
  JSONObject.subscript.getter();
  JSONObject.array.getter();
  v18 = *(v8 + 8);
  v30 = v7;
  v18(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_10002B894(v6, &qword_100987590);
    v19 = type metadata accessor for JSONError();
    sub_1004AB1B0(&qword_100987478, &type metadata accessor for JSONError);
    swift_allocError();
    *v20 = 0x6573614374736574;
    v20[1] = 0xE900000000000073;
    v20[2] = &type metadata for LocalizationTestResponse;
    (*(*(v19 - 8) + 104))(v20, enum case for JSONError.missingProperty(_:), v19);
    swift_willThrow();
    (*(v29 + 8))(v32, v31);
    v18(v33, v30);
  }

  else
  {
    (*(v12 + 32))(v17, v6, v11);
    v21 = *(v12 + 16);
    v27 = v18;
    v21(v14, v17, v11);
    v22 = v29;
    v24 = v31;
    v23 = v32;
    (*(v29 + 16))(v28, v32, v31);
    sub_1004ABC78();
    v19 = Array<A>.init(tryDeserializing:using:)();
    (*(v22 + 8))(v23, v24);
    v27(v33, v30);
    (*(v12 + 8))(v17, v11);
  }

  return v19;
}

unint64_t sub_1004ABC78()
{
  result = qword_100987598;
  if (!qword_100987598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987598);
  }

  return result;
}

void sub_1004ABCF0()
{
  sub_1004ACDC0();
  v1 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView];
  v2 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_style;
  [v1 setHidden:v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style] != 0];
  v3 = [v1 layer];
  v4 = v3;
  if (v0[v2])
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 17.0;
  }

  [v3 setCornerRadius:v5];

  v6 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView];
  v7 = [v6 layer];
  v8 = v7;
  if (v0[v2])
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 17.0;
  }

  [v7 setCornerRadius:v9];

  v10 = v0[v2];
  v11 = [v0 traitCollection];
  v12 = sub_1004ABEBC(v11, v10);

  [v6 setBackgroundColor:v12];
  v13 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel];
  LOBYTE(v12) = v0[v2];
  v14 = [v0 traitCollection];
  v15 = sub_1004ABFD0(v14, v12);

  [v13 setTextColor:v15];
  LOBYTE(v13) = v0[v2];
  v16 = [v0 traitCollection];
  v17 = sub_1004ABFD0(v16, v13);

  sub_1004AD1B4(v17);
}

id sub_1004ABEBC(void *a1, char a2)
{
  if (!a2)
  {
    v2 = [objc_opt_self() systemBackgroundColor];
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_100005744(0, &qword_100970180);
    v2 = static UIColor.primaryText.getter();
LABEL_5:
    v3 = v2;
    v4 = [v2 colorWithAlphaComponent:0.4];
    goto LABEL_6;
  }

  v7 = [a1 userInterfaceStyle];
  v8 = objc_opt_self();
  if (v7 == 2)
  {
    v3 = [v8 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.13];
  }

  else
  {
    v3 = [v8 systemBlueColor];
    v4 = [v3 colorWithAlphaComponent:0.1];
  }

LABEL_6:
  v5 = v4;

  return v5;
}

id sub_1004ABFD0(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = objc_opt_self();
      v3 = &selRef_whiteColor;
      goto LABEL_8;
    }

    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_systemBlueColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_blackColor;
  }

  if (v4 == 2)
  {
    v3 = &selRef_whiteColor;
  }

LABEL_8:
  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_1004AC08C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x54646E416E6F6369;
  v4 = 0xEC000000656C7469;
  v5 = 0x80000001007FA460;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001007FA460;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x796C6E4F6E6F6369;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x54646E416E6F6369;
  if (*a2 == 1)
  {
    v5 = 0xEC000000656C7469;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x796C6E4F6E6F6369;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1004AC198()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004AC248()
{
  String.hash(into:)();
}

Swift::Int sub_1004AC2E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004AC390@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004ADF50(*a1);
  *a2 = result;
  return result;
}

void sub_1004AC3C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC000000656C7469;
  v5 = 0x54646E416E6F6369;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001007FA460;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x796C6E4F6E6F6369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1004AC43C()
{
  result = [objc_opt_self() effectWithBlurRadius:30.0];
  qword_1009875D0 = result;
  return result;
}

uint64_t sub_1004AC4AC(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E3C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D1AC0);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = type metadata accessor for StaticDimension();
  *a3 = &protocol witness table for StaticDimension;
  sub_1000056E0(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v16);
  (*(v8 + 16))(v13, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004AC6C8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D1748);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

char *sub_1004AC8A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style] = 0;
  v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer] = 0;
  if (qword_10096E530 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_1009875D0];
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView] = v10;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView] = v11;
  if (qword_10096E3C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D1AC0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v3);
  v15 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView] = v16;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v21 = v17;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v22 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView;
  [*&v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView] setClipsToBounds:1];
  v23 = [*&v21[v22] layer];
  v24 = v23;
  v25 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_style;
  if (v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style])
  {
    v26 = 4.0;
  }

  else
  {
    v26 = 17.0;
  }

  [v23 setCornerRadius:v26];

  [*&v21[v22] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v22]];
  v27 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView;
  v28 = v21[v25];
  v29 = *&v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView];
  v30 = [v21 traitCollection];

  v31 = sub_1004ABEBC(v30, v28);
  [v29 setBackgroundColor:v31];

  v32 = [*&v21[v27] layer];
  v33 = v32;
  if (v21[v25])
  {
    v34 = 4.0;
  }

  else
  {
    v34 = 17.0;
  }

  [v32 setCornerRadius:v34];

  [*&v21[v27] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v27]];
  sub_1004ACDC0();
  [v21 addSubview:*&v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel]];
  sub_1004ACEC4(0);
  v35 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView;
  [*&v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v35]];
  sub_1004ABCF0();

  return v21;
}

void sub_1004ACDC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel);
  if (*(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style))
  {
    [*(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel) setHidden:0];
    if (*(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive))
    {
      v2 = "APP_EVENTS_BUTTON_NOTIFY_ME";
    }

    else
    {
      v2 = "e";
    }

    if (*(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive))
    {
      v3 = 0xD000000000000021;
    }

    else
    {
      v3 = 0xD00000000000001BLL;
    }

    v4 = v2 | 0x8000000000000000;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v3, v5);
    v7 = String._bridgeToObjectiveC()();

    [v1 setText:v7];
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel);

    [v6 setHidden:1];
  }
}

void sub_1004ACEC4(char a1)
{
  v2 = (a1 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled();
  v3 = objc_allocWithZone(AppStoreMicaPlayer);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithFileName:v4 retinaScale:1.0];

  sub_1004AD090(v5);
  if (v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer);
    if (v6)
    {

      [v6 play];
    }
  }
}

void sub_1004AD090(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
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
    v7 = v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style];
    v8 = [v1 traitCollection];
    v9 = sub_1004ABFD0(v8, v7);

    sub_1004AD1B4(v9);
    v10 = [*&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView] layer];
    [v6 addToLayer:v10 onTop:1 gravity:kCAGravityResizeAspect];
  }
}

void sub_1004AD1B4(void *a1)
{
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer);
  if (v8)
  {
    v9 = [v8 rootLayer];
    if (v9)
    {
      v10 = v9;
      sub_100005744(0, &qword_1009876D8);
      v11 = [v10 mp_allLayersWithKindOfClass:swift_getObjCClassFromMetadata()];

      if (v11)
      {
        v14[0] = v4;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        while (v17)
        {
          sub_100056164(&v16, &v15);
          if (swift_dynamicCast())
          {
            v12 = v14[1];
            v13 = [a1 CGColor];
            [v12 setFillColor:v13];
          }

          NSFastEnumerationIterator.next()();
        }

        (*(v14[0] + 8))(v7, v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004AD3B8()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v8 setFrame:?];
  if (v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style])
  {
    if (qword_10096E558 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for StaticDimension();
    sub_1000056A8(v9, qword_100987658);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v10 = *(v3 + 8);
    v10(v6, v2);
    if (qword_10096E548 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_100987628);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v12 = v11;
    v10(v6, v2);
    if (qword_10096E550 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_100987640);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v14 = v13;
    v10(v6, v2);
    if (qword_10096E528 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_1009875B8);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v16 = v15;
    v10(v6, v2);
    LayoutMarginsAware<>.layoutFrame.getter();
    v17 = CGRectGetWidth(v31) - v12 - v14 - v16;
    LayoutMarginsAware<>.layoutFrame.getter();
    Height = CGRectGetHeight(v32);
    v19 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel];
    [v19 measurementsWithFitting:v0 in:{v17, Height}];
    if (qword_10096E538 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009875D8, qword_1009875F0);
    AnyDimension.topMargin(from:in:)();
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v33);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinY(v34);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v19 setFrame:?];
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v35);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMidY(v36);
    v20 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView];
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
  }

  else
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v25 = CGRectGetMidX(v37) + -17.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    MidY = CGRectGetMidY(v38);
    v21 = v25;
    v22 = MidY + -17.0;
    v20 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView];
    v23 = 34.0;
    v24 = 34.0;
  }

  [v20 setFrame:{v21, v22, v23, v24}];
  v27 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer];
  if (v27)
  {
    v28 = v27;
    v29 = [v20 layer];
    [v28 moveAndResizeWithinParentLayer:v29 usingGravity:kCAGravityResizeAspect animate:0];
  }
}

void sub_1004AD984(double a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style))
  {
    if (qword_10096E548 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for StaticDimension();
    sub_1000056A8(v7, qword_100987628);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v9 = v8;
    v10 = *(v4 + 8);
    v10(v6, v3);
    if (qword_10096E550 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v7, qword_100987640);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v12 = v11;
    v10(v6, v3);
    if (qword_10096E528 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v7, qword_1009875B8);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v14 = v13;
    v10(v6, v3);
    LayoutMarginsAware<>.layoutFrame.getter();
    [*(v1 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel) measurementsWithFitting:v1 in:{a1 - v9 - v12 - v14, CGRectGetHeight(v16)}];
    if (qword_10096E538 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009875D8, qword_1009875F0);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096E540 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100987600, qword_100987618);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v10(v6, v3);
  }
}

unint64_t sub_1004ADEFC()
{
  result = qword_1009876D0;
  if (!qword_1009876D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009876D0);
  }

  return result;
}

unint64_t sub_1004ADF50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B0128, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_1004AE2A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArtworkCollectionViewCell()
{
  result = qword_100987710;
  if (!qword_100987710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004AE3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_1004AE424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_1004AE490(uint64_t a1)
{
  result = sub_1004AE4B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004AE4B8()
{
  result = qword_100987720;
  if (!qword_100987720)
  {
    type metadata accessor for ArtworkCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987720);
  }

  return result;
}

double sub_1004AE510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = ProductCapability.title.getter();
  v9 = v8;
  v10 = ProductCapability.caption.getter();
  v11 = ProductCapability.artwork.getter();
  swift_getObjectType();
  v12 = sub_1004F2388(v7, v9, v10, v11, a6);

  return v12;
}

id sub_1004AE664()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel];
  ProductCapability.title.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 setText:v3];

  ProductCapability.caption.getter();
  v4 = ProductCapability.captionTrailingArtwork.getter();
  v5 = LinkableText.linkedSubstrings.getter();
  v6 = sub_1000D6F24(v5, sub_1000C17B0);

  v7 = LinkableText.styledText.getter();
  sub_1002F6004(v7, v4, v6);

  v8 = *&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView];
  v9 = ProductCapability.artworkTintColor.getter();
  [v8 setTintColor:v9];

  *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon] = ProductCapability.artwork.getter();

  return [v1 setNeedsLayout];
}

void sub_1004AE7FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon);
  if (v1)
  {

    if (dispatch thunk of Artwork.isLocalImage.getter())
    {
      v2 = *(v0 + OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView);
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        v3 = static SystemImage.load(artwork:with:includePrivateImages:)();
      }

      else if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        v3 = sub_100330100(v1, 0);
      }

      else
      {
        v3 = 0;
      }

      [v2 setImage:v3];
    }

    else
    {
      v4 = qword_10096E680;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = static SystemImage.load(artwork:with:includePrivateImages:)();
      if (v5)
      {
        v6 = v5;
        [v5 size];
      }

      Artwork.config(using:)();
      sub_10019FDD0();
      sub_1004AEA14(&qword_100973A60, sub_10019FDD0);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }
}

uint64_t sub_1004AEA14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004AEB20(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v8 - 8);
  v49 = &v48 - v9;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspectRatio();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = FramedMedia.isFullWidth.getter();
  v48 = v11;
  if ((v18 & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (FramedArtwork.artwork.getter())
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v17, v14);
    FramedMedia.isFullWidth.getter();
    if ((FramedMedia.isFullWidth.getter() & 1) != 0 || v20 <= a2)
    {
    }

    else
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.width(fromHeight:)();
      v21(v17, v14);
    }
  }

  v22 = FramedMedia.caption.getter();
  v23 = [v22 length];

  if (v23 >= 1)
  {
    FramedMedia.ordinal.getter();
    if (v24)
    {
      if (qword_10096E228 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for FontUseCase();
      sub_1000056A8(v25, qword_1009D15F8);
      v26 = type metadata accessor for Feature();
      v51 = v26;
      v52 = sub_1004AFA28(&qword_100972E50, &type metadata accessor for Feature);
      v27 = sub_1000056E0(aBlock);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      isFeatureEnabled(_:)();
      sub_100007000(aBlock);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

      if (qword_10096E690 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for StaticDimension();
      sub_1000056A8(v28, qword_1009D2368);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v29 = *(v48 + 8);
      v29(v13, v10);
      if (qword_10096E6A0 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v28, qword_1009D2398);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v29(v13, v10);
      if (qword_10096E698 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v28, qword_1009D2380);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v29(v13, v10);
    }

    v30 = FramedMedia.caption.getter();
    v31 = [a6 traitCollection];
    v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
    v33 = [v30 length];
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = v31;
    *(v34 + 32) = v32;
    *(v34 + 40) = 1;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_100126854;
    *(v35 + 24) = v34;
    v52 = sub_100126848;
    v53 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v51 = &unk_1008C5338;
    v36 = _Block_copy(aBlock);
    v37 = v31;
    v38 = v32;

    [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

    _Block_release(v36);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }

    else
    {
      v39 = qword_10096E220;
      v30 = v38;
      if (v39 == -1)
      {
LABEL_21:
        v40 = type metadata accessor for FontUseCase();
        v41 = sub_1000056A8(v40, qword_1009D15E0);
        v42 = *(v40 - 8);
        v43 = v49;
        (*(v42 + 16))(v49, v41, v40);
        (*(v42 + 56))(v43, 0, 1, v40);
        v44 = type metadata accessor for Feature();
        v51 = v44;
        v52 = sub_1004AFA28(&qword_100972E50, &type metadata accessor for Feature);
        v45 = sub_1000056E0(aBlock);
        (*(*(v44 - 8) + 104))(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v44);
        isFeatureEnabled(_:)();
        sub_100007000(aBlock);
        static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

        sub_10025BAF0(v43);
        if (qword_10096E690 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for StaticDimension();
        sub_1000056A8(v46, qword_1009D2368);
        AnyDimension.topMargin(from:in:)();
        if (qword_10096E698 != -1)
        {
          swift_once();
        }

        sub_1000056A8(v46, qword_1009D2380);
        AnyDimension.bottomMargin(from:in:)();

        return CGSize.integral.getter();
      }
    }

    swift_once();
    goto LABEL_21;
  }

  return CGSize.integral.getter();
}