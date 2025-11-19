uint64_t sub_1005EDDEC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E058 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D1088);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v16[1] = v6 + 16;
  v17 = v7;
  v7(v3, v5, v4);
  v8 = enum case for FontSource.useCase(_:);
  v16[0] = v1[13];
  (v16[0])(v3, enum case for FontSource.useCase(_:), v0);
  v9 = type metadata accessor for StaticDimension();
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v24);
  v22 = v0;
  v23 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(&v21);
  v11 = v1[2];
  v11(v10, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12 = v1[1];
  v12(v3, v0);
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v4, qword_1009D10B8);
  v17(v3, v13, v4);
  (v16[0])(v3, v8, v0);
  v22 = v9;
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(&v18);
  v11(v14, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12(v3, v0);
  v19 = type metadata accessor for ZeroDimension();
  v20 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v18);
  static ZeroDimension.zero.getter();
  qword_1009D2E40 = &type metadata for Double;
  unk_1009D2E48 = &protocol witness table for Double;
  qword_1009D2E28 = 0x4028000000000000;
  xmmword_1009D2DA0 = vdupq_n_s64(0x4064000000000000uLL);
  sub_100005A38(&v24, &unk_1009D2DB0);
  sub_100005A38(&v21, &unk_1009D2DD8);
  result = sub_100005A38(&v18, &unk_1009D2E00);
  byte_1009D2E50 = 1;
  return result;
}

char *sub_1005EE138(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v9 - 8);
  v66 = &v58 - v10;
  v11 = type metadata accessor for CornerStyle();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v21 = type metadata accessor for ItemLayoutContext();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10096EAB8 != -1)
  {
    swift_once();
  }

  *&v4[v22] = xmmword_1009D2DA0;
  v62 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias;
  v67 = v4;
  if (qword_10096E058 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1088);
  v25 = *(v23 - 8);
  v61 = *(v25 + 16);
  v61(v19, v24, v23);
  v60 = *(v25 + 56);
  v60(v19, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v14 + 104);
  v27(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v28 = type metadata accessor for DynamicTypeLabel();
  v59 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v67[v62] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v62 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v23, qword_1009D10B8);
  v61(v19, v31, v23);
  v60(v19, 0, 1, v23);
  v27(v16, v26, v59);
  v32 = objc_allocWithZone(v29);
  v33 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v34 = v67;
  *&v67[v62] = v33;
  *&v34[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v35 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  v68.receiver = v34;
  v68.super_class = v35;
  v36 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  v37 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView;
  v38 = *&v36[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView];
  sub_100028BB8();
  v39 = v36;
  v40 = v38;
  static UIColor.placeholderBackground.getter();
  ArtworkView.backgroundColor.setter();

  v41 = *&v36[v37];
  v42 = v63;
  dispatch thunk of RoundedCornerView.cornerStyle.getter();
  ArtworkView.setCorner(radius:style:)();

  (*(v64 + 8))(v42, v65);
  v43 = qword_10096DAD0;
  v44 = *&v36[v37];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Shadow();
  v46 = sub_1000056A8(v45, qword_1009CFED0);
  v47 = *(v45 - 8);
  v48 = v66;
  (*(v47 + 16))(v66, v46, v45);
  (*(v47 + 56))(v48, 0, 1, v45);
  ArtworkView.shadow.setter();

  v49 = [v39 contentView];
  [v49 addSubview:*&v36[v37]];

  v50 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias;
  v51 = *&v39[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias];
  UILabel.alignment.setter();

  [*&v39[v50] setNumberOfLines:1];
  v52 = [v39 contentView];
  [v52 addSubview:*&v39[v50]];

  v53 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName;
  v54 = *&v39[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName];
  v55 = static UIColor.secondaryText.getter();
  [v54 setTextColor:v55];

  [*&v39[v53] setNumberOfLines:1];
  v56 = [v39 contentView];

  [v56 addSubview:*&v39[v53]];
  return v39;
}

uint64_t sub_1005EE8E0()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  v24.receiver = v0;
  v24.super_class = v6;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_10096EAB8 != -1)
  {
    swift_once();
  }

  sub_1000323C4(&xmmword_1009D2DA0, v18);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView];
  v18[26] = type metadata accessor for ArtworkView();
  v18[27] = &protocol witness table for UIView;
  v18[23] = v7;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias];
  v19 = type metadata accessor for DynamicTypeLabel();
  v20 = &protocol witness table for UILabel;
  v18[28] = v8;
  v9 = *&v1[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName];
  v22 = v19;
  v23 = &protocol witness table for UILabel;
  v21 = v9;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  [v1 bounds];
  LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v13, v14, v15, v16);
  (*(v3 + 8))(v5, v2);
  return sub_1005EEE10(v18);
}

id sub_1005EEAF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LargeGameCenterPlayerCollectionViewCell()
{
  result = qword_10098E6E0;
  if (!qword_10098E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005EEBE8()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005EECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_1005EED24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_1005EED90(uint64_t a1)
{
  result = sub_1005EEDB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005EEDB8()
{
  result = qword_10098E6F0;
  if (!qword_10098E6F0)
  {
    type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E6F0);
  }

  return result;
}

void sub_1005EEE64()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(*(v8 - 8) + 56);
  v27 = v0;
  v9(v0 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10096EAB8 != -1)
  {
    swift_once();
  }

  *(v27 + v10) = xmmword_1009D2DA0;
  v23 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias;
  if (qword_10096E058 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D1088);
  v13 = *(v11 - 8);
  v22 = *(v13 + 16);
  v22(v6, v12, v11);
  v14 = *(v13 + 56);
  v14(v6, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v24 = v16;
  v25 = v1;
  v17(v26, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = type metadata accessor for DynamicTypeLabel();
  v19 = objc_allocWithZone(v18);
  *(v27 + v23) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v11, qword_1009D10B8);
  v22(v6, v20, v11);
  v14(v6, 0, 1, v11);
  v17(v26, v15, v25);
  v21 = objc_allocWithZone(v18);
  *(v27 + v23) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1005EF29C()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    MaxX = CGRectGetMaxX(v16);
  }

  else
  {
    MaxX = 0.0;
  }

  [v0 bounds];
  v12 = MaxX + 10.0;
  v13 = CGRectGetMaxX(v17) - MaxX + -20.0;
  [v0 bounds];
  return [*&v0[OBJC_IVAR____TtC8AppStore15DebugSliderCell_slider] setFrame:{v12, 0.0, v13, CGRectGetHeight(v18)}];
}

uint64_t sub_1005EF458()
{
  v0 = type metadata accessor for Separator.Position();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Separator();
  sub_100005644(v4, qword_1009D2E80);
  sub_1000056A8(v4, qword_1009D2E80);
  (*(v1 + 104))(v3, enum case for Separator.Position.bottom(_:), v0);
  v7[3] = type metadata accessor for ZeroDimension();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v7);
  static ZeroDimension.zero.getter();
  return Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
}

void sub_1005EF590()
{
  v1 = v0;
  v2 = type metadata accessor for Separator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_hasSeparator] & 1) == 0)
  {
    v13 = &v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
    v14 = *&v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
LABEL_10:
    if (!v14)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v19 = v14;
    v12 = 0;
    v18 = v14;
LABEL_12:
    [v18 removeFromSuperview];
    goto LABEL_14;
  }

  if (qword_10096EAC0 != -1)
  {
    v27 = v4;
    swift_once();
    v4 = v27;
  }

  v7 = v4;
  v8 = sub_1000056A8(v4, qword_1009D2E80);
  (*(v3 + 16))(v6, v8, v7);
  v9 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v11 = *(v3 + 40);
  v12 = v9;
  v11(&v9[v10], v6, v7);
  swift_endAccess();

  v13 = &v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
  v14 = *&v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v14;
    v16 = v12;
    v17 = static NSObject.== infix(_:_:)();

    if ((v17 & 1) == 0)
    {
      v18 = *v13;
      if (*v13)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v20 = *v13;
  *v13 = v12;
  v21 = v12;

  v22 = *v13;
  if (v14)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    type metadata accessor for SeparatorView();
    v14 = v14;
    v23 = v22;
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
      goto LABEL_22;
    }

    v22 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22)
  {
    v14 = 0;
LABEL_21:
    v25 = v22;
    v26 = [v1 contentView];
    [v26 addSubview:v25];

    v21 = v25;
    v14 = v26;
LABEL_22:

    v21 = v14;
  }
}

uint64_t sub_1005EF88C()
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2430);
  qword_1009D2EB0 = v0;
  unk_1009D2EB8 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009D2E98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1005EF948(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_100028BB8();
  v18 = static UIColor.tableViewCellBackground.getter();
  v19 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v17] = sub_10059F344(v18, 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D09C8);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v20] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v25 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView;
  *&v5[v25] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_hasSeparator] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView] = 0;
  v26 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v27 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v28 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v47.receiver = v5;
  v47.super_class = v28;
  v29 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView]];

  v32 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView;
  v33 = *&v29[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  v34 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v35 = *&v33[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v33[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = 2;
  v36 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v33[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
  {
    v37 = *&v33[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v38 = v33;
    [v37 setNumberOfLines:2];
    if (*&v33[v34] == v35)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = v33;
    if (v35 == 2)
    {
      goto LABEL_9;
    }
  }

  if (v33[v36])
  {
    sub_1005A0320();
  }

LABEL_9:

  v40 = [v29 contentView];
  [v40 addSubview:*&v29[v32]];

  v41 = [v29 contentView];
  v42 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata;
  [v41 addSubview:*&v29[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata]];

  v43 = *&v29[v42];
  v44 = static UIColor.secondaryText.getter();
  [v43 setTextColor:v44];

  v45 = static UIColor.tableViewCellBackground.getter();
  [v29 setBackgroundColor:v45];

  return v29;
}

void sub_1005EFF74()
{
  v1 = [v0 contentView];
  v2 = [v0 backgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView];
  v4 = [v0 backgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  v6 = [v0 backgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata];
  v8 = [v0 backgroundColor];
  [v7 setBackgroundColor:v8];
}

uint64_t sub_1005F00B4()
{
  v62 = type metadata accessor for Separator();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v68.receiver = v0;
  v68.super_class = v6;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v69);
  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v70);
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v71);
  [v7 setFrame:{MinX, MinY, Width, v11}];
  if (qword_10096EAC8 != -1)
  {
    swift_once();
  }

  sub_10002C0AC(qword_1009D2E98, v66);
  LayoutMarginsAware<>.layoutFrame.getter();
  Height = CGRectGetHeight(v72);
  v73.origin.x = MinX;
  v73.origin.y = MinY;
  v73.size.width = Width;
  v73.size.height = v11;
  v16 = CGRectGetHeight(v73);
  sub_10002A400(v66, v67);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  v19 = v3 + 8;
  v20 = *(v3 + 8);
  v65 = v19;
  v20(v5, v2);
  v21 = Height - (v16 + v18);
  v22 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata];
  LayoutMarginsAware<>.layoutFrame.getter();
  v64 = v22;
  [v22 sizeThatFits:{v23, v24}];
  v26 = v25;
  v27 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  v63 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if ((v27[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] & 1) == 0)
  {
    sub_10002A400(v66, v67);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v29 = v28;
    v20(v5, v2);
    v21 = v21 - (v26 + v29);
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  [v27 measurementsWithFitting:v0 in:{CGRectGetWidth(v74), v21}];
  v31 = v30;
  LayoutMarginsAware<>.layoutFrame.getter();
  v32 = CGRectGetMinX(v75);
  v76.origin.x = MinX;
  v76.origin.y = MinY;
  v76.size.width = Width;
  v76.size.height = v11;
  MaxY = CGRectGetMaxY(v76);
  sub_10002A400(v66, v67);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v35 = v34;
  v20(v5, v2);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v27 setFrame:{v32, MaxY + v35, CGRectGetWidth(v77), v31}];
  [v27 frame];
  v36 = CGRectGetMinX(v78);
  [v27 frame];
  v37 = CGRectGetMaxY(v79);
  sub_10002A400(v66, v67);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v39 = v38;
  v20(v5, v2);
  LayoutMarginsAware<>.layoutFrame.getter();
  v40 = CGRectGetWidth(v80);
  v41 = v64;
  [v64 setFrame:{v36, v37 + v39, v40, v26}];
  v42 = 1.0;
  if (v27[v63])
  {
    v42 = 0.0;
  }

  [v41 setAlpha:v42];
  v43 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
  if (v43)
  {
    v44 = v43;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v81);
    [v0 bounds];
    CGRectGetMinY(v82);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v83);
    [v0 bounds];
    CGRectGetHeight(v84);
    v45 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    v46 = v61;
    v47 = &v44[v45];
    v48 = v60;
    v49 = v62;
    (*(v61 + 16))(v60, v47, v62);
    Separator.frame(forBoundingRect:in:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    (*(v46 + 8))(v48, v49);
    [v44 setFrame:{v51, v53, v55, v57}];
  }

  return sub_100007000(v66);
}

id sub_1005F0784()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972638);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v13.receiver = v0;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v6 = *(*&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v14, v7);

  v8 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  swift_beginAccess();
  sub_1001AEE58(v4, &v1[v9]);
  swift_endAccess();
  v10 = *&v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  sub_10059FAC0(0, 0);
  [v10 setNeedsLayout];
  return [*&v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata] setText:0];
}

void sub_1005F094C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100972638);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-v7 - 8];
  v9 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for Artwork.Crop();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    v23 = a2;

    Artwork.crop.getter();
    v14 = Artwork.Crop.preferredContentMode.getter();
    (*(v11 + 8))(v13, v10);
    if (qword_10096EE80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v15, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    Artwork.config(_:mode:prefersLayeredImage:)();
    v16 = *(v3 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView);
    v17 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v18 = *(v16 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v18 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(v16 + v17) setContentMode:v14];
    Artwork.template.getter();
    v19 = type metadata accessor for Artwork.URLTemplate();
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    v20 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_1001AEE58(v8, v3 + v20);
    swift_endAccess();
    type metadata accessor for ArtworkLoader();
    v21 = *(v16 + v17);
    type metadata accessor for ArtworkView();
    v22 = v21;
    static ArtworkLoader.handlerKey<A>(for:)();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v24, &qword_10096FB90);
  }
}

void sub_1005F0D1C(objc_class *a1, int a2, uint64_t a3)
{
  v39 = a2;
  v5 = sub_10002849C(&qword_100972638);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for Artwork.URLTemplate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v38 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  sub_10007FF30(a3, v13);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    v10 = v13;
  }

  else
  {
    v37 = a1;
    v36 = *(v15 + 32);
    v36(v19, v13, v14);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = v7;
      v22 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
      v23 = Strong;
      swift_beginAccess();
      sub_10007FF30(v23 + v22, v10);

      if (v20(v10, 1, v14) != 1)
      {
        v31 = v38;
        v36(v38, v10, v14);
        sub_1005F2048(&qword_100979D88, &type metadata accessor for Artwork.URLTemplate);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *(v15 + 8);
        v33(v31, v14);
        v33(v19, v14);
        v7 = v35;
        a1 = v37;
        if ((v32 & 1) == 0)
        {
          return;
        }

        goto LABEL_9;
      }

      (*(v15 + 8))(v19, v14);
      v7 = v35;
    }

    else
    {
      (*(v15 + 8))(v19, v14);
      (*(v15 + 56))(v10, 1, 1, v14);
    }

    a1 = v37;
  }

  sub_10002B894(v10, &qword_100972638);
LABEL_9:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = *(*(v24 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);

    v40.is_nil = (v39 & 1) == 0;
    v40.value.super.isa = a1;
    ArtworkView.show(image:isAnimationPermitted:)(v40, v27);
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    (*(v15 + 56))(v7, 1, 1, v14);
    v30 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_1001AEE58(v7, v29 + v30);
    swift_endAccess();
  }
}

