uint64_t closure #1 in MOSuggestionActivityRouteAssetView.makeUIView()(uint64_t *a1, uint64_t a2)
{
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation26MeasurementFormatUnitUsageVySo14NSUnitDurationCGMd);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleV9UnitWidthVySo14NSUnitDurationC__GMd);
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo14NSUnitDurationC_GMd);
  v31 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd);
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = [objc_allocWithZone(FIUIFormattingManager) init];
  v19 = [v18 stringWithDuration:2 durationFormat:*(a2 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_duration)];
  if (v19)
  {
    v20 = v19;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v22;
  }

  else
  {
    v24 = [objc_opt_self() minutes];
    type metadata accessor for NSUnitDuration();
    Measurement.init(value:unit:)();
    static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
    (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
    static MeasurementFormatUnitUsage.general.getter();
    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
    (*(v34 + 8))(v5, v35);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v8, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
    (*(v32 + 8))(v11, v33);
    lazy protocol witness table accessor for type Measurement<NSUnitDuration><>.FormatStyle and conformance Measurement<A><>.FormatStyle();
    Measurement<>.formatted<A>(_:)();
    (*(v31 + 8))(v14, v12);
    (*(v30 + 8))(v17, v15);
    v41 = v43;
    v42 = v44;
    v39 = 32;
    v40 = 0xE100000000000000;
    v37 = 0;
    v38 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v26 = String.uppercased()();
    countAndFlagsBits = v26._countAndFlagsBits;
    object = v26._object;
  }

  v27 = v36;
  *v36 = countAndFlagsBits;
  v27[1] = object;
}

Swift::Void __swiftcall MOSuggestionActivityRouteAssetView.setupLabels()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_exerciseNameLabel];
  [v1 addSubview:v2];
  v3 = *&v1[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_workoutDataLabel];
  [v1 addSubview:v3];
  v4 = [v2 superview];
  if (v4)
  {
    v5 = v4;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v2 topAnchor];
    v7 = [v5 topAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:12.0];
    if (v8)
    {
      [v8 setActive:1];
    }
  }

  v9 = [v2 superview];
  if (v9)
  {
    v10 = v9;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v2 leadingAnchor];
    v12 = [v10 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    [v13 setConstant:8.0];
    if (v13)
    {
      [v13 setActive:1];
    }
  }

  v14 = [v2 superview];
  if (v14)
  {
    v15 = v14;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v2 trailingAnchor];
    v17 = [v15 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setConstant:-8.0];
    if (v18)
    {
      [v18 setActive:1];
    }
  }

  [v2 setTextAlignment:1];
  [v3 setTextAlignment:1];
  v19 = [v3 superview];
  if (v19)
  {
    v20 = v19;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v3 bottomAnchor];
    v22 = [v20 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    if (v23)
    {
      [v23 setConstant:-12.0];
      [v23 setActive:1];
    }
  }

  v24 = [v3 superview];
  if (v24)
  {
    v25 = v24;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [v3 leadingAnchor];
    v27 = [v25 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    [v28 setConstant:0.0];
    if (v28)
    {
      [v28 setActive:1];
    }
  }

  v29 = [v3 superview];
  if (v29)
  {
    v33 = v29;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v3 trailingAnchor];
    v31 = [v33 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:8.0];
    if (v32)
    {
      [v32 setActive:1];
    }
  }
}

Swift::Void __swiftcall MOSuggestionActivityRouteAssetView.adjustForFontSizeChanges()()
{
  v1 = v0[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_assignedTileSize];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = static UIContentSizeCategory.> infix(_:_:)();
  v4 = *&v0[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_workoutDataLabel];
  if ((v2 & (((v1 - 6) & 0xFD) == 0)) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [v4 setNumberOfLines:v5];
}

id MOSuggestionActivityRouteAssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionActivityRouteAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionActivityRouteAssetView.init(coder:)()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  if (!v3)
  {
    v3 = [v2 systemBlueColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distanceBlue) = v3;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 colorNamed:v4];

  if (!v5)
  {
    v5 = [v2 systemYellowColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_timeYellow) = v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v2 colorNamed:v6];

  if (!v7)
  {
    v7 = [v2 systemPinkColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_movePink) = v7;
  v8 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_exerciseNameLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.exerciseNameLabel();
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_workoutDataLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.workoutDataLabel();
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_labelStack;
  v13 = [objc_allocWithZone(UIStackView) init];
  [v13 setAxis:1];
  [v13 setDistribution:4];
  [v13 setAlignment:1];
  [v13 setSpacing:2.0];
  *(v0 + v12) = v13;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000EBC24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for NSUnitDuration()
{
  result = lazy cache variable for type metadata for NSUnitDuration;
  if (!lazy cache variable for type metadata for NSUnitDuration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitDuration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitDuration><>.FormatStyle and conformance Measurement<A><>.FormatStyle()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitDuration><>.FormatStyle and conformance Measurement<A><>.FormatStyle;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitDuration><>.FormatStyle and conformance Measurement<A><>.FormatStyle)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo14NSUnitDurationC_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitDuration><>.FormatStyle and conformance Measurement<A><>.FormatStyle);
  }

  return result;
}

id MOSuggestionEvergreenCollectionViewCell.assetView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell_assetView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionEvergreenCollectionViewCell.assetView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell_assetView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionEvergreenCollectionViewCell.assetViewModel.getter()
{
  return MOSuggestionEvergreenCollectionViewCell.assetViewModel.getter();
}

{
  swift_beginAccess();
  return swift_weakLoadStrong();
}

uint64_t MOSuggestionEvergreenCollectionViewCell.assetViewModel.setter()
{
  swift_beginAccess();
  v1 = swift_weakAssign();
  (*((swift_isaMask & *v0) + 0xB8))(v1);
}

void (*MOSuggestionEvergreenCollectionViewCell.assetViewModel.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell_assetViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MOSuggestionEvergreenCollectionViewCell.assetViewModel.modify;
}

void MOSuggestionEvergreenCollectionViewCell.assetViewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v4 = v3[4];
    swift_endAccess();

    (*((swift_isaMask & *v4) + 0xB8))(v5);
  }

  free(v3);
}

void MOSuggestionEvergreenCollectionViewCell.cellViewModel.setter()
{
  swift_beginAccess();
  v1 = swift_weakAssign();
  v2 = (*((swift_isaMask & *v0) + 0x68))(v1);
  v3 = (*((swift_isaMask & *v0) + 0x80))();
  (*((swift_isaMask & *v2) + 0xA0))(v3);
}

void (*MOSuggestionEvergreenCollectionViewCell.cellViewModel.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell_cellViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MOSuggestionEvergreenCollectionViewCell.cellViewModel.modify;
}

void MOSuggestionEvergreenCollectionViewCell.cellViewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v4 = v3[4];
    swift_endAccess();

    v6 = (*((swift_isaMask & *v4) + 0x68))(v5);
    v7 = (*((swift_isaMask & *v4) + 0x80))();
    (*((swift_isaMask & *v6) + 0xA0))(v7);
  }

  free(v3);
}

Swift::Void __swiftcall MOSuggestionEvergreenCollectionViewCell.setupShadow()()
{
  v1 = [v0 contentView];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor:v3];

  v4 = [v0 contentView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [v0 contentView];
  v6 = [v5 layer];

  [v6 setMaskedCorners:1];
  v7 = [v0 contentView];
  [v7 setClipsToBounds:1];

  v8 = [v0 contentView];
  v9 = [v8 layer];

  [v9 setMasksToBounds:0];
  v10 = [v0 contentView];
  v11 = [v10 layer];

  [v11 setCornerRadius:10.0];
  v12 = [v0 contentView];
  v13 = [v12 layer];

  v14 = [v2 blackColor];
  v15 = [v14 CGColor];

  [v13 setShadowColor:v15];
  v16 = [v0 contentView];
  v17 = [v16 layer];

  LODWORD(v18) = 1036831949;
  [v17 setShadowOpacity:v18];

  v19 = [v0 contentView];
  v20 = [v19 layer];

  [v20 setShadowOffset:{0.0, 2.0}];
  v21 = [v0 contentView];
  v22 = [v21 layer];

  [v22 setShadowRadius:4.0];
  v23 = [v0 contentView];
  v24 = [v23 layer];

  [v24 setCornerCurve:kCACornerCurveContinuous];
  v25 = [v0 contentView];
  v26 = [v25 layer];

  [v26 setShadowPathIsBounds:1];
}

void MOSuggestionEvergreenCollectionViewCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell_assetView;
  type metadata accessor for MOSuggestionSheetAssetView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionEvergreenCollectionViewCell.setAssetViewModel()()
{
  v2 = (*((swift_isaMask & *v0) + 0x68))();
  v1 = (*((swift_isaMask & *v0) + 0x80))();
  (*((swift_isaMask & *v2) + 0xA0))(v1);
}

Swift::Void __swiftcall MOSuggestionEvergreenCollectionViewCell.setupConstraints()()
{
  v1 = *((swift_isaMask & *v0) + 0x68);
  v2 = v1();
  v3 = [v2 superview];
  p_align = &stru_100327FE8.align;
  if (v3)
  {
    v5 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v2 topAnchor];
    v7 = [v5 topAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:4.0];
    if (v8)
    {
      [v8 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v8 = 0;
    v5 = v2;
  }

  v9 = v1();
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    [v9 *(p_align + 222)];
    v12 = [v9 leadingAnchor];
    v13 = [v11 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:4.0];
    if (v14)
    {
      [v14 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v14 = 0;
    v11 = v9;
  }

  v15 = v1();
  v16 = [v15 superview];
  if (v16)
  {
    v17 = v16;
    [v15 *(p_align + 222)];
    v18 = [v15 trailingAnchor];
    v19 = [v17 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:-4.0];
    if (v20)
    {
      [v20 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v20 = 0;
    v17 = v15;
  }

  v21 = v1();
  v22 = [v21 superview];
  if (v22)
  {
    v23 = v22;
    [v21 *(p_align + 222)];
    v24 = [v21 bottomAnchor];
    v25 = [v23 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    if (v26)
    {
      [v26 setConstant:-8.0];
      [v26 setActive:1];
    }
  }

  else
  {
    v26 = 0;
    v23 = v21;
  }

  v27 = v1();
  v28 = [v27 heightAnchor];

  v29 = v1();
  v30 = [v29 widthAnchor];

  v31 = [v28 constraintGreaterThanOrEqualToAnchor:v30 multiplier:0.5];
  [v31 setActive:1];
}

Swift::Void __swiftcall MOSuggestionEvergreenCollectionViewCell.updateCell(with:)(Swift::OpaquePointer with)
{
  v4 = (*((swift_isaMask & *v1) + 0x68))();
  if (with._rawValue >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *((with._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  if ((with._rawValue & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((with._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

LABEL_6:
  (*((swift_isaMask & *v4) + 0xA0))(v3);
}

id MOSuggestionEvergreenCollectionViewCell.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for MOSuggestionEvergreenCollectionViewCell();
  v7 = objc_msgSendSuper2(&v10, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIButton);
    if (([v7 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
    {
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHLivePhotoView);
      if (([v7 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
      {

        v8 = v3;
        return v3;
      }
    }
  }

  return v7;
}

Swift::Void __swiftcall MOSuggestionEvergreenCollectionViewCell.prepareForReuse()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MOSuggestionEvergreenCollectionViewCell();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = (*((swift_isaMask & *v0) + 0xA0))(0);
  v2 = (*((swift_isaMask & *v0) + 0x68))(v1);
  (*((swift_isaMask & *v2) + 0xA0))(0);
}

id MOSuggestionEvergreenCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionEvergreenCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *specialized MOSuggestionEvergreenCollectionViewCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell_assetView;
  type metadata accessor for MOSuggestionSheetAssetView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for MOSuggestionEvergreenCollectionViewCell();
  v5 = objc_msgSendSuper2(&v10, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v6 = [v5 contentView];
  v7 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell_assetView;
  swift_beginAccess();
  [v6 addSubview:*(v5 + v7)];

  (*((swift_isaMask & *v5) + 0xC0))();
  v8 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v8];

  [v5 setClipsToBounds:0];
  return v5;
}

double specialized static MOSuggestionEvergreenCollectionViewCell.calculateEvergreenHeight(width:)(double a1)
{
  v29 = [objc_allocWithZone(UILabel) init];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1 compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1002A48B0;
  *(v5 + 32) = UIFontWeightTrait;
  *(v5 + 40) = UIFontWeightBold;
  v6 = UIFontDescriptorTraitsAttribute;
  v7 = UIFontWeightTrait;
  v8 = v6;
  v28 = v7;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v5);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v5 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
  *(inited + 64) = v10;
  *(inited + 40) = v9;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v3 fontDescriptorByAddingAttributes:isa];

  v13 = objc_opt_self();
  v14 = [v13 fontWithDescriptor:v12 size:0.0];

  v15 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, v14, a1);
  v16 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:0];
  v17 = [v16 fontDescriptorWithSymbolicTraits:0x8000];
  if (v17)
  {
    v18 = v17;

    v16 = v18;
  }

  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1002A48B0;
  *(v19 + 32) = v8;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1002A48B0;
  *(v20 + 32) = v28;
  v21 = v20 + 32;
  *(v20 + 40) = UIFontWeightSemibold;
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v20);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v21, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  *(v19 + 64) = v10;
  *(v19 + 40) = v22;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(v19);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v19 + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  v23 = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = [v16 fontDescriptorByAddingAttributes:v23];

  v25 = [v13 fontWithDescriptor:v24 size:0.0];
  v26 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(168430090, 0xE400000000000000, v25, a1);

  return v15 + v26 + 34.0 + 8.0;
}

uint64_t sub_1000ED964@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_1000EDA24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1000EDA80(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x88);

  return v2(v3);
}

uint64_t sub_1000EDAE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_1000EDB40(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xA0);

  return v2(v3);
}

unint64_t lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName()
{
  result = lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName;
  if (!lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName)
  {
    type metadata accessor for UIFontDescriptorAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName);
  }

  return result;
}

id ReflectionPromptView.shuffleButton.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_shuffleButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ReflectionPromptView.shuffleButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_shuffleButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ReflectionPromptView.tertiaryVibrancyEffectView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_tertiaryVibrancyEffectView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ReflectionPromptView.tertiaryVibrancyEffectView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_tertiaryVibrancyEffectView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ReflectionPromptView.blurredEffectView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_blurredEffectView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ReflectionPromptView.blurredEffectView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_blurredEffectView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ReflectionPromptView.accentColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_accentColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ReflectionPromptView.accentColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_accentColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ReflectionPromptView.blurBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_blurBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ReflectionPromptView.blurBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_blurBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id closure #1 in variable initialization expression of ReflectionPromptView.reflectionPrompt()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTextAlignment:4];
  [v0 setNumberOfLines:4];
  [v0 setLineBreakMode:4];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:0];
  v2 = [v1 fontDescriptorWithSymbolicTraits:0x8000];
  if (v2)
  {
    v3 = v2;

    v1 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1002A48B0;
  *(v5 + 32) = UIFontWeightTrait;
  *(v5 + 40) = UIFontWeightSemibold;
  v6 = UIFontDescriptorTraitsAttribute;
  v7 = UIFontWeightTrait;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v5);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v5 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v1 fontDescriptorByAddingAttributes:isa];

  v11 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  [v0 setFont:v11];

  v12 = v0;
  [v12 setContentMode:6];
  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v12 setBaselineAdjustment:0];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v12;
}

id closure #1 in variable initialization expression of ReflectionPromptView.categoryLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setNumberOfLines:1];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1 compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1002A48B0;
  *(v3 + 32) = UIFontWeightTrait;
  *(v3 + 40) = UIFontWeightBold;
  v4 = UIFontDescriptorTraitsAttribute;
  v5 = UIFontWeightTrait;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v3 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
  *(inited + 40) = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v1 fontDescriptorByAddingAttributes:isa];

  v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  [v0 setFont:v9];

  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v10 = [objc_opt_self() systemWhiteColor];
  v11 = [v10 colorWithAlphaComponent:0.5];

  [v0 setTextColor:v11];
  v12 = [objc_opt_self() mainBundle];
  v17._object = 0x80000001002B5B30;
  v13._countAndFlagsBits = 0x495443454C464552;
  v13._object = 0xEA00000000004E4FLL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000016;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v17);

  v15 = String._bridgeToObjectiveC()();

  [v0 setText:v15];

  [v0 setLineBreakMode:4];
  return v0;
}

char *ReflectionPromptView.init(type:prompts:updateReflectionIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_promptIndex] = 0;
  v9 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_shuffleButton;
  *&v4[v9] = [objc_allocWithZone(UIButton) init];
  v10 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_tertiaryVibrancyEffectView;
  v11 = [objc_opt_self() effectWithStyle:16];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[v10] = v12;
  v13 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_blurredEffectView;
  *&v4[v13] = [objc_allocWithZone(UIVisualEffectView) init];
  v14 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_accentColor;
  v15 = objc_opt_self();
  *&v4[v14] = [v15 systemWhiteColor];
  v16 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_blurBackgroundColor;
  *&v4[v16] = [v15 systemWhiteColor];
  v17 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_reflectionPrompt;
  *&v4[v17] = closure #1 in variable initialization expression of ReflectionPromptView.reflectionPrompt();
  v18 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_categoryLabel;
  *&v4[v18] = closure #1 in variable initialization expression of ReflectionPromptView.categoryLabel();
  *&v4[OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_type] = a1;
  *&v4[OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_prompts] = a2;
  v19 = &v4[OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_updateReflectionIndex];
  *v19 = a3;
  *(v19 + 1) = a4;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v40.receiver = v4;
  v40.super_class = type metadata accessor for ReflectionPromptView();

  v23 = objc_msgSendSuper2(&v40, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v24 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_categoryLabel;
  v25 = *&v23[OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_categoryLabel];
  v26 = v23;
  v27 = v25;
  v28 = [v27 text];
  if (v28)
  {
    v29 = v28;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.uppercased()();

    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v27 setText:v30];

  v31 = *&v23[v24];
  v32 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_accentColor;
  swift_beginAccess();
  v33 = *&v26[v32];
  v34 = v31;
  v35 = [v33 colorWithAlphaComponent:0.5];
  [v34 setTextColor:v35];

  v36 = (*((swift_isaMask & *v26) + 0x198))();
  v37 = (*((swift_isaMask & *v26) + 0x188))(v36);
  v38 = (*((swift_isaMask & *v26) + 0x190))(v37);
  (*((swift_isaMask & *v26) + 0x1A0))(v38);

  return v26;
}

Swift::Void __swiftcall ReflectionPromptView.setupBlurBackground()()
{
  v1 = v0;
  v2 = [objc_opt_self() effectWithStyle:16];
  v3 = *((swift_isaMask & *v0) + 0x108);
  v4 = v3();
  [v1 bounds];
  [v4 setFrame:?];

  v5 = v3();
  [v5 setAutoresizingMask:18];

  v6 = v3();
  [v1 addSubview:v6];

  v7 = v3();
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v63 = v2;
  v62 = [objc_opt_self() effectForBlurEffect:v2 style:0];
  v8 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v62];
  v9 = (*((swift_isaMask & *v1) + 0xF8))(v8);
  v10 = *((swift_isaMask & *v1) + 0xF0);
  v11 = (v10)(v9);
  [v1 bounds];
  [v11 setFrame:?];

  v12 = v10();
  [v12 setAutoresizingMask:18];

  v13 = v10();
  [v1 addSubview:v13];

  v14 = v10();
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v16 = (v10)(v15);
  v17 = [v16 contentView];

  v18 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_categoryLabel;
  [v17 addSubview:*(v1 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_categoryLabel)];

  v61 = v10;
  v19 = v10();
  v20 = [v19 contentView];

  v60 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_reflectionPrompt;
  [v20 addSubview:*(v1 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_reflectionPrompt)];

  v21 = *(v1 + v18);
  v22 = [v21 superview];
  if (v22)
  {
    v23 = v22;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v21 leadingAnchor];
    v25 = [v23 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    [v26 setConstant:16.0];
    if (v26)
    {
      [v26 setActive:1];
    }
  }

  else
  {
    v26 = 0;
    v23 = v21;
  }

  v58 = objc_opt_self();
  v59 = String._bridgeToObjectiveC()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  *(inited + 16) = xmmword_1002A55C0;
  *(inited + 40) = 0x80000001002B58E0;
  *(inited + 48) = 0x4018000000000000;
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001002B5900;
  *(inited + 96) = 0x4028000000000000;
  *(inited + 120) = &type metadata for Double;
  strcpy((inited + 128), "TEXT_PADDING");
  *(inited + 168) = &type metadata for Double;
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = 0x4030000000000000;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1002A4A00;
  strcpy((v29 + 32), "categoryLabel");
  *(v29 + 46) = -4864;
  v30 = *(v1 + v18);
  v31 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UILabel);
  *(v29 + 48) = v30;
  *(v29 + 72) = v31;
  *(v29 + 80) = 0xD000000000000010;
  *(v29 + 88) = 0x80000001002B5920;
  v32 = *(v1 + v60);
  *(v29 + 120) = v31;
  *(v29 + 96) = v32;
  v33 = v30;
  v34 = v32;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v58 constraintsWithVisualFormat:v59 options:0 metrics:isa views:v35];

  if (!v36)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v58 activateConstraints:{v36, v58}];

  v37 = *(v1 + v60);
  v38 = [v37 superview];
  if (v38)
  {
    v39 = v38;
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v37 trailingAnchor];
    v41 = [v39 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    [v42 setConstant:-16.0];
    if (v42)
    {
      [v42 setActive:1];
    }
  }

  else
  {
    v42 = 0;
    v39 = v37;
  }

  v43 = *(v1 + v60);
  v44 = [v43 superview];
  if (v44)
  {
    v45 = v44;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [v43 leadingAnchor];
    v47 = [v45 leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    [v48 setConstant:16.0];
    if (v48)
    {
      [v48 setActive:1];
    }
  }

  else
  {
    v48 = 0;
    v45 = v43;
  }

  v49 = v61();
  v50 = [v49 contentView];

  v51 = *((swift_isaMask & *v1) + 0xD8);
  v52 = v51();
  [v50 addSubview:v52];

  v53 = *(v1 + v60);
  v54 = v51();
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  v55 = [v53 trailingAnchor];
  v56 = [v54 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:6.0];

  [v57 setActive:1];
}

Swift::Void __swiftcall ReflectionPromptView.setupShuffleButton()()
{
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleExtraLargeTitle2];
  v2 = [objc_opt_self() configurationWithFont:v1];

  v3 = *((swift_isaMask & *v0) + 0xD8);
  v4 = v3();
  v5 = v2;
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  [v4 setImage:v7 forState:0];
  v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"updatePromptIndex:"];
  v9 = v3();
  [v9 addGestureRecognizer:v8];

  v10 = v3();
  [v10 setUserInteractionEnabled:1];

  v11 = v3();
  [v11 setDeliversTouchesForGesturesToSuperview:0];

  v12 = (*((swift_isaMask & *v0) + 0xF0))();
  v13 = [v12 contentView];

  v14 = v3();
  [v13 addSubview:v14];

  v15 = v3();
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = v3();
  v17 = [v16 superview];
  p_align = &stru_100327FE8.align;
  if (v17)
  {
    v19 = v17;
    v29 = v8;
    v20 = v5;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v16 trailingAnchor];
    v22 = [v19 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    [v23 setConstant:-8.0];
    if (v23)
    {
      [v23 setActive:1];
    }

    v5 = v20;
    v8 = v29;
    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v23 = 0;
    v19 = v16;
  }

  v24 = v3();
  v25 = [v24 superview];
  if (v25)
  {
    v26 = v25;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v24 topAnchor];
    v28 = [v26 topAnchor];
    v30 = [v27 *(p_align + 278)];

    [v30 setConstant:10.0];
    if (v30)
    {
      [v30 setActive:1];
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v26 = v24;
  }
}

Swift::Void __swiftcall ReflectionPromptView.setUpBackground()()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0xD8);
  v3 = v2();
  v4 = objc_opt_self();
  v5 = [v4 systemWhiteColor];
  v6 = [v5 colorWithAlphaComponent:0.5];

  [v3 setTintColor:v6];
  v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_type);
  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        v20 = String._bridgeToObjectiveC()();
        v21 = [v4 colorNamed:v20];

        v10 = v21;
        if (!v21)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        v26 = String._bridgeToObjectiveC()();
        v27 = [v4 colorNamed:v26];

        v10 = v27;
        if (!v27)
        {
LABEL_24:
          v10 = [v4 systemWhiteColor];
        }

LABEL_25:
        v19 = (*((swift_isaMask & *v1) + 0x140))(v10);
        goto LABEL_26;
      case 6:
        v11 = String._bridgeToObjectiveC()();
        v12 = [v4 colorNamed:v11];

        v10 = v12;
        if (!v12)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
    }

LABEL_19:
    v22 = String._bridgeToObjectiveC()();
    v23 = [v4 colorNamed:v22];

    v10 = v23;
    if (!v23)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v24 = String._bridgeToObjectiveC()();
      v25 = [v4 colorNamed:v24];

      v10 = v25;
      if (!v25)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (v7 == 3)
    {
      v8 = String._bridgeToObjectiveC()();
      v9 = [v4 colorNamed:v8];

      v10 = v9;
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = [v4 colorNamed:v13];

  v15 = v14;
  if (!v14)
  {
    v15 = [v4 systemWhiteColor];
  }

  (*((swift_isaMask & *v1) + 0x140))(v15);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v4 colorNamed:v16];

  v18 = v17;
  if (!v17)
  {
    v18 = [v4 systemWhiteColor];
  }

  v19 = (*((swift_isaMask & *v1) + 0x128))(v18);
LABEL_26:
  v28 = (v2)(v19);
  v29 = *((swift_isaMask & *v1) + 0x120);
  v30 = v29();
  v31 = [v30 colorWithAlphaComponent:0.5];

  [v28 setTintColor:v31];
  v32 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_categoryLabel;
  v33 = *(v1 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_categoryLabel);
  v34 = v29();
  v35 = [v34 colorWithAlphaComponent:0.5];

  [v33 setTintColor:v35];
  v36 = *(v1 + v32);
  v37 = v29();
  v38 = [v37 colorWithAlphaComponent:0.5];

  v39 = (*((swift_isaMask & *v1) + 0x108))();
  v40 = (*((swift_isaMask & *v1) + 0x138))();
  [v39 setBackgroundColor:v40];
}

Swift::Void __swiftcall ReflectionPromptView.setupTextColor()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_promptIndex);
  if ((v1 & 0x8000000000000000) == 0 && v1 < *(*(v0 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_prompts) + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_categoryLabel);
    v3 = *((swift_isaMask & *v0) + 0x120);

    v4 = v2;
    v5 = v3();
    v6 = [v5 colorWithAlphaComponent:0.5];

    [v4 setTextColor:v6];
    v7 = objc_allocWithZone(NSMutableAttributedString);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v7 initWithString:v8];

    v10 = v3();
    v13 = v9;
    [v13 addAttribute:NSForegroundColorAttributeName value:v10 range:{0, objc_msgSend(v13, "length")}];

    v11 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_reflectionPrompt;
    v12 = *(v0 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_reflectionPrompt);
    [v12 setAttributedText:v13];

    [*(v0 + v11) setAdjustsFontSizeToFitWidth:1];
    [*(v0 + v11) setNumberOfLines:0];
  }
}

Swift::Void __swiftcall ReflectionPromptView.updatePromptIndex(_:)(UITapGestureRecognizer a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_updateReflectionIndex);

  v4 = v2(v3);

  *(v1 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_promptIndex) = v4;
  v5 = *((swift_isaMask & *v1) + 0x1A0);

  v5();
}

id ReflectionPromptView.layoutSubviews()(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ReflectionPromptView();
  return objc_msgSendSuper2(&v4, *a1);
}

void specialized ReflectionPromptView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_promptIndex) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_shuffleButton;
  *(v0 + v1) = [objc_allocWithZone(UIButton) init];
  v2 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_tertiaryVibrancyEffectView;
  v3 = [objc_opt_self() effectWithStyle:16];
  v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *(v0 + v2) = v4;
  v5 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_blurredEffectView;
  *(v0 + v5) = [objc_allocWithZone(UIVisualEffectView) init];
  v6 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_accentColor;
  v7 = objc_opt_self();
  *(v0 + v6) = [v7 systemWhiteColor];
  v8 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_blurBackgroundColor;
  *(v0 + v8) = [v7 systemWhiteColor];
  v9 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_reflectionPrompt;
  *(v0 + v9) = closure #1 in variable initialization expression of ReflectionPromptView.reflectionPrompt();
  v10 = OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_categoryLabel;
  *(v0 + v10) = closure #1 in variable initialization expression of ReflectionPromptView.categoryLabel();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000F0890@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F0950@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F0A10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F0AE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F0BB0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result;
  return result;
}

void MOPresenterServerWindow.init(windowScene:session:clientConnection:)(void *a1, void *a2, uint64_t a3)
{
  v35 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtC16MomentsUIService23MOPresenterServerWindow_viewController;
  *&v3[v14] = [objc_allocWithZone(type metadata accessor for PresenterServerViewController()) init];
  outlined init with copy of UUID?(a3, &v3[OBJC_IVAR____TtC16MomentsUIService23MOPresenterServerWindow_clientConnectionId]);
  v15 = type metadata accessor for MOPresenterServerWindow();
  v36.receiver = v3;
  v36.super_class = v15;
  v16 = objc_msgSendSuper2(&v36, "initWithWindowScene:", a1);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor:v19];

  [v18 setOpaque:0];
  v20 = v18;
  [v20 makeKeyAndVisible];
  [v20 setClipsToBounds:1];
  v21 = OBJC_IVAR____TtC16MomentsUIService23MOPresenterServerWindow_viewController;
  v22 = [*&v20[OBJC_IVAR____TtC16MomentsUIService23MOPresenterServerWindow_viewController] view];
  if (v22)
  {
    v23 = v22;
    v34 = a1;
    v24 = [v22 layer];

    [v24 setAllowsHitTesting:0];
    v25 = [objc_allocWithZone(UINavigationController) initWithRootViewController:*&v20[v21]];
    [v20 setRootViewController:v25];

    v26 = [v20 _rootSheetPresentationController];
    if (v26)
    {
      [v26 _setShouldScaleDownBehindDescendantSheets:0];

      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
      outlined init with copy of UUID?(a3, v10);
      type metadata accessor for MainActor();
      v28 = v35;
      v29 = static MainActor.shared.getter();
      v30 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      v32[2] = v29;
      v32[3] = &protocol witness table for MainActor;
      v32[4] = v28;
      outlined init with take of UUID?(v10, v32 + v30);
      *(v32 + v31) = v20;
      v33 = v20;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in MOPresenterServerWindow.init(windowScene:session:clientConnection:), v32);

      outlined destroy of UUID?(a3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for MOPresenterServerWindow()
{
  result = type metadata singleton initialization cache for MOPresenterServerWindow;
  if (!type metadata singleton initialization cache for MOPresenterServerWindow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in MOPresenterServerWindow.init(windowScene:session:clientConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in MOPresenterServerWindow.init(windowScene:session:clientConnection:), v8, v7);
}

uint64_t closure #1 in MOPresenterServerWindow.init(windowScene:session:clientConnection:)()
{

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[2];
  v3 = static MOPresenterServer.shared;
  v4 = *(v0[4] + OBJC_IVAR____TtC16MomentsUIService23MOPresenterServerWindow_viewController);
  specialized MOPresenterServer.didConnectToServerWindow(with:connectionId:delegate:)(v2, v1, v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000F12C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in MOPresenterServerWindow.init(windowScene:session:clientConnection:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #1 in MOPresenterServerWindow.init(windowScene:session:clientConnection:)(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MOPresenterServerWindow.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService23MOPresenterServerWindow_viewController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for PresenterServerViewController()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOPresenterServerWindow.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene:a1];

  return v3;
}

id MOPresenterServerWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOPresenterServerWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void type metadata completion function for MOPresenterServerWindow()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void specialized MOPresenterServer.didConnectToServerWindow(with:connectionId:delegate:)(void *a1, void *a2, void *a3, void *a4)
{
  v124 = a4;
  v122 = a3;
  v129 = a1;
  v5 = type metadata accessor for Client();
  v116 = *(v5 - 8);
  v117 = v5;
  v6 = __chkstk_darwin(v5);
  v113 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v114 = &v109 - v8;
  v9 = type metadata accessor for UUID();
  v132 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v115 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v131 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v14 = __chkstk_darwin(v13 - 8);
  v126 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v109 - v17;
  __chkstk_darwin(v16);
  v20 = &v109 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v120 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v112 = &v109 - v26;
  v27 = __chkstk_darwin(v25);
  v119 = &v109 - v28;
  v29 = __chkstk_darwin(v27);
  v118 = &v109 - v30;
  v31 = __chkstk_darwin(v29);
  v123 = &v109 - v32;
  __chkstk_darwin(v31);
  v34 = &v109 - v33;
  v121 = lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController);
  v128 = type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v127 = a2;
  outlined init with copy of UUID?(a2, v20);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  v37 = os_log_type_enabled(v35, v36);
  v130 = v22;
  if (v37)
  {
    v111 = v21;
    v38 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v133[0] = v110;
    *v38 = 136315138;
    outlined init with copy of UUID?(v20, v18);
    v39 = v132;
    v40 = (*(v132 + 48))(v18, 1, v9);
    v125 = v9;
    if (v40 == 1)
    {
      outlined destroy of UUID?(v18);
      v41 = 0xE300000000000000;
      v42 = 7104878;
    }

    else
    {
      v44 = UUID.uuidString.getter();
      v41 = v45;
      v46 = v9;
      v42 = v44;
      (*(v39 + 8))(v18, v46);
    }

    outlined destroy of UUID?(v20);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v133);

    *(v38 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v35, v36, "[MOPresenterServer] Connected to window, client connection: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v110);

    v43 = *(v130 + 8);
    v21 = v111;
    v43(v34, v111);
    v9 = v125;
  }

  else
  {

    outlined destroy of UUID?(v20);
    v43 = *(v22 + 8);
    v43(v34, v21);
  }

  v48 = v132;
  v49 = v126;
  outlined init with copy of UUID?(v127, v126);
  v50 = (*(v48 + 48))(v49, 1, v9);
  v51 = v131;
  if (v50 == 1)
  {
    outlined destroy of UUID?(v49);
    v52 = v123;
    static CommonLogger.presentation.getter();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "[MOPresenterServer] Could not link new scene to client connection", v55, 2u);
    }

    v43(v52, v21);
    specialized MOPresenterServer.destroyScene(with:)(v129);
    return;
  }

  (*(v48 + 32))(v131, v49, v9);
  v56 = (*((swift_isaMask & *v124) + 0xC0))(v51);
  if (v56)
  {
    v57 = v56;
    swift_beginAccess();
    *(v57 + 40) = 3;
    swift_beginAccess();
    v58 = *(v57 + 72);
    v59 = v121;
    v60 = v122;
    *(v57 + 72) = v122;
    *(v57 + 80) = v59;

    swift_beginAccess();
    v61 = *(v57 + 64);
    v62 = v129;
    *(v57 + 64) = v129;
    v127 = v60;

    swift_beginAccess();
    v63 = *(v57 + 88);
    v125 = v9;
    if (v63 && (swift_beginAccess(), *(v57 + 120)))
    {
      v64 = v62;
      v65 = v48;
      v66 = v21;
      v67 = v9;
      v126 = *(v57 + 112);
      v68 = v64;
      v129 = v63;

      static CommonLogger.presentation.getter();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "[MOPresenterServer] Fulfilling previously unfulfillable presentation request", v71, 2u);
      }

      v43(v119, v66);
      v72 = v65;
      (*(v65 + 16))(v115, v131, v67);
      lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, type metadata accessor for MOPresenterServer);
      swift_beginAccess();
      v73 = objc_opt_self();

      [v73 isInternalBuild];
      v74 = v127;
      v75 = v124;
      v76 = v114;
      Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
      swift_beginAccess();
      v77 = *(v57 + 72);
      if (v77)
      {
        swift_endAccess();
        swift_getObjectType();
        v78 = v77;
        v79 = v129;
        dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceivePresentationRequest(with:client:)();

        (*(v116 + 8))(v76, v117);
        (*(v72 + 8))(v131, v125);
      }

      else
      {
        (*(v116 + 8))(v76, v117);
        (*(v72 + 8))(v131, v125);
        swift_endAccess();
      }
    }

    else
    {
      swift_beginAccess();
      v80 = *(v57 + 96);
      if (v80)
      {
        v81 = v62;
        v82 = v80;
        [v82 integerValue];
        v83 = SuggestionSheetViewState.init(rawValue:)();
        if ((v84 & 1) == 0)
        {
          v129 = v83;
          swift_beginAccess();
          if (*(v57 + 120))
          {
            v126 = *(v57 + 112);

            v85 = v112;
            static CommonLogger.presentation.getter();
            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              *v88 = 0;
              _os_log_impl(&_mh_execute_header, v86, v87, "[MOPresenterServer] Fulfilling previously unfulfillable update request", v88, 2u);
              v51 = v131;
            }

            v43(v85, v21);
            (*(v132 + 16))(v115, v51, v125);
            lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, type metadata accessor for MOPresenterServer);
            swift_beginAccess();
            v89 = objc_opt_self();

            [v89 isInternalBuild];
            v90 = v127;
            v91 = v124;
            v92 = v113;
            Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
            v93 = *(v57 + 72);
            if (v93)
            {
              swift_beginAccess();
              v94 = *(v57 + 104);
              v95 = v93;
              if (v94)
              {
                [v94 integerValue];
              }

              swift_getObjectType();
              dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceiveUpdateRequest(with:animated:client:)();
            }

            (*(v116 + 8))(v92, v117);
            (*(v132 + 8))(v131, v125);
            goto LABEL_38;
          }
        }
      }

      else
      {
        v102 = v62;
      }

      static CommonLogger.presentation.getter();
      swift_retain_n();
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 67109632;
        *(v105 + 4) = *(v57 + 88) != 0;

        *(v105 + 8) = 1024;
        swift_beginAccess();
        *(v105 + 10) = *(v57 + 120) != 0;

        *(v105 + 14) = 1024;
        *(v105 + 16) = *(v57 + 96) != 0;

        _os_log_impl(&_mh_execute_header, v103, v104, "[MOPresenterServer] Cannot fulfill previously unfulfillable update request, pendingPresentationOptions=%{BOOL}d, connectionProperties.appName=%{BOOL}d, unfulfilledUpdateState=%{BOOL}d", v105, 0x14u);
      }

      else
      {
      }

      v43(v120, v21);
      (*(v48 + 8))(v51, v125);
    }

LABEL_38:
    v106 = *(v57 + 88);
    *(v57 + 88) = 0;

    swift_beginAccess();
    v107 = *(v57 + 96);
    *(v57 + 96) = 0;

    swift_beginAccess();
    v108 = *(v57 + 104);
    *(v57 + 104) = 0;

    return;
  }

  v96 = v48;
  v97 = v9;
  v98 = v118;
  static CommonLogger.presentation.getter();
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&_mh_execute_header, v99, v100, "[MOPresenterServer] connection removed before new scene creation completion", v101, 2u);
  }

  v43(v98, v21);
  specialized MOPresenterServer.destroyScene(with:)(v129);
  (*(v96 + 8))(v51, v97);
}

uint64_t MOSuggestionCollectionViewListCell.assetViewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetViewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((swift_isaMask & *v1) + 0x178))(v4);
}

uint64_t (*MOSuggestionCollectionViewListCell.assetViewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionCollectionViewListCell.assetViewModel.modify;
}

uint64_t MOSuggestionCollectionViewListCell.assetViewModel.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((swift_isaMask & **(a1 + 24)) + 0x178))(result);
  }

  return result;
}

id closure #1 in variable initialization expression of MOSuggestionCollectionViewListCell.titleLabel(SEL *a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setLineBreakMode:4];
  [v2 setNumberOfLines:1];
  v3 = [objc_opt_self() *a1];
  [v2 setTextColor:v3];

  [v2 setTextAlignment:4];
  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

  return v2;
}

id MOSuggestionCollectionViewListCell.platterView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_platterView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionCollectionViewListCell.platterView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_platterView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for MOSuggestionCollectionViewListCell.accessoryButtonAction : MOSuggestionCollectionViewListCell(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((swift_isaMask & **a2) + 0xF0);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t MOSuggestionCollectionViewListCell.accessoryButtonAction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_accessoryButtonAction);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOSuggestionCollectionViewListCell.accessoryButtonAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_accessoryButtonAction);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

Swift::Void __swiftcall MOSuggestionCollectionViewListCell.setInteractionState(added:saved:)(Swift::Bool_optional added, Swift::Bool_optional saved)
{
  if (added.value == 2 || !added.value)
  {
    if (saved.value == 2 || !saved.value)
    {
      return;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *((swift_isaMask & *v2) + 0x138);
  v5 = v4();
  (*((swift_isaMask & *v5) + 0x98))(v3);

  v6 = v4();
  [v6 setHidden:0];
}

uint64_t MOSuggestionCollectionViewListCell.cellViewModel.didset()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v3 = (*(*Strong + 296))();

  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

LABEL_11:
    Strong = 0;
    goto LABEL_12;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  Strong = v5;
LABEL_12:
  (*((swift_isaMask & *v1) + 0xC0))(Strong);
  v6 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_titleLabel);
  v7 = swift_weakLoadStrong();
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 176))(v7);

    v8 = String._bridgeToObjectiveC()();
  }

  [v6 setText:v8];

  v9 = specialized static MOSuggestionTheme.Fonts.footnoteEmphShortFont()();
  v10 = [v6 text];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v12 setLineSpacing:0.0];
    [v12 setLineBreakMode:4];
    [v12 setLineHeightMultiple:0.95];
    LODWORD(v13) = 0.5;
    [v12 setHyphenationFactor:v13];
    v14 = [v6 attributedText];
    if (v14)
    {
      v15 = v14;

      v16 = &selRef_initWithAttributedString_;
      v11 = v15;
    }

    else
    {
      v16 = &selRef_initWithString_;
    }

    v18 = [objc_allocWithZone(NSMutableAttributedString) *v16];

    if (v9)
    {
      v19 = v9;
      [v18 addAttribute:NSFontAttributeName value:v19 range:{0, objc_msgSend(v18, "length")}];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A4A00;
    *(inited + 32) = NSBaselineOffsetAttributeName;
    *(inited + 40) = 0;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 72) = NSParagraphStyleAttributeName;
    *(inited + 104) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
    *(inited + 80) = v12;
    v21 = NSBaselineOffsetAttributeName;
    v22 = NSParagraphStyleAttributeName;
    v17 = v12;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
    swift_arrayDestroy();
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 addAttributes:isa range:{0, objc_msgSend(v18, "length")}];

    [v6 setAttributedText:v18];
  }

  else
  {
    v17 = v9;
  }

  v24 = swift_weakLoadStrong();
  if (v24)
  {
    v25 = (*(*v24 + 224))(v24);

    v26 = v25 & 1;
  }

  else
  {
    v26 = 2;
  }

  v27 = swift_weakLoadStrong();
  if (v27)
  {
    v28 = (*(*v27 + 248))(v27);

    v29 = v28 & 1;
  }

  else
  {
    v29 = 2;
  }

  v30 = (*((swift_isaMask & *v1) + 0x100))(v26, v29);
  v31 = (*((swift_isaMask & *v1) + 0x188))(v30);
  v32 = (*((swift_isaMask & *v1) + 0xB8))(v31);
  if (v32)
  {
    v33 = (*(*v32 + 728))();
    v35 = v34;

    if (v35)
    {
      (*((swift_isaMask & **(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_playButton)) + 0x60))(v33, v35);
    }
  }

  v36 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_playButton);
  v37 = swift_weakLoadStrong();
  if (v37)
  {
    v38 = *(v37 + 80);
  }

  else
  {
    v38 = 0;
  }

  return (*((swift_isaMask & *v36) + 0x78))(v38);
}