double sub_1005F1180(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v80 - v7;
  v83 = type metadata accessor for OfferButtonMetrics();
  v9 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v80 - v12;
  v13 = type metadata accessor for SmallLockupLayout.Metrics();
  v93 = *(v13 - 8);
  v94 = v13;
  __chkstk_darwin(v13);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for FloatingPointRoundingRule();
  v87 = *(v92 - 8);
  *&v15 = __chkstk_darwin(v92).n128_u64[0];
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v3[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  v18 = [*(v17 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) attributedText];
  v19 = *(v17 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
  v88 = v3[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_hasSeparator];
  v20 = [*&v3[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata] text];
  if (v20)
  {
    v21 = v20;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v22;
  }

  else
  {
    v85 = 0;
    v89 = 0;
  }

  [v3 layoutMargins];
  v27 = v26;
  if (v19)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v90 = v18;
  v84 = v24;
  if (v18)
  {
    v29 = v23;
    if (a2 >= a1)
    {
      v30 = a1;
    }

    else
    {
      v30 = a2;
    }

    v31 = a1;
    if (v30 != 0.0)
    {
      v32 = v24;
      v33 = v25;
      v34 = v18;
      v35 = [v3 traitCollection];
      v36 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v37 = objc_allocWithZone(v36);
      v38 = &v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
      *v38 = v29;
      *(v38 + 1) = v32;
      *(v38 + 2) = v33;
      *(v38 + 3) = v27;
      *&v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = v28;
      v39 = &v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
      *v39 = a1;
      v39[1] = a2;
      *&v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v35;
      *&v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v34;
      v97.receiver = v37;
      v97.super_class = v36;
      v40 = objc_msgSendSuper2(&v97, "init");
      if (qword_10096E9D0 != -1)
      {
        swift_once();
      }

      v41 = qword_10098CEC8;
      v42 = [qword_10098CEC8 objectForKey:v40];
      if (v42)
      {
        v43 = v42;

        v31 = *&v43[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
      }

      else
      {
        v86 = v41;
        v44 = qword_10096E9C8;
        v43 = v34;
        if (v44 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for FontUseCase();
        v46 = sub_1000056A8(v45, qword_10098CEB0);
        v47 = *(v45 - 8);
        (*(v47 + 16))(v8, v46, v45);
        (*(v47 + 56))(v8, 0, 1, v45);
        static TextMeasurable.defaultTextAlignment.getter();
        static TextMeasurable.defaultLineBreakMode.getter();
        static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
        v49 = v48;
        v51 = v50;
        v53 = v52;

        sub_10002B894(v8, &qword_100972ED0);
        v54 = type metadata accessor for ExpandableTextView.CacheValue();
        v55 = objc_allocWithZone(v54);
        v56 = &v55[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
        *v56 = a1;
        v56[1] = v29 + v33 + v49;
        *(v56 + 2) = v51;
        *(v56 + 3) = v53;
        v96.receiver = v55;
        v96.super_class = v54;
        v57 = objc_msgSendSuper2(&v96, "init");
        [v86 setObject:v57 forKey:v40];

        v31 = a1;
      }
    }
  }

  else
  {
    v31 = a1;
  }

  if (qword_10096EAC8 != -1)
  {
    swift_once();
  }

  LODWORD(v86) = v19;
  sub_10002A400(qword_1009D2E98, qword_1009D2EB0);
  v58 = v91;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v59 = *(v87 + 8);
  v59(v58, v92);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v60 = v94;
  v61 = sub_1000056A8(v94, qword_1009D3798);
  v62 = [v3 traitCollection];
  (*(v93 + 16))(v95, v61, v60);
  v63 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v65 & 1) == 0 && ((v63 | v64) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v66 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v66 = qword_100991028;
    }

    v67 = v83;
    v68 = sub_1000056A8(v83, v66);
    v69 = v81;
    (*(v9 + 16))(v81, v68, v67);
    v70 = v82;
    (*(v9 + 32))(v82, v69, v67);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v9 + 8))(v70, v67);
  }

  v71 = v95;
  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();

  (*(v93 + 8))(v71, v94);
  if ((v89 == 0) | v86 & 1)
  {
    v72 = v90;
  }

  else
  {
    sub_10002A400(qword_1009D2E98, qword_1009D2EB0);
    v73 = v91;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v59(v73, v92);
    v72 = v90;
    if (qword_10096DE18 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for FontUseCase();
    sub_1000056A8(v74, qword_1009D09C8);
    v75 = type metadata accessor for Feature();
    v98[3] = v75;
    v98[4] = sub_1005F2048(&qword_100972E50, &type metadata accessor for Feature);
    v76 = sub_1000056E0(v98);
    (*(*(v75 - 8) + 104))(v76, enum case for Feature.measurement_with_labelplaceholder(_:), v75);
    isFeatureEnabled(_:)();
    sub_100007000(v98);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  }

  if (v88)
  {
    if (qword_10096EAC0 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Separator();
    sub_1000056A8(v77, qword_1009D2E80);
    CGSize.adding(separator:in:)();
    v31 = v78;
  }

  return v31;
}

id sub_1005F1D2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdatesLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpdatesLockupCollectionViewCell()
{
  result = qword_10098E778;
  if (!qword_10098E778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005F1E38()
{
  sub_1005F1EF0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005F1EF0()
{
  if (!qword_100978180)
  {
    type metadata accessor for Artwork.URLTemplate();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100978180);
    }
  }
}

void sub_1005F1F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

uint64_t sub_1005F1FE8(uint64_t a1)
{
  result = sub_1005F2048(&qword_10098E788, type metadata accessor for UpdatesLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005F2048(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005F2090()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_100028BB8();
  v10 = static UIColor.tableViewCellBackground.getter();
  v11 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *(v1 + v9) = sub_10059F344(v10, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_1009D09C8);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v12) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v17 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_hasSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView) = 0;
  v18 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v19 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id UIView.withAccessibilityIdentifier(_:)()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v2];

  return v1;
}

uint64_t sub_1005F25D0()
{
  v1 = v0;
  v2 = type metadata accessor for ArtworkGridType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018957C();
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaGrid();
  if (swift_dynamicCastClass())
  {
    v6 = TodayCardMediaGrid.lockups.getter();
    if (v6 >> 62)
    {
      goto LABEL_29;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      do
      {
        type metadata accessor for ArtworkLoader();
        BaseObjectGraph.inject<A>(_:)();
        v8 = *&v1[OBJC_IVAR____TtC8AppStore32GridTodayBrickCollectionViewCell_grid];
        v20[2] = v26;
        v21 = v8;
        TodayCardMediaGrid.artworkGridType.getter();
        v9 = (*(v3 + 88))(v5, v2);
        if (v9 != enum case for ArtworkGridType.small(_:))
        {
          if (v9 == enum case for ArtworkGridType.large(_:))
          {
            v10 = 1;
            goto LABEL_12;
          }

          if (v9 == enum case for ArtworkGridType.extraLarge(_:))
          {
            v10 = 2;
            goto LABEL_12;
          }

          if (v9 == enum case for ArtworkGridType.mixed(_:))
          {
            v10 = 3;
            goto LABEL_12;
          }

LABEL_27:
          v17 = *(v3 + 8);
          v3 += 8;
          v17(v5, v2);
        }

        v10 = 0;
LABEL_12:
        v20[1] = OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType;
        v11 = v21;
        v21[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType] = v10;
        sub_1006B4F58();
        [v11 setNeedsLayout];
        v12 = TodayCardMediaGrid.lockups.getter();
        if (v12 >> 62)
        {
          v1 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v1 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v21[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = v1;
        sub_1006B5128();
        v13 = TodayCardMediaGrid.lockups.getter();
        v14 = v13;
        if (v13 >> 62)
        {
          v2 = _CocoaArrayWrapper.endIndex.getter();
          if (!v2)
          {
LABEL_35:
          }
        }

        else
        {
          v2 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_35;
          }
        }

        v5 = 0;
        v22 = v14 & 0xFFFFFFFFFFFFFF8;
        v23 = v14 & 0xC000000000000001;
        v20[0] = v2;
        while (v23)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_22:
          if (dispatch thunk of Lockup.artwork.getter())
          {
            v1 = v21;
            Artwork.config(_:mode:prefersLayeredImage:)();
            v25 = 0;
            memset(v24, 0, sizeof(v24));
            v3 = swift_allocObject();
            *(v3 + 16) = v1;
            *(v3 + 24) = v5;
            v16 = v1;
            ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

            v2 = v20[0];

            sub_1000C36CC(v24);
          }

          else
          {
          }

          ++v5;
          if (v15 == v2)
          {
            goto LABEL_35;
          }
        }

        if (v5 < *(v22 + 16))
        {

          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      while (v18);
    }
  }
}

uint64_t type metadata accessor for GridTodayBrickCollectionViewCell()
{
  result = qword_10098E7C0;
  if (!qword_10098E7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1005F2B1C(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10002849C(&qword_1009701B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B1890;
  v4 = [a1 colorWithAlphaComponent:0.0];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [a1 CGColor];
  *(v3 + 88) = v7;
  *(v3 + 64) = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa];

  sub_10002849C(&qword_100973210);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B15F0;
  sub_100194454();
  *(v10 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v10 + 40) = NSNumber.init(floatLiteral:)(0.8);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations:v11];

  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  return v2;
}

id sub_1005F2CF8(void *a1, char a2)
{
  v4 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10002849C(&qword_1009701B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B1890;
  v6 = 0.0;
  v7 = [a1 colorWithAlphaComponent:0.0];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [a1 CGColor];
  *(v5 + 88) = v10;
  *(v5 + 64) = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setColors:isa];

  sub_10002849C(&qword_100973210);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B15F0;
  sub_100194454();
  *(v13 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v13 + 40) = NSNumber.init(floatLiteral:)(0.8);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v4 setLocations:v14];

  if (a2)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    v6 = 1.0;
  }

  [v4 setStartPoint:{v15, 0.5}];
  [v4 setEndPoint:{v6, 0.5}];
  return v4;
}

uint64_t sub_1005F2EF8(void *a1)
{
  if (*v1 == *a1 && (static AnyHashable.== infix(_:_:)() & 1) != 0 && (type metadata accessor for MenuItemDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && (*(v2 + 56) == *(v1 + 56) ? (v3 = *(v2 + 64) == *(v1 + 64)) : (v3 = 0), v3 || (v4 = v2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v2 = v4, (v5 & 1) != 0)))
  {
    v6 = *(v2 + 72) ^ *(v1 + 72) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1005F2FDC()
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 72));
}

uint64_t sub_1005F3028()
{
}

uint64_t sub_1005F3058()
{
  sub_10003D614(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1005F30E4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009D23B8;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1005F3140(uint64_t a1)
{
  v3 = qword_1009D23B8;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1005F320C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageGrid.Direction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v79 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v69 - v14;
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  type metadata accessor for FramedArtwork();
  sub_1005F3BC0();
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!aBlock[0])
  {
    return result;
  }

  v74 = v9;
  v75 = v5;
  v76 = v4;

  v19 = FramedMedia.caption.getter();
  v20 = [v19 length];

  v80 = v10;
  if (v20 < 1)
  {
    [*&v2[qword_100989278] setText:0];
    v2[qword_1009D23C8] = 0;
    v30 = *&v2[qword_100989268];
    [v30 setHidden:1];
    goto LABEL_7;
  }

  v70 = v17;
  v72 = v11;
  v21 = FramedMedia.caption.getter();
  swift_getKeyPath();
  v71 = a1;
  ItemLayoutContext.subscript.getter();

  v22 = aBlock[6];
  v23 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v21];
  v24 = [v21 length];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v22;
  *(v25 + 32) = v23;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10010279C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1001027AC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008CB430;
  v27 = _Block_copy(aBlock);
  v28 = v22;
  v29 = v23;

  [v21 enumerateAttributesInRange:0 options:v24 usingBlock:{0x100000, v27}];

  _Block_release(v27);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    goto LABEL_24;
  }

  v25 = *&v2[qword_100989278];
  [v25 setAttributedText:v29];
  if (qword_10096E6A8 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v25 setTextColor:qword_1009D23B0];
  v2[qword_1009D23C8] = 1;
  v30 = *&v2[qword_100989268];
  [v30 setHidden:0];

  v10 = v80;
  v11 = v72;
  v17 = v70;
LABEL_7:
  v31 = *&v2[qword_100989270];
  FramedMedia.ordinal.getter();
  if (v32)
  {
    v33 = String._bridgeToObjectiveC()();
  }

  else
  {
    v33 = 0;
  }

  [v31 setText:v33];

  v2[qword_1009D23C0] = (FramedMedia.isFullWidth.getter() & 1) == 0;
  sub_10012684C();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0 && v2[qword_1009D23C8] != 1)
  {
    type metadata accessor for ArtworkView();
    static ArtworkView.iconBorderWidth.getter();
  }

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  v2[qword_1009D23D8] = FramedMedia.isFullWidth.getter() & 1;
  [v2 setNeedsLayout];
  v34 = FramedMedia.isFullWidth.getter();
  v73 = v2;
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    sub_100005744(0, &qword_100970180);
    v35 = static UIColor.placeholderBackground.getter();
  }

  [v30 setBackgroundColor:v35];

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v72 = v36;
  v37 = *(v11 + 8);
  v37(v17, v10);
  swift_getKeyPath();
  v38 = v77;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v71 = v39;
  v37(v38, v10);
  v41 = v75;
  v40 = v76;
  v42 = v74;
  (*(v75 + 104))(v74, enum case for PageGrid.Direction.vertical(_:), v76);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.safeAreaInsets.getter();
  v37(v17, v10);
  v43 = v37;
  (*(v41 + 16))(v78, v42, v40);
  sub_10069F96C(0.0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v48 = v79;
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v41 + 8))(v42, v40);
  PageGrid.horizontalMargins.getter();
  v49 = v73;
  v50 = &v73[qword_1009D23D0];
  *v50 = v51;
  *(v50 + 1) = v52;
  *(v50 + 2) = v53;
  *(v50 + 3) = v54;
  [v49 setNeedsLayout];
  v55 = [v49 contentView];
  v56 = FramedMedia.isFullWidth.getter();

  if ((v56 & 1) == 0)
  {
    PageGrid.horizontalMargins.getter();
    top = v57;
    left = v58;
    bottom = v59;
    right = v60;
  }

  [v55 setLayoutMargins:{top, left, bottom, right}];

  if (FramedArtwork.artwork.getter())
  {
    v61 = [v49 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();
    v63 = v62;

    Artwork.size.getter();
    v65 = v64;
    Artwork.size.getter();
    v67 = v66;

    result = v43(v48, v80);
    v68 = &v49[qword_1009CFF30];
    *v68 = v63;
    v68[1] = v63 * (v65 / v67);
  }

  else
  {
    v43(v48, v80);
  }

  return result;
}

unint64_t sub_1005F3BC0()
{
  result = qword_100990200;
  if (!qword_100990200)
  {
    type metadata accessor for FramedArtwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990200);
  }

  return result;
}

id sub_1005F3C78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedTransitionWithTasks();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005F3CE0(uint64_t *a1, int a2)
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

uint64_t sub_1005F3D28(uint64_t result, int a2, int a3)
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

uint64_t sub_1005F3D78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == a1)
      {
        v10 = *(v7 - 2);

        v10(a1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a1 == 2)
  {
    *(v1 + v3) = _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_1005F3E74()
{
  result = qword_10098E950;
  if (!qword_10098E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E950);
  }

  return result;
}

uint64_t sub_1005F3EC8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a4;
  v43 = a3;
  v42 = a2;
  v10 = type metadata accessor for TodayCard.Style();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EditorialDisplayOptions();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v17 = EditorialDisplayOptions.suppressLockup.getter();
  result = (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    result = TodayCard.overlay.getter();
    if (result)
    {
      v19 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      BaseObjectGraph.optional<A>(_:)();
      v41 = v47[0];
      if (v47[0])
      {
        v39 = v10;
        (*(a6 + 8))(a5, a6);
        v21 = v20;
        TodayCardOverlay.kind.getter();
        if ((v21 & 1) != 0 || (v22 = TodayCardOverlay.Kind.rawValue.getter(), v22 != TodayCardOverlay.Kind.rawValue.getter()))
        {
          v23 = TodayCardOverlay.kind.getter();
          v24 = sub_100472F04(v23);
          ObjectType = v19;
          v25 = a5;
          v27 = v26;
          v28 = *(a6 + 32);
          swift_unknownObjectRetain();
          v29 = v28(v25, a6);
          (*(a6 + 80))(v24, v27, v29, v30, v25, a6);
          swift_unknownObjectRelease();
          v31 = TodayCardOverlay.kind.getter();
          (*(a6 + 16))(v31, 0, v25, a6);
          v32 = v27;
          a5 = v25;
          v19 = ObjectType;
          (*(a6 + 40))(v24, v32, a5, a6);
          swift_unknownObjectRelease();
        }

        v33 = *(a6 + 64);

        v33(v34, a5, a6);
        if ((*(a6 + 32))(a5, a6))
        {
          v36 = v35;
          ObjectType = swift_getObjectType();
          v47[3] = type metadata accessor for TodayCardOverlay();
          v47[4] = sub_1002AD904();
          v47[0] = v19;

          TodayCard.style.getter();
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          v37 = v45;
          inject<A, B>(_:from:)();
          (*(v36 + 112))(v47, v37, v42, v12, v43, v46, ObjectType, v36);
          swift_unknownObjectRelease();

          (*(v44 + 8))(v12, v39);
          sub_100007000(v47);
        }

        (*(a6 + 88))(a5, a6);
        [v7 setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t sub_1005F4320(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  (*(a2 + 80))(0, 0, v5, v6, a1, a2);
  swift_unknownObjectRelease();
  if ((*(a2 + 56))(a1, a2))
  {
    v7 = (v4)(a1, a2);
    v9 = v8;
    v10 = (*(a2 + 8))(a1, a2);
    sub_100473080(v7, v9, v10, v11 & 1);

    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(0, 1, a1, a2);
  (*(a2 + 40))(0, 0, a1, a2);
  v12 = *(a2 + 64);

  return v12(0, a1, a2);
}

uint64_t sub_1005F44AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10002849C(&qword_100973210);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007BB060;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v38[1] = type metadata accessor for ActionDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 56) = 0xD000000000000028;
  *(v6 + 64) = 0x800000010081CBE0;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = sub_1005F4CE0;
  *(v6 + 112) = v5;
  v7 = v0;

  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = *(v2 + 8);
  v41 = v1;
  v42 = v2 + 8;
  v11(v4, v1);
  v43 = v8;
  v44 = v10;
  AnyHashable.init<A>(_:)();

  v12 = v39;
  *(v39 + 32) = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = swift_allocObject();
  *(v14 + 56) = 0xD000000000000025;
  *(v14 + 64) = 0x800000010081CC10;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_1005F4D38;
  *(v14 + 112) = v13;
  v15 = v7;

  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  v11(v4, v1);
  v43 = v16;
  v44 = v18;
  AnyHashable.init<A>(_:)();

  v12[5] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 56) = 0xD000000000000029;
  *(v20 + 64) = 0x800000010081CC40;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 104) = sub_1005F4D90;
  *(v20 + 112) = v19;
  v21 = v15;

  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v11(v4, v41);
  v43 = v22;
  v44 = v24;
  AnyHashable.init<A>(_:)();

  v12[6] = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = swift_allocObject();
  *(v26 + 56) = 0xD00000000000002DLL;
  *(v26 + 64) = 0x800000010081CC70;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 104) = sub_1005F4DB0;
  *(v26 + 112) = v25;
  v27 = v21;

  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  v31 = v41;
  v11(v4, v41);
  v43 = v28;
  v44 = v30;
  AnyHashable.init<A>(_:)();

  v12[7] = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007B0B70;
  type metadata accessor for DebugSection();
  v33 = swift_allocObject();
  UUID.init()();
  v34 = UUID.uuidString.getter();
  v36 = v35;
  v11(v4, v31);
  v33[2] = v34;
  v33[3] = v36;
  v33[4] = 0;
  v33[5] = 0xE000000000000000;
  v33[6] = v12;
  *(v32 + 32) = v33;
  return v32;
}

uint64_t sub_1005F49A0(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(void))
{
  v8 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000F40E0(v10);
  }

  a3(0);
  swift_allocObject();
  a4();
  a5();

  return (*(v12 + 8))(v10, v11);
}

uint64_t sub_1005F4B20(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000F40E0(v4);
  }

  type metadata accessor for UpdateGranularNotificationSettingsAction();
  swift_allocObject();
  v8 = UpdateGranularNotificationSettingsAction.init(settingIDs:)();
  sub_1005FA2EC(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

id sub_1005F4C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005F4DD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AdPlacementType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AdPlacementType.searchLanding(_:))
  {
    static AppStoreConfig.thetis.getter();
LABEL_3:
    v10 = type metadata accessor for AppStoreConfig();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  if (v9 == enum case for AdPlacementType.searchResults(_:))
  {
    v12 = type metadata accessor for AppStoreConfig();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    if (v9 == enum case for AdPlacementType.today(_:))
    {
      static AppStoreConfig.iris.getter();
      goto LABEL_3;
    }

    if (v9 == enum case for AdPlacementType.productPageYMAL(_:))
    {
      static AppStoreConfig.flora.getter();
      goto LABEL_3;
    }

    if (v9 == enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      static AppStoreConfig.metis.getter();
      goto LABEL_3;
    }

    v13 = type metadata accessor for AppStoreConfig();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    return (*(v5 + 8))(v8, v4);
  }
}

UIColor sub_1005F5020()
{
  sub_100028BB8();
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 0.75).super.isa;
  qword_10098E988 = result.super.isa;
  return result;
}

char *sub_1005F5064()
{
  v1 = OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView;
  *&v0[v1] = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC8AppStore10PlayButton_glyphView;
  *&v0[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = &v0[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC8AppStore10PlayButton_tapGestureRecognizer] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PlayButton();
  v4 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC8AppStore10PlayButton_glyphView;
  v6 = *&v4[OBJC_IVAR____TtC8AppStore10PlayButton_glyphView];
  v7 = v4;
  v8 = v6;
  v9 = sub_10032FEB0(0xD000000000000012, 0x800000010081CD20, 0);
  v10 = [v9 imageWithRenderingMode:2];

  [v8 setImage:v10];
  v11 = qword_10096EAD0;
  v12 = *&v4[v5];
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setTintColor:qword_10098E988];

  [*&v4[v5] setUserInteractionEnabled:0];
  if (ASKPerformanceProfileGetForCurrentDevice() != 2)
  {
    [*&v7[OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView] setPrefersLowQualityEffects:1];
  }

  v13 = OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView;
  [*&v7[OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView] addSubview:*&v4[v5] applyingMaterialStyle:0 tintEffectStyle:0];
  [*&v7[v13] setUserInteractionEnabled:0];
  [*&v7[v13] setCircular:1];
  [v7 addSubview:*&v7[v13]];
  [v7 addTarget:v7 action:"didTap" forControlEvents:64];

  return v7;
}

id sub_1005F5330()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PlayButton();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore10PlayButton_glyphView];
  [v0 bounds];
  [v2 sizeThatFits:{v3, v4}];
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  v9 = CGRectGetMidX(v12) - v6 * 0.5;
  [v0 bounds];
  return [v2 setFrame:{v9, CGRectGetMidY(v13) - v8 * 0.5, v6, v8}];
}