uint64_t MOSuggestionCollectionViewListCell.cellViewModel.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  MOSuggestionCollectionViewListCell.cellViewModel.didset();
}

void (*MOSuggestionCollectionViewListCell.cellViewModel.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_cellViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MOSuggestionCollectionViewListCell.cellViewModel.modify;
}

void MOSuggestionCollectionViewListCell.cellViewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    MOSuggestionCollectionViewListCell.cellViewModel.didset();
  }

  free(v3);
}

id MOSuggestionCollectionViewListCell.assetView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionCollectionViewListCell.assetView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOSuggestionCollectionViewListCell.addedView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_addedView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionCollectionViewListCell.addedView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_addedView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOSuggestionCollectionViewListCell.assetContainerView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionCollectionViewListCell.assetContainerView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall MOSuggestionCollectionViewListCell.handleTraitChange()()
{
  v3 = (*((swift_isaMask & *v0) + 0xD0))();
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, v2);
}

uint64_t MOSuggestionCollectionViewListCell.updateConfiguration(using:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v13 - v4;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewCell.backgroundConfiguration.getter();
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    static UIBackgroundConfiguration.clear()();
    if (v10(v5, 1, v6) != 1)
    {
      outlined destroy of UIBackgroundConfiguration?(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  v11 = [objc_opt_self() systemBackgroundColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  (*(v7 + 16))(v3, v9, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t MOSuggestionCollectionViewListCell.updateCell(with:)()
{
  v1 = *((swift_isaMask & *v0) + 0xC0);

  v1(v2);
  v3 = *((swift_isaMask & *v0) + 0x188);

  return v3();
}

Swift::Void __swiftcall MOSuggestionCollectionViewListCell.setAssetViewModel()()
{
  v1 = *((swift_isaMask & *v0) + 0xB8);
  v2 = v1();
  if (v2)
  {
    (*(*v2 + 808))(1);
  }

  v3 = (*((swift_isaMask & *v0) + 0x120))(v2);
  v4 = v1();
  (*((swift_isaMask & *v3) + 0xA0))(v4);

  (*((swift_isaMask & *v0) + 0x188))();
  v5 = *((swift_isaMask & *v0) + 0x180);

  v5();
}

Swift::Void __swiftcall MOSuggestionCollectionViewListCell.setPlayButton()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_buttonHolder);
  [v1 addSubview:v2];
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_playButton);
  [v2 addArrangedSubview:v3];
  [v2 setCustomSpacing:v3 afterView:12.0];
  [v3 setUserInteractionEnabled:1];
  v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_stackView);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v2 leadingAnchor];
  v6 = [v4 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  [v7 setConstant:12.0];
  [v7 setActive:1];

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 trailingAnchor];
    v11 = [v9 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:-36.0];
    [v12 setActive:1];
  }

  v13 = [v2 superview];
  if (v13)
  {
    v14 = v13;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v2 centerYAnchor];
    v16 = [v14 centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:0.0];
    [v17 setActive:1];
  }

  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002A4A70;
  v20 = [v3 heightAnchor];
  v21 = [v3 widthAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];

  v24 = *((swift_isaMask & *v1) + 0xB8);
  v25 = v24();
  if (v25 && ((*(*v25 + 728))(v25), v27 = v26, , v27) && ((v28 = , (v29 = (v24)(v28)) != 0) && (v30 = (*(*v29 + 776))(v29), v31 = , v30 == 1) || (v32 = v24()) != 0 && (v33 = (*(*v32 + 776))(v32), v31 = , v33 == 4)))
  {
    v34 = (v24)(v31);
    if (v34)
    {
      v35 = (*(*v34 + 728))();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    (*((swift_isaMask & *v3) + 0x60))(v35, v37);
    v38 = v3;
    v39 = 0;
  }

  else
  {
    v38 = v3;
    v39 = 1;
  }

  [v38 setHidden:v39];
}

Swift::Void __swiftcall MOSuggestionCollectionViewListCell.layoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for MOSuggestionCollectionViewListCell();
  v1 = objc_msgSendSuper2(&v12, "layoutSubviews");
  v2 = (*((swift_isaMask & *v0) + 0x138))(v1);
  v3 = (*((swift_isaMask & *v0) + 0xD0))();
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
}

Swift::Void __swiftcall MOSuggestionCollectionViewListCell.setLabels()()
{
  v1 = *((swift_isaMask & *v0) + 0x108);
  v2 = v1();
  if (!v2 || (v3 = *(v2 + 16), , v4 = [v3 interfaceType], v3, v4 != 4))
  {
    v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_subtitleLabel);
    v10 = v1();
    v7 = v10;
    if (!v10)
    {
      goto LABEL_9;
    }

    (*(*v10 + 376))(v10);

    v7 = String._bridgeToObjectiveC()();
    goto LABEL_8;
  }

  v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_subtitleLabel);
  v6 = v1();
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  (*(*v6 + 384))(v6);
  v9 = v8;

  if (v9)
  {
    v7 = String._bridgeToObjectiveC()();
LABEL_8:

    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  [v5 setText:v7];

  v25 = specialized static MOSuggestionTheme.Fonts.footnoteShortFont()();
  v11 = [v5 text];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v13 setLineSpacing:0.0];
    [v13 setLineBreakMode:4];
    [v13 setLineHeightMultiple:1.0];
    LODWORD(v14) = 0.5;
    [v13 setHyphenationFactor:v14];
    v15 = [v5 attributedText];
    if (v15)
    {
      v16 = v15;

      v17 = &selRef_initWithAttributedString_;
      v12 = v16;
    }

    else
    {
      v17 = &selRef_initWithString_;
    }

    v18 = [objc_allocWithZone(NSMutableAttributedString) *v17];

    if (v25)
    {
      v19 = v25;
      [v18 addAttribute:NSFontAttributeName value:v19 range:{0, objc_msgSend(v18, "length")}];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A4A00;
    *(inited + 32) = NSBaselineOffsetAttributeName;
    *(inited + 40) = 0;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 72) = NSParagraphStyleAttributeName;
    *(inited + 104) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
    *(inited + 80) = v13;
    v21 = NSBaselineOffsetAttributeName;
    v22 = NSParagraphStyleAttributeName;
    v23 = v13;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
    swift_arrayDestroy();
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 addAttributes:isa range:{0, objc_msgSend(v18, "length")}];

    [v5 setAttributedText:v18];
  }

  else
  {
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewListCell.setupConstraints()()
{
  v1 = *((swift_isaMask & *v0) + 0x120);
  v2 = v1();
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:0.0];
    if (v7)
    {
      [v7 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v7 = 0;
    v4 = v2;
    p_align = &stru_100327FE8.align;
  }

  v9 = v1();
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    [v9 *(p_align + 222)];
    v12 = [v9 leadingAnchor];
    v13 = [v11 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:0.0];
    if (v14)
    {
      [v14 setActive:1];
    }
  }

  else
  {
    v14 = 0;
    v11 = v9;
  }

  v15 = v1();
  v16 = [v15 superview];
  if (v16)
  {
    v17 = v16;
    [v15 *(p_align + 222)];
    v18 = [v15 trailingAnchor];
    v19 = [v17 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:0.0];
    if (v20)
    {
      [v20 setActive:1];
    }
  }

  else
  {
    v20 = 0;
    v17 = v15;
  }

  v21 = v1();
  v22 = [v21 superview];
  if (v22)
  {
    v23 = v22;
    [v21 *(p_align + 222)];
    v24 = [v21 bottomAnchor];
    v25 = [v23 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    if (v26)
    {
      [v26 setConstant:-0.0];
      [v26 setActive:1];
    }
  }

  else
  {
    v26 = 0;
    v23 = v21;
  }

  v27 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_stackView);
  v28 = *((swift_isaMask & *v0) + 0xD0);
  v29 = v28();
  [v27 *(p_align + 222)];
  v30 = [v27 leadingAnchor];
  v31 = [v29 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  [v32 setConstant:12.0];
  [v32 setActive:1];

  v33 = [v27 superview];
  if (v33)
  {
    v34 = v33;
    [v27 *(p_align + 222)];
    v35 = [v27 centerYAnchor];
    v36 = [v34 centerYAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    [v37 setConstant:0.0];
    [v37 setActive:1];
  }

  v38 = v28();
  v39 = [v38 superview];
  if (v39)
  {
    v40 = v39;
    [v38 *(p_align + 222)];
    v41 = [v38 topAnchor];
    v42 = [v40 topAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    [v43 setConstant:4.0];
    if (v43)
    {
      [v43 setActive:1];
    }

    v44 = (&stru_100327FE8 + 24);
  }

  else
  {
    v43 = 0;
    v40 = v38;
    v44 = &stru_100327FE8.align;
  }

  v45 = v28();
  v46 = [v45 superview];
  if (v46)
  {
    v47 = v46;
    [v45 *(p_align + 222)];
    v48 = [v45 bottomAnchor];
    v49 = [v47 bottomAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    if (v50)
    {
      [v50 setConstant:-4.0];
      [v50 setActive:1];
    }
  }

  else
  {
    v50 = 0;
    v47 = v45;
  }

  v51 = v28();
  v52 = [v51 superview];
  if (v52)
  {
    v53 = v52;
    [v51 *(p_align + 222)];
    v54 = [v51 *(v44 + 272)];
    v55 = [v53 *(v44 + 272)];
    v56 = [v54 constraintEqualToAnchor:v55];

    [v56 setConstant:4.0];
    if (v56)
    {
      [v56 setActive:1];
    }
  }

  else
  {
    v56 = 0;
    v53 = v51;
  }

  v84 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1002A7C80;
  v58 = *((swift_isaMask & *v0) + 0x150);
  v59 = v58();
  v60 = [v59 heightAnchor];

  v61 = v58();
  v62 = [v61 widthAnchor];

  v63 = [v60 constraintEqualToAnchor:v62];
  *(v57 + 32) = v63;
  v64 = v58();
  v65 = [v64 topAnchor];

  v66 = v28();
  v67 = [v66 topAnchor];

  v68 = [v65 constraintEqualToAnchor:v67 constant:4.0];
  *(v57 + 40) = v68;
  v69 = v58();
  v70 = [v69 leadingAnchor];

  v71 = v28();
  v72 = [v71 leadingAnchor];

  v73 = [v70 constraintEqualToAnchor:v72 constant:4.0];
  *(v57 + 48) = v73;
  v74 = v58();
  v75 = [v74 trailingAnchor];

  v76 = v28();
  v77 = [v76 trailingAnchor];

  v78 = [v75 constraintEqualToAnchor:v77 constant:-4.0];
  *(v57 + 56) = v78;
  v79 = v58();
  v80 = [v79 bottomAnchor];

  v81 = v28();
  v82 = [v81 bottomAnchor];

  v83 = [v80 constraintEqualToAnchor:v82 constant:-4.0];
  *(v57 + 64) = v83;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v84 activateConstraints:isa];
}

id MOSuggestionCollectionViewListCell.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for MOSuggestionCollectionViewListCell();
  v7 = objc_msgSendSuper2(&v10, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIButton);
    if (([v7 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
    {
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHLivePhotoView);
      if (([v7 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
      {

        v8 = v3;
        return v3;
      }
    }
  }

  return v7;
}

Swift::Void __swiftcall MOSuggestionCollectionViewListCell.prepareForReuse()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MOSuggestionCollectionViewListCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_titleLabel);
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_subtitleLabel);
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  v5 = (*((swift_isaMask & *v0) + 0x110))(0);
  v6 = (*((swift_isaMask & *v0) + 0x120))(v5);
  (*((swift_isaMask & *v6) + 0xA0))(0);
}

id MOSuggestionCollectionViewListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionCollectionViewListCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *specialized MOSuggestionCollectionViewListCell.init(frame:)()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetViewModel] = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_titleLabel;
  *&v1[v2] = closure #1 in variable initialization expression of MOSuggestionCollectionViewListCell.titleLabel(&selRef_labelColor);
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_subtitleLabel;
  *&v1[v3] = closure #1 in variable initialization expression of MOSuggestionCollectionViewListCell.titleLabel(&selRef_secondaryLabelColor);
  v4 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_stackView;
  v5 = [objc_allocWithZone(UIStackView) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:1];
  [v5 setAlignment:1];
  [v5 setDistribution:0];
  *&v1[v4] = v5;
  v6 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_buttonHolder;
  v7 = [objc_allocWithZone(UIStackView) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAxis:0];
  [v7 setAlignment:3];
  [v7 setDistribution:0];
  *&v1[v6] = v7;
  v8 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_platterView;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = [v9 traitCollection];
  v11 = [v10 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v9, v11);
  *&v1[v8] = v9;
  v12 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_playButton;
  type metadata accessor for MOSuggestionSheetListPlayButton();
  *&v1[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = &v1[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_accessoryButtonAction];
  *v13 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v13[1] = 0;
  swift_weakInit();
  v14 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetView;
  type metadata accessor for MOSuggestionSheetAssetView();
  *&v1[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_addedView;
  v16 = [objc_allocWithZone(type metadata accessor for MOSuggestionAddedView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = 1;
  v17 = v16;
  [v17 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  *&v1[v15] = v17;
  v18 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetContainerView;
  v19 = [objc_allocWithZone(UIView) init];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v19 layer];
  [v21 setMaskedCorners:1];

  [v19 setClipsToBounds:1];
  *&v1[v18] = v19;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v40.receiver = v1;
  v40.super_class = type metadata accessor for MOSuggestionCollectionViewListCell();
  v25 = objc_msgSendSuper2(&v40, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v26 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetView;
  swift_beginAccess();
  v27 = *&v25[v26];
  v28 = v25;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_stackView;
  v30 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_titleLabel;
  [*&v28[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_stackView] addArrangedSubview:*&v28[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_titleLabel]];
  [*&v28[v29] addArrangedSubview:*&v28[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_subtitleLabel]];
  [*&v28[v29] setCustomSpacing:*&v28[v30] afterView:0.0];
  v31 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_platterView;
  swift_beginAccess();
  v32 = *&v28[v31];
  v33 = v28;
  [v33 addSubview:v32];
  [v33 addSubview:*&v28[v29]];
  v34 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetContainerView;
  swift_beginAccess();
  [v33 addSubview:*&v33[v34]];
  v35 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_addedView;
  swift_beginAccess();
  [v33 addSubview:*&v33[v35]];
  [*&v28[v31] addSubview:*&v33[v34]];
  v36 = [*&v33[v34] addSubview:*&v25[v26]];
  v37 = (*((swift_isaMask & *v33) + 0x190))(v36);
  (*((swift_isaMask & *v33) + 0x180))(v37);
  [v33 setClipsToBounds:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1002A48B0;
  *(v38 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v38 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  [*&v33[v35] setHidden:1];
  (*((swift_isaMask & *v33) + 0x100))(0, 0);

  return v33;
}

void specialized MOSuggestionCollectionViewListCell.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetViewModel) = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_titleLabel;
  *(v1 + v2) = closure #1 in variable initialization expression of MOSuggestionCollectionViewListCell.titleLabel(&selRef_labelColor);
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_subtitleLabel;
  *(v1 + v3) = closure #1 in variable initialization expression of MOSuggestionCollectionViewListCell.titleLabel(&selRef_secondaryLabelColor);
  v4 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_stackView;
  v5 = [objc_allocWithZone(UIStackView) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:1];
  [v5 setAlignment:1];
  [v5 setDistribution:0];
  *(v1 + v4) = v5;
  v6 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_buttonHolder;
  v7 = [objc_allocWithZone(UIStackView) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAxis:0];
  [v7 setAlignment:3];
  [v7 setDistribution:0];
  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_platterView;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = [v9 traitCollection];
  v11 = [v10 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v9, v11);
  *(v1 + v8) = v9;
  v12 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_playButton;
  type metadata accessor for MOSuggestionSheetListPlayButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = (v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_accessoryButtonAction);
  *v13 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v13[1] = 0;
  swift_weakInit();
  v14 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetView;
  type metadata accessor for MOSuggestionSheetAssetView();
  *(v1 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_addedView;
  v16 = [objc_allocWithZone(type metadata accessor for MOSuggestionAddedView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = 1;
  v17 = v16;
  [v17 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  *(v1 + v15) = v17;
  v18 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionCollectionViewListCell_assetContainerView;
  v19 = [objc_allocWithZone(UIView) init];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v19 layer];
  [v21 setMaskedCorners:1];

  [v19 setClipsToBounds:1];
  *(v1 + v18) = v19;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined destroy of UIBackgroundConfiguration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F6890@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F68EC(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xC0);

  return v2(v3);
}

uint64_t sub_1000F6950@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F6A10@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((swift_isaMask & **a1) + 0xE8))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_1000F6AA8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F6B0C(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x110);

  return v2(v3);
}

uint64_t sub_1000F6B78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F6C48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F6D18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t sub_1000F6DE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t MOSuggestionAssetSystemSymbolProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t *MOSuggestionAssetSystemSymbolProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetSystemSymbolProvider.shared;
}

uint64_t static MOSuggestionAssetSystemSymbolProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

UIImage_optional __swiftcall MOSuggestionAssetSystemSymbolProvider.symbolImage(type:)(__C::MOWorkoutMotionActivityAction type)
{
  v2 = v1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

LABEL_13:
    swift_beginAccess();
    v17 = *(v2 + 16);
    if (*(v17 + 16))
    {

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(type._rawValue);
      if (v19)
      {
        goto LABEL_15;
      }
    }

    v21 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() systemImageNamed:v21];

    if (!v20)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static MOAngelLogger.shared);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_24;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "[Assets] Unable to fetch SF symbol for walk";
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_13;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_25:
      v20 = 0;
      goto LABEL_26;
    }
  }

  swift_beginAccess();
  v17 = *(v2 + 16);
  if (!*(v17 + 16))
  {
LABEL_31:
    v30 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() systemImageNamed:v30];

    if (!v20)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static MOAngelLogger.shared);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_24;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "[Assets] Unable to fetch SF symbol for run";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

LABEL_24:

      goto LABEL_25;
    }

LABEL_18:
    swift_beginAccess();
    v22 = specialized Dictionary._Variant.updateValue(_:forKey:)(v20, type._rawValue);
    swift_endAccess();

    goto LABEL_26;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(type._rawValue);
  if ((v29 & 1) == 0)
  {

    goto LABEL_31;
  }

LABEL_15:
  v20 = *(*(v17 + 56) + 8 * v18);

LABEL_26:
  v28 = v20;
  result.value.super.isa = v28;
  result.is_nil = v16;
  return result;
}

void MOSuggestionAssetSystemSymbolProvider.getAssetFor(symbol:size:completion:)(uint64_t a1, unint64_t a2, char a3, void (*a4)(CGContext *))
{
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  if (v9)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static MOAngelLogger.shared);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[Assets] Packed asset for system symbol", v13, 2u);
    }

    if ((a3 - 2) >= 9u)
    {
      v19 = String._bridgeToObjectiveC()();
      v20 = objc_opt_self();
      v21 = [v20 colorNamed:v19];

      if (!v21)
      {
        v21 = [v20 systemRedColor];
      }

      v22 = [v20 systemWhiteColor];
      v23 = [v22 colorWithAlphaComponent:0.55];

      v24 = UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:assetSize:)(v21, v23, a3, 1.0);
      a4(v24);
    }

    else
    {
      v24 = v9;
      a4(v9);
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static MOAngelLogger.shared);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v25);
      _os_log_impl(&_mh_execute_header, v15, v16, "[Assets] Unable to fetch SF symbol for string:%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    a4(0);
  }
}