id sub_1005F5530()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005F55F8()
{
  v1 = OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC8AppStore10PlayButton_glyphView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = (v0 + OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore10PlayButton_tapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005F56BC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_objectGraph] = a3;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_presenter] = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_artworkLoader] = v28;
  if (a2)
  {
    v9 = ASKDeviceTypeGetCurrent();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {

      v16 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_allocWithZone(type metadata accessor for ArcadeSubscribePageView());
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView] = sub_1004886BC(v16);
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  v18 = v28;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_impressionsCalculator] = v28;
  if (v18)
  {

    ImpressionsCalculator.isVisible.setter();
  }

  v19 = &v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver];
  *(v19 + 3) = type metadata accessor for ArcadeSubscribePresenter();
  *(v19 + 4) = &protocol witness table for BasePresenter;
  *v19 = a1;
  v27.receiver = v4;
  v27.super_class = ObjectType;

  v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_1000078BC(&qword_10098EA78, v21, type metadata accessor for ArcadeSubscribeViewController);
  v22 = v20;
  ArcadeSubscribePresenter.view.setter();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    sub_100005744(0, &qword_100970180);
    v25 = static UIColor.defaultBackground.getter();
    [v24 setBackgroundColor:v25];

    v26 = [v22 view];
    if (v26)
    {
      [v26 addSubview:*&v22[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1005F5C2C()
{
  v1 = [v0 isViewLoaded];
  v2 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController];
    if (v3)
    {
      v4 = v3;
      [v0 addChildViewController:v4];
      result = [v4 view];
      if (result)
      {
        v6 = result;
        result = [v0 view];
        if (result)
        {
          v7 = result;
          [result bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v6 setFrame:{v9, v11, v13, v15}];
          v16 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
          if (!v16)
          {
            result = [v0 view];
            if (result)
            {
              v18 = result;
              result = [v4 view];
              if (result)
              {
                v19 = result;
                [v18 addSubview:result];
                goto LABEL_12;
              }

LABEL_21:
              __break(1u);
              return result;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v17 = v16;
          result = [v0 view];
          if (result)
          {
            v18 = result;
            result = [v4 view];
            if (result)
            {
              v19 = result;
              [v18 insertSubview:result belowSubview:v17];

LABEL_12:
              [v4 didMoveToParentViewController:v0];

              v2 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
              goto LABEL_13;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_13:
  v20 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView];
  v21 = *&v0[v2] != 0;

  return [v20 setHidden:v21];
}

void sub_1005F5E58()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v1)
  {
    v2 = v1;
    v3._object = 0x800000010081CE20;
    v3._countAndFlagsBits = 0xD00000000000001CLL;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    localizedString(_:comment:)(v3, v4);
    v5 = String._bridgeToObjectiveC()();

    [v2 setTitle:v5 forState:0];

    [v2 addTarget:v0 action:"dismissPressed:" forControlEvents:64];
    v6 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v0 view];
      if (!v8)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v9 = v8;
      v10 = [v7 view];
      if (!v10)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v11 = v10;
      [v9 insertSubview:v2 aboveSubview:v10];

      v12 = v2;
      v2 = v11;
    }

    else
    {
      v13 = [v0 view];
      if (!v13)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v12 = v13;
      [v13 addSubview:v2];
    }
  }

  v14 = [v0 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  [v14 setNeedsLayout];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArcadeSubscribePresenter.didLoad()();
  [v1 setModalInPresentation:1];
  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  [v1 setTitle:0];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationItem];
  v11 = [v10 leftBarButtonItems];

  if (v11)
  {
    sub_100005744(0, &qword_100983870);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v2 navigationItem];
  v16 = [v15 rightBarButtonItems];

  if (v16)
  {
    sub_100005744(0, &qword_100983870);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v17 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
      v14 = 1;
    }
  }

  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 setNavigationBarHidden:!v14 animated:0];
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1, v11);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v6 + 8))(v8, v5);
    PendingPageRender.appearTime.setter();
  }

  if (dispatch thunk of BasePresenter.pageRenderMetrics.getter())
  {
    PageRenderMetricsPresenter.viewDidAppear()();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewWillDisappearReason();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_1009729C8);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1, v16);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v15 + 104))(v18, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v14);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v15 + 8))(v18, v14);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v20 + 8))(v7, v21);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v19 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    PendingPageRender.disappearTime.setter();
  }

  if (dispatch thunk of BasePresenter.pageRenderMetrics.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    PageRenderMetricsPresenter.viewWillDisappear(forReason:)();

    (*(v22 + 8))(v10, v23);
  }

  if (*&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_impressionsCalculator])
  {
    ImpressionsCalculator.isVisible.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1, v6);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v5 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v4);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewDidBecomeFullyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewDidBecomeFullyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewWillBecomePartiallyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  if (*&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_impressionsCalculator])
  {
    ImpressionsCalculator.isVisible.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

uint64_t sub_1005F73EC(SEL *a1, unsigned int *a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a1, v8);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v7 + 104))(v10, *a2, v6);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1005F753C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v15, v12);
  sub_10002A400(&v13[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v13[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, *a4, v8);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66.receiver = v1;
  v66.super_class = ObjectType;
  objc_msgSendSuper2(&v66, "viewWillLayoutSubviews", v5);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController];
  if (v18)
  {
    v19 = *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
    v20 = &selRef__setDefaultAttributes_;
    if (v19)
    {
      v21 = v18;
      v61 = v19;
      v22 = [v1 view];
      if (!v22)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v23 = v22;
      [v22 safeAreaInsets];

      v59 = v17;
      v60 = v15;
      CGRect.subtracting(insets:)();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView];
      v58 = v32[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
      v33 = [v32 traitCollection];
      v34 = UITraitCollection.isSizeClassCompact.getter();

      if (v34)
      {
        v35 = [v32 window];
        if (v35)
        {
          v36 = v35;
          [v35 frame];
          Width = CGRectGetWidth(v67);
          [v32 bounds];
          v38 = CGRectGetWidth(v68);

          v39 = v38 < Width;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 1;
      }

      v46 = [v1 view];
      if (!v46)
      {
        goto LABEL_24;
      }

      v47 = v46;
      [v46 bounds];
      v49 = v48;

      v50 = [v1 traitCollection];
      v51 = UITraitCollection.prefersAccessibilityLayouts.getter();

      v56 = v13;
      v57 = v11;
      if (v51)
      {
        sub_1004872AC(v39, v58, v62);
        sub_10002C0AC(&v64, v65);
        sub_1005F7C68(v62);
      }

      else
      {
        sub_1004881C4(v39, v58, v62, v49);
        sub_10002C0AC(&v63, v65);
        sub_1005F7C14(v62);
      }

      sub_100005A38(v65, v62);
      sub_10002A400(v62, v62[3]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v4 + 8))(v7, v3);
      sub_100007000(v62);
      v52 = v61;
      [v61 measurementsWithFitting:v1 in:{v29, v31}];
      v69.origin.x = v25;
      v69.origin.y = v27;
      v69.size.width = v29;
      v69.size.height = v31;
      CGRectGetMidX(v69);
      v70.origin.x = v25;
      v70.origin.y = v27;
      v70.size.width = v29;
      v70.size.height = v31;
      CGRectGetMaxY(v70);
      v53 = v52;
      CGRect.withLayoutDirection(in:relativeTo:)();
      v20 = &selRef__setDefaultAttributes_;
      [v53 setFrame:?];

      v13 = v56;
      v11 = v57;
      v17 = v59;
      v15 = v60;
    }

    else
    {
      v45 = v18;
    }

    v54 = [v18 view];
    if (v54)
    {
      v55 = v54;
      [v54 v20[490]];

      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];

    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      [v43 safeAreaInsets];

      CGRect.subtracting(insets:)();
      [v40 setFrame:?];
      return;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", isa);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArcadeSubscribeViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1005F7F00(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(&a1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005F802C()
{
  v0 = type metadata accessor for MetricsData();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetricsPipeline();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetricsFieldsContext();
  v16 = *(v6 - 8);
  v17 = v6;
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClickMetricsEvent();
  v13[2] = static ClickMetricsEvent.makeBackClickEvent()();
  BasePresenter.impressionsTracker.getter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentPageFields.getter();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.preloaded.getter();

  v21 = 0;
  aBlock = 0u;
  v20 = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.contextualAction.getter();

  static MetricsFieldsContext.createFieldsContext(impressionsTracker:adamIdString:pageContextOverride:referrer:participatingInCrossfireReferral:pageFields:preloaded:advertRotationData:searchGhostHintData:contextualAction:deviceWindowData:impressionsAppendixData:)();
  swift_unknownObjectRelease();

  sub_10002B894(v23, &qword_100977140);
  sub_10002B894(&aBlock, &qword_100977138);
  v9 = v13[1];
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  dispatch thunk of MetricsEvent.metricsData.getter();
  MetricsPipeline.process(_:using:)();

  (*(v14 + 8))(v2, v15);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1005FA3F0;
  v22 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_100007A08;
  *(&v20 + 1) = &unk_1008CB7B0;
  v11 = _Block_copy(&aBlock);

  [v9 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);

  (*(v18 + 8))(v5, v3);
  return (*(v16 + 8))(v8, v17);
}

void sub_1005F84EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  if (!*(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton))
  {
    sub_100005744(0, &qword_1009729E0);
    v21 = v3;
    v19 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v20 = *(v10 + 8);
    v20(v12, v9);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1005FA40C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CB7D8;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000078BC(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v17);

    (*(v21 + 8))(v5, v2);
    (*(v22 + 8))(v8, v6);
    v20(v15, v9);
  }
}

void sub_1005F88C4()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        type metadata accessor for DynamicTypeButton();
        if (qword_10096E118 != -1)
        {
          swift_once();
        }

        v10 = sub_1000056A8(v0, qword_1009D12C8);
        (*(v1 + 16))(v3, v10, v0);
        v11 = DynamicTypeButton.__allocating_init(useCase:)();
        v12 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton;
        v13 = *&v9[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
        if (v13)
        {
          [v13 removeFromSuperview];
          v14 = *&v9[v12];
        }

        else
        {
          v14 = 0;
        }

        *&v9[v12] = v11;
        v15 = v11;

        sub_1005F5E58();
      }
    }
  }
}

uint64_t sub_1005F8AA4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v1 + v10) = a1;
  swift_retain_n();

  if (a1)
  {
    type metadata accessor for ASKBagContract();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    sub_100005744(0, &qword_1009729E0);
    v12 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    ASKBagContract.arcadeSubscribePageDismissDelay.getter();
    + infix(_:_:)();
    v13 = *(v4 + 8);
    v13(v6, v3);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v13)(v9, v3);
  }

  return result;
}

void ArcadeSubscribeViewController.apply(page:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = 0;

  sub_1005F5E58();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 bounds];

  v10 = [v2 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 safeAreaInsets];

  CGRect.subtracting(insets:)();
  sub_100489334(v12, v13, a1, sub_1005F9AD8, v7, *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_artworkLoader], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_impressionsCalculator], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_objectGraph]);

  v14 = [v2 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setNeedsLayout];
}

uint64_t sub_1005F8EA8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1000073E8(a1, v4);
    sub_1005F802C();

    return sub_10002B894(v4, &unk_1009711D0);
  }

  return result;
}

Swift::Void __swiftcall ArcadeSubscribeViewController.toggleDismissButtonVisibility(shouldHide:)(Swift::Bool shouldHide)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v3);
  v4 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v1 + v4) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView);
  if (shouldHide)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v18 = sub_1005F9AE0;
  v19 = v9;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100007A08;
  v17 = &unk_1008CB680;
  v10 = _Block_copy(&aBlock);

  [v7 animateWithDuration:4 delay:v10 options:0 animations:0.15 completion:0.0];
  _Block_release(v10);
  if (shouldHide)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v18 = sub_1005F9AEC;
    v19 = v11;
    aBlock = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100007A08;
    v17 = &unk_1008CB6D0;
    _Block_copy(&aBlock);
    sub_1000078BC(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags);
    v12 = v5;
    sub_10002849C(&unk_1009729F0);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v13 = DispatchWorkItem.init(flags:block:)();

    sub_1005F8AA4(v13);
  }
}

void sub_1005F9240()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0x3FF0000000000000;
  v4[4] = sub_1005FA42C;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100007A08;
  v4[3] = &unk_1008CB828;
  v3 = _Block_copy(v4);

  [v0 animateWithDuration:4 delay:v3 options:0 animations:0.15 completion:0.0];
  _Block_release(v3);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.dismiss()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    v2 = [v0 navigationController];
    v3 = [v2 visibleViewController];

    if (v3)
    {
      sub_100005744(0, &qword_1009711C0);
      v4 = v0;
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_1005FA428;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_100007A08;
        v8[3] = &unk_1008CB6F8;
        v7 = _Block_copy(v8);

        [v4 dismissViewControllerAnimated:1 completion:v7];
        _Block_release(v7);
      }
    }
  }
}

void sub_1005F94FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);

      ObjectType = swift_getObjectType();
      (*(v3 + 8))(ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.showLoading()()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v3 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v4 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v5 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController);
  static ViewControllerContainment.remove(_:)();

  v7 = *(v1 + v5);
  *(v1 + v5) = v4;
  v8 = v4;

  sub_1005F5C2C();
  if ((ArcadeSubscribePresenter.isAskToBuyRequest.getter() & 1) == 0)
  {
    type metadata accessor for ASKBagContract();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    ASKBagContract.arcadeSubscribePageDismissDelay.getter();
    sub_1005F84EC();
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.hideLoading()()
{
  v1 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController);
  static ViewControllerContainment.remove(_:)();

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_1005F5C2C();
}

void ArcadeSubscribeViewController.show(updateError:)()
{
  v1 = v0;
  type metadata accessor for JUContentUnavailableViewController();
  sub_1000078BC(&qword_10098EA20, 255, &type metadata accessor for ArcadeSubscribePresenter);
  swift_errorRetain();

  v2 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v3 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController);
  static ViewControllerContainment.remove(_:)();

  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v2;

  sub_1005F5C2C();
}

uint64_t ArcadeSubscribeViewController.perform(action:sender:)(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00);
  }

  sub_1005F9CC0(a1, 1, v6, v5, &type metadata accessor for Action, &qword_100989C80, &type metadata accessor for Action);

  return (*(v8 + 8))(v5, v7);
}

id ArcadeSubscribeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

unint64_t sub_1005F9B2C()
{
  result = qword_10098EA28;
  if (!qword_10098EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098EA28);
  }

  return result;
}

uint64_t sub_1005F9CC0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v30 = a4;
  v29 = a2;
  v8 = type metadata accessor for Dependency();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetricsFieldsContext();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = sub_10002849C(&unk_100982A90);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v24 - v20;
  v31[3] = v26(0);
  v31[4] = sub_1000078BC(v27, 255, v28);
  v31[0] = a1;
  if (v29)
  {

    sub_100510050();
    (*(v12 + 16))(v15, v17, v11);
    Dependency.init<A>(satisfying:with:)();
    dispatch thunk of BaseObjectGraph.adding(dependency:)();
    (*(v24 + 8))(v10, v25);
    (*(v12 + 32))(v21, v17, v11);
    (*(v19 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v18);
  }

  else
  {
    (*(v19 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v18);
  }

  sub_10002849C(&unk_100974490);
  v22 = ActionDispatcher.perform(_:withMetrics:asPartOf:)();

  (*(v19 + 8))(v21, v18);
  sub_100007000(v31);
  return v22;
}

id DebugSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1005FA540(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1005FA58C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005FA5D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005FA65C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005FA67C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1005FA6C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = CGRectGetWidth(*&a1) * *(v4 + 56);
  v11 = v10 * *(v4 + 16);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v12 = *(v4 + 64) + v10 + (CGRectGetWidth(v16) - v10) * 0.5 - v11;
  v13 = *(v4 + 32);
  v17.origin.x = v12;
  v17.origin.y = v13;
  v17.size.width = v11;
  v17.size.height = v11;
  CGRectGetMidX(v17);
  v18.origin.x = v12;
  v18.origin.y = v13;
  v18.size.width = v11;
  v18.size.height = v11;
  CGRectGetMidY(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetWidth(v19);
  sub_10002A400((v4 + 72), *(v4 + 96));
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400(v5 + 24, v5[27]);
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400(v5 + 14, v5[17]);
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400(v5 + 19, v5[22]);
  return dispatch thunk of Placeable.place(at:with:)();
}

__n128 sub_1005FA8CC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

id sub_1005FA8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_iconView;
  *&v5[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = &v5[OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_continueCallback];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_manageCallback];
  *v13 = a3;
  *(v13 + 1) = a4;

  v14._object = 0x800000010081CFC0;
  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  localizedString(_:comment:)(v14, v15);
  v16._countAndFlagsBits = 0xD00000000000002CLL;
  v16._object = 0x800000010081CFF0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  localizedString(_:comment:)(v16, v17);
  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v23.receiver = v5;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, "initWithTitle:detailText:icon:contentLayout:", v18, v19, 0, 2);

  v21 = v20;
  [v21 setModalInPresentation:1];

  return v21;
}

void sub_1005FAA84()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SystemImage();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "viewDidLoad", v9);
  v12 = [objc_opt_self() configurationWithPointSize:54.0];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_iconView];
  v29 = v12;
  [v13 setPreferredSymbolConfiguration:?];
  (*(v8 + 104))(v11, enum case for SystemImage.locationSquareFill(_:), v7);
  v14 = static SystemImage.load(_:with:)();
  (*(v8 + 8))(v11, v7);
  [v13 setImage:v14];

  v15 = [v1 headerView];
  v16 = [v15 customIconContainerView];

  if (v16)
  {
    [v16 addSubview:v13];
  }

  v17 = [objc_opt_self() boldButton];
  v18._countAndFlagsBits = 0xD00000000000002ELL;
  v18._object = 0x800000010081CF60;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  localizedString(_:comment:)(v18, v19);
  v20 = String._bridgeToObjectiveC()();

  [v17 setTitle:v20 forState:0];

  [v17 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  static AutomationSemantics.onboarding(elementName:id:parentId:)();
  sub_10003D444(&v30);
  sub_10003D444(&v32);
  UIView.setAutomationSemantics(_:)();
  v21 = *(v4 + 8);
  v21(v6, v3);
  v22 = [v1 buttonTray];
  [v22 addButton:v17];

  v23 = [objc_opt_self() linkButton];
  v24._object = 0x800000010081CF90;
  v24._countAndFlagsBits = 0xD00000000000002CLL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  localizedString(_:comment:)(v24, v25);
  v26 = String._bridgeToObjectiveC()();

  [v23 setTitle:v26 forState:0];

  [v23 addTarget:v1 action:"didTapManage" forControlEvents:64];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  static AutomationSemantics.onboarding(elementName:id:parentId:)();
  sub_10003D444(&v30);
  sub_10003D444(&v32);
  UIView.setAutomationSemantics(_:)();
  v21(v6, v3);
  v27 = [v1 buttonTray];
  [v27 addButton:v23];
}

uint64_t sub_1005FAFA0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_1005FB250();
  sub_1000076C0();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1005FB7BC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008CB9A8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_1005FB250()
{
  v1 = [v0 headerView];
  v8 = [v1 customIconContainerView];

  if (v8)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_iconView];
    [v2 sizeToFit];
    [v8 bounds];
    MidX = CGRectGetMidX(v10);
    [v2 frame];
    v4 = MidX - CGRectGetWidth(v11) * 0.5;
    [v8 bounds];
    MidY = CGRectGetMidY(v12);
    [v2 frame];
    v6 = MidY - CGRectGetHeight(v13) * 0.5;
    [v2 frame];
    Width = CGRectGetWidth(v14);
    [v2 frame];
    [v2 setFrame:{v4, v6, Width, CGRectGetHeight(v15)}];
  }
}

void sub_1005FB3C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v2 = Strong, v3 = [Strong headerView], v2, v4 = objc_msgSend(v3, "customIconContainerView"), v3, v4))
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MidX = CGRectGetMidX(v28);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_12;
  }

  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_iconView);

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v24;
  if (MidX == CGRectGetMidX(v29))
  {
    v25 = v13;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_1005FB250();
    }
  }
}

char *sub_1005FB7C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Accessory();
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_stackView;
  *&v3[v10] = [objc_allocWithZone(sub_10002849C(&qword_1009711E0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_objectGraph] = a2;
  v11 = *(sub_10002849C(&unk_100984520) + 48);
  *v9 = 1;
  v12 = type metadata accessor for StoreTab();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v40 = a1;
  v14(&v9[v11], a1, v12);
  (*(v13 + 56))(&v9[v11], 0, 1, v12);
  swift_storeEnumTagMultiPayload();

  sub_1000C4450(v15);
  v17 = v16;
  sub_1000C7C80(v9);
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_accountButton] = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTintColor:v20];

  v21 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesButton());

  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_seeAllGamesButton] = sub_100746690(v22);
  v42.receiver = v3;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = type metadata accessor for Feature.iOS();
  v41[3] = v24;
  v41[4] = sub_1005C7530();
  v25 = sub_1000056E0(v41);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_see_all_games_uplift_navigation_bar_Future(_:), v24);
  v26 = v23;
  LOBYTE(v23) = isFeatureEnabled(_:)();
  sub_100007000(v41);
  if (v23)
  {
    [*&v26[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_seeAllGamesButton]];
  }

  v27 = OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_stackView;
  v28 = OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_accountButton;
  [*&v26[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_accountButton]];
  v29 = *&v26[v27];
  *&v29[qword_100978370] = 0;
  [v29 setNeedsLayout];
  v30 = *&v26[v27];
  *&v30[qword_100978378] = 3;
  [v30 setNeedsLayout];
  v31 = *&v26[v27];
  *&v31[qword_100978380] = 0x4034000000000000;
  [v31 setNeedsLayout];
  v32 = *&v26[v27];
  v33 = v26;
  [v33 addSubview:v32];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  sub_10002849C(&qword_10097B110);
  v34 = swift_allocObject();
  v39 = xmmword_1007B10D0;
  *(v34 + 16) = xmmword_1007B10D0;
  *(v34 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  *(v35 + 16) = v39;
  *(v35 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v35 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v36 = *&v26[v28];
  v37 = [v33 traitCollection];
  LOBYTE(v35) = UITraitCollection.isRegularPad.getter();

  [v36 setHidden:v35 & 1];

  (*(v13 + 8))(v40, v12);

  return v33;
}

id WebViewController.protocolDelegate.getter()
{
  v1 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WebViewController.protocolDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1005FC01C(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for URLProtocolDelegate();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *&v1[OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate] = v18;
  sub_100412FA8();
  inject<A, B>(_:from:)();
  v4 = v18;
  type metadata accessor for ASKBagContract();
  inject<A, B>(_:from:)();
  v5 = ASKBagContract.amsBag.getter();
  v6 = [v18 ams_activeiTunesAccount];
  v17.receiver = v2;
  v17.super_class = type metadata accessor for WebViewController();
  v7 = objc_msgSendSuper2(&v17, "initWithBag:account:clientInfo:", v5, v6, 0);
  swift_unknownObjectRelease();

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 tableViewAppearance];
  [v9 setAppearance:v10];

  [v9 setDelegate:v9];
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = [v9 loadURL:v12];

  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v9;
}

id WebViewController.__allocating_init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v6;
}

void sub_1005FC40C(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  v7 = [objc_opt_self() sharedCoordinator];
  [v7 *a3];
}

void sub_1005FC4A0(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for WebViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

void WebViewController.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = URLProtocolDelegate.performAuthentication(for:)();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005FCAD8;
  aBlock[3] = &unk_1008CB9D0;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

{
  v7 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = URLProtocolDelegate.presentDialog(for:)();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005FCAD8;
  aBlock[3] = &unk_1008CB9F8;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

void sub_1005FC78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id WebViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t CondensedInAppPurchaseContentView.fetch(for:in:on:asPartOf:)(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a1, v6);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for InAppPurchaseSearchResult();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = InAppPurchaseSearchResult.lockup.getter();

    sub_1001BCDCC(v5, *(v2 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView), a2);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.cancelArtworkFetches(on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v6, v3);
  type metadata accessor for ArtworkView();
  sub_100600C6C(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t CondensedInAppPurchaseContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v93 = a2;
  v4 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseTheme();
  v96 = *(v8 - 8);
  __chkstk_darwin(v8);
  v94 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v79 - v11;
  v12 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v12 - 8);
  v92 = &v79 - v13;
  v91 = type metadata accessor for OfferButtonSubtitlePosition();
  v86 = *(v91 - 1);
  __chkstk_darwin(v91);
  v87 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009701A0);
  v89 = *(v15 - 8);
  v90 = v15;
  __chkstk_darwin(v15);
  v88 = &v79 - v16;
  v17 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v17 - 8);
  v85 = &v79 - v18;
  v19 = sub_10002849C(&qword_100973AC8);
  __chkstk_darwin(v19 - 8);
  v84 = &v79 - v20;
  v21 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v21 - 8);
  v23 = &v79 - v22;
  v24 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v24 - 8);
  v26 = &v79 - v25;
  v27 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v27 - 8);
  v29 = &v79 - v28;
  type metadata accessor for InAppPurchaseSearchResult();
  sub_100600C6C(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (*&v97[0])
  {
    v80 = v8;
    v81 = v7;
    v82 = v5;
    v83 = v4;
    v31 = InAppPurchaseSearchResult.lockup.getter();

    v32 = InAppPurchaseLockup.isSubscription.getter();
    v33 = *&v2[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel];
    v34 = "onalLayout.swift";
    if (v32)
    {
      v34 = "ultType.Heading.InAppPurchase";
      v35 = 0xD00000000000003ALL;
    }

    else
    {
      v35 = 0xD00000000000002DLL;
    }

    v36 = v34 | 0x8000000000000000;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v35, v37);
    v38 = String._bridgeToObjectiveC()();

    [v33 setText:v38];

    v39 = *&v2[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel];

    Lockup.title.getter();
    if (v40)
    {
      v41 = String._bridgeToObjectiveC()();
    }

    else
    {
      v41 = 0;
    }

    [v39 setText:v41];

    v42 = *&v3[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
    InAppPurchaseLockup.descriptionText.getter();
    if (v43)
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v42 setText:v44];

    v45 = v3;
    sub_100621080();
    if (Lockup.offerDisplayProperties.getter())
    {
      v46 = enum case for OfferStyle.white(_:);
      v47 = type metadata accessor for OfferStyle();
      v48 = *(v47 - 8);
      (*(v48 + 104))(v29, v46, v47);
      (*(v48 + 56))(v29, 0, 1, v47);
      v45 = v3;
      v49 = type metadata accessor for OfferEnvironment();
      (*(*(v49 - 8) + 56))(v26, 1, 1, v49);
      v50 = type metadata accessor for OfferTint();
      (*(*(v50 - 8) + 56))(v23, 1, 1, v50);
      v51 = type metadata accessor for OfferLabelStyle();
      v52 = v84;
      (*(*(v51 - 8) + 56))(v84, 1, 1, v51);
      memset(v97, 0, 32);
      v53 = dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)();

      sub_10002B894(v97, &unk_1009711D0);
      sub_10002B894(v52, &qword_100973AC8);
      sub_10002B894(v23, &unk_100973AD0);
      sub_10002B894(v26, &unk_100970160);
      sub_10002B894(v29, &qword_100973AE0);
    }

    else
    {
      v53 = 0;
    }

    v84 = v53;
    v79 = v45;
    v54 = *&v45[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton];
    v55 = Lockup.buttonAction.getter();

    v56 = sub_10002849C(&unk_100973240);
    v57 = v85;
    (*(*(v56 - 8) + 56))(v85, 1, 1, v56);
    v58 = v86;
    v59 = v91;
    (*(v86 + 104))(v87, enum case for OfferButtonSubtitlePosition.right(_:), v91);
    (*(v58 + 56))(v92, 1, 1, v59);
    sub_100600C6C(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    v60 = v88;
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v53, v55, 0, v57, v60, v93, 0, 0);

    (*(v89 + 8))(v60, v90);
    sub_10002B894(v57, &unk_100973230);
    [v54 setHidden:0];
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v61 = *&v45[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v62 = *&v97[0];
    v98.value.super.isa = 0;
    v98.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v98, v63);
    v99.value.super.isa = 0;
    v99.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v99, v64);
    type metadata accessor for ArtworkView();
    sub_100600C6C(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    v93 = v62;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    if (qword_10096EB80 != -1)
    {
      swift_once();
    }

    v92 = qword_1009D3010;
    v65 = v95;
    InAppPurchaseLockup.theme.getter();
    v66 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    v67 = v96;
    v68 = v80;
    (*(v96 + 24))(&v61[v66], v65, v80);
    swift_endAccess();
    v91 = *(v67 + 16);
    v69 = v94;
    (v91)(v94, &v61[v66], v68);
    sub_1002EBEE4(v69);
    v70 = *(v67 + 8);
    v70(v69, v68);
    v70(v65, v68);
    [v61 setBackgroundColor:v92];
    sub_1001BCDCC(v31, v61, v93);
    (v91)(v65, &v61[v66], v68);
    sub_1002EBEE4(v65);
    v70(v65, v68);
    [v61 setNeedsLayout];
    [v61 setHidden:0];
    v71 = v82;
    v72 = &v61[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_metrics];
    v73 = v81;
    v74 = v83;
    (*(v82 + 16))(v81, v72, v83);
    InAppPurchaseIconLayout.Metrics.tileOffset.getter();
    v76 = v75;
    InAppPurchaseIconLayout.Metrics.tileBorderWidth.getter();
    v78 = v79;
    *&v79[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_tileOffset] = v76 + v77;
    [v78 setNeedsLayout];

    return (*(v71 + 8))(v73, v74);
  }

  return result;
}

uint64_t static CondensedInAppPurchaseContentView.prefetchArtwork(for:with:asPartOf:)()
{
  type metadata accessor for InAppPurchaseSearchResult();
  sub_100600C6C(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v2)
  {
    InAppPurchaseSearchResult.lockup.getter();
    v1 = sub_1001BD3AC();

    ArtworkLoader.prefetchArtwork(using:)(v1);
  }

  return result;
}

double sub_1005FDA98(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v134.super.isa = a3;
  v149 = a1;
  v133 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v153 = *(v133 - 8);
  __chkstk_darwin(v133);
  v119 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v152 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v151 = *(v132 - 8);
  __chkstk_darwin(v132);
  v116 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VerticalFlowLayout();
  v121 = *(v7 - 8);
  v122 = v7;
  __chkstk_darwin(v7);
  v120 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OfferButtonMetrics();
  v127 = *(v9 - 8);
  v128 = v9;
  __chkstk_darwin(v9);
  v135 = (&v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v126 = &v107 - v12;
  v148 = type metadata accessor for LabelPlaceholderCompatibility();
  v150 = *(v148 - 8);
  __chkstk_darwin(v148);
  v141 = (&v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for FontSource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  (*(v19 + 8))(v21, v18);
  v131 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v125 = LayoutViewPlaceholder.init(representing:)();
  v154 = a2;
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerFont.getter();
  LODWORD(v147) = enum case for FontSource.useCase(_:);
  v22 = *(v15 + 104);
  v145 = v15 + 104;
  v146 = v22;
  v137 = v14;
  v22(v17);
  isa = v134.super.isa;
  v24.super.isa = FontSource.font(compatibleWith:)(v134).super.isa;
  v25 = *(v15 + 8);
  v143 = v15 + 8;
  v144 = v25;
  v25(v17, v14);
  v26 = InAppPurchaseLockup.isSubscription.getter();
  v27 = "onalLayout.swift";
  if (v26)
  {
    v27 = "ultType.Heading.InAppPurchase";
    v28 = 0xD00000000000003ALL;
  }

  else
  {
    v28 = 0xD00000000000002DLL;
  }

  v29 = v27 | 0x8000000000000000;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  object = localizedString(_:comment:)(*&v28, v30)._object;
  v31 = v24.super.isa;
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerNumberOfLines.getter();
  v32 = type metadata accessor for Feature();
  v173 = v32;
  v142 = sub_100600C6C(&qword_100972E50, &type metadata accessor for Feature);
  v174 = v142;
  v33 = sub_1000056E0(v172);
  LODWORD(v139) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v34 = *(v32 - 8);
  v138 = *(v34 + 104);
  v140 = (v34 + 104);
  v138(v33);
  isFeatureEnabled(_:)();
  sub_100007000(v172);
  v35 = v141;
  v115 = v31;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  object = *(v150 + 8);
  v150 += 8;
  v36 = v35;
  v37 = v148;
  (object)(v36, v148);
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleFont.getter();
  v38 = v137;
  v146(v17, v147, v137);
  v39 = FontSource.font(compatibleWith:)(isa).super.isa;
  v144(v17, v38);
  Lockup.title.getter();
  v40 = v39;
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleNumberOfLines.getter();
  v170 = v32;
  v171 = v142;
  v41 = sub_1000056E0(v169);
  (v138)(v41, v139, v32);
  isFeatureEnabled(_:)();
  sub_100007000(v169);
  v42 = v141;
  v114 = v40;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (object)(v42, v37);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleFont.getter();
  v43 = v137;
  v146(v17, v147, v137);
  v44 = v134.super.isa;
  v45 = FontSource.font(compatibleWith:)(v134).super.isa;
  v144(v17, v43);
  InAppPurchaseLockup.descriptionText.getter();
  v46 = v45;
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleNumberOfLines(for:)(v44);
  v167 = v32;
  v168 = v142;
  v47 = sub_1000056E0(v166);
  (v138)(v47, v139, v32);
  isFeatureEnabled(_:)();
  sub_100007000(v166);
  v113 = v46;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (object)(v42, v148);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v48 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v48 = qword_100991028;
  }

  v49 = v128;
  v50 = sub_1000056A8(v128, v48);
  v51 = v127;
  v52 = v135;
  (*(v127 + 16))(v135, v50, v49);
  (*(v51 + 32))(v126, v52, v49);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v53 = v131;
  swift_allocObject();
  v54 = LayoutViewPlaceholder.init(representing:)();
  v165[4] = &protocol witness table for LayoutViewPlaceholder;
  v165[3] = v53;
  v165[0] = v125;
  v164[4] = &protocol witness table for LayoutViewPlaceholder;
  v164[3] = v53;
  v164[0] = v54;
  v112 = v54;
  sub_10002849C(&qword_10096FC30);
  v55 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
  v124 = *(v55 + 72);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v110 = 4 * v124;
  v57 = swift_allocObject();
  v111 = v57;
  *(v57 + 16) = xmmword_1007B5360;
  v58 = v57 + v56;

  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v162 = &type metadata for CGFloat;
  v163 = &protocol witness table for CGFloat;
  v161[0] = v59;
  CondensedSearchInAppPurchaseCardLayout.Metrics.artworkAXBottomMargin.getter();
  v109 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v60 = v151;
  v61 = *(v151 + 104);
  v131 = v151 + 104;
  v135 = v61;
  v62 = v116;
  v61();
  v63 = sub_10002849C(&unk_10098D820);
  v64 = *(v152 + 72);
  object = *(v152 + 80);
  v137 = v63;
  v65 = v152;
  v129 = (object + 32) & ~object;
  v149 = 2 * v64;
  v150 = 3 * v64;
  v148 = v64;
  v66 = swift_allocObject();
  v147 = xmmword_1007B1E00;
  *(v66 + 16) = xmmword_1007B1E00;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  *&v156 = v66;
  v145 = sub_100600C6C(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v144 = sub_10002849C(&unk_10098D830);
  v146 = sub_1000364CC();
  v68 = v117;
  v67 = v118;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LODWORD(v143) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v69 = v153;
  v141 = *(v153 + 104);
  v142 = v153 + 104;
  v70 = v119;
  v71 = v133;
  v141(v119);
  v130 = v58;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v72 = *(v69 + 8);
  v153 = v69 + 8;
  v140 = v72;
  v72(v70, v71);
  v73 = *(v65 + 8);
  v152 = v65 + 8;
  v139 = v73;
  v73(v68, v67);
  v74 = *(v60 + 8);
  v151 = v60 + 8;
  v138 = v74;
  (v74)(v62, v132);
  sub_10002B894(v159, &qword_1009799E0);
  sub_100007000(v161);
  v75 = v173;
  v76 = v174;
  v77 = sub_10002A400(v172, v173);
  v162 = v75;
  v163 = *(v76 + 8);
  v78 = sub_1000056E0(v161);
  (*(*(v75 - 8) + 16))(v78, v77, v75);
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerTextSpace.getter();
  v158 = 0;
  v156 = 0u;
  v157 = 0u;
  v123 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  (v135)(v62);
  v79 = swift_allocObject();
  *(v79 + 16) = v147;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v155 = v79;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v80 = v133;
  (v141)(v70, v143, v133);
  v81 = v124;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v82 = v80;
  v140(v70, v80);
  v139(v68, v67);
  v83 = v132;
  (v138)(v62, v132);
  sub_10002B894(&v156, &qword_1009799E0);
  sub_100007000(v159);
  sub_100007000(v161);
  v108 = 2 * v81;
  v84 = v170;
  v85 = v171;
  v86 = sub_10002A400(v169, v170);
  v162 = v84;
  v163 = *(v85 + 8);
  v87 = sub_1000056E0(v161);
  (*(*(v84 - 8) + 16))(v87, v86, v84);
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextSpace.getter();
  v158 = 0;
  v156 = 0u;
  v157 = 0u;
  (v135)(v62, v123, v83);
  v88 = swift_allocObject();
  *(v88 + 16) = v147;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v155 = v88;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v141)(v70, v143, v82);
  v89 = v108;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v140(v70, v82);
  v139(v68, v67);
  v90 = v83;
  (v138)(v62, v83);
  sub_10002B894(&v156, &qword_1009799E0);
  sub_100007000(v159);
  sub_100007000(v161);
  v124 += v89;
  v91 = v167;
  v92 = v168;
  v93 = sub_10002A400(v166, v167);
  v162 = v91;
  v163 = *(v92 + 8);
  v94 = sub_1000056E0(v161);
  (*(*(v91 - 8) + 16))(v94, v93, v91);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextSpace.getter();
  v158 = 0;
  v156 = 0u;
  v157 = 0u;
  (v135)(v62, v123, v83);
  v95 = swift_allocObject();
  *(v95 + 16) = v147;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v155 = v95;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v96 = v133;
  (v141)(v70, v143, v133);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v140(v70, v96);
  v139(v68, v67);
  (v138)(v62, v90);
  sub_10002B894(&v156, &qword_1009799E0);
  sub_100007000(v159);
  sub_100007000(v161);
  CondensedSearchInAppPurchaseCardLayout.Metrics.artworkAXBottomMargin.getter();
  v160 = 0;
  memset(v159, 0, sizeof(v159));
  (v135)(v62, v109, v90);
  v97 = swift_allocObject();
  *(v97 + 16) = v147;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  *&v156 = v97;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v141)(v70, v143, v96);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v140(v70, v96);
  v139(v68, v67);
  (v138)(v62, v90);
  sub_10002B894(v159, &qword_1009799E0);
  sub_100007000(v161);
  v98 = v120;
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  sub_100007000(v164);
  sub_100007000(v165);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1007B0B70;
  v100 = v134.super.isa;
  *(v99 + 32) = v134;
  v101 = v100;
  v102 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v103 = v122;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v105 = v104;

  (*(v121 + 8))(v98, v103);
  (*(v127 + 8))(v126, v128);
  sub_100007000(v166);
  sub_100007000(v169);
  sub_100007000(v172);
  return v105;
}