void *MOSuggestionAssetSystemSymbolProvider.getMotionActivityAssetFor(type:size:glyphOnly:style:)(uint64_t a1, unsigned __int8 a2, char a3, uint64_t a4)
{
  v8 = (*(*v4 + 112))();
  if (v8)
  {
    v9 = v8;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static MOAngelLogger.shared);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[Assets] Packed asset for system symbol", v13, 2u);
    }

    v14 = objc_opt_self();
    v15 = dbl_1002A7CF0[a4 == 1];
    v16 = &selRef_systemWhiteColor;
    if (a4 != 1)
    {
      v16 = &selRef_systemBlackColor;
    }

    v17 = [v14 *v16];
    v18 = [v17 colorWithAlphaComponent:v15];

    if (a2 - 2 >= 7 && a2 != 10 && (a3 & 1) == 0)
    {
      v19 = String._bridgeToObjectiveC()();
      v20 = objc_opt_self();
      v21 = [v20 colorNamed:v19];

      if (!v21)
      {
        v21 = [v20 systemRedColor];
      }

      v22 = v18;
      v23 = UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:assetSize:)(v21, v18, a2, 1.0);

      v18 = v22;
      v9 = v23;
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static MOAngelLogger.shared);
    v18 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v18, v25, "[Assets] Unable to fetch motion activity symbol", v26, 2u);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t MOSuggestionAssetSystemSymbolProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MOSuggestionAssetSystemSymbolProvider.init()()
{
  result = v0;
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, void *a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    type metadata accessor for MOWorkoutMotionActivityAction(0);
    v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = v9;
    specialized _NativeDictionary.copy()();
    v9 = v18;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v8);
    v19 = a2;
    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  *(v16 + 8 * v9) = a1;
LABEL_11:
  *v4 = v8;
  return v17;
}

uint64_t specialized static MOSuggestionAssetSystemSymbolProvider.symbolName(type:)()
{
  v0 = 0x772E657275676966;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    return v0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    return 0x722E657275676966;
  }

  return v0;
}

void one-time initialization function for localizedAppName()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002B5DB0;
  v1._object = 0x80000001002AFEF0;
  v4._countAndFlagsBits = 0xD000000000000025;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static MOSuggestionCollectionView.ProtectedContentConstants.localizedAppName = v3;
}

__int128 *MOSuggestionCollectionView.ProtectedContentConstants.localizedAppName.unsafeMutableAddressor()
{
  if (one-time initialization token for localizedAppName != -1)
  {
    swift_once();
  }

  return &static MOSuggestionCollectionView.ProtectedContentConstants.localizedAppName;
}

uint64_t static MOSuggestionCollectionView.ProtectedContentConstants.localizedAppName.getter()
{
  if (one-time initialization token for localizedAppName != -1)
  {
    swift_once();
  }

  v0 = static MOSuggestionCollectionView.ProtectedContentConstants.localizedAppName;

  return v0;
}

Swift::Void __swiftcall MOSuggestionCollectionView.setupProtectedContentBanner()()
{
  v1 = v0;
  *(&v59 + 1) = &type metadata for MOAppProtectionFeatureFlags;
  v60 = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v2 = isFeatureEnabled(_:)();
  v3 = __swift_destroy_boxed_opaque_existential_0(&v58);
  if (v2)
  {
    v4 = (*((swift_isaMask & *v1) + 0x118))(v3);
    if (v4)
    {
      v5 = v4;
      v6 = (*((swift_isaMask & *v1) + 0x100))();
      if (v6)
      {
        v7 = v6;
        v8 = String._bridgeToObjectiveC()();
        v9 = [objc_opt_self() imageNamed:v8];

        if (v9)
        {
          if (one-time initialization token for localizedAppName != -1)
          {
            swift_once();
          }

          v10 = objc_allocWithZone(APBaseExtensionShieldView);
          v11 = v9;
          v12 = String._bridgeToObjectiveC()();
          v13 = [v10 initWithLocalizedApplicationName:v12 iconImage:v11];

          [v13 setDelegate:v1];
          v14 = v13;
          [v14 setHidden:1];
          v15 = [v1 addSubview:v14];
          v16 = (*((swift_isaMask & *v5) + 0x1B0))(v15);
          v17 = (*(*v7 + 616))();
          v18 = 50.0;
          if (v16)
          {
            v18 = 0.0;
          }

          if (v17)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0.0;
          }

          v20 = [v14 superview];
          p_align = (&stru_100327FE8 + 24);
          v22 = (&stru_100327FE8 + 24);
          if (v20)
          {
            v23 = v20;
            [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
            v24 = [v14 leadingAnchor];
            v25 = [v23 leadingAnchor];
            v26 = [v24 constraintEqualToAnchor:v25];

            p_align = &stru_100327FE8.align;
            v22 = &stru_100327FE8.align;
            [v26 setConstant:0.0];
            [v26 setActive:1];
          }

          v27 = [v14 superview];
          if (v27)
          {
            v28 = v27;
            [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
            v29 = [v14 trailingAnchor];
            v30 = [v28 trailingAnchor];
            v31 = [v29 constraintEqualToAnchor:v30];

            p_align = &stru_100327FE8.align;
            v22 = &stru_100327FE8.align;
            [v31 setConstant:0.0];
            [v31 setActive:1];
          }

          v32 = [v14 superview];
          if (v32)
          {
            v33 = v32;
            [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
            v34 = [v14 bottomAnchor];
            v35 = [v33 bottomAnchor];
            v36 = [v34 constraintEqualToAnchor:v35];

            v22 = &stru_100327FE8.align;
            if (v36)
            {
              [v36 setConstant:-0.0];
              [v36 setActive:1];
            }

            p_align = &stru_100327FE8.align;
          }

          v37 = [v14 superview];
          if (v37)
          {
            v38 = v37;
            [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
            v39 = p_align;
            v40 = [v14 topAnchor];
            v41 = [v38 topAnchor];
            v42 = [v40 constraintEqualToAnchor:v41];

            v22 = &stru_100327FE8.align;
            [v42 *(v39 + 279)];
            [v42 setActive:1];
          }

          v43 = String._bridgeToObjectiveC()();
          v44 = [v14 valueForKey:v43];

          if (v44)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v56 = 0u;
            v57 = 0u;
          }

          v58 = v56;
          v59 = v57;
          if (*(&v57 + 1))
          {
            type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImageView);
            if (swift_dynamicCast())
            {
              [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
              v45 = [v55 widthAnchor];
              v46 = v22;
              v47 = [v45 constraintEqualToConstant:52.0];

              [v47 *(v46 + 270)];
              [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
              v48 = [v55 heightAnchor];
              v49 = [v48 constraintEqualToConstant:52.0];

              [v49 *(v46 + 270)];
            }
          }

          else
          {
            outlined destroy of Any?(&v58);
          }

          v50 = [objc_opt_self() systemBackgroundColor];
          [v14 setBackgroundColor:v50];

          v51 = [v14 layer];
          [v51 setZPosition:1.79769313e308];

          v52 = *((swift_isaMask & *v1) + 0x210);
          v53 = v14;
          v52(v14);
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
}

uint64_t MOSuggestionCollectionView.shieldViewUnlockButtonPressed(_:)()
{
  result = (*((swift_isaMask & *v0) + 0x100))();
  if (result)
  {
    MOSuggestionCollectionViewModel.initiateAuthentication()();
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionCollectionView.didUpdateProtectedContentStatus(authorized:)(Swift::Bool authorized)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = authorized;
  aBlock[4] = partial apply for closure #1 in MOSuggestionCollectionView.didUpdateProtectedContentStatus(authorized:);
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_17;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000F8AA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in MOSuggestionCollectionView.didUpdateProtectedContentStatus(authorized:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((swift_isaMask & *Strong) + 0x208))();

    if (v5)
    {
      [v5 setHidden:a2 & 1];
    }
  }

  if (a2)
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = (*((swift_isaMask & *v6) + 0x100))();

      if (v8)
      {
        if (((*(*v8 + 616))() & 1) == 0 && (swift_beginAccess(), (v9 = swift_unknownObjectWeakLoadStrong()) != 0) && (v10 = v9, v11 = (*((swift_isaMask & *v9) + 0x160))(), v13 = v12, v10, v11))
        {
          ObjectType = swift_getObjectType();
          (*(v13 + 16))(ObjectType, v13);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1000F8CE4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t one-time initialization function for CHECKMARK_PLATTER_SIZE()
{
  result = static CGSize.* infix(_:_:)();
  static MOSuggestionInterstitialExpandableListViewCellConstants.CHECKMARK_PLATTER_SIZE = v1;
  qword_100347348 = v2;
  return result;
}

uint64_t *MOSuggestionInterstitialExpandableListViewCellConstants.CHECKMARK_PLATTER_SIZE.unsafeMutableAddressor()
{
  if (one-time initialization token for CHECKMARK_PLATTER_SIZE != -1)
  {
    swift_once();
  }

  return &static MOSuggestionInterstitialExpandableListViewCellConstants.CHECKMARK_PLATTER_SIZE;
}

double static MOSuggestionInterstitialExpandableListViewCellConstants.CHECKMARK_PLATTER_SIZE.getter()
{
  if (one-time initialization token for CHECKMARK_PLATTER_SIZE != -1)
  {
    swift_once();
  }

  return *&static MOSuggestionInterstitialExpandableListViewCellConstants.CHECKMARK_PLATTER_SIZE;
}

id closure #1 in variable initialization expression of MOSuggestionInterstitialExpandableListViewCell.titleLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setLineBreakMode:4];
  [v0 setNumberOfLines:0];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor:v1];

  [v0 setTextAlignment:4];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  [v0 setFont:isa];
  return v0;
}

id closure #1 in variable initialization expression of MOSuggestionInterstitialExpandableListViewCell.subtitleLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setLineBreakMode:4];
  [v0 setNumberOfLines:0];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v1];

  [v0 setTextAlignment:4];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v2];

  return v0;
}

uint64_t key path getter for MOSuggestionInterstitialExpandableListViewCell.didToggle : MOSuggestionInterstitialExpandableListViewCell@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MOSuggestionInterstitialExpandableListViewCell.didToggle : MOSuggestionInterstitialExpandableListViewCell(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((swift_isaMask & **a2) + 0xA0);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t MOSuggestionInterstitialExpandableListViewCell.didToggle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_didToggle);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(*v1);
  return v2;
}

uint64_t MOSuggestionInterstitialExpandableListViewCell.didToggle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_didToggle);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

void MOSuggestionInterstitialExpandableListViewCell.keyColor.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*((swift_isaMask & **(v1 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView)) + 0x88))();
  }
}

void (*MOSuggestionInterstitialExpandableListViewCell.keyColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_keyColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MOSuggestionInterstitialExpandableListViewCell.keyColor.modify;
}

void MOSuggestionInterstitialExpandableListViewCell.keyColor.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (swift_unknownObjectWeakLoadStrong())
    {
      (*((swift_isaMask & **(*(v3 + 32) + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView)) + 0x88))();
    }
  }

  free(v3);
}

Swift::Void __swiftcall MOSuggestionInterstitialExpandableListViewCell.updateData()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0xE0))();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_assetView)) + 0x70))();
  if (MOSuggestionInterstitialListAssetViewModel.isSingleTopLevel.getter())
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_titleLabel);
    (*(*v3 + 200))();
    if (v5)
    {
      v6 = String._bridgeToObjectiveC()();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText:v6];

    MOSuggestionInterstitialListAssetViewModel.singleFirstTitleAndDate.getter();
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!(*(*v3 + 176))())
  {
    v14 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_titleLabel);
    v15 = (*(*v3 + 248))();
    if (v15)
    {
      if (*(v15 + 16))
      {

        v16 = String._bridgeToObjectiveC()();

        goto LABEL_26;
      }
    }

    v16 = 0;
LABEL_26:
    [v14 setText:v16];

    MOSuggestionInterstitialListAssetViewModel.subLevelDateRangeString.getter();
    if (!v19)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_titleLabel);
  (*(*v3 + 200))(v7);
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v8 setText:v10];

  if ((v3[65] | 4) == 0xF)
  {
    MOSuggestionInterstitialListAssetViewModel.concactenatedTitles.getter();
    if (!v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    MOSuggestionInterstitialListAssetViewModel.toplevelDateRangeString.getter();
    if (!v18)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v12 = *(v1 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_subtitleLabel);
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

LABEL_12:
  MOSuggestionInterstitialExpandableListViewCell.setUpCheckPlatter()();
}

uint64_t MOSuggestionInterstitialExpandableListViewCell.keyColor.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(v2 + v4);
}

uint64_t MOSuggestionInterstitialExpandableListViewCell.viewModel.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  MOSuggestionInterstitialExpandableListViewCell.updateData()();
}

void (*MOSuggestionInterstitialExpandableListViewCell.viewModel.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MOSuggestionInterstitialExpandableListViewCell.viewModel.modify;
}

void MOSuggestionInterstitialExpandableListViewCell.viewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    MOSuggestionInterstitialExpandableListViewCell.updateData()();
  }

  free(v3);
}

char *MOSuggestionInterstitialExpandableListViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_titleLabel;
  *&v4[v9] = closure #1 in variable initialization expression of MOSuggestionInterstitialExpandableListViewCell.titleLabel();
  v10 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_subtitleLabel;
  *&v4[v10] = closure #1 in variable initialization expression of MOSuggestionInterstitialExpandableListViewCell.subtitleLabel();
  v11 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_stackView;
  v12 = [objc_allocWithZone(UIStackView) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAxis:1];
  [v12 setAlignment:1];
  [v12 setDistribution:2];
  *&v4[v11] = v12;
  v13 = &v4[OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_didToggle];
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_assetView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialListAssetView()) init];
  v4[OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_isTopLevel] = 0;
  v15 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for CanvasAssetAccessoryView()) initWithFrame:{0.0, 0.0, 22.0, 22.0}];
  swift_weakInit();
  v16 = type metadata accessor for MOSuggestionInterstitialExpandableListViewCell();
  v33.receiver = v4;
  v33.super_class = v16;
  v17 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_stackView;
  v19 = *&v17[OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_stackView];
  v20 = *&v17[OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_titleLabel];
  v21 = v17;
  [v19 addArrangedSubview:v20];
  [*&v17[v18] addArrangedSubview:*&v21[OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_subtitleLabel]];
  v22 = [v21 contentView];
  [v22 addSubview:*&v17[v18]];

  v23 = [v21 contentView];
  [v23 addSubview:*&v21[OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_assetView]];

  v24 = [v21 contentView];
  v25 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView;
  [v24 addSubview:*&v21[OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView]];

  MOSuggestionInterstitialExpandableListViewCell.setupViewsAndLayouts()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1002A48B0;
  *(v26 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v26 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  [v21 handleTraitChange];
  v27 = *&v21[v25];
  v32[3] = v16;
  v32[0] = v21;
  v28 = *((swift_isaMask & *v27) + 0xA8);
  v29 = v21;
  v30 = v27;
  v28(v32, "didTapCheckmark");

  outlined destroy of Any?(v32);
  MOSuggestionInterstitialExpandableListViewCell.setUpCheckPlatter()();
  [v29 setIndentationLevel:{0, v32[0]}];

  return v29;
}

Swift::Void __swiftcall MOSuggestionInterstitialExpandableListViewCell.setupViewsAndLayouts()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_stackView);
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_assetView);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v3 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:6.0];
    if (v8)
    {
      [v8 setActive:1];
    }
  }

  if (one-time initialization token for CHECKMARK_PLATTER_SIZE != -1)
  {
    swift_once();
  }

  v9 = *&static MOSuggestionInterstitialExpandableListViewCellConstants.CHECKMARK_PLATTER_SIZE;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v3 widthAnchor];
  v11 = [v10 constraintEqualToConstant:v9];

  [v11 setActive:1];
  v12 = *&qword_100347348;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [v3 heightAnchor];
  v14 = [v13 constraintEqualToConstant:v12];

  [v14 setActive:1];
  v15 = [v3 superview];
  if (v15)
  {
    v16 = v15;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v3 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    [v19 setActive:1];
  }

  v20 = [v2 leadingAnchor];
  v21 = [v3 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:6.0];

  [v22 setActive:1];
  v23 = [v2 superview];
  if (v23)
  {
    v24 = v23;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v2 centerYAnchor];
    v26 = [v24 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setConstant:0.0];
    [v27 setActive:1];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [v2 widthAnchor];
  v29 = [v28 constraintEqualToConstant:40.0];

  [v29 setActive:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v2 heightAnchor];
  v31 = [v30 constraintEqualToConstant:40.0];

  [v31 setActive:1];
  v32 = [v1 superview];
  if (v32)
  {
    v33 = v32;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [v1 topAnchor];
    v35 = [v33 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    [v36 setConstant:12.0];
    [v36 setActive:1];
  }

  v37 = [v1 heightAnchor];
  v38 = [v37 constraintGreaterThanOrEqualToConstant:40.0];

  [v38 setActive:1];
  v39 = [v1 superview];
  if (v39)
  {
    v40 = v39;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = [v1 bottomAnchor];
    v42 = [v40 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    if (v43)
    {
      [v43 setConstant:-12.0];
      [v43 setActive:1];
    }
  }

  v44 = [v1 superview];
  if (v44)
  {
    v45 = v44;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [v1 trailingAnchor];
    v47 = [v45 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    [v48 setConstant:-12.0];
    [v48 setActive:1];
  }

  v49 = [v1 leadingAnchor];
  v50 = [v2 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:12.0];

  [v51 setActive:1];
  v52 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_titleLabel);
  v53 = [v52 superview];
  if (v53)
  {
    v54 = v53;
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    v55 = [v52 trailingAnchor];
    v56 = [v54 trailingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    [v57 setConstant:0.0];
    [v57 setActive:1];
  }

  v58 = [v52 superview];
  if (v58)
  {
    v59 = v58;
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    v60 = [v52 leadingAnchor];
    v61 = [v59 leadingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    [v62 setConstant:0.0];
    [v62 setActive:1];
  }

  v63 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_subtitleLabel);
  v64 = [v63 superview];
  if (v64)
  {
    v65 = v64;
    [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
    v66 = [v63 trailingAnchor];
    v67 = [v65 trailingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    [v68 setConstant:0.0];
    [v68 setActive:1];
  }

  v69 = [v63 superview];
  if (v69)
  {
    v73 = v69;
    [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
    v70 = [v63 leadingAnchor];
    v71 = [v73 leadingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    [v72 setConstant:0.0];
    [v72 setActive:1];
  }
}

Swift::Void __swiftcall MOSuggestionInterstitialExpandableListViewCell.setUpCheckPlatter()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0xE0))();
  if (v2)
  {
    v3 = v2;
    if (v2[90] == 1)
    {
      if ((*(*v2 + 176))(v2))
      {

        v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView);
        [v4 setUserInteractionEnabled:1];
LABEL_11:
        [v4 setHidden:0];

        return;
      }

      if ((v3[88] & 1) == 0)
      {
        v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView);
        [v4 setUserInteractionEnabled:0];
        goto LABEL_11;
      }
    }
  }

  v5 = *(v1 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView);
  [v5 setUserInteractionEnabled:0];

  [v5 setHidden:1];
}

id MOSuggestionInterstitialExpandableListViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionInterstitialExpandableListViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall MOSuggestionInterstitialExpandableListViewCell.didTapCheckmark()()
{
  v1 = (*((swift_isaMask & *v0) + 0xE0))();
  if (v1)
  {
    if ((*(*v1 + 176))())
    {

      v3 = (*((swift_isaMask & *v0) + 0x98))(v2);
      if (v3)
      {
        v4 = v3;
        v3();
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
      }
    }
  }
}

Swift::Void __swiftcall MOSuggestionInterstitialExpandableListViewCell.handleTraitChange()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 traitCollection];
  v9 = [v8 userInterfaceStyle];

  static UIBackgroundConfiguration.listGroupedCell()();
  v10 = objc_opt_self();
  if (v9 == 1)
  {
    v11 = [v10 systemGroupedBackgroundColor];
  }

  else
  {
    v12 = [v10 whiteColor];
    [v12 colorWithAlphaComponent:0.15];
  }

  UIBackgroundConfiguration.backgroundColor.setter();
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  UICollectionViewCell.backgroundConfiguration.setter();
  (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall MOSuggestionInterstitialExpandableListViewCell.updateTitle(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    v2 = (*((swift_isaMask & *v1) + 0xE0))();
    if (v2)
    {
      if ((*(*v2 + 176))(v2))
      {

        v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_titleLabel);
        v4 = String._bridgeToObjectiveC()();
        [v3 setText:v4];
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall MOSuggestionInterstitialExpandableListViewCell.prepareForReuse()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MOSuggestionInterstitialExpandableListViewCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_titleLabel);
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_subtitleLabel);
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  (*((swift_isaMask & *v0) + 0xE8))(0);
  MOSuggestionInterstitialExpandableListViewCell.setUpCheckPlatter()();
}

void specialized MOSuggestionInterstitialExpandableListViewCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_titleLabel;
  *(v0 + v1) = closure #1 in variable initialization expression of MOSuggestionInterstitialExpandableListViewCell.titleLabel();
  v2 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_subtitleLabel;
  *(v0 + v2) = closure #1 in variable initialization expression of MOSuggestionInterstitialExpandableListViewCell.subtitleLabel();
  v3 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_stackView;
  v4 = [objc_allocWithZone(UIStackView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAxis:1];
  [v4 setAlignment:1];
  [v4 setDistribution:2];
  *(v0 + v3) = v4;
  v5 = (v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_didToggle);
  *v5 = 0;
  v5[1] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_assetView;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialListAssetView()) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_isTopLevel) = 0;
  v7 = OBJC_IVAR____TtC16MomentsUIService46MOSuggestionInterstitialExpandableListViewCell_checkmarkView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for CanvasAssetAccessoryView()) initWithFrame:{0.0, 0.0, 22.0, 22.0}];
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000FB3E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_1000FB444(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xB8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1000FB4AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_1000FB508(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xE8);

  return v2(v3);
}