double sub_1005FEFC0(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v168.super.isa = a3;
  v172 = a1;
  v144 = type metadata accessor for FlankedHorizontalLayout.ViewAlignment();
  v142 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v140 = &v124 - v7;
  v141 = type metadata accessor for VerticalFlowLayout();
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v156 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v179 = *(v177 - 8);
  __chkstk_darwin(v177);
  v134 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v180 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v178 = *(v174 - 8);
  __chkstk_darwin(v174);
  v131 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlankedHorizontalLayout();
  v137 = *(v12 - 8);
  v138 = v12;
  __chkstk_darwin(v12);
  v136 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OfferButtonMetrics();
  v154 = *(v14 - 8);
  v155 = v14;
  __chkstk_darwin(v14);
  v159 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v153 = &v124 - v17;
  v173 = type metadata accessor for LabelPlaceholderCompatibility();
  *&v176 = *(v173 - 8);
  __chkstk_darwin(v173);
  v19 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FontSource();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  (*(v25 + 8))(v27, v24);
  v151 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v152 = LayoutViewPlaceholder.init(representing:)();
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerFont.getter();
  LODWORD(v171) = enum case for FontSource.useCase(_:);
  v28 = *(v21 + 104);
  v169 = v21 + 104;
  *&v170 = v28;
  v160 = v20;
  v28(v23);
  v29.super.isa = FontSource.font(compatibleWith:)(a3).super.isa;
  v30 = *(v21 + 8);
  v166 = v21 + 8;
  v167 = v30;
  v30(v23, v20);
  v31 = InAppPurchaseLockup.isSubscription.getter();
  v32 = "onalLayout.swift";
  if (v31)
  {
    v32 = "ultType.Heading.InAppPurchase";
    v33 = 0xD00000000000003ALL;
  }

  else
  {
    v33 = 0xD00000000000002DLL;
  }

  v34 = v32 | 0x8000000000000000;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  countAndFlagsBits = localizedString(_:comment:)(*&v33, v35)._countAndFlagsBits;
  v36 = v29.super.isa;
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerNumberOfLines.getter();
  v37 = type metadata accessor for Feature();
  v205 = v37;
  v165 = sub_100600C6C(&qword_100972E50, &type metadata accessor for Feature);
  v206 = v165;
  v38 = sub_1000056E0(v204);
  LODWORD(v163) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v39 = *(v37 - 8);
  v162 = *(v39 + 104);
  v164 = v39 + 104;
  v162(v38);
  isFeatureEnabled(_:)();
  sub_100007000(v204);
  v158 = v19;
  v135 = v36;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v40 = *(v176 + 8);
  *&v176 = v176 + 8;
  countAndFlagsBits = v40;
  v41 = v19;
  v42 = v173;
  v40(v41, v173);
  v175 = a2;
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleFont.getter();
  v43 = v160;
  (v170)(v23, v171, v160);
  isa = FontSource.font(compatibleWith:)(v168).super.isa;
  v167(v23, v43);
  Lockup.title.getter();
  v45 = isa;
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleNumberOfLines.getter();
  v202 = v37;
  v203 = v165;
  v46 = sub_1000056E0(v201);
  (v162)(v46, v163, v37);
  isFeatureEnabled(_:)();
  sub_100007000(v201);
  v47 = v158;
  v130 = v45;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  countAndFlagsBits(v47, v42);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleFont.getter();
  v48 = v160;
  (v170)(v23, v171, v160);
  v49 = v168.super.isa;
  v50 = FontSource.font(compatibleWith:)(v168).super.isa;
  v167(v23, v48);
  InAppPurchaseLockup.descriptionText.getter();
  v51 = v50;
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleNumberOfLines(for:)(v49);
  v199 = v37;
  v200 = v165;
  v52 = sub_1000056E0(v198);
  (v162)(v52, v163, v37);
  isFeatureEnabled(_:)();
  sub_100007000(v198);
  v129 = v51;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  countAndFlagsBits(v47, v173);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v53 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v53 = qword_100991028;
  }

  v54 = v155;
  v55 = sub_1000056A8(v155, v53);
  v56 = v154;
  v57 = v159;
  (*(v154 + 16))(v159, v55, v54);
  (*(v56 + 32))(v153, v57, v54);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v58 = v151;
  swift_allocObject();
  v128 = LayoutViewPlaceholder.init(representing:)();
  v197[5] = v152;
  v197[4] = &protocol witness table for LayoutViewPlaceholder;
  v197[3] = v58;
  v197[0] = v128;

  CondensedSearchInAppPurchaseCardLayout.Metrics.textTopMargin.getter();
  sub_10002A400(v194, v195);
  AnyDimension.value(with:)();
  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v149 = type metadata accessor for TraitEnvironmentPlaceholder();
  v150 = sub_10002849C(&qword_100973210);
  v59 = swift_allocObject();
  v176 = xmmword_1007B0B70;
  *(v59 + 16) = xmmword_1007B0B70;
  *(v59 + 32) = v49;
  v127 = v49;
  v60 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  sub_100007000(v194);
  sub_10002849C(&qword_10096FC30);
  v61 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
  v147 = *(v61 + 72);
  v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v63 = swift_allocObject();
  v126 = v63;
  *(v63 + 16) = xmmword_1007B5350;
  v162 = (v63 + v62);
  sub_10002A400(v204, v205);
  LayoutView.withLayoutMargins(_:)();
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerTextSpace.getter();
  v190 = 0;
  v189 = 0u;
  v188 = 0u;
  LODWORD(v148) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v64 = v178;
  v65 = *(v178 + 104);
  v146 = v178 + 104;
  v157 = v65;
  v66 = v131;
  v65(v131);
  v67 = sub_10002849C(&unk_10098D820);
  v68 = *(v180 + 72);
  v158 = *(v180 + 80);
  v159 = v67;
  v145 = (v158 + 32) & ~v158;
  v172 = 2 * v68;
  v173 = 3 * v68;
  v171 = v68;
  v69 = swift_allocObject();
  v170 = xmmword_1007B1E00;
  *(v69 + 16) = xmmword_1007B1E00;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v185 = v69;
  v168.super.isa = sub_100600C6C(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v167 = sub_10002849C(&unk_10098D830);
  v169 = sub_1000364CC();
  v70 = v132;
  v71 = v133;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LODWORD(v166) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v72 = v179;
  v73 = *(v179 + 104);
  v164 = v179 + 104;
  v165 = v73;
  v74 = v134;
  v75 = v177;
  v73(v134);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v76 = *(v72 + 8);
  v179 = v72 + 8;
  v163 = v76;
  v76(v74, v75);
  v77 = *(v180 + 8);
  v180 += 8;
  countAndFlagsBits = v77;
  v77(v70, v71);
  v78 = *(v64 + 8);
  v178 = v64 + 8;
  v160 = v78;
  v79 = v174;
  v78(v66, v174);
  sub_10002B894(&v188, &qword_1009799E0);
  sub_100007000(v191);
  sub_100007000(v194);
  v80 = v202;
  v81 = v203;
  v82 = sub_10002A400(v201, v202);
  v195 = v80;
  v196 = v81[1];
  v83 = sub_1000056E0(v194);
  (*(*(v80 - 8) + 16))(v83, v82, v80);
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextSpace.getter();
  v190 = 0;
  v189 = 0u;
  v188 = 0u;
  v157(v66, v148, v79);
  v84 = swift_allocObject();
  *(v84 + 16) = v170;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v185 = v84;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v85 = v177;
  v165(v74, v166, v177);
  v86 = v147;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v163(v74, v85);
  countAndFlagsBits(v70, v71);
  v87 = v66;
  v160(v66, v79);
  sub_10002B894(&v188, &qword_1009799E0);
  sub_100007000(v191);
  sub_100007000(v194);
  v125 = 2 * v86;
  v88 = v199;
  v89 = v200;
  v90 = sub_10002A400(v198, v199);
  v195 = v88;
  v196 = v89[1];
  v91 = sub_1000056E0(v194);
  (*(*(v88 - 8) + 16))(v91, v90, v88);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextSpace.getter();
  v190 = 0;
  v189 = 0u;
  v188 = 0u;
  v157(v66, v148, v79);
  v92 = swift_allocObject();
  *(v92 + 16) = v170;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v185 = v92;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v93 = v177;
  v165(v74, v166, v177);
  v94 = v125;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v163(v74, v93);
  countAndFlagsBits(v70, v71);
  v95 = v174;
  v160(v87, v174);
  sub_10002B894(&v188, &qword_1009799E0);
  sub_100007000(v191);
  sub_100007000(v194);
  v148 = v94 + v147;
  CondensedSearchInAppPurchaseCardLayout.Metrics.offerButtonTopMargin.getter();
  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v192 = &type metadata for CGFloat;
  v193 = &protocol witness table for CGFloat;
  v191[0] = v96;
  v157(v87, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v95);
  v97 = swift_allocObject();
  *(v97 + 16) = v170;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  *&v188 = v97;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v98 = v177;
  v165(v74, v166, v177);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v163(v74, v98);
  countAndFlagsBits(v70, v71);
  v160(v87, v95);
  sub_100007000(v194);
  sub_10002B894(v191, &qword_1009799E0);
  v99 = v156;
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v100 = swift_allocObject();
  *(v100 + 16) = v176;
  v101 = v127;
  *(v100 + 32) = v127;
  v102 = v101;
  v103 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v104 = swift_allocObject();
  *(v104 + 16) = v176;
  *(v104 + 32) = v102;
  v105 = v102;
  v106 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v107 = swift_allocObject();
  *(v107 + 16) = v176;
  *(v107 + 32) = v105;
  v108 = v105;
  v109 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  CondensedSearchInAppPurchaseCardLayout.Metrics.artworkTrailingMargin.getter();
  sub_10002A400(v194, v195);
  AnyDimension.value(with:)();
  sub_100007000(v194);
  LayoutView.withLayoutMargins(_:)();
  v110 = v141;
  v192 = v141;
  v193 = &protocol witness table for VerticalFlowLayout;
  v111 = sub_1000056E0(v191);
  v112 = v139;
  (*(v139 + 16))(v111, v99, v110);
  sub_10002C0AC(v194, &v188);
  v187 = &protocol witness table for Double;
  v186 = &type metadata for Double;
  v185 = 0;
  v184 = 0;
  v182 = 0u;
  v183 = 0u;
  v113 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v114 = *(v142 + 104);
  v115 = v144;
  v114(v140, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v144);
  v181[3] = type metadata accessor for ZeroDimension();
  v181[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v181);
  static ZeroDimension.zero.getter();
  v114(v143, v113, v115);
  v116 = v136;
  FlankedHorizontalLayout.init(sublayout:leadingView:leadingMargin:leadingAlignment:trailingView:trailingMargin:trailingAlignment:)();
  sub_100007000(v194);
  (*(v112 + 8))(v156, v110);

  sub_100007000(v197);
  v117 = swift_allocObject();
  *(v117 + 16) = v176;
  *(v117 + 32) = v108;
  v118 = v108;
  v119 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100600C6C(&qword_10098B250, &type metadata accessor for FlankedHorizontalLayout);
  v120 = v138;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v122 = v121;

  (*(v137 + 8))(v116, v120);
  (*(v154 + 8))(v153, v155);
  sub_100007000(v198);
  sub_100007000(v201);
  sub_100007000(v204);
  return v122;
}

double _s8AppStore011CondensedInA19PurchaseContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV0aB3Kit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v10 - 8);
  v24 = type metadata accessor for PageGrid();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseSearchResult();
  sub_100600C6C(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v25)
  {
    return 0.0;
  }

  v21 = v3;
  v14 = InAppPurchaseSearchResult.lockup.getter();

  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  static CondensedSearchInAppPurchaseCardLayout.Metrics.baseMetrics.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v15 = v25;
  PageGrid.componentMeasuringSize(spanning:)();
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
    InAppPurchaseIconLayout.Metrics.tileOffset.getter();
    InAppPurchaseIconLayout.Metrics.tileBorderWidth.getter();
    CondensedSearchInAppPurchaseCardLayout.Metrics.withCornerTileOffset(_:)();
    v16 = sub_1005FDA98(v14, v6, v15);

    v17 = *(v4 + 8);
    v18 = v21;
    v17(v6, v21);
    (*(v22 + 8))(v2, v23);
    v17(v9, v18);
  }

  else
  {
    v16 = sub_1005FEFC0(v14, v9, v15);

    (*(v4 + 8))(v9, v21);
  }

  (*(v11 + 8))(v13, v24);
  return v16;
}

uint64_t sub_100600C6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100600D20()
{
  v1 = [v0 viewControllers];
  sub_100005744(0, &qword_1009711C0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    type metadata accessor for CategoryListViewController();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = (v8 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler);
      v11 = *(v8 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler);
      v12 = v10[1];
      *v10 = sub_100602E7C;
      v10[1] = v9;

      sub_10011B8E8(v11, v12);
    }

    else
    {
    }
  }

LABEL_13:
}

void sub_100600EBC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler];
    if (v4)
    {
      v5 = *&Strong[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler + 8];
      sub_10000827C(*&Strong[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler]);

      v4(a1);
      sub_10011B8E8(v4, v5);
    }

    else
    {
    }
  }
}

void sub_1006010A0()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 contentScaleFactor];
    v5 = v4;

    [v1 setScale:v5];
    [v1 setPreferredRange:1];
    v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v1 format:{22.0, 22.0}];
    v10[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1002FDC2C;
    v10[3] = &unk_1008CBAE8;
    v7 = _Block_copy(v10);

    v8 = [v6 imageWithActions:v7];

    _Block_release(v7);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      v9 = *&v0[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage];
      *&v0[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage] = v8;

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1006013B0(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  ArtworkLoader.isOccluded.setter();
}

id sub_1006015E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = type metadata accessor for IndexPath();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v11 = objc_allocWithZone(UITableViewCell);
    v12 = String._bridgeToObjectiveC()();
    v10 = [v11 initWithStyle:0 reuseIdentifier:v12];
  }

  v13 = [v10 imageView];
  if (v13)
  {
    v14 = v13;
    v15 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage);
    [v14 setImage:v15];
  }

  v16 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_dataSource);
  v36[1] = a2;
  IndexPath.row.getter();
  IndexPath.appending(_:)();
  sub_10002A400((v16 + 16), *(v16 + 40));
  v17 = dispatch thunk of TopChartsCategoriesPresenter.categoryArtwork(at:)();
  v36[0] = *(v6 + 8);
  (v36[0])(v8, v37);
  if (v17)
  {
    v18 = [v10 imageView];
    if (v18)
    {
      v19 = v18;
      v20 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage);
      [v19 setImage:v20];
    }

    Artwork.config(_:mode:prefersLayeredImage:)();
    v21 = [v10 imageView];
    if (v21)
    {
      v38 = v21;
      sub_100005744(0, &qword_100973120);
      sub_10055F664();
      AnyHashable.init<A>(_:)();
    }

    else
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
    }

    *(swift_allocObject() + 16) = v10;
    v24 = v10;
    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v39, &qword_10096FB90);
  }

  else
  {
    v22 = [v10 imageView];
    if (v22)
    {
      v23 = v22;
      [v22 setImage:0];
    }
  }

  v25 = [v10 textLabel];
  if (v25)
  {
    v26 = v25;
    IndexPath.row.getter();
    IndexPath.appending(_:)();
    sub_10002A400((v16 + 16), *(v16 + 40));
    dispatch thunk of TopChartsCategoriesPresenter.categoryTitle(at:)();
    v28 = v27;
    (v36[0])(v8, v37);
    if (v28)
    {
      v29 = String._bridgeToObjectiveC()();
    }

    else
    {
      v29 = 0;
    }

    [v26 setText:v29];
  }

  IndexPath.row.getter();
  IndexPath.appending(_:)();
  sub_10002A400((v16 + 16), *(v16 + 40));
  v30 = dispatch thunk of TopChartsCategoriesPresenter.hasChildren(at:)();
  v31 = v37;
  v32 = v36[0];
  (v36[0])(v8, v37);
  if (v30)
  {
    [v10 setAccessoryType:1];
  }

  else
  {
    IndexPath.row.getter();
    IndexPath.appending(_:)();
    sub_10002A400((v16 + 16), *(v16 + 40));
    v33 = dispatch thunk of TopChartsCategoriesPresenter.isCategorySelected(at:)();
    v32(v8, v31);
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    [v10 setAccessoryType:v34];
  }

  return v10;
}

uint64_t type metadata accessor for CategoryListViewController()
{
  result = qword_10098ECC0;
  if (!qword_10098ECC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100602008()
{
  result = type metadata accessor for IndexPath();
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

id sub_1006020C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = &a4[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a4[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage] = 0;
  v10 = &a4[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_dataSource];
  *v10 = a1;
  *(v10 + 1) = &off_1008C9F18;
  *&a4[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_artworkLoader] = a2;
  v11 = OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_parentIndexPath;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&a4[v11], a3, v12);
  v18.receiver = a4;
  v18.super_class = ObjectType;

  v14 = objc_msgSendSuper2(&v18, "initWithStyle:", 0);
  v15 = [v14 navigationItem];
  v16 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v14 action:"dismissSelf"];
  [v15 setRightBarButtonItem:v16];

  (*(v13 + 8))(a3, v12);
  return v14;
}

uint64_t sub_100602274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for FlowOrigin();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowAnimationBehavior();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowPresentationContext();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v12 - 8);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = type metadata accessor for FlowPage();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v24 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v30 = &v50 - v29;
  v63 = a2;
  if (a1)
  {
    [v3 setModalPresentationStyle:{7, v28}];
    v31 = [v3 popoverPresentationController];
    [v31 setBarButtonItem:a1];

    v32 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v30, 1, v32) == 1)
    {
      v34 = v30;
      return sub_10002B894(v34, &unk_100972A00);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v38 = *(v21 + 104);
    v51 = v23;
    v38(v23, enum case for FlowPage.viewController(_:), v20);
    v39 = type metadata accessor for URL();
    v40 = *(*(v39 - 8) + 56);
    v50 = v19;
    v40(v19, 1, 1, v39);
    v41 = type metadata accessor for ReferrerData();
    (*(*(v41 - 8) + 56))(v16, 1, 1, v41);
    v65 = ObjectType;
    v64 = v3;
    v42 = v3;
    static ActionMetrics.notInstrumented.getter();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v43 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005F9C8C(v43, 1, v63, v30);

    return (*(v33 + 8))(v30, v32);
  }

  else
  {
    v35 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v26, 1, v35) == 1)
    {
      v34 = v26;
      return sub_10002B894(v34, &unk_100972A00);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v44 = *(v21 + 104);
    v51 = v23;
    v44(v23, enum case for FlowPage.viewController(_:), v20);
    v45 = type metadata accessor for URL();
    v46 = *(*(v45 - 8) + 56);
    v50 = v19;
    v46(v19, 1, 1, v45);
    v47 = type metadata accessor for ReferrerData();
    (*(*(v47 - 8) + 56))(v16, 1, 1, v47);
    v65 = ObjectType;
    v64 = v3;
    v48 = v3;
    static ActionMetrics.notInstrumented.getter();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v49 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005F9C8C(v49, 1, v63, v26);

    return (*(v36 + 8))(v26, v35);
  }
}

void sub_100602B84()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_dataSource];
  IndexPath.row.getter();
  IndexPath.appending(_:)();
  sub_10002A400((v6 + 16), *(v6 + 40));
  v7 = dispatch thunk of TopChartsCategoriesPresenter.hasChildren(at:)();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v9 = *&v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_artworkLoader];
    swift_unknownObjectRetain();

    IndexPath.row.getter();
    IndexPath.appending(_:)();
    v10 = sub_1006020C4(v6, v9, v5, objc_allocWithZone(ObjectType));
    swift_unknownObjectRelease();

    v11 = *&v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    v12 = *&v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler + 8];
    v13 = &v10[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    v14 = *&v10[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    v15 = *&v10[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler + 8];
    *v13 = v11;
    v13[1] = v12;
    sub_10000827C(v11);
    sub_10011B8E8(v14, v15);
    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 pushViewController:v10 animated:1];
    }
  }

  else
  {
    v18 = &v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    v19 = *&v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    if (v19)
    {
      v20 = *(v18 + 1);

      IndexPath.row.getter();
      IndexPath.appending(_:)();
      v19(v5);
      sub_10011B8E8(v19, v20);
      v8(v5, v2);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
    v21 = *v18;
    v22 = *(v18 + 1);
    *v18 = 0;
    *(v18 + 1) = 0;
    sub_10011B8E8(v21, v22);
  }
}

void sub_100602E14(uint64_t a1)
{
  v3 = [*(v1 + 16) imageView];
  [v3 setImage:a1];
}

id sub_100602E84()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel];
  EditorialLink.descriptionText.getter();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel];
  EditorialLink.summaryText.getter();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return [v1 setNeedsLayout];
}

uint64_t sub_100602F68()
{
  v33 = type metadata accessor for FontSource();
  v38 = *(v33 - 8);
  __chkstk_darwin(v33);
  v1 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ArcadeFooterLayout.ButtonLocation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArcadeFooterLayout.Metrics();
  sub_100005644(v6, qword_10098ED30);
  v35 = sub_1000056A8(v6, qword_10098ED30);
  v53[18] = &type metadata for CGFloat;
  v53[19] = &protocol witness table for CGFloat;
  v53[14] = &protocol witness table for CGFloat;
  v53[15] = 0x4024000000000000;
  v53[13] = &type metadata for CGFloat;
  v53[10] = 0xC04F000000000000;
  v53[8] = &type metadata for CGFloat;
  v53[9] = &protocol witness table for CGFloat;
  v53[5] = 0x4036000000000000;
  if (qword_10096EAE8 != -1)
  {
    swift_once();
  }

  sub_10002C0AC(qword_10098ED60, v53);
  v7 = *(v3 + 104);
  v36 = v5;
  v7(v5, enum case for ArcadeFooterLayout.ButtonLocation.bottom(_:), v2);
  v52[13] = &type metadata for Double;
  v52[14] = &protocol witness table for Double;
  v52[9] = &protocol witness table for Double;
  v52[10] = 0x402E000000000000;
  v52[8] = &type metadata for Double;
  v52[5] = 0x4040000000000000;
  if (qword_10096E230 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v40 = sub_1000056A8(v8, qword_1009D1610);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v1, v40, v8);
  v31 = enum case for FontSource.useCase(_:);
  v12 = v38 + 104;
  v37 = *(v38 + 104);
  v13 = v33;
  v37(v1);
  v32 = type metadata accessor for CappedSizeStaticDimension();
  v52[3] = v32;
  v14 = sub_100605D50(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension);
  v52[4] = v14;
  sub_1000056E0(v52);
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  v16 = v40;
  v34 = v8;
  v39 = v11;
  v40 = v10;
  v10(v1, v16, v8);
  v17 = v12;
  v18 = v1;
  v19 = v37;
  v20 = v31;
  (v37)(v18, v31, v13);
  v51[3] = v32;
  v51[4] = v14;
  sub_1000056E0(v51);
  v21 = v15;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v54 = xmmword_1007CC620;
  v55 = xmmword_1007CC620;
  v56 = 0;
  if (qword_10096DE10 != -1)
  {
    swift_once();
  }

  v22 = v34;
  v32 = sub_1000056A8(v34, qword_1009D09B0);
  v40(v18, v32, v22);
  v19(v18, v20, v13);
  v23 = type metadata accessor for StaticDimension();
  v47[3] = v23;
  v47[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v47);
  v45 = v13;
  v46 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v44);
  v25 = v38;
  v30 = v17;
  v26 = *(v38 + 16);
  v26(v24, v18, v13);
  StaticDimension.init(_:scaledLike:)();
  v27 = *(v25 + 8);
  v27(v18, v13);
  v40(v18, v32, v22);
  (v37)(v18, v20, v13);
  v45 = v23;
  v46 = &protocol witness table for StaticDimension;
  sub_1000056E0(v44);
  v42 = v13;
  v43 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v41);
  v26(v28, v18, v13);
  StaticDimension.init(_:scaledLike:)();
  v27(v18, v13);
  v43 = &protocol witness table for Double;
  v42 = &type metadata for Double;
  v41[0] = 0x3FF0000000000000;
  return ArcadeFooterLayout.Metrics.init(iconSize:iconSpacing:iconRowCount:firstIconHorizontalOffset:wordmarkTopMargin:wordmarkHeight:buttonLocation:buttonTopMargin:buttonBottomMargin:buttonViewTopSpace:buttonViewBottomSpace:buttonMinWidth:buttonPreferredEdgeInsets:footnoteTopSpace:footnoteBottomSpace:footnoteSpaceMultiplier:layoutMargins:)();
}

uint64_t sub_1006035A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [swift_unknownObjectRetain() traitCollection];
    UITraitCollection.isSizeClassCompact.getter();

    ArcadeFooterLayout.Metrics.buttonMinWidth.setter();
    if (qword_10096EAF0 != -1)
    {
      swift_once();
    }

    v3 = sub_10002849C(&unk_100970EA0);
    sub_1000056A8(v3, qword_1009D2EC8);
    swift_unknownObjectRetain();
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    ArcadeFooterLayout.Metrics.iconSize.setter();
    if (qword_10096EAE0 != -1)
    {
      swift_once();
    }

    v4 = sub_10002849C(&qword_100979010);
    sub_1000056A8(v4, qword_10098ED48);
    swift_unknownObjectRetain();
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    ArcadeFooterLayout.Metrics.footnoteSpaceMultiplier.setter();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100603784()
{
  v0 = sub_10002849C(&qword_100979010);
  sub_100005644(v0, qword_10098ED48);
  sub_1000056A8(v0, qword_10098ED48);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

uint64_t sub_10060381C()
{
  v0 = type metadata accessor for FontSource();
  v1 = __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = UIFontTextStyleBody;
  (*(v4 + 104))(v3, enum case for FontSource.textStyle(_:), v1);
  qword_10098ED78 = type metadata accessor for CappedSizeStaticDimension();
  qword_10098ED80 = sub_100605D50(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension);
  sub_1000056E0(qword_10098ED60);
  v5 = UIFontTextStyleBody;
  v6 = UIContentSizeCategoryExtraExtraExtraLarge;
  return CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
}

uint64_t sub_10060396C()
{
  v0 = sub_10002849C(&unk_100970EA0);
  sub_100005644(v0, qword_1009D2EC8);
  sub_1000056A8(v0, qword_1009D2EC8);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for CGSize(0);
  return Conditional<>.init(regularValue:compactValue:)();
}

UIFontTextStyle sub_100603A18()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D2EE0);
  v1 = sub_1000056A8(v0, qword_1009D2EE0);
  *v1 = UIFontTextStyleBody;
  *(v1 + 8) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_100603AD4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CappedSizeStaticDimension();
  sub_100005644(v4, qword_1009D2EF8);
  sub_1000056A8(v4, qword_1009D2EF8);
  if (qword_10096EAF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D2EE0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
}