uint64_t sub_1000FB57C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MOWeakArray.count.getter(uint64_t a1)
{
  v2 = type metadata accessor for MOWeakReference();

  return Array.count.getter(a1, v2);
}

uint64_t MOWeakArray.subscript.setter(uint64_t result, Swift::Int a2)
{
  if (result)
  {
    type metadata accessor for MOWeakReference();
    v4 = specialized MOWeakReference.__allocating_init(_:)();
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v5 = *v2;
    Array._checkSubscript_mutating(_:)(a2);
    swift_unknownObjectRelease();
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = v4;
  }

  return result;
}

uint64_t MOWeakArray.subscript.getter()
{
  v0 = type metadata accessor for MOWeakReference();
  v1 = Array.subscript.getter(v0, &v4);
  if (!v4)
  {
    return 0;
  }

  v2 = (*(*v4 + 96))(v1);

  return v2;
}

uint64_t MOWeakArray.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized MOWeakArray.init(_:)(a1, a2);

  return v2;
}

uint64_t MOWeakReference.strongValue.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOWeakReference.strongValue.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MOWeakReference.strongValue.modify;
}

void MOWeakReference.strongValue.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t MOWeakReference.__allocating_init(_:)()
{
  v0 = specialized MOWeakReference.__allocating_init(_:)();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MOWeakReference.init(_:)()
{
  v0 = specialized MOWeakReference.init(_:)();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MOWeakReference.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t MOWeakArray.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v4 = specialized Array.init(repeating:count:)(&v7, a2, a3);
  v5 = specialized MOWeakArray.init(_:)(v4, a3);
  swift_unknownObjectRelease();

  return v5;
}

uint64_t MOWeakArray.endIndex.getter(uint64_t a1)
{
  v2 = type metadata accessor for MOWeakReference();

  return Array.endIndex.getter(a1, v2);
}

uint64_t MOWeakArray.first.getter()
{
  type metadata accessor for MOWeakReference();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v0 = Collection.first.getter();
  if (!v3)
  {
    return 0;
  }

  v1 = (*(*v3 + 96))(v0);

  return v1;
}

uint64_t (*MOWeakArray.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = MOWeakArray.subscript.getter();
  return MOWeakArray.subscript.modify;
}

uint64_t MOWeakArray.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return MOWeakArray.subscript.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  MOWeakArray.subscript.setter(v3, v2);

  return swift_unknownObjectRelease();
}

Swift::Int __swiftcall MOWeakArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MOWeakArray<A>@<X0>(uint64_t *a1@<X8>)
{
  result = MOWeakArray.endIndex.getter(*v1);
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MOWeakArray<A>(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = MOWeakArray.subscript.read(v2);
  v3[4] = v5;
  v3[5] = v4;
  return protocol witness for Collection.subscript.read in conformance MOWeakArray<A>;
}

void protocol witness for Collection.subscript.read in conformance MOWeakArray<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MOWeakArray<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, &type metadata accessor for Range, &dispatch thunk of static Comparable.< infix(_:_:));
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, &type metadata accessor for ClosedRange, &dispatch thunk of static Comparable.<= infix(_:_:));
}

void *protocol witness for Collection.index(after:) in conformance MOWeakArray<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance MOWeakArray<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance MOWeakArray<A>@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance MOWeakArray<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance MOWeakArray<A>()
{
  swift_getWitnessTable();
  v0 = specialized Collection._copyToContiguousArray()();

  return v0;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    type metadata accessor for Array();
    return v8;
  }

  return result;
}

uint64_t specialized MOWeakReference.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t specialized MOWeakReference.__allocating_init(_:)()
{
  type metadata accessor for MOWeakReference();
  swift_allocObject();
  return specialized MOWeakReference.init(_:)();
}

uint64_t specialized MOWeakArray.init(_:)(uint64_t a1, uint64_t a2)
{
  v7[5] = a1;
  v7[2] = a2;
  v2 = type metadata accessor for Array();
  v3 = type metadata accessor for MOWeakReference();
  WitnessTable = swift_getWitnessTable();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in MOWeakArray.init(_:), v7, v2, v3, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);
}

uint64_t sub_1000FC8A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1000FC8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t type metadata instantiation function for MOWeakArray()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MOWeakArray(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for MOWeakArray(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in MOWeakArray.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MOWeakReference();
  result = specialized MOWeakReference.__allocating_init(_:)();
  *a1 = result;
  return result;
}

MomentsUIService::FallbackAssetSymbol __swiftcall FallbackAssetSymbol.init(visualSubType:)(MomentsUIService::MOSuggestionAssetVisualSubType visualSubType)
{
  if (visualSubType > MomentsUIService_MOSuggestionAssetVisualSubType_mapMultiPin)
  {
    return 6;
  }

  else
  {
    return byte_1002A8140[visualSubType];
  }
}

unint64_t FallbackAssetSymbol.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F746F6870;
    v6 = 0x636973756DLL;
    if (a1 != 2)
    {
      v6 = 0x7374736163646F70;
    }

    if (a1)
    {
      v5 = 0x6F65646976;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6F697473657571;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0x722E657275676966;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

char *MOSuggestionFallbackAssetView.__allocating_init(with:sizeType:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = [objc_allocWithZone(v3) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static MOAngelLogger.assets);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v59 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v59);
    _os_log_impl(&_mh_execute_header, v9, v10, "[MOSuggestionFallbackAssetView] fallbackSymbol=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  if (a3 == 1)
  {
    goto LABEL_12;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_12:

    goto LABEL_13;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView;
    v16 = *&v7[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView];
    v17 = one-time initialization token for SMALL_SYMBOL;
    v18 = v7;
    v19 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v20 = static FallbackConstants.SMALL_SYMBOL;
    v21 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() _systemImageNamed:v21 withConfiguration:v20];

    [v19 setImage:v22];
    v23 = [*&v7[v15] widthAnchor];
    v24 = [v23 constraintLessThanOrEqualToConstant:30.0];

    [v24 setActive:1];
    v25 = [*&v7[v15] heightAnchor];
    v26 = [v25 constraintLessThanOrEqualToConstant:30.0];

    [v26 setActive:1];
    goto LABEL_16;
  }

LABEL_13:
  v27 = *&v7[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView];
  v28 = one-time initialization token for BIG_SYMBOL;
  v29 = v7;
  v30 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = static FallbackConstants.BIG_SYMBOL;
  v32 = String._bridgeToObjectiveC()();

  v26 = [objc_opt_self() _systemImageNamed:v32 withConfiguration:v31];

  [v30 setImage:v26];
LABEL_16:

  v33 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView;
  [*&v7[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView] setContentMode:2];
  v34 = one-time initialization token for IMAGE_TINT_COLOR;
  v35 = *&v7[v33];
  if (v34 != -1)
  {
    swift_once();
  }

  [v35 setTintColor:static FallbackConstants.IMAGE_TINT_COLOR];

  [v7 addSubview:*&v7[v33]];
  v36 = *&v7[v33];
  v37 = [v36 superview];
  p_align = &stru_100327FE8.align;
  if (v37)
  {
    v39 = v37;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v36 centerYAnchor];
    v41 = [v39 centerYAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    [v42 setConstant:0.0];
    if (v42)
    {
      [v42 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v42 = 0;
    v39 = v36;
  }

  v43 = *&v7[v33];
  v44 = v7;
  v45 = v43;
  v46 = [v45 superview];
  if (v46)
  {
    v47 = v46;
    [v45 *(p_align + 222)];
    v48 = [v45 centerXAnchor];
    v49 = [v47 centerXAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    [v50 setConstant:0.0];
    if (v50)
    {
      [v50 setActive:1];
    }
  }

  else
  {
    v50 = 0;
    v47 = v45;
  }

  [v44 setIsAccessibilityElement:1];
  v51 = UIAccessibilityTraitImage;
  v52 = [v44 accessibilityTraits];
  if ((v51 & ~v52) != 0)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0;
  }

  [v44 setAccessibilityTraits:v53 | v52];
  v54 = [objc_opt_self() mainBundle];
  v60._object = 0x80000001002B1DD0;
  v55._countAndFlagsBits = 0x6B6361626C6C6146;
  v55._object = 0xE800000000000000;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD00000000000002DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v60);

  v57 = String._bridgeToObjectiveC()();

  [v44 setAccessibilityLabel:v57];

  return v44;
}

id one-time initialization function for BIG_SYMBOL()
{
  result = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:46.0];
  static FallbackConstants.BIG_SYMBOL = result;
  return result;
}

uint64_t *FallbackConstants.BIG_SYMBOL.unsafeMutableAddressor()
{
  if (one-time initialization token for BIG_SYMBOL != -1)
  {
    swift_once();
  }

  return &static FallbackConstants.BIG_SYMBOL;
}

void one-time initialization function for SMALL_SYMBOL()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleLargeTitle;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [objc_opt_self() configurationWithFont:v2 scale:-1];
  static FallbackConstants.SMALL_SYMBOL = v3;
}

uint64_t *FallbackConstants.SMALL_SYMBOL.unsafeMutableAddressor()
{
  if (one-time initialization token for SMALL_SYMBOL != -1)
  {
    swift_once();
  }

  return &static FallbackConstants.SMALL_SYMBOL;
}

uint64_t *FallbackConstants.IMAGE_TINT_COLOR.unsafeMutableAddressor()
{
  if (one-time initialization token for IMAGE_TINT_COLOR != -1)
  {
    swift_once();
  }

  return &static FallbackConstants.IMAGE_TINT_COLOR;
}

id one-time initialization function for IMAGE_TINT_COLOR(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t *FallbackConstants.BACKGROUND_COLOR.unsafeMutableAddressor()
{
  if (one-time initialization token for BACKGROUND_COLOR != -1)
  {
    swift_once();
  }

  return &static FallbackConstants.BACKGROUND_COLOR;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FallbackAssetSymbol(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FallbackAssetSymbol.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FallbackAssetSymbol.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FallbackAssetSymbol()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FallbackAssetSymbol.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FallbackAssetSymbol()
{
  FallbackAssetSymbol.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FallbackAssetSymbol()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FallbackAssetSymbol.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FallbackAssetSymbol@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FallbackAssetSymbol.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FallbackAssetSymbol@<X0>(unint64_t *a1@<X8>)
{
  result = FallbackAssetSymbol.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id MOSuggestionFallbackAssetView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MOSuggestionFallbackAssetView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v10 setContentMode:2];
  if (one-time initialization token for BACKGROUND_COLOR != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:static FallbackConstants.BACKGROUND_COLOR];

  return v10;
}

void MOSuggestionFallbackAssetView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSuggestionFallbackAssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionFallbackAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t specialized FallbackAssetSymbol.init(assetType:mediaType:)(void *a1, uint64_t a2, char a3)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    goto LABEL_15;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_6:

    return 0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
LABEL_15:

    return 0;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_6;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {

    return 1;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {

    return 1;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

    return 5;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {

    return 5;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

    return 7;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {

    return 7;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

    goto LABEL_35;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {

LABEL_35:
    if (a3)
    {
      return 6;
    }

    result = 2;
    if (a2 != 1)
    {
      if (a2 == 4)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }

    return result;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {

    return 4;
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {

      return 4;
    }

    else
    {
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
      if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
      {

        return 8;
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v48)
        {
          return 8;
        }

        else
        {
          return 6;
        }
      }
    }
  }
}

unint64_t specialized FallbackAssetSymbol.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FallbackAssetSymbol.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type FallbackAssetSymbol and conformance FallbackAssetSymbol()
{
  result = lazy protocol witness table cache variable for type FallbackAssetSymbol and conformance FallbackAssetSymbol;
  if (!lazy protocol witness table cache variable for type FallbackAssetSymbol and conformance FallbackAssetSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FallbackAssetSymbol and conformance FallbackAssetSymbol);
  }

  return result;
}

id one-time initialization function for sharedEngagementManager()
{
  result = [objc_allocWithZone(MOMultiDeviceEngagementManager) init];
  static MOPresenterServer.sharedEngagementManager = result;
  return result;
}

uint64_t *MOPresenterServer.sharedEngagementManager.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedEngagementManager != -1)
  {
    swift_once();
  }

  return &static MOPresenterServer.sharedEngagementManager;
}

id one-time initialization function for sharedSettingsManager()
{
  result = [objc_opt_self() sharedInstance];
  static MOPresenterServer.sharedSettingsManager = result;
  return result;
}

uint64_t *MOPresenterServer.sharedSettingsManager.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedSettingsManager != -1)
  {
    swift_once();
  }

  return &static MOPresenterServer.sharedSettingsManager;
}

void one-time initialization function for journalGroupDefaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static MOPresenterServer.journalGroupDefaults = v2;
}

uint64_t *MOPresenterServer.journalGroupDefaults.unsafeMutableAddressor()
{
  if (one-time initialization token for journalGroupDefaults != -1)
  {
    swift_once();
  }

  return &static MOPresenterServer.journalGroupDefaults;
}

id one-time initialization function for engagementAnalytics()
{
  type metadata accessor for EngagementAnalytics();
  v0 = swift_allocObject();
  *(v0 + 16) = 0x40C3880000000000;
  *(v0 + 24) = 0xD00000000000001DLL;
  *(v0 + 32) = 0x80000001002AF280;
  result = [objc_opt_self() isInternalBuild];
  *(v0 + 40) = result;
  *(v0 + 48) = &outlined read-only object #0 of EngagementAnalytics.init();
  static MOPresenterServer.engagementAnalytics = v0;
  return result;
}

uint64_t EngagementAnalytics.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x40C3880000000000;
  *(v0 + 24) = 0xD00000000000001DLL;
  *(v0 + 32) = 0x80000001002AF280;
  *(v0 + 40) = [objc_opt_self() isInternalBuild];
  *(v0 + 48) = &outlined read-only object #0 of EngagementAnalytics.init();
  return v0;
}

uint64_t *MOPresenterServer.engagementAnalytics.unsafeMutableAddressor()
{
  if (one-time initialization token for engagementAnalytics != -1)
  {
    swift_once();
  }

  return &static MOPresenterServer.engagementAnalytics;
}

uint64_t static MOPresenterServer.engagementAnalytics.getter()
{
  if (one-time initialization token for engagementAnalytics != -1)
  {
    swift_once();
  }
}

id one-time initialization function for journalAppRecord()
{
  v0 = objc_allocWithZone(LSApplicationRecord);
  result = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(0xD000000000000011, 0x80000001002AF920, 0);
  static MOPresenterServer.journalAppRecord = result;
  return result;
}

uint64_t *MOPresenterServer.journalAppRecord.unsafeMutableAddressor()
{
  if (one-time initialization token for journalAppRecord != -1)
  {
    swift_once();
  }

  return &static MOPresenterServer.journalAppRecord;
}

id static MOPresenterServer.journalGroupDefaults.getter(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  v3 = *a2;
  return v2;
}

id one-time initialization function for isDiagnosticSubmissionAllowed()
{
  result = [objc_opt_self() isDNUEnabled];
  static MOPresenterServer.isDiagnosticSubmissionAllowed = result;
  return result;
}

char *MOPresenterServer.isDiagnosticSubmissionAllowed.unsafeMutableAddressor()
{
  if (one-time initialization token for isDiagnosticSubmissionAllowed != -1)
  {
    swift_once();
  }

  return &static MOPresenterServer.isDiagnosticSubmissionAllowed;
}

uint64_t static MOPresenterServer.isDiagnosticSubmissionAllowed.getter()
{
  if (one-time initialization token for isDiagnosticSubmissionAllowed != -1)
  {
    swift_once();
  }

  return static MOPresenterServer.isDiagnosticSubmissionAllowed;
}

uint64_t one-time initialization function for twentyEightDaysAgo()
{
  v0 = type metadata accessor for Date();
  __swift_allocate_value_buffer(v0, static MOPresenterServer.Constants.twentyEightDaysAgo);
  __swift_project_value_buffer(v0, static MOPresenterServer.Constants.twentyEightDaysAgo);
  return Date.init(timeIntervalSinceNow:)();
}

uint64_t MOPresenterServer.Constants.twentyEightDaysAgo.unsafeMutableAddressor()
{
  if (one-time initialization token for twentyEightDaysAgo != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Date();

  return __swift_project_value_buffer(v0, static MOPresenterServer.Constants.twentyEightDaysAgo);
}

uint64_t static MOPresenterServer.Constants.twentyEightDaysAgo.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for twentyEightDaysAgo != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Date();
  v3 = __swift_project_value_buffer(v2, static MOPresenterServer.Constants.twentyEightDaysAgo);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MOPresenterServer.getEngagementInfo()@<X0>(uint64_t a1@<X8>)
{

  return MOPresenterServer.getEngagementInfo()(&selRef_uniqueRawEngagementSuggestionTypeBySuggestionIdentifierFrom_to_, closure #2 in MOPresenterServer.getEngagementLightInfo(), closure #3 in MOPresenterServer.getEngagementLightInfo(), a1);
}

uint64_t MOPresenterServer.getEngagementLightInfo()@<X0>(uint64_t a1@<X8>)
{

  return MOPresenterServer.getEngagementInfo()(&selRef_uniqueRawEngagementSuggestionTypeBySuggestionIdentifierBasedOnEngagementLightFrom_to_, closure #2 in MOPresenterServer.getEngagementLightInfo(), closure #3 in MOPresenterServer.getEngagementLightInfo(), a1);
}

uint64_t MOPresenterServer.getEngagementInfo()@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(int *)@<X1>, uint64_t (*a3)(int *)@<X2>, uint64_t a4@<X8>)
{
  v127 = a3;
  v128 = a2;
  v130 = a4;
  v141 = type metadata accessor for Logger();
  v5 = *(v141 - 8);
  v6 = __chkstk_darwin(v141);
  v133 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v126 - v8;
  v10 = type metadata accessor for UUID();
  v137 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v140 = &v126 - v15;
  v16 = __chkstk_darwin(v14);
  v142 = &v126 - v17;
  v18 = __chkstk_darwin(v16);
  v154 = &v126 - v19;
  __chkstk_darwin(v18);
  v149 = &v126 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShySo8NSNumberCG5valuetSgMd);
  v22 = __chkstk_darwin(v21 - 8);
  v144 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v143 = &v126 - v24;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156[0] = &_swiftEmptySetSingleton;
  v156[1] = &_swiftEmptySetSingleton;
  if (one-time initialization token for sharedEngagementManager == -1)
  {
    goto LABEL_2;
  }

LABEL_107:
  swift_once();
LABEL_2:
  v132 = v13;
  v151 = v10;
  v135 = v9;
  v29 = static MOPresenterServer.sharedEngagementManager;
  if (one-time initialization token for twentyEightDaysAgo != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v25, static MOPresenterServer.Constants.twentyEightDaysAgo);
  isa = Date._bridgeToObjectiveC()().super.isa;
  static Date.now.getter();
  v31 = Date._bridgeToObjectiveC()().super.isa;
  (*(v26 + 8))(v28, v25);
  v32 = [v29 *a1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8NSNumberCGMd);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v13 = v151;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = *(v9 + 64);
  v138 = v9 + 64;
  v34 = 1 << *(v9 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v150 = v35 & v33;
  v131 = (v34 + 63) >> 6;
  v145 = (v137 + 32);
  v152 = (v137 + 8);
  v153 = (v137 + 16);
  v139 = (v5 + 1);
  v136 = v9;

  v36 = 0;
  v129 = 0;
  v5 = &_s10Foundation4UUIDV3key_ShySo8NSNumberCG5valuetMd;
  *&v37 = 136315138;
  v134 = v37;
  v10 = v144;
  v26 = v143;
  while (1)
  {
    v38 = v150;
    if (!v150)
    {
      if (v131 <= (v36 + 1))
      {
        v40 = v36 + 1;
      }

      else
      {
        v40 = v131;
      }

      a1 = v40 - 1;
      while (1)
      {
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_102;
        }

        if (v39 >= v131)
        {
          v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShySo8NSNumberCG5valuetMd);
          (*(*(v117 - 8) + 56))(v10, 1, 1, v117);
          v150 = 0;
          v148 = a1;
          goto LABEL_21;
        }

        v38 = *(v138 + 8 * v39);
        ++v36;
        if (v38)
        {
          v148 = v39;
          goto LABEL_20;
        }
      }
    }

    v148 = v36;
    v39 = v36;
LABEL_20:
    v150 = (v38 - 1) & v38;
    v41 = __clz(__rbit64(v38)) | (v39 << 6);
    v42 = v136;
    v43 = v137;
    v44 = v149;
    (*(v137 + 16))(v149, *(v136 + 48) + *(v137 + 72) * v41, v13);
    v45 = *(*(v42 + 56) + 8 * v41);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShySo8NSNumberCG5valuetMd);
    v46 = *(v9 + 48);
    (*(v43 + 32))(v10, v44, v13);
    *(v10 + v46) = v45;
    (*(*(v9 - 8) + 56))(v10, 0, 1, v9);

LABEL_21:
    outlined init with take of (key: UUID, value: Set<NSNumber>)?(v10, v26);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShySo8NSNumberCG5valuetMd);
    if ((*(*(v47 - 8) + 48))(v26, 1, v47) == 1)
    {

      return EngagementInfo.init(selectedUUIDs:removedUUIDs:)();
    }

    v28 = *(v26 + *(v47 + 48));
    (*v145)(v154, v26, v13);
    v147 = v28;
    if ((v28 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      v9 = __CocoaSet.makeIterator()();
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
      lazy protocol witness table accessor for type NSNumber and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v28 = v157[1];
      v26 = v157[2];
      v48 = v157[3];
      a1 = v157[4];
      v13 = v157[5];
    }

    else
    {
      v49 = -1 << *(v28 + 32);
      v26 = v28 + 56;
      v48 = ~v49;
      v50 = -v49;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v13 = (v51 & *(v28 + 56));

      a1 = 0;
    }

    v146 = v48;
    v5 = ((v48 + 64) >> 6);
    v25 = _swiftEmptyArrayStorage;
    if (v28 < 0)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v52 = a1;
      v53 = v13;
      v10 = a1;
      if (!v13)
      {
        do
        {
          v10 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_101;
          }

          if (v10 >= v5)
          {
            goto LABEL_45;
          }

          v53 = *(v26 + 8 * v10);
          ++v52;
        }

        while (!v53);
      }

      v54 = (v53 - 1) & v53;
      v55 = *(*(v28 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v53)))));
      if (!v55)
      {
        break;
      }

      while (1)
      {
        v9 = [v55 integerValue];

        if (v9 < 0xFFFFFFFF80000000)
        {
          goto LABEL_103;
        }

        if (v9 > 0x7FFFFFFF)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25);
        }

        v58 = *(v25 + 16);
        v57 = *(v25 + 24);
        if (v58 >= v57 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v25);
        }

        *(v25 + 16) = v58 + 1;
        *(v25 + 4 * v58 + 32) = v9;
        a1 = v10;
        v13 = v54;
        if ((v28 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_35:
        v56 = __CocoaSet.Iterator.next()();
        if (v56)
        {
          v155 = v56;
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
          swift_dynamicCast();
          v55 = v157[0];
          v10 = a1;
          v54 = v13;
          if (v157[0])
          {
            continue;
          }
        }

        goto LABEL_45;
      }
    }