char *sub_100603C70(double a1, double a2, double a3, double a4)
{
  v105 = type metadata accessor for AutomationSemantics();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RiverViewStyling();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v102 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v95 - v13;
  v101 = type metadata accessor for CappedSizeStaticDimension();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for FontUseCase();
  v15 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WordmarkView.Alignment();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v21 - 8);
  v23 = &v95 - v22;
  v24 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v25 = type metadata accessor for ItemLayoutContext();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  *&v4[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView] = 0;
  v26 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *&v4[v26] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v96 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_wordmarkView;
  v27 = type metadata accessor for WordmarkView();
  v28 = enum case for Wordmark.arcade(_:);
  v29 = type metadata accessor for Wordmark();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v23, v28, v29);
  (*(v30 + 56))(v23, 0, 1, v29);
  if (qword_10096EAE8 != -1)
  {
    swift_once();
  }

  sub_10002C0AC(qword_10098ED60, &v112);
  (*(v18 + 104))(v20, enum case for WordmarkView.Alignment.leading(_:), v17);
  v31 = *(&v113 + 1);
  v32 = v114;
  v33 = sub_100047650(&v112, *(&v113 + 1));
  v34 = __chkstk_darwin(v33);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = sub_1001C8194(v23, v36, v20, v27, v31, v32);
  sub_100007000(&v112);
  *&v4[v96] = v38;
  v39 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_10096EAF8 != -1)
  {
    swift_once();
  }

  v40 = v97;
  v41 = sub_1000056A8(v97, qword_1009D2EE0);
  v42 = v98;
  (*(v15 + 16))(v98, v41, v40);
  if (qword_10096EB00 != -1)
  {
    swift_once();
  }

  v43 = v101;
  v44 = sub_1000056A8(v101, qword_1009D2EF8);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton());
  v46 = v99;
  (*(v100 + 16))(v99, v44, v43);
  v47 = UIContentSizeCategoryExtraExtraExtraLarge;
  v48 = sub_100605D98(v42, v46, UIContentSizeCategoryExtraExtraExtraLarge, v45);

  *&v4[v39] = v48;
  v49 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v49] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v50 = &v4[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v4[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_metrics;
  v53 = type metadata accessor for ArcadeFooterLayout.Metrics();
  (*(*(v53 - 8) + 56))(&v4[v52], 1, 1, v53);
  v54 = type metadata accessor for ArcadeFooterCollectionViewCell();
  v111.receiver = v4;
  v111.super_class = v54;
  v55 = objc_msgSendSuper2(&v111, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v59 = v55;
  [v59 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v60 = v59;
  v61 = [v60 contentView];
  [v61 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (qword_10096EAF0 != -1)
  {
    swift_once();
  }

  v62 = sub_10002849C(&unk_100970EA0);
  sub_1000056A8(v62, qword_1009D2EC8);
  *&v109 = v60;
  Conditional.evaluate(with:)();

  v63 = v112;
  static RiverViewStyling.defaultInterRowSpacing.getter();
  static RiverViewStyling.defaultInterItemSpacing.getter();
  static RiverViewStyling.defaultSpeed.getter();
  static RiverViewStyling.defaultRowOffsets.getter();
  v64 = v106;
  RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)();
  type metadata accessor for ArcadeFooterRiverViewDataSource();
  v65 = swift_allocObject();
  *(v65 + 16) = 2;
  *(v65 + 48) = 0;
  *(v65 + 56) = 0;
  *(v65 + 40) = _swiftEmptyArrayStorage;
  *(v65 + 24) = v63;
  (*(v107 + 16))(v102, v64, v108);
  v66 = objc_allocWithZone(sub_10002849C(&unk_10098EF20));
  v67 = RiverView.init(dataSource:styling:)();
  v68 = *&v60[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
  *&v60[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView] = v67;
  v69 = v67;

  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v70 = v103;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v109, &unk_1009711D0);
  sub_10002B894(&v112, &unk_1009711D0);
  v102 = v69;
  UIView.setAutomationSemantics(_:)();
  v71 = *(v104 + 8);
  v72 = v105;
  v71(v70, v105);
  v73 = [v60 contentView];
  [v73 addSubview:v69];

  v74 = [v60 contentView];
  [v74 addSubview:*&v60[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_wordmarkView]];

  v75 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView;
  v76 = *&v60[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView];
  sub_100005744(0, &qword_100970180);
  v77 = v76;
  v78 = static UIColor.defaultButtonTitleColor.getter();
  [v77 setTintColor:v78];

  v79 = *&v60[v75];
  v80 = static UIColor.defaultButtonTitleColor.getter();
  [v79 setTitleColor:v80 forState:0];

  v81 = *&v60[v75];
  v82 = static UIColor.placeholderBackgroundStandout.getter();
  [v81 _setBackgroundColor:v82];

  v83 = *&v60[v75];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v84 = v83;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v109, &unk_1009711D0);
  sub_10002B894(&v112, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v71(v70, v72);
  v85 = v60;
  v86 = [v85 contentView];
  [v86 addSubview:*&v60[v75]];

  v87 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  v88 = *&v85[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];
  [v88 addTarget:v85 action:"didTapFootnoteWithGestureRecognizer:"];

  v89 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView;
  [*&v85[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView] addGestureRecognizer:*&v85[v87]];
  v90 = *&v85[v89];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v91 = v90;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v109, &unk_1009711D0);
  sub_10002B894(&v112, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v71(v70, v72);
  v92 = [v85 contentView];

  v93 = *&v85[v89];
  [v92 addSubview:v93];

  (*(v107 + 8))(v106, v108);
  return v85;
}

uint64_t sub_1006049E8()
{
  v1 = type metadata accessor for LayoutRect();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100975948);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for ArcadeFooterLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ArcadeFooterCollectionViewCell();
  v48.receiver = v0;
  v48.super_class = v14;
  v35 = v14;
  objc_msgSendSuper2(&v48, "layoutSubviews");
  v15 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_100606944(&v0[v15], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &qword_100975948);
  }

  (*(v8 + 32))(v13, v6, v7);
  v17 = *&v0[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
  if (v17)
  {
    v18 = v17;
    v33 = v18;
    ArcadeFooterLayout.Metrics.layoutMargins.getter();
    [v0 layoutMargins];
    ArcadeFooterLayout.Metrics.layoutMargins.getter();
    [v0 layoutMargins];
    ArcadeFooterLayout.Metrics.layoutMargins.setter();
    (*(v8 + 16))(v10, v13, v7);
    v46 = sub_10002849C(&unk_10098EF20);
    v47 = &protocol witness table for UIView;
    v45 = v18;
    v19 = *&v0[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_wordmarkView];
    v43 = type metadata accessor for WordmarkView();
    v44 = &protocol witness table for UIView;
    v42 = v19;
    v31 = v3;
    v20 = v34;
    v21 = *&v0[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView];
    v40 = type metadata accessor for CappedSizeRoundedTitledButton();
    v41 = &protocol witness table for UIView;
    v39 = v21;
    v32 = v1;
    v22 = *&v0[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView];
    v23 = type metadata accessor for FootnoteView();
    v38 = &protocol witness table for UIView;
    v37 = v23;
    v36 = v22;
    type metadata accessor for ArcadeFooterLayout();
    swift_allocObject();
    v33 = v33;
    v24 = v19;
    v25 = v21;
    v26 = v22;
    ArcadeFooterLayout.init(metrics:riverView:wordmarkView:buttonView:footnoteView:)();
    v27 = [v0 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();

    v28 = v31;
    dispatch thunk of ArcadeFooterLayout.placeChildren(relativeTo:in:)();
    (*(v20 + 8))(v28, v32);
    [v25 frame];
    Width = CGRectGetWidth(v49);
    LayoutMarginsAware<>.layoutFrame.getter();
    if (Width == CGRectGetWidth(v50))
    {
      [v25 setTitleEdgeInsets:{0.0, 32.0, 0.0, 32.0}];
    }

    else
    {
      [v25 setTitleEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_100604FD0()
{
  v1 = v0;
  v2 = type metadata accessor for RiverViewStyling();
  __chkstk_darwin(v2 - 8);
  if (qword_10096EAF0 != -1)
  {
    swift_once();
  }

  v3 = sub_10002849C(&unk_100970EA0);
  sub_1000056A8(v3, qword_1009D2EC8);
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
  if (!v5 || ((v6 = v5, v7 = dispatch thunk of RiverView.dataSource.getter(), v6, swift_beginAccess(), v8 = *(v7 + 24), v9 = *(v7 + 32), , v26 == v8) ? (v10 = v27 == v9) : (v10 = 0), !v10))
  {
    type metadata accessor for ArcadeFooterRiverViewDataSource();
    v11 = swift_allocObject();
    *(v11 + 16) = 2;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 40) = _swiftEmptyArrayStorage;
    *(v11 + 24) = v26;
    *(v11 + 32) = v27;
    static RiverViewStyling.defaultInterRowSpacing.getter();
    static RiverViewStyling.defaultInterItemSpacing.getter();
    static RiverViewStyling.defaultSpeed.getter();
    static RiverViewStyling.defaultRowOffsets.getter();
    RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)();
    v12 = objc_allocWithZone(sub_10002849C(&unk_10098EF20));
    v13 = RiverView.init(dataSource:styling:)();
    v14 = *&v1[v4];
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      v17 = static NSObject.== infix(_:_:)();

      v18 = *&v1[v4];
      if ((v17 & 1) == 0 && v18)
      {
        [*&v1[v4] removeFromSuperview];
        v18 = *&v1[v4];
      }
    }

    else
    {
      v18 = 0;
    }

    *&v1[v4] = v13;
    v19 = v13;

    v20 = *&v1[v4];
    if (v20)
    {
      if (v14)
      {
        v21 = v14;
        v22 = v20;
        v23 = static NSObject.== infix(_:_:)();

        if (v23)
        {

          v20 = v22;
LABEL_22:

          return;
        }
      }

      else
      {
        v24 = v20;
      }

      v25 = [v1 contentView];
      [v25 addSubview:v20];

      if (v14)
      {
        dispatch thunk of RiverView.isAnimating.getter();
      }

      dispatch thunk of RiverView.isAnimating.setter();

      goto LABEL_22;
    }

    v20 = v14;
    goto LABEL_22;
  }
}

uint64_t sub_10060536C(uint64_t a1, uint64_t a2)
{
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  objc_msgSendSuper2(&v14, "touchesBegan:withEvent:", isa, a2);

  result = sub_10066D4C4(a1);
  if (result)
  {
    v7 = result;
    [result locationInView:v2];
    v9 = v8;
    v11 = v10;

    v12 = *&v2[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView];
    [v12 frame];
    v15.x = v9;
    v15.y = v11;
    result = CGRectContainsPoint(v16, v15);
    if (result)
    {
      v12[OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted] = 1;
      if (v12[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] == 1)
      {
        if (qword_10096CF40 != -1)
        {
          swift_once();
        }

        v13 = &qword_1009725C0;
      }

      else
      {
        if (qword_10096CF38 != -1)
        {
          swift_once();
        }

        v13 = &qword_1009725B8;
      }

      return [*&v12[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel] setTextColor:*v13];
    }
  }

  return result;
}

id sub_10060570C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeFooterCollectionViewCell()
{
  result = qword_10098EDB8;
  if (!qword_10098EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100605870()
{
  sub_100605998(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_100605998(319, &qword_10098EDD0, &type metadata accessor for ArcadeFooterLayout.Metrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100605998(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1006059EC(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2 >> 62)
  {
    v5 = result;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    result = v5;
    if (v6 > v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
    return 0;
  }

LABEL_3:
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {

    specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_7;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {

LABEL_7:
    v4 = dispatch thunk of ImpressionableArtwork.artwork.getter();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100605AC8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100605B68(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_100605BFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1006059EC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100605C24()
{
  type metadata accessor for ArtworkView();
  v0 = static ArtworkView.iconArtworkView.getter();
  sub_100005744(0, &qword_100970180);
  static UIColor.placeholderBackgroundStandout.getter();
  ArtworkView.backgroundColor.setter();
  return v0;
}

uint64_t sub_100605C8C()
{
  result = ArtworkView.image.setter();
  if (*(v0 + 56))
  {
    type metadata accessor for ArtworkView();
    sub_100605D50(&qword_100970E80, &type metadata accessor for ArtworkView);

    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  return result;
}

uint64_t sub_100605D50(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100605D98(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for CappedSizeStaticDimension();
  v26[3] = v12;
  v26[4] = sub_100605D50(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension);
  v13 = sub_1000056E0(v26);
  (*(*(v12 - 8) + 32))(v13, a2, v12);
  v14 = &a4[qword_10097E280];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_10002C0AC(v26, &a4[qword_10097E278]);
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = a3;
  v17 = v15;
  sub_10025B568(a3);
  v18 = type metadata accessor for FontUseCase();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a1, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  v20 = v17;
  dispatch thunk of DynamicTypeButton.fontUseCase.setter();

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_100005744(0, &qword_100970180);
  v21 = static UIColor.defaultButtonBackgroundColor.getter();
  [v20 _setBackgroundColor:v21];

  [v20 addTarget:v20 action:"didTapButton:" forControlEvents:64];
  v22 = static UIColor.defaultButtonTitleColor.getter();
  [v20 setTintColor:v22];

  [v20 _setWantsAccessibilityUnderline:0];
  (*(v19 + 8))(a1, v18);
  sub_100007000(v26);
  return v20;
}

void sub_100606094()
{
  v1 = type metadata accessor for CappedSizeStaticDimension();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FontUseCase();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WordmarkView.Alignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v13 = type metadata accessor for ItemLayoutContext();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView) = 0;
  v14 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v43 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_wordmarkView;
  v15 = type metadata accessor for WordmarkView();
  v16 = enum case for Wordmark.arcade(_:);
  v17 = type metadata accessor for Wordmark();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  if (qword_10096EAE8 != -1)
  {
    swift_once();
  }

  sub_10002C0AC(qword_10098ED60, v49);
  (*(v6 + 104))(v8, enum case for WordmarkView.Alignment.leading(_:), v5);
  v19 = v50;
  v20 = v51;
  v21 = sub_100047650(v49, v50);
  v22 = __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  v26 = sub_1001C8194(v11, v24, v8, v15, v19, v20);
  sub_100007000(v49);
  *(v0 + v43) = v26;
  v27 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_10096EAF8 != -1)
  {
    swift_once();
  }

  v28 = v44;
  v29 = sub_1000056A8(v44, qword_1009D2EE0);
  v30 = v45;
  (*(v3 + 16))(v45, v29, v28);
  if (qword_10096EB00 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_1000056A8(v48, qword_1009D2EF8);
  v33 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton());
  v34 = v46;
  (*(v47 + 16))(v46, v32, v31);
  v35 = UIContentSizeCategoryExtraExtraExtraLarge;
  v36 = sub_100605D98(v30, v34, UIContentSizeCategoryExtraExtraExtraLarge, v33);

  *(v0 + v27) = v36;
  v37 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *(v0 + v37) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = (v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_metrics;
  v41 = type metadata accessor for ArcadeFooterLayout.Metrics();
  (*(*(v41 - 8) + 56))(v0 + v40, 1, 1, v41);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1006066B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView);
  *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted) = 0;
  if (qword_10096CF38 != -1)
  {
    swift_once();
  }

  result = [*(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel) setTextColor:qword_1009725B8];
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  if (v3)
  {

    v3(v4);

    return sub_10001F63C(v3);
  }

  return result;
}

uint64_t sub_10060678C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  [a2 contentMode];
  Artwork.config(_:mode:prefersLayeredImage:)();
  Artwork.style.getter();
  ArtworkView.style.setter();
  [a2 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100005744(0, &qword_100970180);
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();
  if (*(v2 + 56))
  {
    type metadata accessor for ArtworkView();
    sub_100605D50(&qword_100970E80, &type metadata accessor for ArtworkView);

    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

uint64_t sub_100606944(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1006069B4()
{
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon] = 0;

  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  v1 = sub_10039801C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  swift_beginAccess();
  *&v0[v2] = v1;

  v3 = &v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v3 = 0;
  v3[8] = 1;
  result = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView];
  if (result)
  {
    [result reloadData];
    return [v0 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100606A80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_100606AE4();

  return v2;
}

id sub_100606AE4()
{
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  v1 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths;
  if (!*(*&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16))
  {
    return 0;
  }

  [v0 bounds];
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v2, qword_1009D2508);
  v3 = [v0 traitCollection];
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();
  v5 = v4;

  v6 = *&v0[v1];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = objc_opt_self();

    v11 = 0.0;
    v12 = 32;
    do
    {
      v13 = *(v6 + v12);
      v14 = [v8 absoluteDimension:{v13, v27}];
      v15 = [v8 absoluteDimension:v5];
      v16 = [v9 sizeWithWidthDimension:v14 heightDimension:v15];

      v17 = [v10 itemWithLayoutSize:v16];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v11 = v11 + v13;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v12 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = 0.0;
  }

  v19 = objc_opt_self();
  v20 = [v19 absoluteDimension:v11];
  v21 = [v19 absoluteDimension:v5];
  v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = objc_opt_self();
  sub_100005744(0, &qword_10098EFE0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v23 horizontalGroupWithLayoutSize:v22 subitems:isa];

  v18 = [objc_opt_self() sectionWithGroup:v25];
  return v18;
}

void sub_100606EC4()
{
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  if (*&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon])
  {
    swift_beginAccess();

    v2 = sub_10060737C(v1);

    v3 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths;
    v4 = *(*&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16);
    if (v2 >> 62)
    {
      if (v4 != _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_31;
      }
    }

    else if (v4 != *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v5 = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_pageTraits];
    if (!v5)
    {
      goto LABEL_31;
    }

    swift_unknownObjectRetain();
    [v0 bounds];
    CGRectGetMinX(v53);
    [v0 bounds];
    CGRectGetWidth(v54);
    v6 = [v0 traitCollection];
    [v6 displayScale];

    v7 = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator];
    if (v7)
    {
      swift_unknownObjectRetain();
      v8 = v7;
      [v0 bounds];
      CGRect.withLayoutDirection(in:relativeTo:)();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_unknownObjectRelease();
      [v8 setFrame:{v10, v12, v14, v16}];
    }

    v17 = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator];
    if (v17)
    {
      v18 = v17;
      [v0 bounds];
      CGRectGetMaxY(v55);
      swift_unknownObjectRetain();
      [v0 bounds];
      CGRect.withLayoutDirection(in:relativeTo:)();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      swift_unknownObjectRelease();
      [v18 setFrame:{v20, v22, v24, v26}];
    }

    [v5 pageMarginInsets];
    v28 = v27;
    [v5 pageMarginInsets];
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v30 = v28 + v29;
      if (!v4)
      {
        goto LABEL_19;
      }

      v31 = *&v0[v3];
      if (v4 <= *(v31 + 16))
      {
        if (v4 >= 4)
        {
          v32 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          v33 = (v31 + 48);
          v34 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = v30 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
            v33 += 4;
            v34 -= 4;
          }

          while (v34);
          if (v4 == v32)
          {
LABEL_19:
            [v0 bounds];
            Width = CGRectGetWidth(v56);
            v39 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView;
            v40 = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView];
            if (v40)
            {
              v41 = (Width - v30) * 0.5;
              if (v41 < 0.0)
              {
                v42 = 0.0;
              }

              else
              {
                v42 = v41;
              }

              v43 = v40;
              [v0 bounds];
              MinY = CGRectGetMinY(v57);
              [v0 bounds];
              v45 = CGRectGetWidth(v58);
              if (v45 >= v30)
              {
                v46 = v30;
              }

              else
              {
                v46 = v45;
              }

              [v0 bounds];
              [v43 setFrame:{v42, MinY, v46, CGRectGetHeight(v59)}];

              v47 = *&v0[v39];
              if (v47)
              {
                v48 = v47;
                [v0 bounds];
                [v48 setScrollEnabled:CGRectGetWidth(v60) < v30];

                if (v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] == 1)
                {
                  v49 = *&v0[v39];
                  if (v49)
                  {
                    v50 = v49;

                    v51 = [v50 collectionViewLayout];

                    [v51 invalidateLayout];
                    swift_unknownObjectRelease();
LABEL_32:

                    return;
                  }

LABEL_40:
                  __break(1u);
                  return;
                }

                swift_unknownObjectRelease();
LABEL_31:

                goto LABEL_32;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        else
        {
          v32 = 0;
        }

        v35 = v4 - v32;
        v36 = (v31 + 8 * v32 + 32);
        do
        {
          v37 = *v36++;
          v30 = v30 + v37;
          --v35;
        }

        while (v35);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_38;
  }
}

double *sub_10060737C(uint64_t a1)
{
  v25 = a1;
  v24 = type metadata accessor for BadgeType();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = InformationRibbon.badges.getter();
  v8 = v7;
  v26 = _swiftEmptyArrayStorage;
  if (!(v7 >> 62))
  {
    v23 = v7 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v23 = v8 & 0xFFFFFFFFFFFFFF8;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = 0;
  v22 = v8 & 0xC000000000000001;
  v11 = (v1 + 8);
  v12 = _swiftEmptyArrayStorage;
  do
  {
    v21 = v12;
    v13 = v10;
    while (1)
    {
      if (v22)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v13 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v1 = *(v8 + 8 * v13 + 32);

        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v14 = v9;
      Badge.type.getter();
      v15 = BadgeType.rendersNatively.getter();
      v16 = *v11;
      (*v11)(v6, v24);
      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }

      Badge.type.getter();
      if (*(v25 + 16))
      {
        v17 = sub_1003D79C8(v3);
        if (v18)
        {
          break;
        }
      }

      v16(v3, v24);
      ++v13;
      v9 = v14;
      if (v10 == v14)
      {
        v12 = v21;
        goto LABEL_25;
      }
    }

    v19 = *(*(v25 + 56) + 8 * v17);

    v16(v3, v24);
    v1 = v19;
LABEL_16:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v9 = v14;
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v9 = v14;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = v26;
  }

  while (v10 != v9);
LABEL_25:

  return v12;
}

uint64_t sub_10060774C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_100607A08(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t), uint64_t a3, void *a4)
{
  v5 = v4;
  v87 = a4;
  ObjectType = swift_getObjectType();
  v80 = type metadata accessor for InformationRibbon.Alignment();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = type metadata accessor for BadgeType();
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v86 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  v81 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel;
  *(v4 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel) = 1;
  *(v4 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_artworkLoader) = a2;

  *(v4 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_objectGraph) = a3;
  v84 = a2;

  *(v4 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon) = a1;
  v85 = a3;

  v88 = a1;
  v14 = InformationRibbon.badges.getter();
  v15 = v14;
  v93[0] = _swiftEmptyArrayStorage;
  if (v14 >> 62)
  {
LABEL_16:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      v90 = v5;
      v17 = 0;
      v5 = (v89 + 1);
      v91 = (v89 + 1);
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v20 = v93[0];
            v5 = v90;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        Badge.type.getter();
        v19 = BadgeType.rendersNatively.getter();
        (*v5)(v13, v92);
        if (v19)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v91;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v17;
        if (v18 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_18:

  v21 = v86;
  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v22 = *(v20 + 16);
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_64;
  }

  v23 = 0;
  v90 = v20 & 0xC000000000000001;
  v91 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  v24 = v88;
  ++v89;
  v82 = v22;
  v83 = v20;
  do
  {
    if (v90)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    Badge.type.getter();
    v30 = v91;
    swift_beginAccess();
    if (*(v5 + v30))[2] && (sub_1003D79C8(v21), (v31))
    {
      swift_endAccess();
      v32 = *v89;

      v32(v21, v92);
    }

    else
    {
      swift_endAccess();
      (*v89)(v21, v92);
      v25 = v85;
      Badge.enrich(objectGraph:)(v85);
      v26 = swift_allocObject();
      v26[2] = v5;
      v26[3] = v24;
      v26[4] = v84;
      v26[5] = v25;
      v26[6] = v87;
      v27 = sub_100005744(0, &qword_1009729E0);

      v21 = v86;

      v28 = v5;
      swift_unknownObjectRetain();
      v29 = static OS_dispatch_queue.main.getter();
      v93[3] = v27;
      v93[4] = &protocol witness table for OS_dispatch_queue;
      v93[0] = v29;
      Promise.then(perform:orCatchError:on:)();
      v22 = v82;

      sub_100007000(v93);
    }

    ++v23;
  }

  while (v22 != v23);
LABEL_32:

  v33 = v87;
  v34 = swift_getObjectType();
  v35 = [v33 snapshotPageTraitEnvironment];
  *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_pageTraits) = v35;
  swift_unknownObjectRelease();
  if (InformationRibbon.hasTopSeparator.getter() & 1) != 0 && (InformationRibbon.separatorsAreFullWidth.getter())
  {
    v36 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator;
    v37 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator);
    if (!v37)
    {
      sub_100427A6C([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator);
      v37 = *(v5 + v36);
      if (!v37)
      {
        goto LABEL_42;
      }
    }

    sub_100005744(0, &qword_100970180);
    v38 = v37;
    v39 = static UIColor.defaultLine.getter();
    [v38 setBackgroundColor:v39];
  }

  else
  {
    v40 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator;
    v41 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator);
    if (v41)
    {
      [v41 removeFromSuperview];
      v39 = *(v5 + v40);
    }

    else
    {
      v39 = 0;
    }

    *(v5 + v40) = 0;
  }

LABEL_42:
  if ((InformationRibbon.hasBottomSeparator.getter() & 1) == 0 && *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) != 1 || (InformationRibbon.separatorsAreFullWidth.getter() & 1) == 0)
  {
    v46 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator;
    v47 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator);
    if (v47)
    {
      [v47 removeFromSuperview];
      v45 = *(v5 + v46);
    }

    else
    {
      v45 = 0;
    }

    *(v5 + v46) = 0;
    goto LABEL_52;
  }

  v42 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator;
  v43 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator);
  if (v43 || (sub_100427A6C([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator), (v43 = *(v5 + v42)) != 0))
  {
    sub_100005744(0, &qword_100970180);
    v44 = v43;
    v45 = static UIColor.defaultLine.getter();
    [v44 setBackgroundColor:v45];

LABEL_52:
  }

  v48 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView;
  v49 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView);
  if (!v49)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = v49;
  v51 = v87;
  [v87 pageMarginInsets];
  v53 = v52;
  [v51 pageMarginInsets];
  v55 = v54;
  [v51 pageMarginInsets];
  v57 = v56;
  [v51 pageMarginInsets];
  [v50 setContentInset:{v53, v55, v57}];

  swift_beginAccess();

  v59 = sub_10060737C(v58);

  v60 = v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  if ((*(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken + 8) & 1) != 0 || (v61 = *v60, v61 != sub_100609114(v59)))
  {
    *v60 = sub_100609114(v59);
    v60[8] = 0;
    [v5 bounds];
    v63 = *(v5 + v48);
    if (!v63)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v64 = v62;
    [v63 contentInset];
    v66 = *(v5 + v48);
    if (!v66)
    {
LABEL_67:
      __break(1u);
      return;
    }

    v67 = v64 - v65;
    [v66 contentInset];
    v69 = v67 - v68;
    [v5 bounds];
    v71 = v70;
    v72 = v77;
    InformationRibbon.alignment.getter();
    sub_100608A14(v59, v72, v87, v69, v71, ObjectType, v34);
    v74 = v73;
    (*(v78 + 8))(v72, v80);
    *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths) = v74;

    *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 1;
  }

  v75 = *(v5 + v48);
  if (!v75)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v76 = v75;

  [v76 reloadData];

  [v5 setNeedsLayout];
  *(v5 + v81) = 0;
  if (*(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel) == 1)
  {
    *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
    sub_100607A08(v88, v84, v85, v87);
  }
}

void sub_100608400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BadgeType();
  __chkstk_darwin(v12 - 8);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {

    Badge.type.getter();
    swift_beginAccess();

    sub_10004AD7C(v15, v14);
    swift_endAccess();
    if (*(a2 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel) == 1)
    {

      *(a2 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel) = 1;
    }

    else
    {
      sub_100607A08(a3, a4, a5, a6);
    }
  }
}

uint64_t sub_10060853C()
{
  if (qword_10096D110 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_1009CE1E8);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v3[3] = &type metadata for String;
  v3[0] = Error.localizedDescription.getter();
  v3[1] = v1;
  static LogMessage.safe(_:)();
  sub_10002B894(v3, &unk_1009711D0);
  Logger.error(_:)();
}

uint64_t type metadata accessor for InformationRibbonCollectionViewCell()
{
  result = qword_10098EFC0;
  if (!qword_10098EFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100608810()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1006088DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v9, qword_1009D2508);
  v10 = [a7 traitCollection];
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();

  return a1;
}

void (*sub_100608994(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7))(char *, uint64_t)
{
  result = sub_10060906C();
  if (result)
  {
    sub_100607A08(result, a3, a4, a7);
  }

  return result;
}

void sub_100608A14(unint64_t a1, double *a2, void *a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for InformationRibbon.Alignment();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v19)
  {
    return;
  }

  v20 = [a3 traitCollection];
  v21 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v21)
  {
    if (!v18)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v23 = _CocoaArrayWrapper.endIndex.getter();
    if ((v23 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v23)
      {
        v25 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v25 + 16) = v23;
        memset_pattern16((v25 + 32), &unk_1007C4B10, 8 * v23);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v18)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v22 = floor(a4 / v24);
  if (*&v22 <= 136.0)
  {
    if (v24 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v24)
    {
      a2 = _swiftEmptyArrayStorage;
      if (a4 > 0.0)
      {
        v13 = *&_swiftEmptyArrayStorage[2];
        if (!v13)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v30 = type metadata accessor for BadgeView(0);
    v31 = 0;
    v14 = a1 & 0xC000000000000001;
    a2 = _swiftEmptyArrayStorage;
    v32 = 0.0;
    while (1)
    {
      if (v14)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(a1 + 8 * v31 + 32);
      }

      v34 = sub_10007C9A8(v33, v31, 0, v24, a3, a4, a5, v30, a7);

      if (v34 >= 105.0)
      {
        if (v34 >= 136.0)
        {
          v35 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_10003356C(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v35 = floor(v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v35 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v18 = *(a2 + 2);
      v36 = *(a2 + 3);
      v13 = v18 + 1;
      if (v18 >= v36 >> 1)
      {
        a2 = sub_10003356C((v36 > 1), v18 + 1, 1, a2);
      }

      ++v31;
      *(a2 + 2) = v13;
      a2[v18 + 4] = v35;
      v32 = v32 + v35;
      if (v24 == v31)
      {
        a4 = a4 - v32;
        if (a4 <= 0.0)
        {
          return;
        }

LABEL_45:
        a3 = a2 + 4;
        v55 = _swiftEmptyArrayStorage;
        sub_100144108(0, v13, 0);
        v17 = 0;
        v38 = v55;
        a7 = *(v55 + 2);
        do
        {
          v39 = *(a3 + v17);
          v55 = v38;
          v40 = *(v38 + 3);
          if (&v17[a7] >= v40 >> 1)
          {
            sub_100144108((v40 > 1), &v17[a7 + 1], 1);
            v38 = v55;
          }

          v41 = v17 + 1;
          *(v38 + 2) = &v17[a7 + 1];
          v38[a7 + 4 + v17] = 136.0 - v39;
          v17 = v41;
        }

        while (v13 != v41);
        v42 = &v41[a7];
        if (&v41[a7 - 1] <= 2)
        {
          v43 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v43 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        v44 = v38 + 6;
        a5 = 0.0;
        v45 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v44 - 2) + *(v44 - 1) + *v44 + v44[1];
          v44 += 4;
          v45 -= 4;
        }

        while (v45);
        if (v42 != v43)
        {
LABEL_54:
          v46 = &v41[a7 - v43];
          v47 = &v38[v43 + 4];
          do
          {
            v48 = *v47++;
            a5 = a5 + v48;
            --v46;
          }

          while (v46);
        }

        if (v13 <= v42)
        {
          a1 = 4;
          while (1)
          {
            v49 = v38[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_100548D50(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            a2[a1] = floor(a4 * (v49 / a5)) + a2[a1];
            ++a1;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v19 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v54 = v22;
  (*(v14 + 16))(v17, a2, v13);
  if ((*(v14 + 88))(v17, v13) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v24 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v24)
    {
      return;
    }

    v26 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v26 + 16) = v24;
    v27 = (v26 + 32);
    if (v24 < 4)
    {
      v28 = 0;
      v29 = v54;
LABEL_67:
      v53 = v24 - v28;
      do
      {
        *v27++ = v29;
        --v53;
      }

      while (v53);
      return;
    }

    v28 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    v27 += v24 & 0x7FFFFFFFFFFFFFFCLL;
    v29 = v54;
    v50 = vdupq_lane_s64(v54, 0);
    v51 = (v26 + 48);
    v52 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 4;
    }

    while (v52);
    if (v24 != v28)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v24 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v24)
    {
      v37 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v37 + 16) = v24;
      memset_pattern16((v37 + 32), &unk_1007C4B00, 8 * v24);
    }

    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_10060906C()
{
  v0 = *(Shelf.items.getter() + 16);

  if (v0)
  {
    result = Shelf.items.getter();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    sub_10002C0AC(result + 32, v3);

    sub_10002849C(&qword_100973D50);
    type metadata accessor for InformationRibbon();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t sub_100609114(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_7:

      v5 = Badge.caption.getter();
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v5 = 0;
        v7 = 0xE000000000000000;
      }

      v8 = v7;
      String.append(_:)(*&v5);

      v9 = Badge.heading.getter();
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v12 = v11;
      String.append(_:)(*&v9);

      ++v3;
      if (v4 == i)
      {
        goto LABEL_20;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v13 = String.hashValue.getter();

  return v13;
}

void sub_100609294()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_itemLayoutContext;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon] = 0;
  v4 = &v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v4 = 0;
  v4[8] = 1;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator] = 0;
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_objectGraph] = 0;
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_pageTraits] = 0;
  v5 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *&v0[v5] = sub_10039801C(_swiftEmptyArrayStorage);
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel] = 0;
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths] = _swiftEmptyArrayStorage;
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v27[4] = sub_10060A0DC;
  v27[5] = v7;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_1002E9BD4;
  v27[3] = &unk_1008CBBB8;
  v9 = _Block_copy(v27);
  v10 = v6;

  v11 = [v8 initWithSectionProvider:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(UICollectionView) initWithFrame:v11 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView;
  v14 = *&v10[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView];
  *&v10[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView] = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v15 setShowsHorizontalScrollIndicator:0];

  v16 = *&v10[v13];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v16 setAlwaysBounceVertical:0];
  v17 = *&v10[v13];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for BadgeCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v17;
  v20 = String._bridgeToObjectiveC()();
  [v19 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v20];

  v21 = *&v10[v13];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v10[v13];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v25 setDataSource:v10];
  v26 = *&v10[v13];
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v26 setDelegate:v10];
  if (*&v10[v13])
  {
    [v10 addSubview:?];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_100609684()
{
  v1 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon) = 0;
  v3 = v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_pageTraits) = 0;
  v4 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *(v0 + v4) = sub_10039801C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006097E4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for BadgeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  if (*(v2 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon))
  {
    v13 = *(v2 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_objectGraph);
    if (v13)
    {
      v43 = v10;
      v44 = a2;
      v14 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
      swift_beginAccess();
      v42 = v2;

      v16 = sub_10060737C(v15);

      type metadata accessor for BadgeCollectionViewCell();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v41 = v17;
        v18 = a1;
        v19 = IndexPath.item.getter();
        if (v16 >> 62)
        {
          v38 = v19;
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (v38 < v20)
          {
LABEL_6:
            v39 = v20;
            v21 = IndexPath.item.getter();
            v22 = v16 & 0xC000000000000001;
            v40 = v18;
            if ((v16 & 0xC000000000000001) == 0)
            {
              if ((v21 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v21 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {

                goto LABEL_10;
              }

              __break(1u);
              goto LABEL_42;
            }

            specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
            Badge.type.getter();

            v23 = BadgeType.rendersNatively.getter();
            v24 = *(v6 + 8);
            v24(v12, v43);
            if (v23)
            {
              v25 = IndexPath.item.getter();
              if (v22)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v25 & 0x8000000000000000) != 0)
                {
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

                if (v25 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_45:
                  __break(1u);
                  return;
                }
              }

              Badge.type.getter();

              v26 = v42;
              swift_beginAccess();
              v27 = *(v26 + v14);
              if (*(v27 + 16))
              {
                v28 = sub_1003D79C8(v8);
                if (v29)
                {
                  v30 = *(*(v27 + 56) + 8 * v28);
                  swift_endAccess();

                  v24(v8, v43);
                  goto LABEL_26;
                }
              }

              swift_endAccess();
              v24(v8, v43);
            }

            v31 = IndexPath.item.getter();
            if (v22)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_25:

LABEL_26:

              if ((InformationRibbon.hasBottomSeparator.getter() & 1) != 0 || *(v42 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) == 1)
              {
                v32 = InformationRibbon.separatorsAreFullWidth.getter();
              }

              else
              {
                v32 = 1;
              }

              v33 = IndexPath.item.getter();
              if (InformationRibbon.hasTopSeparator.getter())
              {
                v34 = InformationRibbon.separatorsAreFullWidth.getter();
              }

              else
              {
                v34 = 1;
              }

              v35 = Badge.clickAction.getter();
              v36 = v41;
              v37 = v39;
              sub_10007B86C(v30, v33, 0, v39, v35, v13);
              [*&v36[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_topSeparatorView] setHidden:v34 & 1];
              [*&v36[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_bottomSeparatorView] setHidden:v32 & 1];
              [*&v36[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_verticalSeparatorView] setHidden:v33 == v37 - 1];
              [v36 setNeedsLayout];

              goto LABEL_37;
            }

            if ((v31 & 0x8000000000000000) == 0)
            {
              if (v31 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v30 = *&v16[v31 + 4];

                goto LABEL_25;
              }

              goto LABEL_43;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19 < v20)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_37:
    }
  }
}

uint64_t sub_100609CB8(void *a1)
{
  v3 = type metadata accessor for BadgeType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  type metadata accessor for BadgeCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_artworkLoader))
    {
      v11 = *(result + OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_badgeView);
      v12 = *(v11 + OBJC_IVAR____TtC8AppStore9BadgeView_artworkView);
      if (v12)
      {
        v13 = OBJC_IVAR____TtC8AppStore9BadgeView_badgeType;
        swift_beginAccess();
        (*(v4 + 16))(v9, v11 + v13, v3);
        (*(v4 + 104))(v6, enum case for BadgeType.artwork(_:), v3);
        sub_10060A094(&unk_10098EFD0, &type metadata accessor for BadgeType);
        v18[0] = a1;

        v14 = v12;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v18[3] == v18[1] && v18[4] == v18[2])
        {
          v15 = *(v4 + 8);
          v15(v6, v3);
          v15(v9, v3);
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v17 = *(v4 + 8);
          v17(v6, v3);
          v17(v9, v3);

          if ((v16 & 1) == 0)
          {
LABEL_9:
          }
        }

        type metadata accessor for ArtworkView();
        sub_10060A094(&qword_100970E80, &type metadata accessor for ArtworkView);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_100609FD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon);
  if (v1)
  {
    swift_beginAccess();

    v3 = sub_10060737C(v2);

    if (v3 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return v1;
}

uint64_t sub_10060A094(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10060A0E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_10060A11C(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_10060A174;
}

void sub_10060A174(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_10025CC60(v2);
  }

  else
  {
    sub_10025CC60(*a1);
  }
}

uint64_t sub_10060A20C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10060A3E0(&qword_10097B3F8, type metadata accessor for EditorialCardCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_10060A2C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_10060A3E0(&qword_10097B3F8, type metadata accessor for EditorialCardCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_10060A3E0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10060A460(uint64_t a1, void *a2)
{
  sub_10002A400(a2, a2[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  return v2;
}

uint64_t sub_10060A4CC(int a1, int a2)
{
  v66 = a2;
  v3 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for PageGrid.HorizontalMargins();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  __chkstk_darwin(v4);
  v7 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v8 - 8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = v57 - v11;
  __chkstk_darwin(v12);
  v63 = v57 - v13;
  __chkstk_darwin(v14);
  v62 = v57 - v15;
  __chkstk_darwin(v16);
  v61 = v57 - v17;
  __chkstk_darwin(v18);
  v59 = v57 - v19;
  __chkstk_darwin(v20);
  v57[5] = v57 - v21;
  __chkstk_darwin(v22);
  v57[4] = v57 - v23;
  __chkstk_darwin(v24);
  *&v58 = v57 - v25;
  __chkstk_darwin(v26);
  v57[3] = v57 - v27;
  __chkstk_darwin(v28);
  v57[2] = v57 - v29;
  __chkstk_darwin(v30);
  v57[1] = v57 - v31;
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  sub_10002849C(&qword_100970EF0);
  v37 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v69 = *(v37 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B23A0;
  v60 = v39;
  v71 = v39 + v38;
  v70 = a1;
  if (a1)
  {
    v40 = 0x3FF0000000000000;
  }

  else
  {
    v40 = 0x4000000000000000;
  }

  v74 = v40;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0x4020000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v46 = *(v73 + 104);
  v68 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v73 += 104;
  v67 = v46;
  v46(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v48 = 0x3FF0000000000000;
  }

  else
  {
    v48 = 0x4000000000000000;
  }

  v74 = v48;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v50 = 0x4000000000000000;
  }

  else
  {
    v50 = 0x4008000000000000;
  }

  v74 = v50;
  PageGrid.DirectionalValue.init(_:)();
  if (v66)
  {
    v51 = 12.0;
  }

  else
  {
    v51 = 20.0;
  }

  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v52 = 0x4000000000000000;
  }

  else
  {
    v52 = 0x4010000000000000;
  }

  v74 = v52;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v53 = 0x4008000000000000;
  }

  else
  {
    v53 = 0x4014000000000000;
  }

  v74 = v53;
  PageGrid.DirectionalValue.init(_:)();
  if (v66)
  {
    v54 = 12.0;
  }

  else
  {
    v54 = 24.0;
  }

  v74 = *&v54;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v55 = 0x4008000000000000;
  }

  else
  {
    v55 = 0x4018000000000000;
  }

  v74 = v55;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v54;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v60;
}

uint64_t sub_10060B108(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EB28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_10098F090);
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

uint64_t sub_10060B2F4()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_10098F090);
  v1 = sub_1000056A8(v0, qword_10098F090);
  if (qword_10096E2D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D17F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10060B424()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode:2];

  v3 = [v1 navigationItem];
  dispatch thunk of GenericAccountPagePresenter.title.getter();
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v3 setTitle:v5];

  sub_1006106AC(&qword_10098F188, v6, type metadata accessor for GenericAccountPageViewController);
  swift_unknownObjectRetain();
  dispatch thunk of GenericAccountPagePresenter.view.setter();
  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  [result setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  result = [v1 tableView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  [result setAlwaysBounceVertical:1];

  result = [v1 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = result;
  sub_100005744(0, &unk_10098F190);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  [v10 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_20;
  }

  v13 = result;
  type metadata accessor for LinkableFooterView();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v13 registerClass:v14 forHeaderFooterViewReuseIdentifier:v15];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_21;
  }

  v16 = result;
  _s8AppStore10HeaderViewCMa_0();
  v17 = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(v17);
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [v16 registerClass:v17 forHeaderFooterViewReuseIdentifier:v18];

  result = [v1 tableView];
  if (result)
  {
    v19 = result;
    [result setRowHeight:UITableViewAutomaticDimension];

    return dispatch thunk of BasePresenter.didLoad()();
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_10060B9A4()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10060BB4C(void *a1)
{
  v2 = v1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1 || ((UITraitCollection.prefersRightToLeftLayouts.getter() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = [a1 preferredContentSizeCategory];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

    return;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
LABEL_3:
    v6 = [v2 tableView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10060BDF8(void *a1)
{
  v3 = type metadata accessor for AccountSectionLink.LinkDisplayType();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v114 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v115 = v111 - v6;
  v7 = type metadata accessor for AccountSectionLink();
  v119 = *(v7 - 1);
  v120 = v7;
  __chkstk_darwin(v7);
  v118 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for FloatingPointRoundingRule();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v10 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_10098F170);
  __chkstk_darwin(v11 - 8);
  v13 = v111 - v12;
  v14 = type metadata accessor for AccountSection.ContentItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v111 - v19;
  v111[1] = *&v1[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_presenter];
  dispatch thunk of GenericAccountPagePresenter.contentItem(at:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_74;
  }

  v121 = v15;
  v122 = v14;
  (*(v15 + 32))(v20, v13, v14);
  v126 = v20;
  v21 = sub_10060D198(v20);
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096EB28 != -1)
  {
    swift_once();
  }

  v123 = v1;
  v22 = type metadata accessor for FontUseCase();
  sub_1000056A8(v22, qword_10098F090);
  v124 = a1;
  v23 = [a1 traitCollection];
  v24 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v25 = [v21 textLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setFont:v24];
  }

  v125 = v24;
  v27 = [v21 textLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setNumberOfLines:0];
  }

  v29 = [v21 textLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setLineBreakMode:0];
  }

  v31 = [v21 textLabel];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_opt_self() labelColor];
    [v32 setTextColor:v33];
  }

  v34 = [v21 detailTextLabel];
  if (v34)
  {
    v35 = v34;
    [v34 setFont:v125];
  }

  v36 = [v21 detailTextLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setNumberOfLines:0];
  }

  v38 = [v21 detailTextLabel];
  if (v38)
  {
    v39 = v38;
    [v38 setLineBreakMode:0];
  }

  v40 = [v21 detailTextLabel];
  v41 = v123;
  if (v40)
  {
    v42 = v40;
    v43 = [objc_opt_self() labelColor];
    [v42 setTextColor:v43];
  }

  [v21 setAccessoryType:0];
  [v21 setAccessoryView:0];
  v13 = v21;
  [v13 setUserInteractionEnabled:0];
  if (qword_10096EB10 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098F018, qword_10098F030);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v45 = v44;
  (*(v112 + 8))(v10, v113);
  v46 = v124;
  [v124 layoutMargins];
  v48 = v47;
  [v46 layoutMargins];
  [v13 setLayoutMargins:{v45, v48, v45}];
  v50 = v121;
  v49 = v122;
  (*(v121 + 16))(v17, v126, v122);
  v51 = (*(v50 + 88))(v17, v49);
  if (v51 == enum case for AccountSection.ContentItem.link(_:))
  {
    (*(v50 + 96))(v17, v49);
    (*(v119 + 32))(v118, v17, v120);
    v52 = [v13 textLabel];
    if (v52)
    {
      v53 = v52;
      AccountSectionLink.title.getter();
      v54 = String._bridgeToObjectiveC()();

      [v53 setText:v54];
    }

    AccountSectionLink.displayType.getter();
    (*(v116 + 104))(v114, enum case for AccountSectionLink.LinkDisplayType.navigation(_:), v117);
    sub_1006106AC(&qword_10098F178, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v55 = &selRef_setRequiresColorStatistics_;
    if (aBlock == v133 && v128 == v134)
    {
      v56 = v117;
      v57 = *(v116 + 8);
      v57(v114, v117);
      v57(v115, v56);
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v69 = *(v116 + 8);
      v70 = v49;
      v71 = v41;
      v72 = v117;
      v69(v114, v117);
      v73 = v72;
      v41 = v71;
      v49 = v70;
      v55 = &selRef_setRequiresColorStatistics_;
      v69(v115, v73);

      if ((v68 & 1) == 0)
      {
        v88 = [v13 textLabel];
        v74 = &selRef_setRequiresColorStatistics_;
        if (v88)
        {
          v89 = v88;
          v90 = [v124 tintColor];
          [v89 setTextColor:v90];
        }

        goto LABEL_37;
      }
    }

    [v13 setAccessoryType:1];
    v74 = &selRef_setRequiresColorStatistics_;
LABEL_37:
    [v13 v74[18]];

    (*(v119 + 8))(v118, v120);
LABEL_60:
    v64 = &selRef_loadView;
    goto LABEL_61;
  }

  if (v51 != enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    if (v51 != enum case for AccountSection.ContentItem.text(_:))
    {
      if (v51 == enum case for AccountSection.ContentItem.personalizedRecommendationsToggle(_:))
      {
        (*(v50 + 96))(v17, v49);
        v91 = *(v17 + 1);
        v92 = v17[16];
        sub_100005744(0, &qword_10097CD40);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v93 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v94 = [objc_allocWithZone(UISwitch) initWithFrame:v93 primaryAction:{0.0, 0.0, 0.0, 0.0}];

        v95 = dispatch thunk of GenericAccountPagePresenter.personalizedRecommendationsEnabled.getter();
        if (v95 == 2)
        {
          v96 = v92;
        }

        else
        {
          v96 = v95;
        }

        [v94 setOn:v96 & 1];
        [v13 setAccessoryView:v94];
        v97 = [v13 textLabel];
        if (v97)
        {
          v98 = v97;
          v55 = &selRef_setRequiresColorStatistics_;
          if (v91)
          {
            v99 = String._bridgeToObjectiveC()();
          }

          else
          {
            v99 = 0;
          }

          [v98 setText:v99];
        }

        else
        {

          v55 = &selRef_setRequiresColorStatistics_;
        }

        [v13 setUserInteractionEnabled:1];

        goto LABEL_60;
      }

      (*(v50 + 8))(v17, v49);
      goto LABEL_55;
    }

    (*(v50 + 96))(v17, v49);
    v75 = [v13 textLabel];
    v64 = &selRef_loadView;
    if (v75)
    {
      v76 = v75;
      v77 = [objc_opt_self() secondaryLabelColor];
      [v76 setTextColor:v77];
    }

    v78 = [v13 textLabel];
    v55 = &selRef_setRequiresColorStatistics_;
    if (!v78)
    {
      goto LABEL_44;
    }

    v120 = v78;
    AccountSectionText.paragraph.getter();
    v79 = Paragraph.text.getter();

    v80 = [v124 traitCollection];
    v81 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v79];
    v124 = [v79 length];
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(v82 + 24) = v80;
    *(v82 + 32) = v81;
    *(v82 + 40) = 1;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_10010279C;
    *(v83 + 24) = v82;
    v131 = sub_1001027AC;
    v132 = v83;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = sub_1006606C4;
    v130 = &unk_1008CBC58;
    v84 = _Block_copy(&aBlock);
    v85 = v80;
    v86 = v81;

    [v79 enumerateAttributesInRange:0 options:v124 usingBlock:{0x100000, v84}];

    _Block_release(v84);
    LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

    if ((v84 & 1) == 0)
    {
      v87 = v120;
      [v120 setAttributedText:v86];

      v49 = v122;
      v41 = v123;
      v50 = v121;
LABEL_55:
      v55 = &selRef_setRequiresColorStatistics_;
      goto LABEL_60;
    }

    __break(1u);
LABEL_74:
    sub_10002B894(v13, &qword_10098F170);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v50 + 96))(v17, v49);
  v58 = [v13 textLabel];
  if (v58)
  {
    v59 = v58;
    AccountSectionInfoListItem.title.getter();
    v60 = String._bridgeToObjectiveC()();

    [v59 setText:v60];
  }

  v61 = [v13 textLabel];
  v55 = &selRef_setRequiresColorStatistics_;
  if (v61)
  {
    v62 = v61;
    sub_100005744(0, &qword_100970180);
    v63 = static UIColor.secondaryText.getter();
    [v62 setTextColor:v63];
  }

  v64 = &selRef_loadView;
  v65 = [v13 detailTextLabel];
  if (v65)
  {
    v66 = v65;
    AccountSectionInfoListItem.value.getter();
    v67 = String._bridgeToObjectiveC()();

    [v66 setText:v67];

    v64 = &selRef_loadView;
  }

LABEL_44:

LABEL_61:
  v100 = [v13 textLabel];
  if (v100)
  {
    v101 = v100;
    v102 = [v41 v55[35]];
    v103 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v103)
    {
      v104 = 2;
    }

    else
    {
      v104 = 0;
    }

    [v101 setTextAlignment:v104];
  }

  v105 = [v13 v64[373]];
  if (v105)
  {
    v106 = v105;
    v107 = [v41 v55[35]];
    v108 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v108)
    {
      v109 = 2;
    }

    else
    {
      v109 = 0;
    }

    [v106 setTextAlignment:v109];

    (*(v50 + 8))(v126, v49);
  }

  else
  {
    (*(v50 + 8))(v126, v49);
  }

  return v13;
}