LABEL_45:
    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant();

    v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo33BMMomentsEngagementSuggestionTypeV_SayAEGTt0g5Tf4g_n(v25);

    v59 = *(v26 + 32);
    v60 = v59 & 0x3F;
    a1 = ((1 << v59) + 63) >> 6;
    v61 = 8 * a1;

    v13 = v151;
    v28 = v142;
    if (v60 <= 0xD)
    {
      goto LABEL_46;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_46:
      v5 = &v126;
      __chkstk_darwin(v62);
      v9 = &v126 - ((v61 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v9, v61);
      v63 = 0;
      v64 = 0;
      v65 = 1 << *(v26 + 32);
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      else
      {
        v66 = -1;
      }

      v67 = v66 & *(v26 + 56);
      v68 = (v65 + 63) >> 6;
      v25 = 1;
      v10 = v152;
      while (v67)
      {
        v69 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
        v70 = v69 | (v64 << 6);
LABEL_57:
        if (*(*(v26 + 48) + 4 * v70) == 6)
        {
          *(v9 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
          v73 = __OFADD__(v63++, 1);
          if (v73)
          {
            goto LABEL_105;
          }
        }
      }

      v71 = v64;
      while (1)
      {
        v64 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        if (v64 >= v68)
        {
          v74 = specialized _NativeSet.extractSubset(using:count:)(v9, a1, v63, v26);
          goto LABEL_62;
        }

        v72 = *(v26 + 56 + 8 * v64);
        ++v71;
        if (v72)
        {
          v67 = (v72 - 1) & v72;
          v70 = __clz(__rbit64(v72)) | (v64 << 6);
          goto LABEL_57;
        }
      }

      __break(1u);
      goto LABEL_100;
    }

    v118 = swift_slowAlloc();

    v119 = v129;
    v120 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo33BMMomentsEngagementSuggestionTypeVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So33ijkL5V_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v118, a1, v26, v128);
    v129 = v119;
    if (v119)
    {
      break;
    }

    v121 = v120;
    swift_bridgeObjectRelease_n();

    v74 = v121;
    v25 = 1;
    v10 = v152;
LABEL_62:
    v75 = *(v74 + 16);

    if (v75)
    {
      type metadata accessor for CommonLogger();
      v77 = v135;
      static CommonLogger.engagement.getter();
      v147 = *v153;
      v147(v28, v154, v13);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v28 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v157[0] = v10;
        *v28 = v134;
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        v83 = *v152;
        (*v152)(v142, v151);
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v157);
        v13 = v151;

        *(v28 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v78, v79, "[getDenyList] deleted, suggestionID=%s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {

        v83 = *v10;
        (*v10)(v28, v13);
      }

      (*v139)(v77, v141);
      v85 = v140;
      v147(v140, v154, v13);
      v86 = v149;
      specialized Set._Variant.insert(_:)(v149, v85);
      v76 = (v83)(v86, v13);
      v25 = 1;
    }

    v87 = *(v26 + 32);
    v88 = v87 & 0x3F;
    v89 = (1 << v87) + 63;
    a1 = v89 >> 6;
    if (v88 <= 0xD)
    {
      goto LABEL_68;
    }

    v25 = 8 * (v89 >> 6);

    if (swift_stdlib_isStackAllocationSafe())
    {

      v25 = 1;
LABEL_68:
      v5 = &v126;
      __chkstk_darwin(v76);
      v9 = &v126 - ((v90 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v9, v90);
      v91 = 0;
      v92 = 0;
      v93 = 1 << *(v26 + 32);
      if (v93 < 64)
      {
        v94 = ~(-1 << v93);
      }

      else
      {
        v94 = -1;
      }

      v95 = v94 & *(v26 + 56);
      v96 = (v93 + 63) >> 6;
      while (v95)
      {
        v97 = __clz(__rbit64(v95));
        v95 &= v95 - 1;
        v98 = v97 | (v92 << 6);
LABEL_79:
        if (*(*(v26 + 48) + 4 * v98) == 1)
        {
          *(v9 + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v98;
          v73 = __OFADD__(v91++, 1);
          if (v73)
          {
            goto LABEL_106;
          }
        }
      }

      v99 = v92;
      while (1)
      {
        v92 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          break;
        }

        if (v92 >= v96)
        {
          v101 = specialized _NativeSet.extractSubset(using:count:)(v9, a1, v91, v26);
          goto LABEL_84;
        }

        v100 = *(v26 + 56 + 8 * v92);
        ++v99;
        if (v100)
        {
          v95 = (v100 - 1) & v100;
          v98 = __clz(__rbit64(v100)) | (v92 << 6);
          goto LABEL_79;
        }
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v9 = swift_slowAlloc();

    v122 = v129;
    v123 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo33BMMomentsEngagementSuggestionTypeVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So33ijkL5V_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v9, a1, v26, v127);
    v129 = v122;
    if (v122)
    {
      break;
    }

    v124 = v123;
    swift_bridgeObjectRelease_n();

    v101 = v124;
LABEL_84:
    v102 = *(v101 + 16);

    v10 = v144;
    v26 = v143;
    if (v102)
    {
      type metadata accessor for CommonLogger();
      v103 = v133;
      static CommonLogger.engagement.getter();
      v104 = *v153;
      v105 = v132;
      (*v153)(v132, v154, v13);
      v106 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v106, v28))
      {
        v107 = swift_slowAlloc();
        v147 = v104;
        v108 = v107;
        v109 = swift_slowAlloc();
        v157[0] = v109;
        *v108 = v134;
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v113 = *v152;
        (*v152)(v105, v151);
        v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v157);
        v13 = v151;

        *(v108 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v106, v28, "[getDenyList] selected, suggestionID=%s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v109);

        v104 = v147;
      }

      else
      {

        v113 = *v152;
        (*v152)(v105, v13);
      }

      (*v139)(v103, v141);
      v115 = v140;
      v116 = v154;
      v104(v140, v154, v13);
      v9 = v156;
      v25 = v149;
      specialized Set._Variant.insert(_:)(v149, v115);
      v113(v25, v13);
      v113(v116, v13);
      v10 = v144;
      v26 = v143;
    }

    else
    {
      (*v152)(v154, v13);
    }

    v5 = &_s10Foundation4UUIDV3key_ShySo8NSNumberCG5valuetMd;
    v36 = v148;
  }

  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

uint64_t EngagementEvent.suggestionSuperType.getter()
{
  v0 = type metadata accessor for SuggestionSubType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EngagementEvent.suggestionSubType.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for SuggestionSubType.unknown(_:))
  {
    return 0;
  }

  v6 = v4;
  if (v4 == enum case for SuggestionSubType.visit(_:) || v4 == enum case for SuggestionSubType.flight(_:) || v4 == enum case for SuggestionSubType.dining(_:) || v4 == enum case for SuggestionSubType.shopping(_:) || v4 == enum case for SuggestionSubType.trip(_:) || v4 == enum case for SuggestionSubType.preOnboardedVisit(_:))
  {
    return 1;
  }

  result = 2;
  if (v6 != enum case for SuggestionSubType.workout(_:) && v6 != enum case for SuggestionSubType.workoutWeeklySummary(_:) && v6 != enum case for SuggestionSubType.workoutRoutine(_:) && v6 != enum case for SuggestionSubType.motionActivityWalking(_:) && v6 != enum case for SuggestionSubType.workoutTransit(_:) && v6 != enum case for SuggestionSubType.motionActivityTransit(_:) && v6 != enum case for SuggestionSubType.motionActivityRunning(_:) && v6 != enum case for SuggestionSubType.motionActivityMixedRunningWalking(_:))
  {
    result = 3;
    if (v6 != enum case for SuggestionSubType.contact(_:) && v6 != enum case for SuggestionSubType.contactWeeklySummary(_:) && v6 != enum case for SuggestionSubType.contactTrend(_:))
    {
      result = 4;
      if (v6 != enum case for SuggestionSubType.songOnRepeat(_:) && v6 != enum case for SuggestionSubType.playedSong(_:) && v6 != enum case for SuggestionSubType.playedPodCast(_:) && v6 != enum case for SuggestionSubType.mediaOnRepeatWeeklySummary(_:) && v6 != enum case for SuggestionSubType.playedMediaWeeklySummary(_:) && v6 != enum case for SuggestionSubType.mediaOnRepeatThirdParty(_:) && v6 != enum case for SuggestionSubType.playedMediaThirdParty(_:) && v6 != enum case for SuggestionSubType.mediaOnRepeatWeeklySummaryThirdParty(_:) && v6 != enum case for SuggestionSubType.playedMediaWeeklySummaryThirdParty(_:))
      {
        result = 5;
        if (v6 != enum case for SuggestionSubType.timeAtHome(_:) && v6 != enum case for SuggestionSubType.photosAtHome(_:) && v6 != enum case for SuggestionSubType.hostingAtHome(_:) && v6 != enum case for SuggestionSubType.evergreenAtHome(_:))
        {
          result = 6;
          if (v6 != enum case for SuggestionSubType.photoMemorySingleMoment(_:) && v6 != enum case for SuggestionSubType.photoMemoryPerson(_:) && v6 != enum case for SuggestionSubType.photoMemorySocialGroup(_:) && v6 != enum case for SuggestionSubType.photoMemoryLastMonthAtHome(_:) && v6 != enum case for SuggestionSubType.photoMemoryLookbacks(_:) && v6 != enum case for SuggestionSubType.photoMemoryFoodie(_:) && v6 != enum case for SuggestionSubType.photoMemoryPet(_:) && v6 != enum case for SuggestionSubType.photoMemoryLocation(_:) && v6 != enum case for SuggestionSubType.photoMemoryMeaningfulEvent(_:) && v6 != enum case for SuggestionSubType.photoMemoryTrip(_:) && v6 != enum case for SuggestionSubType.photoMemoryPastSuperSet(_:) && v6 != enum case for SuggestionSubType.photoMemorySeason(_:) && v6 != enum case for SuggestionSubType.photoMemoryRecentHighlights(_:) && v6 != enum case for SuggestionSubType.photoMemoryFamily(_:) && v6 != enum case for SuggestionSubType.photoMemoryExcitingMoments(_:) && v6 != enum case for SuggestionSubType.photoMemoryTrends(_:) && v6 != enum case for SuggestionSubType.photoMemoryOthers(_:))
          {
            result = 7;
            if (v6 != enum case for SuggestionSubType.evergreenGratitude(_:) && v6 != enum case for SuggestionSubType.evergreenWisdom(_:) && v6 != enum case for SuggestionSubType.evergreenResillience(_:) && v6 != enum case for SuggestionSubType.evergreenCreativity(_:) && v6 != enum case for SuggestionSubType.evergreenKindness(_:) && v6 != enum case for SuggestionSubType.evergreenPurpose(_:) && v6 != enum case for SuggestionSubType.timeAtHomeEvergreenGratitude(_:) && v6 != enum case for SuggestionSubType.timeAtHomeEvergreenResilience(_:) && v6 != enum case for SuggestionSubType.timeAtHomeEvergreenPurpose(_:))
            {
              result = 8;
              if (v6 != enum case for SuggestionSubType.dailyMood(_:) && v6 != enum case for SuggestionSubType.momentaryEmotion(_:))
              {
                result = 10;
                if (v6 != enum case for SuggestionSubType.thematicSummaryHoliday(_:) && v6 != enum case for SuggestionSubType.thematicSummarySocial(_:) && v6 != enum case for SuggestionSubType.thematicSummaryCommonActivity(_:) && v6 != enum case for SuggestionSubType.thematicSummaryCommonPlace(_:) && v6 != enum case for SuggestionSubType.thematicSummaryPhotoSubject(_:) && v6 != enum case for SuggestionSubType.thematicSummaryStateOfMind(_:))
                {
                  (*(v1 + 8))(v3, v0);
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t EngagementType.engagementSuggestionType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EngagementType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for EngagementType.selected(_:))
  {
    return 1;
  }

  if (v6 == enum case for EngagementType.interstitialTap(_:))
  {
    return 12;
  }

  if (v6 == enum case for EngagementType.removed(_:))
  {
    return 6;
  }

  if (v6 == enum case for EngagementType.viewed(_:))
  {
    return 9;
  }

  if (v6 == enum case for EngagementType.feedbackReported(_:))
  {
    return 17;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t EngagementType.engagementLightSuggestionType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EngagementType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for EngagementType.selected(_:))
  {
    return 1;
  }

  if (v6 == enum case for EngagementType.removed(_:))
  {
    return 6;
  }

  if (v6 == enum case for EngagementType.viewed(_:))
  {
    return 9;
  }

  if (v6 == enum case for EngagementType.notificationTapped(_:))
  {
    return 28;
  }

  if (v6 == enum case for EngagementType.notificationDismissed(_:))
  {
    return 29;
  }

  if (v6 == enum case for EngagementType.notificationPosted(_:))
  {
    return 30;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t EngagementDeviceType.engagementLightDeviceType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EngagementDeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for EngagementDeviceType.iphone(_:))
  {
    return 1;
  }

  if (v6 == enum case for EngagementDeviceType.ipad(_:))
  {
    return 2;
  }

  if (v6 == enum case for EngagementDeviceType.mac(_:))
  {
    return 3;
  }

  if (v6 == enum case for EngagementDeviceType.visionPro(_:))
  {
    return 4;
  }

  if (v6 == enum case for EngagementDeviceType.watch(_:))
  {
    return 5;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t SuggestionType.engagementInterfaceType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SuggestionType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for SuggestionType.unknown(_:))
  {
    return 0;
  }

  if (v6 == enum case for SuggestionType.activity(_:))
  {
    return 1;
  }

  if (v6 == enum case for SuggestionType.outing(_:))
  {
    return 2;
  }

  if (v6 == enum case for SuggestionType.significantContact(_:))
  {
    return 4;
  }

  if (v6 == enum case for SuggestionType.media(_:))
  {
    return 5;
  }

  if (v6 == enum case for SuggestionType.timeAtHome(_:))
  {
    return 7;
  }

  if (v6 == enum case for SuggestionType.trend(_:))
  {
    return 9;
  }

  if (v6 == enum case for SuggestionType.photoMemory(_:))
  {
    return 10;
  }

  if (v6 == enum case for SuggestionType.evergreen(_:))
  {
    return 11;
  }

  if (v6 == enum case for SuggestionType.timeContext(_:))
  {
    return 12;
  }

  if (v6 == enum case for SuggestionType.trip(_:))
  {
    return 13;
  }

  if (v6 != enum case for SuggestionType.stateOfMind(_:))
  {
    if (v6 != enum case for SuggestionType.thematicSummary(_:))
    {
      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }

  return 14;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EngagementEvent.SuggestionSuperType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized EngagementEvent.SuggestionSuperType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t EngagementAnalytics.EventFields.rawValue.getter(char a1)
{
  result = 0x656D656761676E65;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
    case 8:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
    case 6:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 7:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 13:
    case 36:
    case 39:
      result = 0xD000000000000014;
      break;
    case 14:
    case 19:
    case 24:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      return result;
    case 17:
      result = 0x7079546567617375;
      break;
    case 18:
      v3 = 0x436465646461;
      goto LABEL_22;
    case 20:
      v3 = 0x436C61746F74;
LABEL_22:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6168000000000000;
      break;
    case 21:
    case 42:
      result = 0xD000000000000019;
      break;
    case 22:
    case 25:
    case 40:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 26:
      result = 0x6449656C646E7562;
      break;
    case 28:
      result = 0x7553656C646E7562;
      break;
    case 29:
      result = 0x7553656C646E7562;
      break;
    case 30:
      result = 0x6974736567677573;
      break;
    case 31:
      result = 0x6361667265746E69;
      break;
    case 32:
      result = 0x526C616E6964726FLL;
      break;
    case 33:
      result = 0x53676E696B6E6172;
      break;
    case 34:
      result = 0xD000000000000011;
      break;
    case 35:
      result = 0x6973695677656976;
      break;
    case 37:
      result = 0xD000000000000011;
      break;
    case 38:
    case 41:
      result = 0xD000000000000012;
      break;
    case 43:
      result = 0xD000000000000011;
      break;
    case 44:
      result = 0xD000000000000011;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EngagementAnalytics.EventFields(char *a1, char *a2)
{
  v2 = *a2;
  v3 = EngagementAnalytics.EventFields.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == EngagementAnalytics.EventFields.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EngagementAnalytics.EventFields()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  EngagementAnalytics.EventFields.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EngagementAnalytics.EventFields()
{
  EngagementAnalytics.EventFields.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EngagementAnalytics.EventFields()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  EngagementAnalytics.EventFields.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EngagementAnalytics.EventFields@<X0>(_BYTE *a1@<X8>)
{
  result = specialized EngagementAnalytics.EventFields.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EngagementAnalytics.EventFields@<X0>(uint64_t *a1@<X8>)
{
  result = EngagementAnalytics.EventFields.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t EngagementAnalytics.analyticsEvent.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EngagementAnalytics.isEligible(suggestionEngagementType:isDiagnosticSubmissionAllowed:)(int a1, int a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 40);
  if (v9)
  {
LABEL_2:
    type metadata accessor for CommonLogger();
    static CommonLogger.engagement.getter();
    swift_retain_n();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v28 = v6;
      v13 = v12;
      v14 = swift_slowAlloc();
      HIDWORD(v26) = a2;
      v15 = v14;
      v29 = v14;
      *v13 = 136315650;
      v16 = BMMomentsEngagementSuggestionTypeAsString();
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v5;
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

      *(v13 + 4) = v20;
      *(v13 + 12) = 1024;

      *(v13 + 14) = v9;

      *(v13 + 18) = 1024;
      *(v13 + 20) = BYTE4(v26) & 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "[EngagementAnalytics] eligible to submit analytics for engagement type %s.\n isInternalBuild=%{BOOL}d, isDiagnosticSubmissionAllowed=%{BOOL}d", v13, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v15);

      (*(v28 + 8))(v8, v27);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return 1;
  }

  else
  {
    if (a2)
    {
      v21 = *(v2 + 48);
      v22 = *(v21 + 16);
      v23 = (v21 + 32);
      while (v22)
      {
        v24 = *v23++;
        --v22;
        if (v24 == a1)
        {
          goto LABEL_2;
        }
      }
    }

    return 0;
  }
}

void EngagementAnalytics.send(engagementEvent:)(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v8[4] = partial apply for closure #1 in EngagementAnalytics.send(engagementEvent:);
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v8[3] = &block_descriptor_18;
  v6 = _Block_copy(v8);

  v7 = a1;

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t closure #1 in EngagementAnalytics.send(engagementEvent:)(uint64_t a1, void *a2)
{
  v171 = a2;
  v2 = type metadata accessor for Logger();
  v164 = *(v2 - 8);
  v165 = v2;
  __chkstk_darwin(v2);
  v161 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v169 = *(v4 - 8);
  v170 = v4;
  __chkstk_darwin(v4);
  v166 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v167 = *(v6 - 8);
  v168 = v6;
  __chkstk_darwin(v6);
  v8 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DateComponents();
  v162 = *(v9 - 8);
  v163 = v9;
  __chkstk_darwin(v9);
  v11 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  static Calendar.current.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002A4D20;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, enum case for Calendar.Component.year(_:), v12);
  v18(v17 + v14, enum case for Calendar.Component.month(_:), v12);
  v18(v17 + 2 * v14, enum case for Calendar.Component.day(_:), v12);
  v18(v17 + 3 * v14, enum case for Calendar.Component.hour(_:), v12);
  v18(v17 + 4 * v14, enum case for Calendar.Component.minute(_:), v12);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = v166;
  static Date.now.getter();
  Calendar.dateComponents(_:from:)();

  (*(v169 + 8))(v19, v170);
  (*(v167 + 8))(v8, v168);
  v20 = DateComponents.year.getter();
  if (v21)
  {
    v22 = -1;
  }

  else
  {
    v22 = v20;
  }

  v23 = [objc_allocWithZone(NSNumber) initWithInteger:v22];
  v24 = v173;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v172 = v24;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000012, 0x80000001002AF0E0, isUniquelyReferenced_nonNull_native);
  v26 = v172;
  v27 = DateComponents.month.getter();
  if (v28)
  {
    v29 = -1;
  }

  else
  {
    v29 = v27;
  }

  v30 = [objc_allocWithZone(NSNumber) initWithInteger:v29];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v26;
  v169 = 0xD000000000000013;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, 0xD000000000000013, 0x80000001002AF0C0, v31);
  v32 = v172;
  v33 = DateComponents.day.getter();
  if (v34)
  {
    v35 = -1;
  }

  else
  {
    v35 = v33;
  }

  v36 = [objc_allocWithZone(NSNumber) initWithInteger:v35];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v32;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, 0xD000000000000011, 0x80000001002AF060, v37);
  v38 = v172;
  v39 = DateComponents.hour.getter();
  if (v40)
  {
    v41 = -1;
  }

  else
  {
    v41 = v39;
  }

  v42 = [objc_allocWithZone(NSNumber) initWithInteger:v41];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v38;
  v44 = v171;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, 0xD000000000000012, 0x80000001002AF080, v43);
  v45 = v172;
  v170 = v11;
  v46 = DateComponents.minute.getter();
  if (v47)
  {
    v48 = -1;
  }

  else
  {
    v48 = v46;
  }

  v49 = [objc_allocWithZone(NSNumber) initWithInteger:v48];
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v45;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, 0xD000000000000014, 0x80000001002AF0A0, v50);
  v51 = v172;
  v52 = [objc_allocWithZone(NSNumber) initWithDouble:10000.0];
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v51;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, 0xD000000000000019, 0x80000001002AF100, v53);
  v54 = v172;
  v55 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isActivitySettingsSwitchEnabled")}];
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v54;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, 0xD00000000000001FLL, 0x80000001002AEC70, v56);
  v57 = v172;
  v58 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isBroadSystemLocationSettingsSwitchEnabled")}];
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v57;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, 0xD00000000000002ALL, 0x80000001002AEC90, v59);
  v60 = v172;
  v61 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isCommunicationSettingsSwitchEnabled")}];
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v60;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, 0xD000000000000024, 0x80000001002AECC0, v62);
  v63 = v172;
  v64 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isMediaSettingsSwitchEnabled")}];
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v63;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, 0xD00000000000001CLL, 0x80000001002AECF0, v65);
  v66 = v172;
  v67 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isNearbyPeopleSettingsSwitchEnabled")}];
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v66;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0xD000000000000023, 0x80000001002AED10, v68);
  v69 = v172;
  v70 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isPhotoSettingsSwitchEnabled")}];
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v69;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, 0xD00000000000001CLL, 0x80000001002AED40, v71);
  v72 = v172;
  v73 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isReflectionSettingsSwitchEnabled")}];
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v72;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 0xD000000000000021, 0x80000001002AED60, v74);
  v75 = v172;
  v76 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isSignificantLocationSettingsSwitchEnabled")}];
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v75;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, 0xD00000000000002ALL, 0x80000001002AED90, v77);
  v78 = v172;
  v79 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isStateOfMindSettingsSwitchEnabled")}];
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v78;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v79, 0xD000000000000022, 0x80000001002AEDC0, v80);
  v81 = v172;
  v82 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isJournalAppLocked")}];
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v81;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v82, 0xD000000000000018, 0x80000001002AEE10, v83);
  v84 = v172;
  v85 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v44, "isJournalSuggestionSkipped")}];
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v84;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v85, 0xD00000000000001CLL, 0x80000001002AEE30, v86);
  v87 = v172;
  v88 = [objc_allocWithZone(NSNumber) initWithInt:{objc_msgSend(v44, "onboardingFlowCompletionState")}];
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v87;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, 0xD000000000000014, 0x80000001002AEE50, v89);
  v90 = v172;
  v173 = v172;
  v91 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v90;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v91, 0x656D656761676E65, 0xEE0065707954746ELL, v92);
  v93 = v172;
  v94 = [v44 suggestionEvent];
  if (v94)
  {
    v95 = v94;
    v96 = [v94 type];
  }

  else
  {
    v96 = 0;
  }

  v97 = [objc_allocWithZone(NSNumber) initWithInt:v96];
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v93;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v97, 0xD00000000000001BLL, 0x80000001002AEF40, v98);
  v99 = v172;
  v173 = v172;
  v100 = [v44 suggestionEvent];
  if (v100)
  {
    v101 = v100;
    v102 = [v100 viewContainerName];

    if (v102)
    {
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v172 = v99;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v102, 0xD000000000000011, 0x80000001002AF010, v103);
      v99 = v172;
      v173 = v172;
    }
  }

  v104 = [v44 suggestionEvent];
  if (!v104)
  {
    goto LABEL_52;
  }

  v105 = v104;
  v106 = [v104 fullBundleOrderedSet];

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for BMMomentsEngagementBundleSummary);
  v107 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v107 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= 1)
    {
      goto LABEL_25;
    }

LABEL_51:

    goto LABEL_52;
  }

  result = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < 1)
  {
    goto LABEL_51;
  }

LABEL_25:
  v109 = v107 & 0xC000000000000001;
  if ((v107 & 0xC000000000000001) != 0)
  {
    v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v110 = *(v107 + 32);
  }

  v111 = v110;
  v112 = [v110 identifier];

  if (v112)
  {
    v113 = [v112 suggestionId];
  }

  else
  {
    v113 = 0;
  }

  specialized Dictionary.subscript.setter(v113, 0x6974736567677573, 0xEC00000064496E6FLL);
  if (v109)
  {
    v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v114 = *(v107 + 32);
  }

  v115 = v114;
  v116 = [v114 bundleSubType];

  v117 = [objc_allocWithZone(NSNumber) initWithInt:v116];
  v118 = v173;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v118;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v117, 0x7553656C646E7562, 0xED00006570795462, v119);
  v120 = v172;
  v173 = v172;
  if (v109)
  {
    v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v121 = *(v107 + 32);
  }

  v122 = v121;
  v123 = [v121 bundleSuperType];

  v124 = [objc_allocWithZone(NSNumber) initWithInt:v123];
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v120;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v124, 0x7553656C646E7562, 0xEF65707954726570, v125);
  v126 = v172;
  if (v109)
  {
    v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v127 = *(v107 + 32);
  }

  v128 = v127;
  [v127 bundleGoodnessScore];
  v130 = v129;

  v131 = [objc_allocWithZone(NSNumber) initWithDouble:v130 * 10000.0];
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v126;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v131, v169, 0x80000001002AEF80, v132);
  v133 = v172;
  v173 = v172;
  if (v109)
  {
    v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v134 = *(v107 + 32);
  }

  v135 = v134;
  v136 = [v134 ordinalRankInRecommendedTab];

  v137 = [objc_allocWithZone(NSNumber) initWithInt:v136];
  v138 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v133;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v137, 0x526C616E6964726FLL, 0xEB000000006B6E61, v138);
  v139 = v172;
  if (v109)
  {
    v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v140 = *(v107 + 32);
  }

  v141 = v140;
  [v140 rankingScore];
  v143 = v142;

  v144 = [objc_allocWithZone(NSNumber) initWithDouble:v143 * 10000.0];
  v145 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v139;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v144, 0x53676E696B6E6172, 0xEC00000065726F63, v145);
  v146 = v172;
  v173 = v172;
  if (v109)
  {
    v147 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v147 = *(v107 + 32);
  }

  v148 = v147;

  v149 = [v148 visibilityCategoryForUI];

  v150 = [objc_allocWithZone(NSNumber) initWithInt:v149];
  v151 = swift_isUniquelyReferenced_nonNull_native();
  v172 = v146;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v150, 0xD000000000000014, 0x80000001002AF040, v151);
  v99 = v172;
LABEL_52:
  type metadata accessor for CommonLogger();
  v152 = v161;
  static CommonLogger.engagement.getter();

  v153 = Logger.logObject.getter();
  v154 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v172 = v156;
    *v155 = 136315138;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSObject);
    v157 = Dictionary.description.getter();
    v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, &v172);

    *(v155 + 4) = v159;
    _os_log_impl(&_mh_execute_header, v153, v154, "[sentEngagementAnalytics] result=%s", v155, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v156);
  }

  (*(v164 + 8))(v152, v165);
  (*(v162 + 8))(v170, v163);
  return v99;
}

uint64_t EngagementAnalytics.deinit()
{

  return v0;
}

uint64_t EngagementAnalytics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t EngagementAnalytics.init()()
{
  *(v0 + 16) = 0x40C3880000000000;
  *(v0 + 24) = 0xD00000000000001DLL;
  *(v0 + 32) = 0x80000001002AF280;
  *(v0 + 40) = [objc_opt_self() isInternalBuild];
  *(v0 + 48) = &outlined read-only object #0 of EngagementAnalytics.init();
  return v0;
}

uint64_t outlined init with take of (key: UUID, value: Set<NSNumber>)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShySo8NSNumberCG5valuetSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + 4 * v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return specialized _NativeSet.extractSubset(using:count:)(v20, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo33BMMomentsEngagementSuggestionTypeVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So33ijkL5V_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo33BMMomentsEngagementSuggestionTypeVGMd);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 4 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *specialized MOPresenterServer.getGoodnessScoreEngagementHistory()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sharedEngagementManager != -1)
  {
LABEL_24:
    swift_once();
  }

  v8 = static MOPresenterServer.sharedEngagementManager;
  if (one-time initialization token for twentyEightDaysAgo != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, static MOPresenterServer.Constants.twentyEightDaysAgo);
  isa = Date._bridgeToObjectiveC()().super.isa;
  static Date.now.getter();
  v10 = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  v11 = [v8 goodnessScoreEngagementsBySuggestionIdentifierFrom:isa to:v10];

  type metadata accessor for UUID();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for CommonLogger();
  static CommonLogger.engagement.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = v0;
    v0 = v14;
    v15 = swift_slowAlloc();
    v33 = v15;
    *v0 = 136315138;
    v16 = Dictionary.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v33);

    *(v0 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "goodnessScoresJournaledAbout = %s", v0, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    v19 = v1[1];
    ++v1;
    v19(v3, v32);
  }

  else
  {

    v20 = v1[1];
    ++v1;
    v20(v3, v0);
  }

  v3 = (v4 + 64);
  v7 = 1;
  v21 = 1 << *(v4 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v5 = v22 & *(v4 + 64);
  v23 = (v21 + 63) >> 6;

  v24 = 0;
  v25 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_10:
    while (1)
    {
      v26 = *(*(v4 + 56) + ((v24 << 9) | (8 * __clz(__rbit64(v5)))));
      v5 &= v5 - 1;
      v33 = 0;
      v34 = 1;
      v1 = v26;
      static Double._conditionallyBridgeFromObjectiveC(_:result:)();

      if ((v34 & 1) == 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v28 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
    }

    v0 = *(v25 + 2);
    v29 = *(v25 + 3);
    v1 = (v0 + 1);
    if (v0 >= v29 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v0 + 1, 1, v25);
    }

    *(v25 + 2) = v1;
    *&v25[8 * v0 + 32] = v28;
  }

  while (v5);
  while (1)
  {
LABEL_12:
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v27 >= v23)
    {
      break;
    }

    v5 = *&v3[8 * v27];
    ++v24;
    if (v5)
    {
      v24 = v27;
      goto LABEL_10;
    }
  }

  return v25;
}

void specialized MOPresenterServer.retrieveOnboardingState()()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (!v1)
  {
    v2 = 0;
LABEL_5:
    OnboardingType.onboardingFlowStatus.getter(v2);
    return;
  }

  __break(1u);
}

void specialized MOPresenterServer.reportEngagement(_:)(objc_class *a1)
{
  v255 = a1;
  v1 = type metadata accessor for Logger();
  v242 = *(v1 - 8);
  v243 = v1;
  v2 = __chkstk_darwin(v1);
  v230 = &v208 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v225 = &v208 - v4;
  v247 = type metadata accessor for EngagementUIContainer();
  v254 = *(v247 - 8);
  v5 = __chkstk_darwin(v247);
  v229 = &v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v238 = &v208 - v7;
  v248 = type metadata accessor for EngagementType();
  v231 = *(v248 - 1);
  v8 = __chkstk_darwin(v248);
  v227 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v226 = &v208 - v11;
  v12 = __chkstk_darwin(v10);
  v235 = &v208 - v13;
  __chkstk_darwin(v12);
  v234 = &v208 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v16 = __chkstk_darwin(v15 - 8);
  v228 = &v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v237 = &v208 - v19;
  v20 = __chkstk_darwin(v18);
  v249 = &v208 - v21;
  __chkstk_darwin(v20);
  v23 = (&v208 - v22);
  v245 = type metadata accessor for UUID();
  v253 = *(v245 - 8);
  __chkstk_darwin(v245);
  v244 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17SuggestionRankingC18VisibilityCategoryOSgMd);
  __chkstk_darwin(v25 - 8);
  v27 = (&v208 - v26);
  v28 = type metadata accessor for SuggestionSubType();
  v29 = *(v28 - 1);
  __chkstk_darwin(v28);
  v31 = &v208 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = objc_opt_self();
  v33 = [v32 currentDevice];
  p_align = &stru_100327FE8.align;
  v35 = [v33 userInterfaceIdiom];

  v236 = v32;
  if (v35)
  {
    v36 = [v32 currentDevice];
    v37 = [v36 userInterfaceIdiom] == 1;

    v38 = 2 * v37;
  }

  else
  {
    v38 = 1;
  }

  v246 = v38;
  EngagementEvent.suggestionSubType.getter();
  v39 = SuggestionSubType.rawValue.getter();
  v41 = *(v29 + 8);
  v40 = (v29 + 8);
  v41(v31, v28);
  if (v39 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_79;
  }

  if (v39 > 0x7FFFFFFF)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v40 = v255;
  v32 = EngagementEvent.suggestionSuperType.getter();
  specialized MOPresenterServer.retrieveOnboardingState()();
  v43 = v42;
  v44 = EngagementEvent.ranking.getter();
  SuggestionRanking.visibilityCategory.getter();

  v45 = type metadata accessor for SuggestionRanking.VisibilityCategory();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v27, 1, v45) == 1)
  {
    outlined destroy of SuggestionRanking.VisibilityCategory?(v27);
    v47 = 0;
    goto LABEL_9;
  }

  v47 = SuggestionRanking.VisibilityCategory.rawValue.getter();
  v48 = *(v46 + 8);
  v28 = (v46 + 8);
  v48(v27, v45);
  if (v47 >> 31)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
    goto LABEL_42;
  }

LABEL_9:
  v222 = v47;
  v224 = v39;
  LODWORD(v233) = v43;
  v49 = v244;
  EngagementEvent.suggestionID.getter();
  UUID.uuidString.getter();
  v50 = v253[1];
  ++v253;
  v223 = v50;
  v50(v49, v245);
  v51 = objc_allocWithZone(BMMomentsEngagementSuggestionIdentifier);
  v52 = String._bridgeToObjectiveC()();

  v53 = [v51 initWithBundleId:0 suggestionId:v52];

  v54 = type metadata accessor for Date();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v56(v23, 1, 1, v54);
  v252 = v54;
  v239 = v56;
  v240 = v55 + 56;
  v56(v249, 1, 1, v54);
  v57 = EngagementEvent.ranking.getter();
  SuggestionRanking.rankingScore.getter();
  v59 = v58;

  isa = 0;
  if ((v59 & 1) == 0)
  {
    isa = Double._bridgeToObjectiveC()().super.super.isa;
  }

  v61 = EngagementEvent.ranking.getter();
  SuggestionRanking.goodnessScore.getter();
  v63 = v62;

  if (v63)
  {
    v64 = 0;
  }

  else
  {
    v64 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  v65 = EngagementEvent.ranking.getter();
  SuggestionRanking.ordinalRankInRecommendedTab.getter();
  v67 = v66;

  if (v67)
  {
    v68 = 0;
  }

  else
  {
    v68 = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  v69 = v32;
  v70 = v252;
  v250 = *(v55 + 48);
  v251 = v55 + 48;
  v71 = v250(v23, 1, v252);
  v241 = v53;
  v232 = v55;
  if (v71 == 1)
  {
    v72 = 0;
  }

  else
  {
    v72 = Date._bridgeToObjectiveC()().super.isa;
    (*(v55 + 8))(v23, v70);
  }

  v73 = v249;
  if (v250(v249, 1, v70) == 1)
  {
    v74 = 0;
  }

  else
  {
    v74 = Date._bridgeToObjectiveC()().super.isa;
    (*(v232 + 8))(v73, v70);
  }

  v75 = objc_allocWithZone(BMMomentsEngagementBundleSummary);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for BMMomentsEngagementPhotosAssets);
  v76 = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for BMMomentsEngagementBundleSummarySuggestionAsset);
  v77 = Array._bridgeToObjectiveC()().super.isa;
  LODWORD(v204) = v222;
  v201 = __PAIR64__(v69, v224);
  v78 = v241;
  v79 = [v75 initWithIdentifier:v241 startDate:v72 endDate:v74 interfaceType:0 rankingScore:isa attachedPhotoAssets:v76 bundleInterfaceType:0 bundleEvergreenType:0 bundleSubType:v201 bundleSuperType:v64 bundleGoodnessScore:v68 ordinalRankInRecommendedTab:v204 visibilityCategoryForUI:v77 assets:?];

  v80 = v234;
  EngagementEvent.type.getter();
  v81 = v231;
  v82 = v231 + 32;
  v83 = *(v231 + 32);
  v84 = v235;
  v85 = v80;
  v86 = v248;
  v83(v235, v85, v248);
  v87 = *(v81 + 88);
  v88 = v87(v84, v86);
  v222 = v82;
  v220 = v83;
  v219 = v81 + 88;
  v218 = v87;
  v215 = enum case for EngagementType.selected(_:);
  if (v88 == enum case for EngagementType.selected(_:))
  {
    LODWORD(v249) = 1;
    v89 = v254;
    v90 = v238;
  }

  else
  {
    v89 = v254;
    v90 = v238;
    if (v88 == enum case for EngagementType.interstitialTap(_:))
    {
      LODWORD(v249) = 12;
    }

    else if (v88 == enum case for EngagementType.removed(_:))
    {
      LODWORD(v249) = 6;
    }

    else if (v88 == enum case for EngagementType.viewed(_:))
    {
      LODWORD(v249) = 9;
    }

    else if (v88 == enum case for EngagementType.feedbackReported(_:))
    {
      LODWORD(v249) = 17;
    }

    else
    {
      (*(v231 + 8))(v84, v248);
      LODWORD(v249) = 0;
    }
  }

  v91 = v237;
  static Date.now.getter();
  v92 = v252;
  v239(v91, 0, 1, v252);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v93 = swift_allocObject();
  v216 = xmmword_1002A4A70;
  *(v93 + 16) = xmmword_1002A4A70;
  *(v93 + 32) = v79;
  v224 = v79;
  EngagementEvent.clientBundleID.getter();
  EngagementEvent.uiContainer.getter();
  EngagementUIContainer.rawValue.getter();
  v217 = *(v89 + 8);
  v217(v90, v247);
  v94 = v250(v91, 1, v92);
  v254 = v89 + 8;
  if (v94 == 1)
  {
    v95 = 0;
  }

  else
  {
    v95 = Date._bridgeToObjectiveC()().super.isa;
    (*(v232 + 8))(v91, v92);
  }

  v96 = v236;
  v97 = objc_allocWithZone(BMMomentsEngagementSuggestionEvent);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for BMMomentsEngagementBundleSummary);
  v98 = Array._bridgeToObjectiveC()().super.isa;

  v99 = String._bridgeToObjectiveC()();

  v100 = String._bridgeToObjectiveC()();

  v249 = [v97 initWithType:v249 timestamp:v95 fullBundleOrderedSet:v98 clientIdentifier:v99 viewContainerName:v100 viewVisibleTime:0 suggestionType:0 viewVisibleSuggestionsCount:0 viewTotalSuggestionsCount:0 notificationInfo:0];

  v101 = [(objc_class *)v96 currentDevice];
  v102 = [v101 userInterfaceIdiom];

  v103 = 0;
  v23 = 0;
  v104 = 0;
  v27 = 0;
  v40 = 0;
  v28 = 0;
  v32 = 0;
  p_align = 0;
  v39 = 0;
  if (!v102)
  {
    if (one-time initialization token for sharedSettingsManager != -1)
    {
      swift_once();
    }

    v105 = static MOPresenterServer.sharedSettingsManager;
    [static MOPresenterServer.sharedSettingsManager getStateForSetting:1];
    v39 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v105 getStateForSetting:3];
    p_align = Bool._bridgeToObjectiveC()().super.super.isa;
    [v105 getStateForSetting:5];
    v32 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v105 getStateForSetting:2];
    v106 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v105 getStateForSetting:6];
    v40 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v105 getStateForSetting:4];
    v27 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v105 getStateForSetting:9];
    v104 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v105 getStateForSetting:10];
    v23 = Bool._bridgeToObjectiveC()().super.super.isa;
    v107 = v105;
    v28 = v106;
    [v107 getStateForSetting:11];
    v103 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v235 = v103;
  v237 = v104;
  if (one-time initialization token for journalAppRecord != -1)
  {
    goto LABEL_81;
  }

LABEL_42:
  v236 = v27;
  v214 = Bool._bridgeToObjectiveC()().super.super.isa;
  if (one-time initialization token for journalGroupDefaults != -1)
  {
    swift_once();
  }

  v108 = v40;
  v109 = static MOPresenterServer.journalGroupDefaults;
  if (static MOPresenterServer.journalGroupDefaults)
  {
    v110 = v28;
    v111 = String._bridgeToObjectiveC()();
    [v109 BOOLForKey:v111];

    v28 = v110;
    v213 = Bool._bridgeToObjectiveC()().super.super.isa;
    v112 = String._bridgeToObjectiveC()();
    [v109 BOOLForKey:v112];

    v212 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v212 = 0;
    v213 = 0;
  }

  v113 = one-time initialization token for isDiagnosticSubmissionAllowed;
  v238 = v39;
  v114 = p_align;
  v115 = v32;
  v116 = v28;
  v117 = v108;
  v118 = v236;
  v236 = v237;
  v119 = v23;
  v120 = v235;
  if (v113 != -1)
  {
    swift_once();
  }

  v210 = static MOPresenterServer.isDiagnosticSubmissionAllowed;
  v121 = Bool._bridgeToObjectiveC()().super.super.isa;
  v209 = v121;
  v122 = objc_allocWithZone(BMMomentsEngagement);
  v123 = v249;
  v207 = v121;
  LODWORD(v206) = v246;
  v234 = v120;
  v203 = v119;
  v205 = v120;
  v124 = v236;
  v202 = v118;
  v199 = v116;
  v200 = v117;
  v197 = v114;
  v198 = v115;
  v237 = v118;
  v125 = v117;
  v126 = v116;
  v127 = v115;
  v128 = v114;
  v129 = v238;
  v130 = v212;
  v131 = v122;
  v132 = v214;
  v235 = v119;
  v133 = v213;
  v249 = [v131 initWithSuggestionEvent:v123 entryEvent:0 clientActivityEvent:0 onboardingFlowCompletionState:v233 isJournalAppInstalled:v214 isJournalAppLocked:v213 isJournalSuggestionSkipped:v212 isActivitySettingsSwitchEnabled:v238 isCommunicationSettingsSwitchEnabled:v197 isSignificantLocationSettingsSwitchEnabled:v198 isMediaSettingsSwitchEnabled:v199 isNearbyPeopleSettingsSwitchEnabled:v200 isPhotoSettingsSwitchEnabled:v202 isStateOfMindSettingsSwitchEnabled:v236 isReflectionSettingsSwitchEnabled:v203 isBroadSystemLocationSettingsSwitchEnabled:v205 deviceType:v206 isDiagnosticSubmissionAllowed:v207];
  v233 = v123;

  v214 = v128;
  v213 = v127;

  v212 = v126;
  v211 = v125;

  v134 = type metadata accessor for CommonLogger();
  v135 = v225;
  v209 = v134;
  static CommonLogger.engagement.getter();
  v136 = v249;
  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.debug.getter();

  v139 = os_log_type_enabled(v137, v138);
  v249 = v136;
  if (v139)
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v256 = v141;
    *v140 = 136315138;
    v142 = [v136 description];
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = v144;

    v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, &v256);

    *(v140 + 4) = v146;
    _os_log_impl(&_mh_execute_header, v137, v138, "[reportEngagement] event: %s", v140, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  v225 = *(v242 + 8);
  (v225)(v135, v243);
  v147 = v220;
  v148 = v215;
  v149 = v228;
  if (one-time initialization token for sharedEngagementManager != -1)
  {
    swift_once();
  }

  v150 = static MOPresenterServer.sharedEngagementManager;
  [static MOPresenterServer.sharedEngagementManager sendSuggestionEvent:v249];
  v151 = v244;
  EngagementEvent.suggestionID.getter();
  UUID.uuidString.getter();
  v223(v151, v245);
  v152 = objc_allocWithZone(BMMomentsEngagementLightSuggestionIdentifier);
  v153 = String._bridgeToObjectiveC()();

  v154 = [v152 initWithBundleId:0 suggestionId:v153];

  v155 = EngagementEvent.ranking.getter();
  SuggestionRanking.goodnessScore.getter();
  LOBYTE(v153) = v156;

  v157 = 0;
  if ((v153 & 1) == 0)
  {
    v157 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  v158 = objc_allocWithZone(BMMomentsEngagementLightBundleSummary);
  v159 = v154;
  v160 = [v158 initWithIdentifier:v159 bundleInterfaceType:0 bundleEvergreenType:0 bundleGoodnessScore:v157];

  v161 = v226;
  EngagementEvent.type.getter();
  v162 = v227;
  v163 = v161;
  v164 = v248;
  v147(v227, v163, v248);
  v165 = v218(v162, v164);
  v208 = v150;
  v253 = v159;
  if (v165 == v148)
  {
    v166 = 1;
  }

  else if (v165 == enum case for EngagementType.removed(_:))
  {
    v166 = 6;
  }

  else if (v165 == enum case for EngagementType.viewed(_:))
  {
    v166 = 9;
  }

  else if (v165 == enum case for EngagementType.notificationTapped(_:))
  {
    v166 = 28;
  }

  else if (v165 == enum case for EngagementType.notificationDismissed(_:))
  {
    v166 = 29;
  }

  else if (v165 == enum case for EngagementType.notificationPosted(_:))
  {
    v166 = 30;
  }

  else
  {
    (*(v231 + 8))(v162, v248);
    v166 = 0;
  }

  static Date.now.getter();
  v167 = v252;
  v239(v149, 0, 1, v252);
  v168 = swift_allocObject();
  *(v168 + 16) = v216;
  *(v168 + 32) = v160;
  v248 = v160;
  EngagementEvent.clientBundleID.getter();
  v169 = v229;
  EngagementEvent.uiContainer.getter();
  EngagementUIContainer.rawValue.getter();
  v217(v169, v247);
  if (v250(v149, 1, v167) == 1)
  {
    v170 = 0;
  }

  else
  {
    v170 = Date._bridgeToObjectiveC()().super.isa;
    (*(v232 + 8))(v149, v167);
  }

  v171 = objc_allocWithZone(BMMomentsEngagementLightSuggestionEvent);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for BMMomentsEngagementLightBundleSummary);
  v172 = Array._bridgeToObjectiveC()().super.isa;

  v173 = String._bridgeToObjectiveC()();

  v174 = String._bridgeToObjectiveC()();

  v175 = [v171 initWithType:v166 timestamp:v170 fullBundleOrderedSet:v172 clientIdentifier:v173 viewContainerName:v174 deviceType:v246];

  v176 = [objc_allocWithZone(BMMomentsEngagementLight) initWithSuggestionEvent:v175 entryEvent:0];
  v177 = v230;
  static CommonLogger.engagement.getter();
  v178 = v176;
  v179 = Logger.logObject.getter();
  v180 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v256 = v182;
    *v181 = 136315138;
    v183 = [v178 description];
    v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v186 = v185;

    v187 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v186, &v256);

    *(v181 + 4) = v187;
    _os_log_impl(&_mh_execute_header, v179, v180, "[reportEngagement] light event: %s", v181, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v182);
  }

  (v225)(v177, v243);
  v189 = v237;
  v188 = v238;
  v190 = v214;
  v191 = v213;
  v192 = v236;
  [v208 sendSuggestionEventLight:v178];
  v193 = v212;
  v194 = v211;
  if (one-time initialization token for engagementAnalytics != -1)
  {
    swift_once();
  }

  v195 = static MOPresenterServer.engagementAnalytics;
  v196 = [v233 type];
  if ((*(*v195 + 112))(v196, v210))
  {
    (*(*v195 + 120))(v249);
  }
}

unint64_t specialized EngagementEvent.SuggestionSuperType.init(rawValue:)(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t specialized EngagementAnalytics.EventFields.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2E)
  {
    return 46;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100104D38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type EngagementEvent.SuggestionSuperType and conformance EngagementEvent.SuggestionSuperType()
{
  result = lazy protocol witness table cache variable for type EngagementEvent.SuggestionSuperType and conformance EngagementEvent.SuggestionSuperType;
  if (!lazy protocol witness table cache variable for type EngagementEvent.SuggestionSuperType and conformance EngagementEvent.SuggestionSuperType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementEvent.SuggestionSuperType and conformance EngagementEvent.SuggestionSuperType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EngagementAnalytics.EventFields and conformance EngagementAnalytics.EventFields()
{
  result = lazy protocol witness table cache variable for type EngagementAnalytics.EventFields and conformance EngagementAnalytics.EventFields;
  if (!lazy protocol witness table cache variable for type EngagementAnalytics.EventFields and conformance EngagementAnalytics.EventFields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementAnalytics.EventFields and conformance EngagementAnalytics.EventFields);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementEvent.SuggestionSuperType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementEvent.SuggestionSuperType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementAnalytics.EventFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementAnalytics.EventFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined destroy of SuggestionRanking.VisibilityCategory?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17SuggestionRankingC18VisibilityCategoryOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void one-time initialization function for fileProviderDomain()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_allocWithZone(NSFileProviderDomain);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 initWithIdentifier:v0 displayName:v2 pathRelativeToDocumentStorage:v3 hidden:1];

  static MOSuggestionAssetPhotoLivePhotoVideosProvider.fileProviderDomain = v4;
}

uint64_t *MOSuggestionAssetPhotoLivePhotoVideosProvider.fileProviderDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for fileProviderDomain != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetPhotoLivePhotoVideosProvider.fileProviderDomain;
}

id static MOSuggestionAssetPhotoLivePhotoVideosProvider.fileProviderDomain.getter()
{
  if (one-time initialization token for fileProviderDomain != -1)
  {
    swift_once();
  }

  v1 = static MOSuggestionAssetPhotoLivePhotoVideosProvider.fileProviderDomain;

  return v1;
}

void one-time initialization function for photosFileProviderManager()
{
  if (one-time initialization token for fileProviderDomain != -1)
  {
    swift_once();
  }

  v0 = static MOSuggestionAssetPhotoLivePhotoVideosProvider.fileProviderDomain;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() managerWithProviderIdentifier:v1 groupName:v2 domain:v0];

  static MOSuggestionAssetPhotoLivePhotoVideosProvider.photosFileProviderManager = v3;
}

uint64_t *MOSuggestionAssetPhotoLivePhotoVideosProvider.photosFileProviderManager.unsafeMutableAddressor()
{
  if (one-time initialization token for photosFileProviderManager != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetPhotoLivePhotoVideosProvider.photosFileProviderManager;
}

uint64_t static MOSuggestionAssetPhotoLivePhotoVideosProvider.photosFileProviderManager.getter()
{
  if (one-time initialization token for photosFileProviderManager != -1)
  {
    swift_once();
  }

  v0 = static MOSuggestionAssetPhotoLivePhotoVideosProvider.photosFileProviderManager;
  v1 = static MOSuggestionAssetPhotoLivePhotoVideosProvider.photosFileProviderManager;
  return v0;
}

uint64_t PropertyDescriptor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.uuid.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.asset.getter()
{
  v1 = *(v0 + *(type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask() + 20));

  return v1;
}

uint64_t type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask()
{
  result = type metadata singleton initialization cache for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask;
  if (!type metadata singleton initialization cache for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.asset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask() + 20);

  *(v1 + v3) = a1;
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.targetSize.setter(double a1, double a2)
{
  result = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask();
  v6 = (v2 + *(result + 24));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.contentMode.setter(uint64_t a1)
{
  result = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.oneUpIntent.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t key path getter for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.completion : MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask() + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PHLivePhoto?) -> ();
  a2[1] = v6;
}

uint64_t key path setter for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.completion : MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask() + 36));

  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PHLivePhoto?) -> (@out ());
  v6[1] = v5;
  return result;
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.completion.getter()
{
  v1 = *(v0 + *(type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask() + 36));

  return v1;
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.completion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

int *MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask.init(uuid:asset:targetSize:contentMode:oneUpIntent:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 32))(a7, a1, v18);
  result = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask();
  *(a7 + result[5]) = a2;
  v20 = (a7 + result[6]);
  *v20 = a8;
  v20[1] = a9;
  *(a7 + result[7]) = a3;
  *(a7 + result[8]) = a4;
  v21 = (a7 + result[9]);
  *v21 = a5;
  v21[1] = a6;
  return result;
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.pendingLivePhotoTasks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.numActiveLivePhotoOperations.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

void MOSuggestionAssetPhotoLivePhotoVideosProvider.getAssetsFor(identifiers:cacheType:completion:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 16))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static MOAngelLogger.shared);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "[Assets] (Photos) No localIdentifiers provided for", v26, 2u);
    }

    (a3)(0);
    return;
  }

  v7 = [objc_allocWithZone(PHFetchOptions) init];
  [v7 setIncludeGuestAssets:1];
  v8 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v92 = [v8 fetchAssetsWithLocalIdentifiers:isa options:v7];

  if ([v92 count] < 1 || (v10 = objc_msgSend(v92, "fetchedObjects")) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static MOAngelLogger.shared);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "[Assets] (Photos) PHAsset fetch failed", v22, 2u);
    }

    (a3)(0);

    return;
  }

  v11 = v10;
  v85 = v4;
  v86 = a4;
  v82 = v7;
  v83 = a3;
  v12 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHAsset);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static MOAngelLogger.shared);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v17 = v13 >> 62;
  if (os_log_type_enabled(v15, v16))
  {
    a3 = swift_slowAlloc();
    *a3 = 134217984;
    if (v17)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + 4) = v18;

    _os_log_impl(&_mh_execute_header, v15, v16, "[Assets] (Photos) PHAsset fetch completed with n=%ld for", a3, 0xCu);
  }

  else
  {
  }

  v87 = a2 - 2;
  if ((a2 - 2) > 8u)
  {
    goto LABEL_62;
  }

  if (!v17)
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 3uLL)
    {
      goto LABEL_62;
    }

    v16 = 3;
    if ((v13 & 0xC000000000000001) != 0)
    {
LABEL_27:

      v27 = 0;
      do
      {
        v28 = v27 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v27);
        v27 = v28;
      }

      while (v16 != v28);
      if (!v17)
      {
LABEL_51:

        v15 = 0;
        v12 = v13 & 0xFFFFFFFFFFFFFF8;
        a3 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
        v16 = (2 * v16) | 1;
        if ((v16 & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_55:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {
          swift_unknownObjectRelease();
          v34 = _swiftEmptyArrayStorage;
        }

        v35 = v34[2];

        if (!__OFSUB__(v16 >> 1, v15))
        {
          if (v35 == (v16 >> 1) - v15)
          {
            v13 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v13)
            {
              goto LABEL_62;
            }

            v13 = _swiftEmptyArrayStorage;
            goto LABEL_61;
          }

          goto LABEL_137;
        }

        goto LABEL_136;
      }

      goto LABEL_53;
    }

    goto LABEL_50;
  }

  a3 = v13;
  if (v13 < 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = (v13 & 0xFFFFFFFFFFFFFF8);
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 4)
  {
    goto LABEL_62;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    if (v16 >= 3)
    {
      v29 = 3;
    }

    else
    {
      v29 = v16;
    }

    if ((v16 & 0x8000000000000000) == 0)
    {
      v16 = v29;
    }

    else
    {
      v16 = 3;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v16)
    {
      __break(1u);
      goto LABEL_62;
    }
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_50:

    if (!v17)
    {
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  if (v16)
  {
    goto LABEL_27;
  }

LABEL_53:

  v12 = _CocoaArrayWrapper.subscript.getter();
  a3 = v30;
  v15 = v31;
  v16 = v32;

  if (v16)
  {
    goto LABEL_55;
  }

  while (1)
  {
LABEL_54:
    specialized _copyCollectionToContiguousArray<A>(_:)(v12, a3, v15, v16, &lazy cache variable for type metadata for PHAsset);
    v13 = v33;
LABEL_61:
    swift_unknownObjectRelease();
LABEL_62:
    v96 = _swiftEmptyArrayStorage;
    v97 = _swiftEmptyArrayStorage;
    v95 = _swiftEmptyArrayStorage;
    if (v13 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v36)
    {
      if (v36 >= 1)
      {
        v37 = 0;
        v38 = v13 & 0xC000000000000001;
        v39 = _swiftEmptyArrayStorage;
        v40 = &selRef_data;
        v41 = &selRef_data;
        v84 = _swiftEmptyArrayStorage;
        v91 = _swiftEmptyArrayStorage;
        v89 = v36;
        v90 = v13;
        v88 = v13 & 0xC000000000000001;
        while (1)
        {
          v42 = v38 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v13 + 8 * v37 + 32);
          v43 = v42;
          if (([v42 v40[183]] & 4) != 0)
          {
            break;
          }

          if ([v43 v41[184]] != 2)
          {
            if ([v43 v41[184]] == 1)
            {
              if (([v43 v40[183]] & 8) != 0 && a2 - 2 >= 6 && a2 - 9 >= 2)
              {
                v57 = v43;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v40 = &selRef_data;
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v84 = v96;
                goto LABEL_69;
              }

LABEL_92:
              v58 = v43;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v40 = &selRef_data;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v91 = v97;
              goto LABEL_69;
            }

            v45 = v43;
            v46 = Logger.logObject.getter();
            v59 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v46, v59))
            {
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v94[0] = v61;
              *v60 = 136315138;
              v62 = [v45 localIdentifier];
              v63 = v39;
              v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v66 = v65;

              v67 = v64;
              v39 = v63;
              v38 = v88;
              v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, v94);

              *(v60 + 4) = v68;
              v36 = v89;
              _os_log_impl(&_mh_execute_header, v46, v59, "[Assets] (Photos) Unsupport PHAsset id=%s", v60, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v61);
              v40 = &selRef_data;
LABEL_82:

              v13 = v90;

LABEL_68:
              v41 = &selRef_data;
              goto LABEL_69;
            }

LABEL_67:

            goto LABEL_68;
          }

          if ([v43 isGuestAsset])
          {
            if (v87 < 9u)
            {
              goto LABEL_92;
            }
          }

          else if (a2 - 2 < 6 || a2 - 9 <= 1)
          {
            goto LABEL_92;
          }

          v44 = v43;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v40 = &selRef_data;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v39 = v95;
LABEL_69:
          if (v36 == ++v37)
          {
            goto LABEL_98;
          }
        }

        v45 = v43;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v94[0] = v49;
          *v48 = 136315138;
          v50 = [v45 localIdentifier];
          v51 = v39;
          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          v55 = v52;
          v39 = v51;
          v38 = v88;
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v94);
          v40 = &selRef_data;

          *(v48 + 4) = v56;
          v36 = v89;
          _os_log_impl(&_mh_execute_header, v46, v47, "[Assets] (Photos) Asset has contains screenshot id=%s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          goto LABEL_82;
        }

        goto LABEL_67;
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v39 = _swiftEmptyArrayStorage;
    v84 = _swiftEmptyArrayStorage;
    v91 = _swiftEmptyArrayStorage;
LABEL_98:

    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    v16 = v70 + 16;
    v71 = swift_allocObject();
    *(v71 + 16) = _swiftEmptyArrayStorage;
    a3 = swift_allocObject();
    *(a3 + 16) = v69;
    *(a3 + 24) = v71;
    *(a3 + 32) = v70;
    *(a3 + 40) = v83;
    v15 = v91;
    *(a3 + 48) = v86;
    v72 = v91 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v84;
    if (v72 < 1)
    {
    }

    else
    {
      swift_beginAccess();
      if (__OFADD__(*v16, 1))
      {
        goto LABEL_133;
      }

      ++*v16;
      if (v87 > 8u)
      {
        v74 = v39;
        v75 = MOSuggestionAssetsTypePhoto;
        v15 = v85;
        v76 = *(v85->isa + 26);

        v77 = v75;
        v39 = v74;
        v12 = v84;
        v76(v91, v77, partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.getAssetsFor(identifiers:cacheType:completion:), a3);
      }

      else
      {
        v15 = v85;
        v73 = *(v85->isa + 23);

        v73(v91, a2, partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.getAssetsFor(identifiers:cacheType:completion:), a3);
      }
    }

    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_112;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_112;
    }

    swift_beginAccess();
    if (__OFADD__(*v16, 1))
    {
      goto LABEL_134;
    }

    ++*v16;
    v15 = v85;
    if (v87 > 8u)
    {
      (*(v85->isa + 26))(v12, MOSuggestionAssetsTypeLivePhoto, partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.getAssetsFor(identifiers:cacheType:completion:), a3);
    }

    else
    {
      (*(v85->isa + 25))(v12, a2, partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.getAssetsFor(identifiers:cacheType:completion:), a3);
    }

LABEL_112:

    if (v39 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_119;
      }
    }

    else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_119;
    }

    swift_beginAccess();
    if (!__OFADD__(*v16, 1))
    {
      break;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    swift_unknownObjectRelease_n();
  }

  ++*v16;
  if (a2 > 0xAu)
  {
    goto LABEL_125;
  }

  v78 = 1;
  if (((1 << a2) & 0x6FC) == 0)
  {
    if (a2 == 8)
    {
      goto LABEL_118;
    }

LABEL_125:
    v78 = 1;
    goto LABEL_118;
  }

  v78 = 0;
LABEL_118:
  (*(v85->isa + 29))(v39, v78, partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.getAssetsFor(identifiers:cacheType:completion:), a3);
LABEL_119:

  swift_beginAccess();
  if (!*v16)
  {
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "[Assets] (Photos) No assets to fetch", v81, 2u);
    }

    v83(0);
  }
}