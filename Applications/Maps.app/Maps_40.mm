id sub_100481BEC(char **a1)
{
  v1 = a1;
  v2 = [a1 elements];
  sub_100014C84(0, &qword_101922A20);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_23:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v41 = v1;
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v1;
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  v42 = v3 & 0xC000000000000001;
  v1 = &selRef_currentDeviceDetailsController;
  v44 = v4;
  v45 = v3;
  v43 = v5;
  do
  {
    v8 = v6;
    while (1)
    {
      if (v7)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_22;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = [v9 v1[225]];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100014C84(0, &unk_10191A370);
      if (swift_dynamicCast())
      {
        break;
      }

LABEL_6:
      ++v8;
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    v12 = [v10 displayName];
    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    v13 = [v10 isSelected];
    v14 = [v47 metadata];
    v15 = [v47 elementType];
    v16 = [v47 evChargingConnectorType];
    v17 = [v10 selectionSequenceNumber];
    v18 = [objc_allocWithZone(GEOResultRefinementMultiSelectElement) initWithDisplayName:v12 isSelected:v13 metadata:v14 elementType:v15 evChargingConnectorType:v16 selectionSequenceNumber:v17];

    v4 = v44;
    v3 = v45;
    v7 = v42;
    v5 = v43;
    v1 = &selRef_currentDeviceDetailsController;
    if (!v18)
    {
      goto LABEL_6;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = &selRef_currentDeviceDetailsController;
  }

  while (v6 != v43);
LABEL_24:

  v19 = [v41 clauseType] == 1;
  v20 = [v41 displayName];
  v46 = v19;
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [v41 maximumNumberOfSelectableElements];
  v25 = [v41 showEqualWidthButtonsOnFilterView];
  v26 = [v41 displayNameForMultiSelected];
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = [v41 multiSelectIdentifier];
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v23)
    {
      goto LABEL_32;
    }

LABEL_34:
    v34 = 0;
  }

  else
  {
    v33 = 0;
    if (!v23)
    {
      goto LABEL_34;
    }

LABEL_32:
    v34 = String._bridgeToObjectiveC()();
  }

  sub_100014C84(0, &unk_10191A370);
  v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v29)
  {
    v36 = String._bridgeToObjectiveC()();

    if (v33)
    {
      goto LABEL_37;
    }

LABEL_39:
    v37 = 0;
  }

  else
  {
    v36 = 0;
    if (!v33)
    {
      goto LABEL_39;
    }

LABEL_37:
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = [objc_allocWithZone(GEOResultRefinementMultiSelect) initWithDisplayName:v34 multiSelect:v35.super.isa maximumNumberOfSelectElements:v24 clauseType:v46 showEqualWidthButtonsOnFilterView:v25 displayNameForMultiSelected:v36 multiSelectIdentifier:v37];

  if (!v38)
  {
    return 0;
  }

  v39 = [objc_allocWithZone(GEOResultRefinement) initWithMultiSelect:v38];

  return v39;
}

uint64_t sub_1004825C0()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100482668@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC4Maps30HistoryEntryRecentsItemWrapper_id;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_100482904(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100482A04()
{
  *&v0[OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_hostingController] = 0;
  v1 = &v0[OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_scrollIndex];
  *v1 = 0;
  v1[8] = 1;
  v2 = OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_currentContainerSize;
  v3 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v4 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  *&v0[OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_recentItems] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v5 = &v0[OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC4Maps20SearchHomeRecentCell__colorScheme;
  *&v0[v6] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SearchHomeRecentCell(0);
  return objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

id sub_100482B68(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_hostingController] = 0;
  v9 = &v4[OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_scrollIndex];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_currentContainerSize;
  v11 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v12 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  *&v4[OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_recentItems] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v13 = &v4[OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC4Maps20SearchHomeRecentCell__colorScheme;
  *&v4[v14] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SearchHomeRecentCell(0);
  return objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
}

uint64_t sub_100482D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for CellAction.Style();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CellAction.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  sub_1000CE6B8(&unk_101923750);
  v16 = *(type metadata accessor for CellAction() - 8);
  v21[1] = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  (*(v11 + 104))(v15, enum case for CellAction.Placement.default(_:), v10);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v28._object = 0x8000000101224A30;
  v17._countAndFlagsBits = 0x43205D756E654D5BLL;
  v17._object = 0xED0000207261656CLL;
  v18._countAndFlagsBits = 0x7261656C43;
  v18._object = 0xE500000000000000;
  v28._countAndFlagsBits = 0xD000000000000017;
  v21[0] = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, qword_1019600D8, v18, v28)._object;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v26;
  *(v19 + 32) = 9;
  (*(v7 + 104))(v9, enum case for CellAction.Style.default(_:), v22);
  (*(v11 + 16))(v23, v15, v10);
  *v6 = 0x7261656C43;
  v6[1] = 0xE500000000000000;
  (*(v24 + 104))(v6, enum case for MapsDesignAccessibilityString.button(_:), v25);

  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  (*(v11 + 8))(v15, v10);
  static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();
}

uint64_t sub_1004831A4(unint64_t a1)
{
  v3 = sub_1000CE6B8(&qword_101922B08);
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v45 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColumnViewConfig();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v39 - v11;
  type metadata accessor for MainActor();
  v12 = v1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v15 = v12;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_1000CE6B8(&qword_101922B10);
  Binding.init(get:set:)();
  v43 = v55;
  v44 = v54;
  v41 = v56;
  v18 = a1 >> 62;
  v40 = v57;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = _swiftEmptyArrayStorage;
    v49 = v5;
    v50 = v3;
    v51 = v8;
    if (!i)
    {
      break;
    }

    v54 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v39 = v6;
    v5 = (a1 & 0xFFFFFFFFFFFFFF8);
    if (v18)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = 0;
    v18 = a1 & 0xC000000000000001;
    v6 = v22 & ~(v22 >> 63);
    while (v6 != v24)
    {
      if (v18)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v25 = *(a1 + 8 * v24 + 32);
      }

      v26 = v25;
      v8 = v24 + 1;
      v3 = sub_100483794(v24, v25, v15);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v24 = v8;
      if (i == v8)
      {
        v20 = v54;
        v23 = v51;
        v6 = v39;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v23 = v8;
LABEL_17:
  v27 = sub_1004D085C(3, 3, v20);

  v28 = OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_currentContainerSize;
  swift_beginAccess();
  v29 = &v15[v28];
  v30 = v42;
  v31 = v45;
  (*(v6 + 16))(v42, v29, v45);
  v32 = v47;
  static MapsDesignConstants.ColumnViews.MapsHome.recentsColumnViewConfig(itemCount:containerSize:)();
  (*(v6 + 8))(v30, v31);
  v33 = v48;
  (*(v48 + 16))(v46, v32, v23);
  v34 = swift_allocObject();
  v34[2] = v27;
  v34[3] = v15;
  v34[4] = 3;

  v35 = v15;
  sub_1000CE6B8(&qword_101922B18);
  v36 = sub_1000D6664(&qword_101922B20);
  v37 = sub_1000414C8(&qword_101922B28, &qword_101922B20);
  v52 = v36;
  v53 = v37;
  swift_getOpaqueTypeConformance2();
  ColumnView.init(config:scrollIndex:columnBuilder:)();
  sub_1000414C8(&qword_101922B30, &qword_101922B08);
  v38 = AnyView.init<A>(_:)();

  (*(v33 + 8))(v32, v51);
  return v38;
}

uint64_t sub_100483794(uint64_t a1, uint64_t a2, void *a3)
{
  v30[2] = a2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v39 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v7 - 8);
  v38 = v30 - v8;
  v32 = type metadata accessor for RichTextType();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TrailingAccessoryViewModel();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v36 = v34;
  __chkstk_darwin(v37 - 8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  v15 = a3;
  sub_100482D28(sub_10048522C, v14, v13);

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1000CE6B8(&unk_1019157F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1011E1D60;
  v30[4] = sub_1000CE6B8(&qword_10190A070);
  v30[3] = *(*(type metadata accessor for RichTextViewModel() - 8) + 72);
  v16 = swift_allocObject();
  v40 = xmmword_1011E1D30;
  *(v16 + 16) = xmmword_1011E1D30;
  v17 = *(v9 + 104);
  v18 = v32;
  v17(v11, enum case for RichTextType.title(_:), v32);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
  v19 = *(v9 + 8);
  v30[1] = v9 + 8;
  v19(v11, v18);
  v20 = v31;
  *(v31 + 32) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = v40;
  v17(v11, enum case for RichTextType.line(_:), v18);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
  v19(v11, v18);
  *(v20 + 40) = v21;
  sub_1000CE6B8(&unk_10190D580);
  v22 = v36;
  v23 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v40;
  v25 = v33;
  v26 = v37;
  (*(v22 + 16))(v24 + v23, v33, v37);
  v27 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  v28 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  (*(v22 + 8))(v25, v26);
  return v28;
}

void sub_100483D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock);
  if (v4)
  {
    if (a4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *(a3 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock + 8);

      v4(a4);

      sub_1000D3B90(v4, v6);
    }
  }
}

uint64_t sub_100483DCC(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1000CE6B8(&qword_101922B20);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  result = sub_1000CE6B8(&qword_101922B38);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {

    v13 = sub_100484ECC(v12);

    v20[1] = v13;
    swift_getKeyPath();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a4;
    v15[5] = a3;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1004850BC;
    *(v16 + 24) = v15;
    v17 = a3;
    sub_1000CE6B8(&qword_101922B40);
    sub_1000CE6B8(&qword_101922B48);
    sub_1000414C8(&qword_101922B50, &qword_101922B40);
    sub_100485234(&qword_1019156D0, &type metadata accessor for UUID);
    sub_1004850C8();
    ForEach<>.init(_:id:content:)();
    v18 = [objc_opt_self() mainScreen];
    v19 = [v18 traitCollection];

    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    sub_1000414C8(&qword_101922B28, &qword_101922B20);
    View.insetGroupedSectionBackground(cornerRadius:)();
    return sub_100024F64(v10, &qword_101922B20);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004840F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v12 = a1 > 0;
  *(&v49 + 1) = type metadata accessor for ListCellViewModel();
  *&v50 = sub_100485234(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  *&v48 = a2;
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = v13;
  RecentSearchCell.init(model:tapHandler:)();
  v16 = static Alignment.top.getter();
  v18 = v17;
  sub_100484428(v12, a5, &v27);
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v37 = v27;
  v38 = v28;
  *&v47 = v16;
  *(&v47 + 1) = v18;
  v19 = (a6 + *(sub_1000CE6B8(&qword_101922B48) + 36));
  v20 = v46;
  v19[8] = v45;
  v19[9] = v20;
  v19[10] = v47;
  v21 = v42;
  v19[4] = v41;
  v19[5] = v21;
  v22 = v44;
  v19[6] = v43;
  v19[7] = v22;
  v23 = v38;
  *v19 = v37;
  v19[1] = v23;
  v24 = v40;
  v19[2] = v39;
  v19[3] = v24;
  v54 = v33;
  v55 = v34;
  v56 = v35;
  v57 = v36;
  v50 = v29;
  v51 = v30;
  v52 = v31;
  v53 = v32;
  v48 = v27;
  v49 = v28;
  v58 = v16;
  v59 = v18;
  sub_1004851BC(&v37, &v26);
  return sub_100024F64(&v48, &unk_101922B70);
}

void sub_100484374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 * a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3 + a3;
  if (__OFADD__(v3, a3))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        [v7 didSelectRecentAtIndex:v4];
        swift_unknownObjectRelease();
        return;
      }

LABEL_10:
      __break(1u);
    }
  }
}

double sub_100484428@<D0>(char a1@<W0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  if (a1)
  {
    v5 = [objc_opt_self() separatorColor];
    v6 = Color.init(uiColor:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v31[6] = v34;
    *&v31[22] = v35;
    *&v31[38] = v36;
    v7 = static Edge.Set.leading.getter();
    [PlaceSummaryTableViewCell canBecomeFirstResponder]_0(a2);
    EdgeInsets.init(_all:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v32 = 0;
    LOBYTE(a2) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v33 = 0;
    *v25 = v6;
    *&v25[8] = 256;
    *&v25[10] = *v31;
    *&v25[26] = *&v31[16];
    *&v25[42] = *&v31[32];
    *&v25[56] = *(&v36 + 1);
    LOBYTE(v26) = v7;
    *(&v26 + 1) = v9;
    *&v27 = v11;
    *(&v27 + 1) = v13;
    *&v28 = v15;
    BYTE8(v28) = 0;
    LOBYTE(v29) = a2;
    *(&v29 + 1) = v16;
    *v30 = v17;
    *&v30[8] = v18;
    *&v30[16] = v19;
    v30[24] = 0;
    UIView.annotateView(with:)(v25);
    v43 = v28;
    v44 = v29;
    v45[0] = *v30;
    *(v45 + 9) = *&v30[9];
    v39 = *&v25[32];
    v40 = *&v25[48];
    v41 = v26;
    v42 = v27;
    v37 = *v25;
    v38 = *&v25[16];
  }

  else
  {
    sub_1001D01F4(&v37);
  }

  v20 = v44;
  a3[6] = v43;
  a3[7] = v20;
  a3[8] = v45[0];
  *(a3 + 137) = *(v45 + 9);
  v21 = v40;
  a3[2] = v39;
  a3[3] = v21;
  v22 = v42;
  a3[4] = v41;
  a3[5] = v22;
  result = *&v37;
  v24 = v38;
  *a3 = v37;
  a3[1] = v24;
  return result;
}

uint64_t sub_1004845F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1000CE6B8(&qword_10190BDF8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-1] - v11;
  *(v5 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_recentItems) = a1;

  swift_unknownObjectWeakAssign();
  v13 = (v5 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock);
  v14 = *(v5 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock);
  v15 = *(v5 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock + 8);
  *v13 = a3;
  v13[1] = a4;
  sub_1000CD9D4(a3);
  sub_1000D3B90(v14, v15);
  sub_1004831A4(a1);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v18[3] = v9;
  v18[4] = sub_1000414C8(&qword_101922B00, &qword_10190BDF8);
  sub_10001A848(v18);
  UIHostingConfiguration.margins(_:_:)();
  (*(v10 + 8))(v12, v9);
  UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_1004848E4()
{
  v1 = v0;
  v2 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SearchHomeRecentCell(0);
  v17.receiver = v1;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v10 = [v1 contentView];
  [v10 frame];

  static MapsDesignConstants.ColumnViews.containerSize(for:)();
  v11 = OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_currentContainerSize;
  swift_beginAccess();
  v12 = *(v3 + 16);
  v12(v5, &v1[v11], v2);
  sub_100485234(&qword_101922B90, &type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize);
  LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v3;
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v10 & 1) == 0)
  {
    v12(v5, v8, v2);
    swift_beginAccess();
    (*(v16 + 40))(&v1[v11], v5, v2);
    swift_endAccess();
    [v1 setNeedsUpdateConfiguration];
  }

  return (v13)(v8, v2);
}

id sub_100484BA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100484CD0()
{
  type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  if (v0 <= 0x3F)
  {
    sub_100484DCC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100484DCC()
{
  if (!qword_101922AF8)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment.Content();
    if (!v1)
    {
      atomic_store(v0, &qword_101922AF8);
    }
  }
}

void sub_100484E78(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32) + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_scrollIndex;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_100484E9C(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(v1 + 32) + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_scrollIndex;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

unint64_t sub_100484ECC(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = _CocoaArrayWrapper.endIndex.getter();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1000CE6B8(&unk_101922B80);
        v15 = swift_allocObject();
        v16 = j__malloc_size_0(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004850C8()
{
  result = qword_101922B58;
  if (!qword_101922B58)
  {
    sub_1000D6664(&qword_101922B48);
    sub_100485234(&unk_101922B60, &type metadata accessor for RecentSearchCell);
    sub_1000414C8(&unk_101910CF0, &unk_101922B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922B58);
  }

  return result;
}

uint64_t sub_1004851BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101922B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100485234(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10048527C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = _CocoaArrayWrapper.endIndex.getter();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1000CE6B8(&qword_101922B98);
        v15 = swift_allocObject();
        v16 = j__malloc_size_0(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

void sub_10048546C()
{
  *(v0 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_hostingController) = 0;
  v1 = v0 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_scrollIndex;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_currentContainerSize;
  v3 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v4 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v4 - 8) + 104))(v0 + v2, v3, v4);
  *(v0 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_recentItems) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v5 = (v0 + OBJC_IVAR____TtC4Maps20SearchHomeRecentCell_deletionBlock);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC4Maps20SearchHomeRecentCell__colorScheme;
  *(v0 + v6) = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004855C0(uint64_t *a1, int a2)
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

uint64_t sub_100485608(uint64_t result, int a2, int a3)
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

void sub_100485674(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100507428();
  v6 = v5;
  v7 = sub_100507434();
  v9 = v8;
  swift_getKeyPath();
  sub_100486640();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = [v10 styleAttributes];
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() styleAttributesForRouteAnnotationWithAttributes:v11];

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v9;
  a2[4] = v12;
}

uint64_t sub_100485774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a4;
  v6 = type metadata accessor for CardHeaderSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v10 - 8);
  v12 = (v21 - v11);
  v13 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100507548();
  v21[0] = v15;
  v21[1] = v14;
  *v12 = 0xD000000000000010;
  v12[1] = 0x8000000101239BC0;
  v16 = enum case for MapsDesignAccessibilityString.header(_:);
  v17 = type metadata accessor for MapsDesignAccessibilityString();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v12, v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  (*(v7 + 104))(v9, enum case for CardHeaderSize.large(_:), v6);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  LOBYTE(v6) = v22 & 1;
  *(v19 + 32) = v22 & 1;

  sub_1001D31A8(a2, v6);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  return LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
}

uint64_t sub_100485AEC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100486640();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 24);

    v4(a2);
    return sub_1000D3B90(v4, v5);
  }

  return result;
}

uint64_t sub_100485B84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1000CE6B8(&qword_101922BA0);
  sub_100485CFC();
  List<>.init(content:)();
  v6 = sub_100154F0C(v4, v5);
  *(a1 + *(sub_1000CE6B8(&qword_101922BC8) + 36)) = v6;
  v7 = a1 + *(sub_1000CE6B8(&qword_101922BD0) + 36);
  sub_100485774(v3, v4, v5, v7);
  result = sub_1000CE6B8(&qword_101910FB8);
  *(v7 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_100485CFC()
{
  result = qword_101922BA8;
  if (!qword_101922BA8)
  {
    sub_1000D6664(&qword_101922BA0);
    sub_100485D88();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922BA8);
  }

  return result;
}

unint64_t sub_100485D88()
{
  result = qword_101922BB0;
  if (!qword_101922BB0)
  {
    sub_1000D6664(&qword_101922BB8);
    sub_100485E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922BB0);
  }

  return result;
}

unint64_t sub_100485E18()
{
  result = qword_101922BC0;
  if (!qword_101922BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922BC0);
  }

  return result;
}

double sub_100485E6C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.top.getter();
  v27 = 1;
  sub_1004860D8(v2, &v14);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v40[8] = v22;
  v40[9] = v23;
  v40[10] = v24;
  v40[11] = v25;
  v40[4] = v18;
  v40[5] = v19;
  v40[6] = v20;
  v40[7] = v21;
  v40[0] = v14;
  v40[1] = v15;
  v40[2] = v16;
  v40[3] = v17;
  sub_1000D2DFC(&v28, &v13, &qword_101922C08);
  sub_100024F64(v40, &qword_101922C08);
  *&v26[135] = v36;
  *&v26[151] = v37;
  *&v26[167] = v38;
  *&v26[183] = v39;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[103] = v34;
  *&v26[119] = v35;
  *&v26[7] = v28;
  *&v26[23] = v29;
  *&v26[39] = v30;
  *&v26[55] = v31;
  LOBYTE(v2) = v27;
  v5 = static Edge.Set.all.getter();
  v6 = *&v26[128];
  *(a1 + 161) = *&v26[144];
  v7 = *&v26[176];
  *(a1 + 177) = *&v26[160];
  *(a1 + 193) = v7;
  v8 = *&v26[64];
  *(a1 + 97) = *&v26[80];
  v9 = *&v26[112];
  *(a1 + 113) = *&v26[96];
  *(a1 + 129) = v9;
  *(a1 + 145) = v6;
  v10 = *v26;
  *(a1 + 33) = *&v26[16];
  v11 = *&v26[48];
  *(a1 + 49) = *&v26[32];
  *(a1 + 65) = v11;
  *(a1 + 81) = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 208) = *&v26[191];
  *(a1 + 17) = v10;
  *(a1 + 216) = v5;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1;
  return result;
}

uint64_t sub_1004860D8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 32);
  v15 = v3;
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    v4 = v3;
    sub_1000CE6B8(&qword_101918610);
    State.init(wrappedValue:)();
    v20 = v43;
    v18 = v44;
    *&v28 = 0;
    sub_1000CE6B8(&unk_101916610);
    State.init(wrappedValue:)();
    v5 = v44;
    v19 = v43;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v43) = 0;
    v16 = v57;
    v17 = v56;
    v6 = v58;
    v7 = v59;
    v8 = v60;
    v3 = v61;
  }

  else
  {
    v20 = 0;
    KeyPath = 0;
    v18 = 0;
    v19 = 0;
    v5 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = static HorizontalAlignment.leading.getter();
  LOBYTE(v43) = 1;
  sub_1004863EC(a1, v26);
  *&v25[7] = v26[0];
  *&v25[23] = v26[1];
  *&v25[39] = v26[2];
  *&v25[55] = v27;
  v10 = v43;
  v28 = KeyPath;
  *&v29 = v20;
  *(&v29 + 1) = v18;
  *&v30 = v19;
  *(&v30 + 1) = v5;
  *&v31 = v15;
  *(&v31 + 1) = v17;
  *&v32 = v16;
  *(&v32 + 1) = v6;
  *&v33 = v7;
  *(&v33 + 1) = v8;
  v34 = v3;
  *v24 = v3;
  v22 = v32;
  v23 = v33;
  v35[0] = v9;
  v35[1] = 0;
  v36[0] = v43;
  *&v36[1] = *v25;
  *&v36[64] = *(&v27 + 1);
  *&v36[49] = *&v25[48];
  *&v36[33] = *&v25[32];
  *&v36[17] = *&v25[16];
  *&v24[24] = *v36;
  *&v24[8] = v9;
  *&v24[88] = *&v36[64];
  *&v24[72] = *&v36[48];
  *&v24[56] = *&v36[32];
  *&v24[40] = *&v36[16];
  v11 = v29;
  v12 = v31;
  a2[2] = v30;
  a2[3] = v12;
  *a2 = KeyPath;
  a2[1] = v11;
  a2[6] = *v24;
  a2[7] = *&v24[16];
  a2[4] = v22;
  a2[5] = v23;
  a2[10] = *&v24[64];
  a2[11] = *&v24[80];
  a2[8] = *&v24[32];
  a2[9] = *&v24[48];
  v37[0] = v9;
  v37[1] = 0;
  v38 = v10;
  v40 = *&v25[16];
  v41 = *&v25[32];
  *v42 = *&v25[48];
  *&v42[15] = *&v25[63];
  v39 = *v25;
  sub_1000D2DFC(&v28, &v43, &qword_101922C10);
  sub_1000D2DFC(v35, &v43, &qword_101922C18);
  sub_100024F64(v37, &qword_101922C18);
  v43 = KeyPath;
  v44 = 0;
  v45 = v20;
  v46 = v18;
  v47 = v19;
  v48 = v5;
  v49 = v15;
  v50 = v17;
  v51 = v16;
  v52 = v6;
  v53 = v7;
  v54 = v8;
  v55 = v3;
  return sub_100024F64(&v43, &qword_101922C10);
}

uint64_t sub_1004863EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  if (!v4)
  {
    v6 = 0;
    v10 = 0;
    v8 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    v24 = 0;
    v21 = 0;
    goto LABEL_6;
  }

  sub_1000E5580();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9 & 1;
  sub_1001C8AFC(v4, v5, v9 & 1);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000E5580();

  v11 = Text.init<A>(_:)();
  v26 = v8;
  v13 = v12;
  v27 = v4;
  v15 = v14;
  static HierarchicalShapeStyle.secondary.getter();
  v3 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v15 & 1;
  v4 = v27;
  v23 = v13;
  v8 = v26;
  sub_1000F0A40(v11, v23, v22);

  v24 = v19 & 1;
  sub_1001C8AFC(v3, v17, v19 & 1);

LABEL_6:
  sub_10034A91C(v4, v6, v10, v8);
  sub_10034A91C(v3, v17, v24, v21);
  sub_10034A960(v4, v6, v10, v8);
  sub_10034A960(v3, v17, v24, v21);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v8;
  a2[4] = v3;
  a2[5] = v17;
  a2[6] = v24;
  a2[7] = v21;
  sub_10034A960(v3, v17, v24, v21);
  return sub_10034A960(v4, v6, v10, v8);
}

unint64_t sub_100486640()
{
  result = qword_101916840;
  if (!qword_101916840)
  {
    type metadata accessor for RouteAnnotationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916840);
  }

  return result;
}

unint64_t sub_1004866B4()
{
  result = qword_101922BD8;
  if (!qword_101922BD8)
  {
    sub_1000D6664(&qword_101922BD0);
    sub_10048676C();
    sub_1000414C8(&qword_101911018, &qword_101910FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922BD8);
  }

  return result;
}

unint64_t sub_10048676C()
{
  result = qword_101922BE0;
  if (!qword_101922BE0)
  {
    sub_1000D6664(&qword_101922BC8);
    sub_1004867F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922BE0);
  }

  return result;
}

unint64_t sub_1004867F8()
{
  result = qword_101922BE8;
  if (!qword_101922BE8)
  {
    sub_1000D6664(&qword_101922BF0);
    sub_1000414C8(&qword_101922BF8, &qword_101922C00);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922BE8);
  }

  return result;
}

uint64_t sub_1004868CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100486928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100486994()
{
  result = qword_101922C20;
  if (!qword_101922C20)
  {
    sub_1000D6664(&qword_101922C28);
    sub_1000414C8(&qword_101922C30, &qword_101922C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922C20);
  }

  return result;
}

uint64_t sub_100486A54()
{
  swift_getKeyPath();
  sub_100487C14();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100486B4C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__hasInitialData) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__hasInitialData) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100487C14();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100486C34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__cellSnapshots;

  v5 = sub_1001EFBCC(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100487C14();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_100486DFC()
{
  swift_getKeyPath();
  sub_100487C14();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers);

  return v1;
}

void sub_100486EE0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers);
  sub_1000CE6B8(&qword_101909888);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100487C14();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_100487020@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100487C14();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers);
  *a2 = v4;

  return v4;
}

char *sub_1004870B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__hasInitialData] = 0;
  *&v1[OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__cellSnapshots] = &_swiftEmptyArrayStorage;
  v4 = [objc_allocWithZone(GEOObserverHashTable) initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
  *&v1[OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers] = v4;
  v5 = OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider_collectionsDataProvider;
  *&v1[v5] = [objc_allocWithZone(CollectionsDataProvider) initWithContext:2 observeInfo:0 observeContents:0];
  v1[OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__active] = 0;
  ObservationRegistrar.init()();
  *&v1[OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider_sectionIdentifierPath] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v12, "init");
  v8 = *&v7[OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider_collectionsDataProvider];
  v9 = v7;
  v10 = [v8 observers];
  [v10 registerObserver:v9];

  sub_10048735C();
  return v9;
}

id sub_100487214(char a1)
{
  v2 = OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__active;
  if (*(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__active) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__active) = a1 & 1;
    v5 = *(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider_collectionsDataProvider);
    swift_getKeyPath();
    sub_100487C14();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return [v5 setActive:*(v1 + v2)];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100487C14();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10048735C()
{
  v1 = v0;
  swift_getKeyPath();
  *&v28 = v0;
  sub_100487C14();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__cellSnapshots;
  v23 = *(*(v0 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__cellSnapshots) + 16);
  v2 = sub_100487CB0();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v26 = OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider_sectionIdentifierPath;
    v6 = &_swiftEmptyArrayStorage;
    v24 = i;
    v25 = v1;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 _maps_diffableDataSourceIdentifier];
      if (v10 && (v11 = v10, v12 = [*(v1 + v26) identifierPathByAppendingIdentifier:v10], v11, v12))
      {
        v13 = sub_100487EC4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100355784(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_100355784((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[48 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v8;
        *(v16 + 3) = v28;
        *(v16 + 8) = &type metadata for HomeListCollectionHandlerCellModel;
        *(v16 + 9) = v13;
        i = v24;
        v1 = v25;
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v6 = &_swiftEmptyArrayStorage;
LABEL_22:

  sub_100486C34(v6);
  swift_getKeyPath();
  *&v28 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v23 == 0) == (*(*(v1 + v22) + 16) != 0))
  {
    swift_getKeyPath();
    *&v28 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = [*(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers) allObservers];
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + 32;
      do
      {
        sub_10004E374(v21, &v28);
        sub_1000CE6B8(&qword_101909880);
        if (swift_dynamicCast())
        {
          if ([v27 respondsToSelector:"homeDataProvidingObjectDidUpdate:"])
          {
            [v27 homeDataProvidingObjectDidUpdate:v1];
          }

          swift_unknownObjectRelease();
        }

        v21 += 32;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t sub_10048772C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100487C14();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1004877B0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_100487C14();
  v6 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = v6[*a4];

  return v7;
}

uint64_t sub_100487894@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100487C14();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

id sub_100487918(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__active;
  *(a1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__active) = a2;
  v4 = *(a1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider_collectionsDataProvider);
  swift_getKeyPath();
  sub_100487C14();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [v4 setActive:*(a1 + v3)];
}

uint64_t type metadata accessor for HomeUserGuidesSnapshotProvider()
{
  result = qword_101922CA0;
  if (!qword_101922CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100487B38()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_100487C14()
{
  result = qword_101922CB0;
  if (!qword_101922CB0)
  {
    type metadata accessor for HomeUserGuidesSnapshotProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922CB0);
  }

  return result;
}

uint64_t sub_100487C6C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__cellSnapshots) = *(v0 + 24);
}

void *sub_100487CB0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider_collectionsDataProvider) collections];
  sub_10013D7D0();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = 0;
    v15 = OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider_sectionIdentifierPath;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 _maps_diffableDataSourceIdentifier];
      if (v9 && (v10 = v9, v11 = [*(v16 + v15) identifierPathByAppendingIdentifier:v9], v10, v11))
      {

        v12 = v7;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (__OFADD__(v5++, 1))
        {
          goto LABEL_19;
        }

        if (v5 == 6)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_100487EC4()
{
  result = qword_101922CB8;
  if (!qword_101922CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922CB8);
  }

  return result;
}

void sub_100487F18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers);
  *(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers) = v2;
  v4 = v2;
}

uint64_t sub_100487F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__rapMenuProvider);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__rapMenuProvider + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100489BC0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100488054(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100489B80;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10048819C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onShareCurrentLocation);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onShareCurrentLocation + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100488280(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1004883C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onMarkCurrentLocation);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onMarkCurrentLocation + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004884AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1004885F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onReportIssue);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onReportIssue + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1004886D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100488820@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onSelectTermsAndConditions);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onSelectTermsAndConditions + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100488904(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100488A4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100489A20(&qword_101915BA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive);
  return result;
}

void sub_100488B10(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive;
  v4 = v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive];
  v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = a1;
  if (v4 != (a1 & 1))
  {
    v33 = v4;
    ObjectType = swift_getObjectType();
    v6 = &protocol descriptor for HomeListSectionControllerSubclassing;
    v7 = swift_conformsToProtocol2();
    if (!v7)
    {
      goto LABEL_43;
    }

    v8 = v7;
    v9 = *(v7 + 8);
    v10 = v1;
    v11 = v9(ObjectType, v8);

    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_5:
        if (v12 < 1)
        {
          __break(1u);
          goto LABEL_32;
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v14 = *(v11 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v14 setActive:v2[v3]];
          swift_unknownObjectRelease();
        }
      }
    }

    v15 = v2[v3];
    v16 = swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    v18 = v17;
    if (v15 == 1)
    {
      if (v17)
      {
        v19 = *(v17 + 8);
        v6 = v10;
        v10 = v19(v16, v18);

        if (!(v10 >> 62))
        {
          v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
LABEL_16:
            if (v20 >= 1)
            {
              v21 = 0;
              do
              {
                if ((v10 & 0xC000000000000001) != 0)
                {
                  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v22 = *(v10 + 8 * v21 + 32);
                  swift_unknownObjectRetain();
                }

                ++v21;
                v23 = [v22 observers];
                [v23 registerObserver:v6];
                swift_unknownObjectRelease();
              }

              while (v20 != v21);
              goto LABEL_35;
            }

            __break(1u);
            goto LABEL_42;
          }

LABEL_35:

          v4 = v33;
          goto LABEL_36;
        }

LABEL_32:
        v20 = _CocoaArrayWrapper.endIndex.getter();
        if (v20)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }
    }

    else if (v17)
    {
      v24 = *(v17 + 8);
      v25 = v10;
      v26 = v24(v16, v18);

      if (v26 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
        if (!v27)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_35;
        }
      }

      if (v27 >= 1)
      {
        v28 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v26 + 8 * v28 + 32);
            swift_unknownObjectRetain();
          }

          ++v28;
          v30 = [v29 observers];
          [v30 unregisterObserver:v25];
          swift_unknownObjectRelease();
        }

        while (v27 != v28);
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
    }

LABEL_43:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_36:
  v31 = v2[v3];
  if (v4 != v31)
  {
    if (v31 == *(*&v2[OBJC_IVAR____TtC4Maps31HomeListFooterSectionController_viewModel] + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive))
    {
      sub_100425EFC(v2[v3]);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100489A20(&qword_101915BA8);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_100488FAC()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_100489A20(&qword_101915BA8);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void *sub_100489338()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = Strong;
  v2 = [*(Strong + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration) _maps_mapsSceneDelegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*&v1[OBJC_IVAR____TtC4Maps31HomeListFooterSectionController_rapReportMenuProvider] getReportMenuItemsFromEntryPoint:8 sceneDelegate:v2];
    sub_100014C84(0, &unk_101922D10);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = v4;
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_100489438()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration) _maps_mapsSceneDelegate];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 rapPresenter];
      v5 = [v4 presentOfflineAlertIfNecessaryWithCompletion:0];

      if (v5)
      {
        if (qword_101906710 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_100021540(v6, qword_10195FFD0);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "can't present RAP menu because Maps is offline", v9, 2u);
        }
      }

      [objc_opt_self() captureRAPAction];
    }

    else
    {
      v3 = v1;
    }
  }
}

void sub_1004895D0(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10003E48C(Strong + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v7);
    v6 = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v7);
    if (v6)
    {
      [v6 *a3];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100489674()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps31HomeListFooterSectionController_viewModel);
}

id sub_1004896B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeListFooterSectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100489734()
{
  sub_1000CE6B8(&qword_101915FE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D30;
  v2 = sub_100062A9C();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 identifierPathByAppendingIdentifier:v3];

  v5 = *(v0 + OBJC_IVAR____TtC4Maps31HomeListFooterSectionController_viewModel);
  *(v1 + 64) = type metadata accessor for HomeListFooterCellModel();
  *(v1 + 72) = sub_100489A20(&qword_101922D08);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  v6 = v5;
  return v1;
}

id sub_100489828()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension:1.0];
  v2 = [v0 estimatedDimension:200.0];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = [objc_opt_self() itemWithLayoutSize:v3];
  v5 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E47B0;
  *(v6 + 32) = v4;
  sub_100014C84(0, &qword_101915908);
  v7 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v5 verticalGroupWithLayoutSize:v3 subitems:isa];

  v10 = [objc_opt_self() sectionWithGroup:v9];
  [v10 contentInsets];
  [v10 setContentInsets:0.0];

  return v10;
}

uint64_t sub_100489A20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeListFooterCellModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100489B80(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_100489BC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

id LibraryDataOperationsProvider.__allocating_init(mapsSyncStore:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_100489CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return _swift_task_switch(sub_100489CE0, 0, 0);
}

uint64_t sub_100489CE0()
{
  type metadata accessor for CollectionPlaceItem();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;

    swift_unknownObjectRetain();
    dispatch thunk of CollectionPlaceItem.placeItemNote.setter();
    sub_1000CE6B8(&qword_101908400);
    v3 = swift_allocObject();
    v0[9] = v3;
    *(v3 + 16) = xmmword_1011E47B0;
    *(v3 + 32) = v2;
    v14 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_100489F5C;

    return v14(v3);
  }

  else
  {
    type metadata accessor for FavoriteItemWrapper();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v0[8];
      v9 = v0[5];
      v8 = v0[6];
      v10 = (v6 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_placeItemNote);
      swift_beginAccess();
      *v10 = v9;
      v10[1] = v8;
      swift_unknownObjectRetain();

      v11 = *(v7 + OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore);
      v12 = swift_task_alloc();
      v0[12] = v12;
      *v12 = v0;
      v12[1] = sub_10048A0E0;

      return FavoriteItemWrapper.save(_:)(v11);
    }

    else
    {
      v13 = v0[1];

      return v13(1);
    }
  }
}

uint64_t sub_100489F5C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10048A1F4;
  }

  else
  {

    v2 = sub_10048A078;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10048A078()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_10048A0E0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10048A270;
  }

  else
  {
    v2 = sub_100496904;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10048A1F4()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10048A270()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_10048A2E0(unint64_t a1, void *a2, void (*a3)(uint64_t, void, __n128), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1000CE6B8(&unk_10190BA50);
  v12.n128_f64[0] = __chkstk_darwin(v11 - 8);
  v14 = &v39 - v13;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      if (_CocoaArrayWrapper.endIndex.getter() == 1)
      {
        goto LABEL_4;
      }

LABEL_10:
      v40 = a2;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v21.super.isa = qword_1019600D8;
      v47._object = 0x800000010123A5E0;
      v22._countAndFlagsBits = 0xD000000000000026;
      v22._object = 0x800000010123A550;
      v23._countAndFlagsBits = 0xD00000000000005CLL;
      v23._object = 0x800000010123A580;
      v47._countAndFlagsBits = 0xD000000000000037;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, qword_1019600D8, v23, v47);
      v48._object = 0x800000010123A670;
      v24._countAndFlagsBits = 0xD000000000000024;
      v24._object = 0x800000010123A620;
      v25._object = 0x800000010123A650;
      v48._countAndFlagsBits = 0xD00000000000004BLL;
      v25._countAndFlagsBits = 0xD000000000000013;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v21, v25, v48);
      v26 = String._bridgeToObjectiveC()();

      v27 = String._bridgeToObjectiveC()();

      v28 = [objc_opt_self() alertControllerWithTitle:v26 message:v27 preferredStyle:0];

      if (qword_1019068A8 != -1)
      {
        swift_once();
      }

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = a1;
      v30[4] = a3;
      v30[5] = a4;
      sub_1000CD9D4(a3);

      v31 = String._bridgeToObjectiveC()();

      v45 = sub_1004963C4;
      v46 = v30;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1001FDE68;
      v44 = &unk_10161BB38;
      v32 = _Block_copy(&aBlock);

      v33 = objc_opt_self();
      v34 = [v33 actionWithTitle:v31 style:2 handler:v32];
      _Block_release(v32);

      [v28 addAction:v34];
      if (qword_1019068B0 != -1)
      {
        swift_once();
      }

      v35 = swift_allocObject();
      *(v35 + 16) = a3;
      *(v35 + 24) = a4;
      sub_1000CD9D4(a3);

      v36 = String._bridgeToObjectiveC()();

      v45 = sub_1004963E8;
      v46 = v35;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1001FDE68;
      v44 = &unk_10161BB88;
      v37 = _Block_copy(&aBlock);

      v38 = [v33 actionWithTitle:v36 style:1 handler:v37];
      _Block_release(v37);

      [v28 addAction:v38];
      [v40 _maps_topMostPresentViewController:v28 animated:1 completion:0];

      return;
    }

LABEL_17:
    if (a3)
    {
      a3(1, 0, v12);
    }

    return;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_17;
  }

  if (v15 != 1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
    swift_unknownObjectRetain();
LABEL_7:
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v5;
    v18[5] = v16;
    v18[6] = a3;
    v18[7] = a4;
    v18[8] = a2;
    v18[9] = ObjectType;
    v19 = v5;
    sub_1000CD9D4(a3);
    v20 = a2;
    sub_10020AAE4(0, 0, v14, &unk_101209D00, v18);

    return;
  }

  __break(1u);
}

uint64_t sub_10048A910(unint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v21 = a3;
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v22 = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_3:
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  do
  {
    v11 = v9;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      type metadata accessor for MapsSyncObject();
      if (swift_dynamicCastClass())
      {
        goto LABEL_17;
      }

      type metadata accessor for FavoriteItemWrapper();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v11;
      if (v9 == v8)
      {
        goto LABEL_25;
      }
    }

    v13 = *(v12 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
    swift_unknownObjectRelease();
LABEL_17:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = v22;
  }

  while (v9 != v8);
LABEL_25:
  if (v10 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      goto LABEL_27;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_27:
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v16 = v20[1];
    v17 = v21;
    v15[4] = v10;
    v15[5] = v16;
    v15[6] = a2;
    v15[7] = v17;
    v18 = v16;
    sub_1000CD9D4(a2);
    sub_10020AAE4(0, 0, v7, &unk_101209D68, v15);
  }

  if (a2)
  {
    return a2(0);
  }

  return result;
}

uint64_t sub_10048AC00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a2;
  v15[9] = ObjectType;
  v16 = v5;
  swift_unknownObjectRetain();
  sub_1000CD9D4(a3);
  v17 = a2;
  sub_10020AAE4(0, 0, v13, &unk_101209D70, v15);
}

uint64_t sub_10048AD64()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v4._object = 0x800000010123A020;
  v0._countAndFlagsBits = 0x6574656C6544;
  v1._countAndFlagsBits = 0xD00000000000002FLL;
  v1._object = 0x8000000101239FF0;
  v0._object = 0xE600000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v4);
  result = v3._countAndFlagsBits;
  xmmword_101922D20 = v3;
  return result;
}

uint64_t sub_10048AE18()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v4._object = 0x8000000101239FD0;
  v0._countAndFlagsBits = 0x6C65636E6143;
  v1._countAndFlagsBits = 0xD00000000000002FLL;
  v1._object = 0x8000000101239FA0;
  v0._object = 0xE600000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v4);
  result = v3._countAndFlagsBits;
  xmmword_101922D30 = v3;
  return result;
}

id LibraryDataOperationsProvider.init(mapsSyncStore:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_10048B190(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v4[5] = v9;
  swift_unknownObjectRetain();
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10048B28C;

  return sub_100489CBC(a1, v9, a2);
}

uint64_t sub_10048B28C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  swift_unknownObjectRelease();

  v9 = *(v5 + 32);

  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10048B5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10048B5D0, 0, 0);
}

uint64_t sub_10048B5D0()
{
  v1 = v0[3];
  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_1011E47B0;
  *(v2 + 32) = v1;
  v6 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10048B6D0;

  return v6(v2);
}

uint64_t sub_10048B6D0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10048B900;
  }

  else
  {

    v2 = sub_10048B7EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10048B7EC()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10048B880, v2, v1);
}

uint64_t sub_10048B880()
{
  v1 = v0[4];
  v2 = v0[3];

  v1(v2, 0);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10048B900()
{

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "LibraryDataOperationsProvider: saveMapItem() Error saving :%@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10048BAD0, v8, v7);
}

uint64_t sub_10048BAD0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  v2(0, v1);

  return _swift_task_switch(sub_10048BB58, 0, 0);
}

uint64_t sub_10048BB58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v10 = swift_task_alloc();
  v8[24] = v10;
  *v10 = v8;
  v10[1] = sub_10048BC70;

  return sub_10049387C(a5);
}

uint64_t sub_10048BC70(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = a2;

  return _swift_task_switch(sub_10048BD70, 0, 0);
}

uint64_t sub_10048BD70()
{
  type metadata accessor for MainActor();
  *(v0 + 216) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10048BE04, v2, v1);
}

uint64_t sub_10048BE04()
{
  v1 = v0[26];

  if (v1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v31._object = 0x800000010123A710;
    v2._countAndFlagsBits = 0xD000000000000021;
    v2._object = 0x800000010123A6C0;
    v3._object = 0x800000010123A6F0;
    v31._countAndFlagsBits = 0xD000000000000041;
    v3._countAndFlagsBits = 0xD000000000000012;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v31);
    v4 = String._bridgeToObjectiveC()();

    v5 = String._bridgeToObjectiveC()();

    v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:0];

    if (qword_1019068A8 != -1)
    {
      swift_once();
    }

    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[20];
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v9;
    v11[4] = v8;
    v11[5] = v7;

    swift_unknownObjectRetain();
    sub_1000CD9D4(v8);
    v12 = String._bridgeToObjectiveC()();

    v0[6] = sub_100496538;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1001FDE68;
    v0[5] = &unk_10161BC28;
    v13 = _Block_copy(v0 + 2);

    v14 = objc_opt_self();
    v15 = [v14 actionWithTitle:v12 style:2 handler:v13];
    _Block_release(v13);

    [v6 addAction:v15];
    if (qword_1019068B0 != -1)
    {
      swift_once();
    }

    v16 = v0[22];
    v17 = v0[23];
    v18 = v0[21];
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v16;
    sub_1000CD9D4(v18);

    v20 = String._bridgeToObjectiveC()();

    v0[12] = sub_1004968FC;
    v0[13] = v19;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_1001FDE68;
    v0[11] = &unk_10161BC78;
    v21 = _Block_copy(v0 + 8);

    v22 = [v14 actionWithTitle:v20 style:1 handler:v21];
    _Block_release(v21);

    [v6 addAction:v22];
    [v17 _maps_topMostPresentViewController:v6 animated:1 completion:0];
  }

  else
  {
    v23 = v0[21];
    v24 = v0[22];
    v25 = v0[20];
    sub_1000CE6B8(&qword_101908400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E47B0;
    *(inited + 32) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    *(v27 + 24) = v24;
    swift_unknownObjectRetain();
    sub_1000CD9D4(v23);
    sub_10048A910(inited, sub_100496900, v27);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10048C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1000CE6B8(&qword_101908400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E47B0;
    *(inited + 32) = a3;
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    swift_unknownObjectRetain();
    sub_1000CD9D4(a4);
    sub_10048A910(inited, sub_100496900, v11);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

void sub_10048C5D4(char a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10048C644(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    sub_1000CD9D4(a4);
    sub_10048A910(a3, sub_10049657C, v10);
  }

  return result;
}

uint64_t sub_10048C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  return _swift_task_switch(sub_10048C818, 0, 0);
}

uint64_t sub_10048C818()
{
  super_class = v1[10].super_class;
  v1[10].receiver = super_class;
  if (super_class >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v1[12].super_class = v6;
    if (v6)
    {
LABEL_3:
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        receiver = v1[10].super_class;

        v8 = 0;
        while (1)
        {
          v1[13].super_class = v8;
          v1[14].receiver = receiver;
          v1[13].receiver = 0;
          v9 = v1[10].super_class;
          v10 = (v9 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v9 + v8 + 4);
          v11 = v10;
          v1[14].super_class = v10;
          type metadata accessor for FavoriteItem();
          v12 = swift_dynamicCastClass();
          if (v12)
          {
            break;
          }

          v13 = v11;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v1[10].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[10].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          receiver = v1[10].receiver;
          v8 = v1[13].super_class + 1;
          if (v8 == v1[12].super_class)
          {
            goto LABEL_19;
          }
        }

        v3 = v12;
        v0 = type metadata accessor for MapsFavoriteItem();
        v2 = objc_allocWithZone(v0);
        v14 = &v2[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_cachedSubtitle];
        *v14 = 0;
        v14[1] = 0;
        v2[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isUpdatingETA] = 0;
        v15 = &v2[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_analyticsGrouping];
        *v15 = 0x6966654472657355;
        v15[1] = 0xEB0000000064656ELL;
        *&v2[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_number] = 0;
        v2[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup] = 0;
        v2[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted] = 0;
        v2[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isAlreadyThere] = 0;
        v4 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isMeCardWritebackEnabled;
        v16 = qword_1019066B0;
        v17 = v11;
        if (v16 == -1)
        {
          goto LABEL_14;
        }
      }

      swift_once();
LABEL_14:
      v2[v4] = byte_10195FEE0;
      *&v2[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_transportType] = 0;
      *&v2[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] = v3;
      v1[9].receiver = v2;
      v1[9].super_class = v0;
      v18 = objc_msgSendSuper2(v1 + 9, "init");
      v1[17].receiver = v18;
      v1[1].receiver = v1;
      v1[1].super_class = sub_10048CD38;
      v19 = swift_continuation_init();
      v1[8].super_class = sub_1000CE6B8(&qword_10191CEA0);
      v1[5].receiver = _NSConcreteStackBlock;
      v1[5].super_class = 1107296256;
      v1[6].receiver = sub_1003956B0;
      v1[6].super_class = &unk_10161BF20;
      v1[7].receiver = v19;
      [v18 deleteWithDeleteFromLibrary:1 completionHandler:&v1[5]];

      return _swift_continuation_await(&v1[1]);
    }
  }

  else
  {
    v6 = *((super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[12].super_class = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  receiver = v1[10].super_class;

LABEL_19:
  v1[15].receiver = 0;
  v1[15].super_class = receiver;
  v22 = (&async function pointer to dispatch thunk of MapsSyncStore.delete(objects:) + async function pointer to dispatch thunk of MapsSyncStore.delete(objects:));
  v20 = swift_task_alloc();
  v1[16].receiver = v20;
  *v20 = v1;
  v20[1] = sub_10048CC1C;

  return v22(receiver);
}

uint64_t sub_10048CC1C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_10048DA94;
  }

  else
  {
    v2 = sub_10048D20C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10048CD38()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_10048D594;
  }

  else
  {
    v2 = sub_10048CE48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10048CE48()
{
  receiver = v0[17].receiver;

  super_class = v0[13].super_class;
  v3 = v0[14].receiver;
  v4 = v0[13].receiver;
  while (1)
  {
    v5 = (super_class + 1);
    if (super_class + 1 == v0[12].super_class)
    {
      break;
    }

    v0[13].super_class = v5;
    v0[14].receiver = v3;
    v0[13].receiver = v4;
    v6 = v0[10].super_class;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v6 + v5 + 4);
    }

    v8 = v7;
    v0[14].super_class = v7;
    type metadata accessor for FavoriteItem();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v13 = v9;
      v14 = type metadata accessor for MapsFavoriteItem();
      v15 = objc_allocWithZone(v14);
      v16 = &v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_cachedSubtitle];
      *v16 = 0;
      v16[1] = 0;
      v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isUpdatingETA] = 0;
      v17 = &v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_analyticsGrouping];
      *v17 = 0x6966654472657355;
      v17[1] = 0xEB0000000064656ELL;
      *&v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_number] = 0;
      v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup] = 0;
      v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted] = 0;
      v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isAlreadyThere] = 0;
      v18 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isMeCardWritebackEnabled;
      v19 = qword_1019066B0;
      v20 = v8;
      if (v19 != -1)
      {
        swift_once();
      }

      v15[v18] = byte_10195FEE0;
      *&v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_transportType] = 0;
      *&v15[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] = v13;
      v0[9].receiver = v15;
      v0[9].super_class = v14;
      v21 = objc_msgSendSuper2(v0 + 9, "init");
      v0[17].receiver = v21;
      v0[1].receiver = v0;
      v0[1].super_class = sub_10048CD38;
      v22 = swift_continuation_init();
      v0[8].super_class = sub_1000CE6B8(&qword_10191CEA0);
      v0[5].receiver = _NSConcreteStackBlock;
      v0[5].super_class = 1107296256;
      v0[6].receiver = sub_1003956B0;
      v0[6].super_class = &unk_10161BF20;
      v0[7].receiver = v22;
      [v21 deleteWithDeleteFromLibrary:1 completionHandler:&v0[5]];

      return _swift_continuation_await(&v0[1]);
    }

    v10 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[10].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[10].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v3 = v0[10].receiver;
    super_class = v0[13].super_class;
  }

  v0[15].receiver = v4;
  v0[15].super_class = v3;
  v23 = (&async function pointer to dispatch thunk of MapsSyncStore.delete(objects:) + async function pointer to dispatch thunk of MapsSyncStore.delete(objects:));
  v11 = swift_task_alloc();
  v0[16].receiver = v11;
  *v11 = v0;
  v11[1] = sub_10048CC1C;

  return v23(v3);
}

uint64_t sub_10048D20C()
{
  v1 = v0[30];
  if (v1)
  {

    swift_willThrow();
    v0[37] = v1;
    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_10195FF58);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "LibraryDataOperationsProvider: deleteFromLibrary() Error deleting :%@", v5, 0xCu);
      sub_100024F64(v6, &qword_1019144F0);
    }

    type metadata accessor for MainActor();
    v0[38] = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v11 = sub_10048D4B4;
  }

  else
  {
    type metadata accessor for MainActor();
    v0[36] = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v12;
    v11 = sub_10048D42C;
  }

  return _swift_task_switch(v11, v8, v10);
}

uint64_t sub_10048D42C()
{
  v1 = *(v0 + 184);

  if (v1)
  {
    (*(v0 + 184))(0);
  }

  return _swift_task_switch(sub_1003E8D84, 0, 0);
}

uint64_t sub_10048D4B4()
{
  v1 = *(v0 + 184);

  if (v1)
  {
    (*(v0 + 184))(*(v0 + 296));
  }

  return _swift_task_switch(sub_10048D534, 0, 0);
}

uint64_t sub_10048D534()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048D594()
{
  receiver = v0[17].receiver;
  swift_willThrow();

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FF58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "LibraryDataOperationsProvider: deleteFromLibrary() Error deleting favorite :%@", v5, 0xCu);
    sub_100024F64(v6, &qword_1019144F0);
  }

  v8 = v0[13].receiver;

  super_class = v0[17].super_class;
  if (v8)
  {

    super_class = v0[13].receiver;
  }

  for (i = v0[14].receiver; ; i = v0[10].receiver)
  {
    v11 = v0[13].super_class + 1;
    if (v11 == v0[12].super_class)
    {
      break;
    }

    v0[13].super_class = v11;
    v0[14].receiver = i;
    v0[13].receiver = super_class;
    v12 = v0[10].super_class;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v12 + v11 + 4);
    }

    v14 = v13;
    v0[14].super_class = v13;
    type metadata accessor for FavoriteItem();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v19 = v15;
      v20 = type metadata accessor for MapsFavoriteItem();
      v21 = objc_allocWithZone(v20);
      v22 = &v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_cachedSubtitle];
      *v22 = 0;
      v22[1] = 0;
      v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isUpdatingETA] = 0;
      v23 = &v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_analyticsGrouping];
      *v23 = 0x6966654472657355;
      v23[1] = 0xEB0000000064656ELL;
      *&v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_number] = 0;
      v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup] = 0;
      v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted] = 0;
      v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isAlreadyThere] = 0;
      v24 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isMeCardWritebackEnabled;
      v25 = qword_1019066B0;
      v26 = v14;
      if (v25 != -1)
      {
        swift_once();
      }

      v21[v24] = byte_10195FEE0;
      *&v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_transportType] = 0;
      *&v21[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] = v19;
      v0[9].receiver = v21;
      v0[9].super_class = v20;
      v27 = objc_msgSendSuper2(v0 + 9, "init");
      v0[17].receiver = v27;
      v0[1].receiver = v0;
      v0[1].super_class = sub_10048CD38;
      v28 = swift_continuation_init();
      v0[8].super_class = sub_1000CE6B8(&qword_10191CEA0);
      v0[5].receiver = _NSConcreteStackBlock;
      v0[5].super_class = 1107296256;
      v0[6].receiver = sub_1003956B0;
      v0[6].super_class = &unk_10161BF20;
      v0[7].receiver = v28;
      [v27 deleteWithDeleteFromLibrary:1 completionHandler:&v0[5]];

      return _swift_continuation_await(&v0[1]);
    }

    v16 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[10].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[10].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v0[15].receiver = super_class;
  v0[15].super_class = i;
  v29 = (&async function pointer to dispatch thunk of MapsSyncStore.delete(objects:) + async function pointer to dispatch thunk of MapsSyncStore.delete(objects:));
  v17 = swift_task_alloc();
  v0[16].receiver = v17;
  *v17 = v0;
  v17[1] = sub_10048CC1C;

  return v29(i);
}

uint64_t sub_10048DA94()
{

  v0[37] = v0[33];
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "LibraryDataOperationsProvider: deleteFromLibrary() Error deleting :%@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  type metadata accessor for MainActor();
  v0[38] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10048D4B4, v8, v7);
}

uint64_t sub_10048DD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_10048DDE4;

  return sub_1004954D8(a5);
}

uint64_t sub_10048DDE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10048DF20, 0, 0);
  }
}

uint64_t sub_10048DF20()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= 1)
  {
    sub_10048A910(*(v0 + 32), 0, 0);
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_10048E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6[4] = a3;
    v6[5] = a4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1002B0058;
    v6[3] = &unk_10161B840;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [objc_opt_self() deleteRoute:a2 completion:v5];
  _Block_release(v5);
}

uint64_t sub_10048E284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10048E2A8, 0, 0);
}

uint64_t sub_10048E2A8()
{
  v1 = v0[2];
  type metadata accessor for FavoriteItemRequest();
  v0[6] = FavoriteItemRequest.__allocating_init()();
  v4 = (&async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:) + async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10048E36C;

  return v4(v1);
}

uint64_t sub_10048E36C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10048EDEC, 0, 0);
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = swift_task_alloc();
    *(v4 + 80) = v7;
    *v7 = v6;
    v7[1] = sub_10048E528;

    return sub_1004C6304(a1);
  }
}

uint64_t sub_10048E528(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_10048E810;
  }

  else
  {
    v4 = sub_10048E65C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10048E65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[11];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_task_switch(v5, a2, a3);
        }

        v6 = *(v3[11] + 32);
      }

      v3[17] = v6;
      type metadata accessor for MainActor();
      v3[18] = static MainActor.shared.getter();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
      v5 = sub_10048EC24;
      a2 = v7;
      a3 = v9;

      return _swift_task_switch(v5, a2, a3);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v10 = v3[3];

  type metadata accessor for CollectionPlaceItemRequest();
  v3[13] = CollectionPlaceItemRequest.__allocating_init()();
  v13 = (&async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:));
  v11 = swift_task_alloc();
  v3[14] = v11;
  *v11 = v3;
  v11[1] = sub_10048E9D8;

  return v13(v10);
}

uint64_t sub_10048E810()
{
  v0[19] = v0[12];
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "LibraryDataOperationsProvider: existingPlaceItem() Error fetching :%@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  type metadata accessor for MainActor();
  v0[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10048ED08, v8, v7);
}

uint64_t sub_10048E9D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_10048EFB4;
  }

  else
  {
    v5 = sub_10048EB08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10048EB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v5, a2, a3);
    }

    v6 = *(v3[15] + 32);
  }

LABEL_9:
  v3[17] = v6;
  type metadata accessor for MainActor();
  v3[18] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v9 = v8;
  v5 = sub_10048EC24;
  a2 = v7;
  a3 = v9;

  return _swift_task_switch(v5, a2, a3);
}

uint64_t sub_10048EC24()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);

  v2(v1, 0);

  return _swift_task_switch(sub_10048ECA8, 0, 0);
}

uint64_t sub_10048ECA8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048ED08()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 32);

  v2(0, v1);

  return _swift_task_switch(sub_10048ED8C, 0, 0);
}

uint64_t sub_10048ED8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048EDEC()
{
  v0[19] = v0[8];
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "LibraryDataOperationsProvider: existingPlaceItem() Error fetching :%@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  type metadata accessor for MainActor();
  v0[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10048ED08, v8, v7);
}

uint64_t sub_10048EFB4()
{
  v0[19] = v0[16];
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "LibraryDataOperationsProvider: existingPlaceItem() Error fetching :%@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  type metadata accessor for MainActor();
  v0[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10048ED08, v8, v7);
}

uint64_t sub_10048F38C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10048F460;

  return sub_1004954D8(v6);
}

uint64_t sub_10048F460()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_1019151C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 32);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_10048F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_10048F6C8;

  return sub_1004954D8(a5);
}

uint64_t sub_10048F6C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_10048FDA8;
  }

  else
  {
    v4 = sub_10048F7DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10048F7DC()
{
  v1 = v0[7];
  v2 = (v1 >> 62);
  if (v1 >> 62)
  {
LABEL_55:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= 1)
  {
    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[9] = sub_100021540(v4, qword_10195FF58);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      if (v2)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v7 + 4) = v8;

      _os_log_impl(&_mh_execute_header, v5, v6, "LibraryDataOperationsProvider: updateSavedPlaceItems(): Found %ld matching items to update", v7, 0xCu);

      if (!v2)
      {
LABEL_48:
        v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v36;
        if (!v16)
        {
          goto LABEL_49;
        }

LABEL_17:
        v17 = objc_opt_self();
        if (v16 >= 1)
        {
          v0 = v17;
          v18 = 0;
          v19 = v1 & 0xC000000000000001;
          v34 = v1;
          v35 = v15[7] + 32;
          v20 = &selRef_lowercaseString;
          do
          {
            if (v19)
            {
              v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v2 = *(v35 + 8 * v18);
              swift_unknownObjectRetain();
            }

            v22 = [v0 v20[166]];
            v23 = v22;
            if (v22)
            {
              v24 = v22;
              v25 = [v2 mapItemStorage];
              if (v25)
              {
                v26 = v20;
                v27 = v25;
                v21 = [v25 _clientAttributes];

                v20 = v26;
                v15 = v36;
              }

              else
              {
                v21 = 0;
              }

              [v24 setClientAttributes:v21];
            }

            ++v18;
            [v2 setMapItemStorage:v23];

            swift_unknownObjectRelease();
          }

          while (v16 != v18);
          v28 = 0;
          v1 = _swiftEmptyArrayStorage;
          v29 = v15[7] + 32;
          v15[10] = _swiftEmptyArrayStorage;
          do
          {
            v30 = v28;
            while (1)
            {
              if (v19)
              {
                v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v28 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  goto LABEL_53;
                }
              }

              else
              {
                if (v30 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_54;
                }

                v2 = *(v29 + 8 * v30);
                swift_unknownObjectRetain();
                v28 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }
              }

              type metadata accessor for MapsSyncObject();
              if (swift_dynamicCastClass())
              {
                goto LABEL_42;
              }

              type metadata accessor for FavoriteItemWrapper();
              v31 = swift_dynamicCastClass();
              if (v31)
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v30;
              if (v28 == v16)
              {
                goto LABEL_50;
              }
            }

            v32 = *(v31 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
            swift_unknownObjectRelease();
LABEL_42:
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v2 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v15 = v36;
            v1 = _swiftEmptyArrayStorage;
            *(v36 + 80) = _swiftEmptyArrayStorage;
          }

          while (v28 != v16);
          goto LABEL_50;
        }

        __break(1u);
        goto LABEL_57;
      }
    }

    else
    {

      if (!v2)
      {
        goto LABEL_48;
      }
    }

    v15 = v36;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
LABEL_49:
      v15[10] = _swiftEmptyArrayStorage;
LABEL_50:

      v37 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
      v33 = swift_task_alloc();
      v15[11] = v33;
      *v33 = v15;
      v33[1] = sub_10048FF48;

      return v37(_swiftEmptyArrayStorage);
    }

    goto LABEL_17;
  }

  if (qword_1019066E8 != -1)
  {
LABEL_57:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100021540(v9, qword_10195FF58);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "LibraryDataOperationsProvider: updateSavedPlaceItems(): Found no matching items to update", v12, 2u);
  }

  v13 = *(v36 + 8);

  return v13();
}

uint64_t sub_10048FDA8()
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "LibraryDataOperationsProvider: updateSavedPlaceItems() Error :%@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10048FF48()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100490214;
  }

  else
  {
    v2 = sub_10049005C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049005C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134218496;
    if (v7 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = *(v0 + 40);
    v11 = *(v0 + 24);

    *(v8 + 4) = v9;

    *(v8 + 12) = 2048;
    v12 = [v11 _muid];

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = [v10 _muid];

    _os_log_impl(&_mh_execute_header, v4, v5, "LibraryDataOperationsProvider: updateSavedPlaceItems(): updated %ld items. Old id: %llu | New id:%llu", v8, 0x20u);
  }

  else
  {
    v13 = *(v0 + 40);
    v14 = *(v0 + 24);

    swift_bridgeObjectRelease_n();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100490214()
{

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "LibraryDataOperationsProvider: updateSavedPlaceItems() Error :%@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100490538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_100490558, 0, 0);
}

uint64_t sub_100490558()
{
  v1 = v0[19];
  v2 = objc_allocWithZone(type metadata accessor for MapsFavoriteItem());
  v3 = sub_100060758(v1);
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_10049068C;
  v4 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&qword_10191CEA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003956B0;
  v0[13] = &unk_10161B778;
  v0[14] = v4;
  [v3 deleteWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10049068C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10049080C;
  }

  else
  {
    v2 = sub_10049079C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049079C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  *v2 = v1 != 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10049080C()
{
  swift_willThrow();

  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  *v2 = v1 != 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004909A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return _swift_task_switch(sub_1004909C0, 0, 0);
}

uint64_t sub_1004909C0()
{
  v1 = v0[18];
  v2 = objc_allocWithZone(type metadata accessor for MapsFavoriteItem());
  v3 = sub_100546AF8(v1);
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_100490AF4;
  v4 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&qword_10191CEA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003956B0;
  v0[13] = &unk_10161B750;
  v0[14] = v4;
  [v3 moveToBackWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100490AF4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100490EA0;
  }

  else
  {
    v2 = sub_100490C04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100490C04()
{
  v1 = v0[20];
  v2 = v0[18];
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  v0[22] = v3;
  *(v3 + 16) = xmmword_1011E4FD0;
  *(v3 + 32) = v2;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem);
  *(v3 + 40) = v4;
  v9 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v5 = v2;
  v6 = v4;
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_100490D24;

  return v9(v3);
}

uint64_t sub_100490D24()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10049104C;
  }

  else
  {

    v2 = sub_100490E40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100490E40()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100490EA0()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FF58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "LibraryDataOperationsProvider: saveAsFavorite() Error saving :%@", v5, 0xCu);
    sub_100024F64(v6, &qword_1019144F0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10049104C()
{
  v1 = *(v0 + 160);

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FF58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "LibraryDataOperationsProvider: saveAsFavorite() Error saving :%@", v5, 0xCu);
    sub_100024F64(v6, &qword_1019144F0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100491774(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100491848;

  return sub_10049387C(a1);
}

uint64_t sub_100491848(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  swift_unknownObjectRelease();
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 32);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

void sub_1004919D0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userProvidedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = String.count.getter();

  v9 = &selRef_routeName;
  if (v8 > 0)
  {
    v9 = &selRef_userProvidedName;
  }

  v10 = [a1 *v9];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v36._object = 0x8000000101239F50;
  v11._object = 0x8000000101239EF0;
  v12._countAndFlagsBits = 0xD00000000000002DLL;
  v12._object = 0x8000000101239F20;
  v36._countAndFlagsBits = 0xD000000000000042;
  v11._countAndFlagsBits = 0xD000000000000022;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, qword_1019600D8, v12, v36);
  sub_1000CE6B8(&unk_10190D5C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1011E1D30;
  v14 = String._mapsui_quotedForLocale.getter();
  v16 = v15;

  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_1000DA61C();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  String.init(format:_:)();

  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() alertControllerWithTitle:v17 message:0 preferredStyle:0];

  if (qword_1019068A8 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a3;
  v19[4] = a4;

  v20 = a1;
  sub_1000CD9D4(a3);
  v21 = String._bridgeToObjectiveC()();

  v34 = sub_100495FF0;
  v35 = v19;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1001FDE68;
  v33 = &unk_10161B7C8;
  v22 = _Block_copy(&aBlock);

  v23 = objc_opt_self();
  v24 = [v23 actionWithTitle:v21 style:2 handler:v22];
  _Block_release(v22);

  [v18 addAction:v24];
  if (qword_1019068B0 != -1)
  {
    swift_once();
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  sub_1000CD9D4(a3);

  v26 = String._bridgeToObjectiveC()();

  v34 = sub_100495FFC;
  v35 = v25;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1001FDE68;
  v33 = &unk_10161B818;
  v27 = _Block_copy(&aBlock);

  v28 = [v23 actionWithTitle:v26 style:1 handler:v27];
  _Block_release(v27);

  [v18 addAction:v28];
  [a2 _maps_topMostPresentViewController:v18 animated:1 completion:0];
}

id sub_100491EAC()
{
  sub_1000CE6B8(&qword_101922E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x800000010123A790;
  sub_1000D0AA8(inited);
  swift_setDeallocating();
  sub_100024F64(inited + 32, &qword_101906970);
  v2 = objc_allocWithZone(NSError);
  v3 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v2 initWithDomain:v3 code:0 userInfo:isa];

  return v5;
}

void sub_100492000(void *a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;

  if ([a1 _geoMapItem])
  {
    swift_unknownObjectRetain();
    v7 = [a1 _geoMapItemStorageForPersistence];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 userValues];

      if (v9)
      {
        v10 = [v9 name];

        if (v10)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }
    }

    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v13 = objc_allocWithZone(Predicate);
    v14 = MapsSyncQueryPredicate.init(mapItem:customName:)();
    v15 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    v16 = type metadata accessor for MapsSyncRange();
    v17 = objc_allocWithZone(v16);
    v18 = v14;
    MapsSyncRange.init(offset:limit:)();
    Options = type metadata accessor for MapsSyncQueryOptions();
    v20 = objc_allocWithZone(Options);
    v21 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    sub_1000CE6B8(&qword_101908400);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1011E4FD0;
    *(v22 + 32) = v18;
    *(v22 + 40) = v15;
    v23 = objc_allocWithZone(Predicate);
    v24 = v18;
    v25 = v15;
    MapsSyncQueryPredicate.init(and:)();
    v26 = objc_allocWithZone(v16);
    MapsSyncRange.init(offset:limit:)();
    v27 = objc_allocWithZone(Options);
    v28 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v28;
    v30[5] = v21;
    v30[6] = sub_10049678C;
    v30[7] = a2;
    v31 = v28;
    v32 = v21;

    sub_10020AAE4(0, 0, v6, &unk_101209D58, v30);

    swift_unknownObjectRelease();
  }

  else
  {
    v34 = sub_100491EAC();
    sub_1002FEFD8(0, v34);

    v11 = v34;
  }
}

uint64_t sub_1004923B4(uint64_t a1, uint64_t (*a2)(uint64_t, void, double), uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1000CE6B8(&unk_10190BA50);
  v14 = __chkstk_darwin(v13);
  v16 = &v28 - v15;
  if (a1)
  {
    return a2(a1, 0, v14);
  }

  v29 = a4;
  type metadata accessor for CollectionPlaceItem();
  v18 = MapsSyncObject.__allocating_init()();
  if (a7)
  {
    v19 = String._bridgeToObjectiveC()();
    [a5 setName:v19];
  }

  v20 = [a5 name];
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  dispatch thunk of CollectionPlaceItem.customName.setter();
  v22 = [a5 _geoMapItem];
  v23 = v29;
  if (v22)
  {
    v24 = [objc_opt_self() mapItemStorageForGEOMapItem:v22];
    dispatch thunk of CollectionPlaceItem.mapItemStorage.setter();
    swift_unknownObjectRelease();
  }

  dispatch thunk of CollectionPlaceItem.placeItemNote.setter();
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v23;
  v26[5] = v18;
  v26[6] = a2;
  v26[7] = a3;
  v27 = v23;

  sub_10020AAE4(0, 0, v16, &unk_1011F9AB0, v26);
}

void sub_100492620(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v17 - 8);
  v64 = &v61 - v18;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  v19[8] = a8;
  v19[9] = a9;
  v63 = v19;

  v20 = a4;
  v21 = a5;

  if ([a1 _geoMapItem])
  {
    swift_unknownObjectRetain();
    v22 = [a1 _geoMapItemStorageForPersistence];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 userValues];

      if (v24)
      {
        v25 = [v24 name];

        if (v25)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }
    }

    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v27 = objc_allocWithZone(Predicate);
    v28 = MapsSyncQueryPredicate.init(mapItem:customName:)();
    v29 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    v30 = type metadata accessor for MapsSyncRange();
    v31 = objc_allocWithZone(v30);
    v32 = v28;
    MapsSyncRange.init(offset:limit:)();
    Options = type metadata accessor for MapsSyncQueryOptions();
    v34 = objc_allocWithZone(Options);
    v35 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    sub_1000CE6B8(&qword_101908400);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1011E4FD0;
    *(v36 + 32) = v32;
    *(v36 + 40) = v29;
    v37 = objc_allocWithZone(Predicate);
    v38 = v32;
    v39 = v29;
    MapsSyncQueryPredicate.init(and:)();
    v40 = objc_allocWithZone(v30);
    MapsSyncRange.init(offset:limit:)();
    v41 = objc_allocWithZone(Options);
    v42 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    v43 = type metadata accessor for TaskPriority();
    v44 = v64;
    (*(*(v43 - 8) + 56))(v64, 1, 1, v43);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v42;
    v45[5] = v35;
    v46 = v63;
    v45[6] = sub_100496678;
    v45[7] = v46;
    v47 = v42;
    v48 = v35;

    sub_10020AAE4(0, 0, v44, &unk_101209D48, v45);

    swift_unknownObjectRelease();
  }

  else
  {
    v62 = v20;
    v61 = sub_100491EAC();
    type metadata accessor for CollectionPlaceItem();
    v49 = MapsSyncObject.__allocating_init()();
    if (a7)
    {
      v50 = String._bridgeToObjectiveC()();
      [v21 setName:v50];
    }

    v51 = [v21 name];
    v52 = a2;
    if (v51)
    {
      v53 = v51;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    dispatch thunk of CollectionPlaceItem.customName.setter();
    v54 = [v21 _geoMapItem];
    if (v54)
    {
      v55 = [objc_opt_self() mapItemStorageForGEOMapItem:v54];
      dispatch thunk of CollectionPlaceItem.mapItemStorage.setter();
      swift_unknownObjectRelease();
    }

    dispatch thunk of CollectionPlaceItem.placeItemNote.setter();
    v56 = type metadata accessor for TaskPriority();
    v57 = v64;
    (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
    v58 = swift_allocObject();
    v58[2] = 0;
    v58[3] = 0;
    v59 = v62;
    v58[4] = v62;
    v58[5] = v49;
    v58[6] = v52;
    v58[7] = a3;

    v60 = v59;
    sub_10020AAE4(0, 0, v57, &unk_101209D40, v58);
  }
}

void _s4Maps29LibraryDataOperationsProviderC17existingPlaceItem06forMapH010completionySo05MKMapH0C_yAA0bgH10Compatible_pSg_s5Error_pSgtctF_0(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_1000CE6B8(&unk_10190BA50);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  if ([a1 _geoMapItem])
  {
    v37 = a2;
    swift_unknownObjectRetain();
    v10 = [a1 _geoMapItemStorageForPersistence];
    v38 = a3;
    if (v10)
    {
      v11 = v10;
      v12 = [v10 userValues];

      if (v12)
      {
        v13 = [v12 name];

        if (v13)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }
    }

    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v16 = objc_allocWithZone(Predicate);
    v17 = MapsSyncQueryPredicate.init(mapItem:customName:)();
    v18 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    v19 = type metadata accessor for MapsSyncRange();
    v20 = objc_allocWithZone(v19);
    v21 = v17;
    MapsSyncRange.init(offset:limit:)();
    Options = type metadata accessor for MapsSyncQueryOptions();
    v23 = objc_allocWithZone(Options);
    v24 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    sub_1000CE6B8(&qword_101908400);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1011E4FD0;
    *(v25 + 32) = v21;
    *(v25 + 40) = v18;
    v26 = objc_allocWithZone(Predicate);
    v27 = v21;
    v28 = v18;
    MapsSyncQueryPredicate.init(and:)();
    v29 = objc_allocWithZone(v19);
    MapsSyncRange.init(offset:limit:)();
    v30 = objc_allocWithZone(Options);
    v31 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v31;
    v33[5] = v24;
    v34 = v38;
    v33[6] = v37;
    v33[7] = v34;
    v35 = v31;
    v36 = v24;

    sub_10020AAE4(0, 0, v9, &unk_101209D78, v33);
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = sub_100491EAC();
    a2(0, v37);
    v14 = v37;
  }
}

void sub_100492FBC(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;

  if ([a1 _geoMapItem])
  {
    swift_unknownObjectRetain();
    v12 = [a1 _geoMapItemStorageForPersistence];
    v41 = v10;
    if (v12)
    {
      v13 = v12;
      v14 = [v12 userValues];

      if (v14)
      {
        v15 = [v14 name];

        if (v15)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }
    }

    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v21 = objc_allocWithZone(Predicate);
    v22 = MapsSyncQueryPredicate.init(mapItem:customName:)();
    v23 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    v24 = type metadata accessor for MapsSyncRange();
    v25 = objc_allocWithZone(v24);
    v26 = v22;
    MapsSyncRange.init(offset:limit:)();
    Options = type metadata accessor for MapsSyncQueryOptions();
    v28 = objc_allocWithZone(Options);
    v29 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    sub_1000CE6B8(&qword_101908400);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1011E4FD0;
    *(v30 + 32) = v26;
    *(v30 + 40) = v23;
    v31 = objc_allocWithZone(Predicate);
    v16 = v26;
    v32 = v23;
    MapsSyncQueryPredicate.init(and:)();
    v33 = objc_allocWithZone(v24);
    MapsSyncRange.init(offset:limit:)();
    v34 = objc_allocWithZone(Options);
    v35 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    v36 = type metadata accessor for TaskPriority();
    v37 = v41;
    (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v35;
    v38[5] = v29;
    v38[6] = sub_100496780;
    v38[7] = v11;
    v39 = v35;
    v40 = v29;

    sub_10020AAE4(0, 0, v37, &unk_101209D50, v38);

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = sub_100491EAC();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_placeItemInLibrary) = 0;
      v18 = Strong;
      v19 = swift_unknownObjectRelease();
      v18[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_isAddingToLibrary] = 0;
      a3(v19);

      v16 = v18;
    }

    else
    {
    }
  }
}

void sub_1004933CC(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  _Block_copy(a2);
  if ([a1 _geoMapItem])
  {
    swift_unknownObjectRetain();
    v8 = [a1 _geoMapItemStorageForPersistence];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 userValues];

      if (v10)
      {
        v11 = [v10 name];

        if (v11)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }
    }

    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v15 = objc_allocWithZone(Predicate);
    v16 = MapsSyncQueryPredicate.init(mapItem:customName:)();
    v17 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    v18 = type metadata accessor for MapsSyncRange();
    v19 = objc_allocWithZone(v18);
    v20 = v16;
    MapsSyncRange.init(offset:limit:)();
    Options = type metadata accessor for MapsSyncQueryOptions();
    v22 = objc_allocWithZone(Options);
    v23 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    sub_1000CE6B8(&qword_101908400);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1011E4FD0;
    *(v24 + 32) = v20;
    *(v24 + 40) = v17;
    v25 = objc_allocWithZone(Predicate);
    v26 = v20;
    v27 = v17;
    MapsSyncQueryPredicate.init(and:)();
    v28 = objc_allocWithZone(v18);
    MapsSyncRange.init(offset:limit:)();
    v29 = objc_allocWithZone(Options);
    v30 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v30;
    v32[5] = v23;
    v32[6] = sub_1000DF014;
    v32[7] = v7;
    v33 = v30;
    v34 = v23;

    sub_10020AAE4(0, 0, v6, &unk_101206A90, v32);

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = sub_100491EAC();
    v36 = _convertErrorToNSError(_:)();
    a2[2](a2, 0, v36);

    v13 = v36;
  }
}

uint64_t sub_1004937B0(uint64_t a1, uint64_t a2, void *a3)
{

  dispatch thunk of CollectionPlaceItem.placeItemNote.setter();
  type metadata accessor for MapsSyncStore();
  v4 = static MapsSyncStore.sharedStore.getter();
  sub_1000CE6B8(&qword_101908400);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E47B0;
  *(v5 + 32) = a3;
  v6 = a3;
  dispatch thunk of MapsSyncStore.save(_:)();
}

uint64_t sub_10049387C(uint64_t a1)
{
  v1[10] = a1;
  sub_1000CE6B8(&unk_101918E50);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100493980, 0, 0);
}

uint64_t sub_100493980()
{
  v2 = v0;
  v3 = [*(v0 + 80) placeItemNote];
  *(v0 + 128) = v3;
  if (v3)
  {
  }

  type metadata accessor for FavoriteItemWrapper();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for CollectionPlaceItem();
    countAndFlagsBits = swift_dynamicCastClass();
    if (!countAndFlagsBits)
    {
LABEL_98:
      object = 0;
      goto LABEL_99;
    }

    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = v2[11];
    swift_unknownObjectRetain();
    dispatch thunk of CollectionPlaceItem.originalIdentifier.getter();
    LODWORD(v12) = (*(v12 + 48))(v13, 1, v11);
    sub_100024F64(v13, &unk_101918E50);
    v14 = v12 != 1 && dispatch thunk of CollectionPlaceItem.type.getter() == 2;
    swift_unknownObjectRetain();
    v93 = v14;
    if (dispatch thunk of CollectionPlaceItem.type.getter())
    {
      if (qword_1019068E8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v25 = static FavoriteCollectionHandler.title;

      v24 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100356258(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v14 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v14 >= v26 >> 1)
      {
        v24 = sub_100356258((v26 > 1), v14 + 1, 1, v24);
      }

      *(v24 + 2) = v14 + 1;
      *&v24[16 * v14 + 32] = v25;
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

    v27 = dispatch thunk of CollectionItem.fetchCollections()();
    v28 = v27;
    if (*(v24 + 2))
    {
      v29 = 2;
    }

    else
    {
      v29 = 3;
    }

    v30 = v27 & 0xFFFFFFFFFFFFFF8;
    v31 = v27 >> 62;
    if (v27 >> 62)
    {
      v88 = _CocoaArrayWrapper.endIndex.getter();
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (v88 >= v29)
      {
        v89 = v29;
      }

      else
      {
        v89 = v88;
      }

      if (v88 >= 0)
      {
        v33 = v89;
      }

      else
      {
        v33 = v29;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v33)
      {
LABEL_30:
        if ((v28 & 0xC000000000000001) != 0)
        {

          if (v33)
          {
            type metadata accessor for Collection();
            v34 = 0;
            do
            {
              v35 = v34 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v34);
              v34 = v35;
            }

            while (v33 != v35);
          }
        }

        else
        {
        }

        v36 = v24;

        v92 = countAndFlagsBits;
        if (v31)
        {
          v38 = _CocoaArrayWrapper.subscript.getter();
          v1 = v52;
          v37 = v53;
          v55 = v54;

          v55 >>= 1;
          v40 = v55 - v37;
          v39 = v55 <= v37;
          if (v55 != v37)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v37 = 0;
          v38 = v28 & 0xFFFFFFFFFFFFFF8;
          v1 = ((v28 & 0xFFFFFFFFFFFFFF8) + 32);
          v40 = v33;
          v39 = v33 <= 0;
          if (v33)
          {
LABEL_38:
            if (v39)
            {
              __break(1u);
              goto LABEL_113;
            }

            v41 = &v1[8 * v37];
            v42 = v36;
            do
            {
              v43 = *v41;
              v44 = dispatch thunk of Collection.title.getter();
              if (v45)
              {
                v46 = v44;
                v47 = v45;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v42 = sub_100356258(0, *(v42 + 2) + 1, 1, v42);
                }

                v49 = *(v42 + 2);
                v48 = *(v42 + 3);
                v50 = v42;
                if (v49 >= v48 >> 1)
                {
                  v50 = sub_100356258((v48 > 1), v49 + 1, 1, v42);
                }

                *(v50 + 2) = v49 + 1;
                v42 = v50;
                v51 = &v50[16 * v49];
                *(v51 + 4) = v46;
                *(v51 + 5) = v47;
              }

              else
              {
              }

              ++v41;
              --v40;
            }

            while (v40);
LABEL_50:
            v9 = v42;
            v56 = v2[16];
            swift_unknownObjectRelease();
            v1 = v92;

            v8 = v93;
            if (v56)
            {
              v57 = 1;
            }

            else
            {
              v57 = v93;
            }

            if ((v57 & 1) == 0)
            {
              if (!*(v9 + 2))
              {

LABEL_97:

                countAndFlagsBits = 0;
                goto LABEL_98;
              }

              v8 = 0;
            }

LABEL_56:
            v58 = *(v9 + 2);
            if (v58)
            {
              sub_1005111C4(0, v58, 0);
              v59 = v9 + 40;
              do
              {

                v2[5] = String._mapsui_quotedForLocale.getter();
                v2[6] = v60;
                v2[7] = 8237;
                v2[8] = 0xE200000000000000;
                v95 = String.init<A>(_:)();
                v96 = v61;
                String.append<A>(contentsOf:)();

                v63 = _swiftEmptyArrayStorage[2];
                v62 = _swiftEmptyArrayStorage[3];
                if (v63 >= v62 >> 1)
                {
                  sub_1005111C4((v62 > 1), v63 + 1, 1);
                }

                _swiftEmptyArrayStorage[2] = v63 + 1;
                v64 = &_swiftEmptyArrayStorage[2 * v63];
                v64[4] = v95;
                v64[5] = v96;
                v59 += 2;
                --v58;
              }

              while (v58);
            }

            v65 = v2[16];
            v2[9] = _swiftEmptyArrayStorage;
            sub_1000CE6B8(&unk_101909C00);
            sub_1004960E4();
            v38 = BidirectionalCollection<>.joined(separator:)();
            countAndFlagsBits = v66;

            if (v65)
            {
              v67 = HIBYTE(countAndFlagsBits) & 0xF;
              if ((countAndFlagsBits & 0x2000000000000000) == 0)
              {
                v67 = v38 & 0xFFFFFFFFFFFFLL;
              }

              if (v67)
              {

                v31 = "d and is in guides.";
                countAndFlagsBits = "ote + is in guides";
                v14 = 0x800000010123A4D0;
                if (qword_101906768 == -1)
                {
LABEL_66:
                  v68.super.isa = qword_1019600D8;
                  v90 = v14;
                  v69 = 0xD000000000000032;
                  v70 = v31 | 0x8000000000000000;
                  v71 = 0xD000000000000051;
                  v72 = countAndFlagsBits | 0x8000000000000000;
                  v73 = 0xD000000000000052;
LABEL_67:
                  v74 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v69, 0, v68, *&v71, *&v73);
                  countAndFlagsBits = v74._countAndFlagsBits;
                  object = v74._object;

LABEL_82:

LABEL_99:

                  v87 = v2[1];

                  return v87(countAndFlagsBits, object);
                }

LABEL_111:
                swift_once();
                goto LABEL_66;
              }
            }

            v76 = HIBYTE(countAndFlagsBits) & 0xF;
            if (v8)
            {
              if ((countAndFlagsBits & 0x2000000000000000) != 0 ? HIBYTE(countAndFlagsBits) & 0xF : v38 & 0xFFFFFFFFFFFFLL)
              {
                v29 = "n item is pinned and has note.";
                v40 = "nned + is in guides";
                v36 = 0x800000010123A3D0;
                if (qword_101906768 == -1)
                {
LABEL_74:
                  v78.super.isa = qword_1019600D8;
                  v91 = v36;
                  v79 = 0xD000000000000033;
                  v80 = v29 | 0x8000000000000000;
                  v81 = 0xD000000000000045;
                  v82 = v40 | 0x8000000000000000;
                  v83 = 0xD000000000000053;
LABEL_81:
                  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v79, 0, v78, *&v81, *&v83);
                  sub_1000CE6B8(&unk_10190D5C0);
                  v84 = swift_allocObject();
                  *(v84 + 16) = xmmword_1011E1D30;
                  *(v84 + 56) = &type metadata for String;
                  *(v84 + 64) = sub_1000DA61C();
                  *(v84 + 32) = v38;
                  *(v84 + 40) = countAndFlagsBits;
                  countAndFlagsBits = String.init(format:_:)();
                  object = v85;

                  goto LABEL_82;
                }

LABEL_113:
                swift_once();
                goto LABEL_74;
              }
            }

            if ((countAndFlagsBits & 0x2000000000000000) == 0)
            {
              v76 = v38 & 0xFFFFFFFFFFFFLL;
            }

            if (v76)
            {
              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v78.super.isa = qword_1019600D8;
              v91 = 0x800000010123A0B0;
              v80 = 0x800000010123A040;
              v81 = 0xD00000000000003DLL;
              v82 = 0x800000010123A070;
              v83 = 0xD000000000000042;
              v79 = 0xD000000000000027;
              goto LABEL_81;
            }

            v86 = v2[16];
            if (v8)
            {
              if (v86)
              {
                if (qword_101906768 != -1)
                {
                  swift_once();
                }

                v68.super.isa = qword_1019600D8;
                v90 = 0x800000010123A2F0;
                v69 = 0xD00000000000002FLL;
                v70 = 0x800000010123A270;
                v71 = 0xD000000000000040;
                v72 = 0x800000010123A2A0;
                v73 = 0xD00000000000004ELL;
              }

              else
              {
                if (qword_101906768 != -1)
                {
                  swift_once();
                }

                v68.super.isa = qword_1019600D8;
                v69 = 0xD000000000000024;
                v90 = 0x800000010123A220;
                v70 = 0x800000010123A1C0;
                v72 = 0x800000010123A1F0;
                v73 = 0xD000000000000041;
                v71 = 0xD000000000000027;
              }

              goto LABEL_67;
            }

            if (v86)
            {
              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v68.super.isa = qword_1019600D8;
              v69 = 0xD000000000000023;
              v90 = 0x800000010123A170;
              v70 = 0x800000010123A100;
              v71 = 0xD000000000000038;
              v72 = 0x800000010123A130;
              v73 = 0xD000000000000044;
              goto LABEL_67;
            }

            goto LABEL_97;
          }
        }

        v42 = v36;
        goto LABEL_50;
      }
    }

    else
    {
      v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32 >= v29)
      {
        v33 = v29;
      }

      else
      {
        v33 = *(v30 + 16);
      }

      if (v32 >= v33)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = v2[12];
  swift_unknownObjectRetain();
  dispatch thunk of MapsSyncObject.identifier.getter();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v2[12];
    swift_unknownObjectRelease();
    sub_100024F64(v7, &unk_101918E50);
    v1 = 0;
    v8 = 1;
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_56;
  }

  (*(v2[14] + 32))(v2[15], v2[12], v2[13]);
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1011E1D30;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v15 + 56) = sub_100496148();
  *(v15 + 64) = sub_1002592A8();
  *(v15 + 32) = isa;
  v17 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  v2[17] = v17;

  type metadata accessor for CollectionPlaceItemRequest();
  v2[18] = CollectionPlaceItemRequest.__allocating_init()();
  v18 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
  v19 = v17;
  MapsSyncRange.init(offset:limit:)();
  v20 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v21 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v2[19] = v21;
  v94 = (&async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:));
  v22 = swift_task_alloc();
  v2[20] = v22;
  *v22 = v2;
  v22[1] = sub_1004945D0;

  return v94(v21);
}

uint64_t sub_1004945D0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 168) = a1;

  v4 = *(v3 + 152);
  v5 = *(v3 + 144);
  if (v1)
  {

    v6 = sub_100494FEC;
  }

  else
  {

    v6 = sub_100494734;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100494734()
{
  v5 = v2;
  v6 = *(v2 + 168);
  if (!(v6 >> 62))
  {
    v69 = v2;
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_45:
    v1 = *(v2 + 136);
    (*(*(v2 + 112) + 8))(*(v2 + 120), *(v2 + 104));

    v4 = 0;
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v69 = v2;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_45;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v7 = *(*(v2 + 168) + 32);
  }

  v9 = *(v2 + 112);
  v8 = *(v2 + 120);
  v10 = *(v2 + 104);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v8, v10);
  v1 = v7;
  if (dispatch thunk of CollectionPlaceItem.type.getter())
  {
    if (qword_1019068E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = static FavoriteCollectionHandler.title;

    v11 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100356258(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100356258((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    *&v11[16 * v14 + 32] = v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v15 = dispatch thunk of CollectionItem.fetchCollections()();
  v6 = v15;
  if (*(v11 + 2))
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  v0 = v15 >> 62;
  if (!(v15 >> 62))
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= v16)
    {
      v3 = v16;
    }

    else
    {
      v3 = *(v17 + 16);
    }

    if (v18 >= v3)
    {
      goto LABEL_23;
    }

    goto LABEL_84;
  }

  v66 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (v66 >= v16)
  {
    v67 = v16;
  }

  else
  {
    v67 = v66;
  }

  if (v66 >= 0)
  {
    v3 = v67;
  }

  else
  {
    v3 = v16;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v3)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_23:
  if ((v6 & 0xC000000000000001) != 0)
  {

    if (v3)
    {
      type metadata accessor for Collection();
      v19 = 0;
      do
      {
        v20 = v19 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v19);
        v19 = v20;
      }

      while (v3 != v20);
    }
  }

  else
  {
  }

  if (v0)
  {
    _CocoaArrayWrapper.subscript.getter();
    v22 = v34;
    v21 = v35;
    v37 = v36;

    v3 = v37 >> 1;
    v4 = (v3 - v21);
    v23 = v3 <= v21;
    if (v3 != v21)
    {
      goto LABEL_31;
    }

LABEL_42:
    v4 = v1;
    goto LABEL_46;
  }

  v21 = 0;
  v22 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v4 = v3;
  v23 = v3 <= 0;
  if (!v3)
  {
    goto LABEL_42;
  }

LABEL_31:
  if (v23)
  {
    __break(1u);
LABEL_88:
    swift_once();
LABEL_67:
    v51.super.isa = qword_1019600D8;
    v68 = v1;
    v52 = v3 + 11;
    v53 = v0 | 0x8000000000000000;
    v54 = v3 + 28;
    v55 = v6 | 0x8000000000000000;
    v56 = v3 + 42;
    goto LABEL_71;
  }

  v24 = (v22 + 8 * v21);
  do
  {
    v25 = *v24;
    v26 = dispatch thunk of Collection.title.getter();
    if (v27)
    {
      v28 = v26;
      v29 = v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100356258(0, *(v11 + 2) + 1, 1, v11);
      }

      v31 = *(v11 + 2);
      v30 = *(v11 + 3);
      v32 = v11;
      if (v31 >= v30 >> 1)
      {
        v32 = sub_100356258((v30 > 1), v31 + 1, 1, v11);
      }

      *(v32 + 2) = v31 + 1;
      v11 = v32;
      v33 = &v32[16 * v31];
      *(v33 + 4) = v28;
      *(v33 + 5) = v29;
    }

    else
    {
    }

    ++v24;
    --v4;
  }

  while (v4);
  v4 = v1;
  v5 = v69;
LABEL_46:
  swift_unknownObjectRelease();

  v38 = *(v11 + 2);
  if (v38)
  {
    sub_1005111C4(0, v38, 0);
    v39 = v11 + 40;
    do
    {

      v69[5] = String._mapsui_quotedForLocale.getter();
      v69[6] = v40;
      v69[7] = 8237;
      v69[8] = 0xE200000000000000;
      v70 = String.init<A>(_:)();
      v71 = v41;
      String.append<A>(contentsOf:)();

      v43 = _swiftEmptyArrayStorage[2];
      v42 = _swiftEmptyArrayStorage[3];
      if (v43 >= v42 >> 1)
      {
        sub_1005111C4((v42 > 1), v43 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v43 + 1;
      v44 = &_swiftEmptyArrayStorage[2 * v43];
      v44[4] = v70;
      v44[5] = v71;
      v39 += 16;
      --v38;
    }

    while (v38);
    v5 = v69;
  }

  v3 = 0xD000000000000024;
  v45 = v5[16];
  v5[9] = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&unk_101909C00);
  sub_1004960E4();
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49 = HIBYTE(v48) & 0xF;
  if (!v45 || ((v48 & 0x2000000000000000) != 0 ? (v50 = HIBYTE(v48) & 0xF) : (v50 = v46 & 0xFFFFFFFFFFFFLL), !v50))
  {
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v73._object = 0x800000010123A3D0;
      v57._countAndFlagsBits = 0xD000000000000033;
      v57._object = 0x800000010123A340;
      v58._countAndFlagsBits = 0xD000000000000045;
      v58._object = 0x800000010123A380;
      v73._countAndFlagsBits = 0xD000000000000053;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, qword_1019600D8, v58, v73);
      sub_1000CE6B8(&unk_10190D5C0);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1011E1D30;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_1000DA61C();
      *(v59 + 32) = v46;
      *(v59 + 40) = v48;
      countAndFlagsBits = String.init(format:_:)();
      object = v61;

      goto LABEL_72;
    }

    if (!v5[16])
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v51.super.isa = qword_1019600D8;
      v68 = 0x800000010123A220;
      v53 = 0x800000010123A1C0;
      v54 = 0xD000000000000027;
      v55 = 0x800000010123A1F0;
      v56 = 0xD000000000000041;
      v52 = 0xD000000000000024;
      goto LABEL_71;
    }

    v0 = "n place is pinned";
    v6 = "te place - is pinned + has note";
    v1 = 0x800000010123A2F0;
    if (qword_101906768 == -1)
    {
      goto LABEL_67;
    }

    goto LABEL_88;
  }

  v0 = "d and is in guides.";
  v6 = "ote + is in guides";
  v1 = 0x800000010123A4D0;
  if (qword_101906768 != -1)
  {
LABEL_86:
    swift_once();
  }

  v51.super.isa = qword_1019600D8;
  v68 = v1;
  v52 = v3 + 14;
  v53 = v0 | 0x8000000000000000;
  v54 = v3 + 45;
  v55 = v6 | 0x8000000000000000;
  v56 = v3 + 46;
LABEL_71:
  v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v52, 0, v51, *&v54, *&v56);
  countAndFlagsBits = v63._countAndFlagsBits;
  object = v63._object;

LABEL_72:

  v64 = v5[1];

  return v64(countAndFlagsBits, object);
}

uint64_t sub_100494FEC()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  swift_unknownObjectRelease();

  (*(v3 + 8))(v2, v4);
  v5 = _swiftEmptyArrayStorage[2];
  if (v5)
  {
    sub_1005111C4(0, v5, 0);
    v6 = &_swiftEmptyArrayStorage[5];
    do
    {

      v0[5] = String._mapsui_quotedForLocale.getter();
      v0[6] = v7;
      v0[7] = 8237;
      v0[8] = 0xE200000000000000;
      v34 = String.init<A>(_:)();
      v35 = v8;
      String.append<A>(contentsOf:)();

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1005111C4((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = v34;
      v11[5] = v35;
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  v12 = v0[16];
  v0[9] = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&unk_101909C00);
  sub_1004960E4();
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if (v12)
  {
    if ((v15 & 0x2000000000000000) != 0 ? HIBYTE(v15) & 0xF : v13 & 0xFFFFFFFFFFFFLL)
    {

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v18.super.isa = qword_1019600D8;
      v33 = 0x800000010123A4D0;
      v19 = 0xD000000000000032;
      v20 = 0x800000010123A430;
      v21 = 0xD000000000000051;
      v22 = 0x800000010123A470;
      v23 = 0xD000000000000052;
LABEL_27:
      v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v19, 0, v18, *&v21, *&v23);
      countAndFlagsBits = v30._countAndFlagsBits;
      object = v30._object;
      goto LABEL_28;
    }
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    if (v0[16])
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v18.super.isa = qword_1019600D8;
      v33 = 0x800000010123A2F0;
      v19 = 0xD00000000000002FLL;
      v20 = 0x800000010123A270;
      v21 = 0xD000000000000040;
      v22 = 0x800000010123A2A0;
      v23 = 0xD00000000000004ELL;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v18.super.isa = qword_1019600D8;
      v33 = 0x800000010123A220;
      v20 = 0x800000010123A1C0;
      v21 = 0xD000000000000027;
      v22 = 0x800000010123A1F0;
      v23 = 0xD000000000000041;
      v19 = 0xD000000000000024;
    }

    goto LABEL_27;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v37._object = 0x800000010123A3D0;
  v24._countAndFlagsBits = 0xD000000000000033;
  v24._object = 0x800000010123A340;
  v25._countAndFlagsBits = 0xD000000000000045;
  v25._object = 0x800000010123A380;
  v37._countAndFlagsBits = 0xD000000000000053;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v25, v37);
  sub_1000CE6B8(&unk_10190D5C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1011E1D30;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000DA61C();
  *(v26 + 32) = v13;
  *(v26 + 40) = v15;
  countAndFlagsBits = String.init(format:_:)();
  object = v28;

LABEL_28:

  v31 = v0[1];

  return v31(countAndFlagsBits, object);
}

uint64_t sub_1004954F8()
{
  v1 = [*(v0 + 16) _geoMapItem];
  *(v0 + 24) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);
    swift_unknownObjectRetain();
    v3 = [v2 _geoMapItemStorageForPersistence];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 userValues];

      if (v5)
      {
        v6 = [v5 name];

        if (v6)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }
    }

    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v8 = objc_allocWithZone(Predicate);
    v9 = MapsSyncQueryPredicate.init(mapItem:customName:)();
    *(v0 + 32) = v9;
    v10 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    *(v0 + 40) = v10;
    Options = type metadata accessor for MapsSyncQueryOptions();
    v12 = objc_allocWithZone(Options);
    v13 = v9;
    *(v0 + 48) = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    sub_1000CE6B8(&qword_101908400);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1011E4FD0;
    *(v14 + 32) = v13;
    *(v14 + 40) = v10;
    v15 = objc_allocWithZone(Predicate);
    v16 = v13;
    v17 = v10;
    MapsSyncQueryPredicate.init(and:)();
    v18 = objc_allocWithZone(Options);
    v19 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    *(v0 + 56) = v19;
    type metadata accessor for FavoriteItemRequest();
    *(v0 + 64) = FavoriteItemRequest.__allocating_init()();
    v24 = (&async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:) + async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:));
    v20 = v19;
    v21 = swift_task_alloc();
    *(v0 + 72) = v21;
    *v21 = v0;
    v21[1] = sub_1004957C8;

    return v24(v19);
  }

  else
  {
    sub_100491EAC();
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1004957C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100495EA8, 0, 0);
  }

  else
  {
    v6 = *(v4 + 64);

    v7 = swift_task_alloc();
    *(v4 + 96) = v7;
    *v7 = v5;
    v7[1] = sub_100495970;

    return (sub_1004C6304)(a1);
  }
}

uint64_t sub_100495970(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_100495C80;
  }

  else
  {

    v4 = sub_100495A8C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100495A8C()
{
  v1 = v0[6];
  type metadata accessor for CollectionPlaceItemRequest();
  v0[15] = CollectionPlaceItemRequest.__allocating_init()();
  v5 = (&async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:));
  v2 = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100495B5C;

  return v5(v1);
}

uint64_t sub_100495B5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_100495F40;
  }

  else
  {
    v5 = *(v3 + 120);

    v4 = sub_100495D18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100495C80()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_100495D18()
{
  if (v0[13] >> 62)
  {

    sub_1000CE6B8(&qword_1019151C0);
    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v1 = v0[13];
  }

  v2 = v0[17];

  if (v2 >> 62)
  {
    sub_1000CE6B8(&qword_1019151C0);
    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v3 = v0[17];
  }

  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];

  sub_1002478B4(v3);
  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_100495EA8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_100495F40()
{
  v1 = v0[15];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_100495FFC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_100496030()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003AC40;

  return sub_100491774(v2, v3, v4);
}

unint64_t sub_1004960E4()
{
  result = qword_101918A70;
  if (!qword_101918A70)
  {
    sub_1000D6664(&unk_101909C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918A70);
  }

  return result;
}

unint64_t sub_100496148()
{
  result = qword_101922DA0;
  if (!qword_101922DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101922DA0);
  }

  return result;
}

uint64_t sub_100496194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_10048F618(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100496268()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1004962C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003AC40;

  return sub_10048F38C(v2, v3, v4);
}

uint64_t sub_100496374()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004963D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004963EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC40;

  return sub_10048BBB8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1004964D8(void (*a1)(void))
{

  a1(*(v1 + 24));
  if (*(v1 + 32))
  {
  }

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100496544()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1, 0);
  }

  return result;
}

uint64_t sub_100496580(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(0, result);
  }

  return result;
}

uint64_t sub_1004965B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10003AC40;

  return sub_10048B190(v2, v3, v5, v4);
}

uint64_t sub_1004966AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_10048B5AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100496794(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC4C;

  return sub_10048C7F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100496868()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

void sub_100496918(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = v3 > a1;
  if (v3 >= a1)
  {
    v3 = a1;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4)
  {
    v6 = (2 * v3) | 1;
    v7 = *(type metadata accessor for CarHomeSection.RowType() - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

    sub_100416214(a3, v8, 0, v6);
  }

  else
  {
  }
}

uint64_t sub_1004969D0()
{
  v1 = v0;
  v2 = type metadata accessor for CarRecentRowViewModel();
  __chkstk_darwin(v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CarHomeSection.RowType();
  __chkstk_darwin(v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100496FCC(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100497030(v7, v4);
      v9 = UUID.uuidString.getter();
      sub_100465A04(v4);
      return v9;
    }

    v10 = *v7;
    v11 = &OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_id;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v10 = *v7;
    v11 = &OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_id;
LABEL_8:
    v9 = *&v10[*v11];

    return v9;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v9 = *(*v7 + 24);
  }

  else
  {
    v12 = *(v7 + 1);
    v15[0] = *v7;
    v15[1] = v12;
    v13 = *(v7 + 3);
    v15[2] = *(v7 + 2);
    v15[3] = v13;
    v15[4] = *(v7 + 4);
    v16 = *(v7 + 10);
    v9 = *(&v15[0] + 1);

    sub_100465748(v15);
  }

  return v9;
}

uint64_t sub_100496B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004969D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100496BB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100496BE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100496BE4(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v2 = 0xD000000000000010;
      v9 = 0x800000010123A910;
      v3 = 0xD00000000000002CLL;
      v4 = 0x800000010123A8E0;
      v5 = 0x800000010122FB40;
      v6 = 0xD000000000000039;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v6)._countAndFlagsBits;
    }

    v7 = " Home in CarPlay";
    if (qword_101906768 != -1)
    {
      swift_once();
      v7 = " Home in CarPlay";
    }

    v1.super.isa = qword_1019600D8;
    v9 = 0x800000010123A8B0;
    v2 = 0x64656E6E6950;
LABEL_16:
    v4 = v7 | 0x8000000000000000;
    v6 = 0xD00000000000002FLL;
    v3 = 0xD000000000000022;
    v5 = 0xE600000000000000;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v6)._countAndFlagsBits;
  }

  if (a1 != 2)
  {
    v7 = "geoMapItem is nil";
    if (qword_101906768 != -1)
    {
      swift_once();
      v7 = "geoMapItem is nil";
    }

    v1.super.isa = qword_1019600D8;
    v9 = 0x800000010123A7E0;
    v2 = 0x736564697547;
    goto LABEL_16;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v1.super.isa = qword_1019600D8;
  v9 = 0x800000010123A840;
  v2 = 0x73746E65636552;
  v3 = 0xD000000000000023;
  v4 = 0x800000010123A810;
  v6 = 0xD000000000000030;
  v5 = 0xE700000000000000;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v6)._countAndFlagsBits;
}

uint64_t type metadata accessor for CarHomeSection.RowType()
{
  result = qword_101922E88;
  if (!qword_101922E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100496EC0()
{
  result = type metadata accessor for CarPinnedRowViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CarRecentRowViewModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CarSuggestionRowViewModel();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for CarUserGuideRowViewModel();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_100496F78()
{
  result = qword_101922EC0;
  if (!qword_101922EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922EC0);
  }

  return result;
}

uint64_t sub_100496FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarHomeSection.RowType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100497030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarRecentRowViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100497094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      v13[4] = a2;
      v13[5] = a3;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_100039C64;
      v13[3] = a5;
      v12 = _Block_copy(v13);
    }

    else
    {
      v12 = 0;
    }

    [v11 viewController:v5 doShareSheetForShareItem:a1 completion:v12];
    swift_unknownObjectRelease();
    _Block_release(v12);
  }
}

void sub_100497184(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100039C64;
      aBlock[3] = &unk_10161C2A0;
      a2 = _Block_copy(aBlock);
    }

    [v8 viewController:v3 doShareSheetForShareItem:a1 completion:a2];
    swift_unknownObjectRelease();
    _Block_release(a2);
  }
}

void LibraryCellActionHandlingUICoordination<>.presentShareSheet(_:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(a6 + 8))(a4, a6);
  if (v10)
  {
    v11 = v10;
    if (a2)
    {
      v12[4] = a2;
      v12[5] = a3;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_100039C64;
      v12[3] = &unk_10161C0A8;
      a2 = _Block_copy(v12);
    }

    [v11 viewController:v6 doShareSheetForShareItem:a1 completion:a2];
    swift_unknownObjectRelease();
    _Block_release(a2);
  }
}

uint64_t sub_100497388(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10017A750(a2, v22);
    v15 = v23;
    if (v23)
    {
      v16 = sub_10005E838(v22, v23);
      v17 = *(v15 - 8);
      v18 = __chkstk_darwin(v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      sub_10004E3D0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v14 viewController:v6 pickCollectionWithSession:a1 sourceView:v21 sourceRect:{a3, a4, a5, a6}];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100497528(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10017A750(a2, v23);
    v15 = v24;
    if (v24)
    {
      v16 = sub_10005E838(v23, v24);
      v17 = *(v15 - 8);
      v18 = __chkstk_darwin(v16);
      v20 = &v23[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      sub_10004E3D0(v23);
    }

    else
    {
      v21 = 0;
    }

    [v14 viewController:v6 pickCollectionWithSession:a1 sourceView:v21 sourceRect:{a3, a4, a5, a6}];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t LibraryCellActionHandlingUICoordination<>.presentAddToGuideFlow(saveSession:sourceView:sourceRect:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  result = (*(a9 + 8))(a3, a9);
  if (result)
  {
    v17 = result;
    sub_10017A750(a2, v25);
    v18 = v26;
    if (v26)
    {
      v19 = sub_10005E838(v25, v26);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v20 + 8))(v23, v18);
      sub_10004E3D0(v25);
    }

    else
    {
      v24 = 0;
    }

    [v17 viewController:v9 pickCollectionWithSession:a1 sourceView:v24 sourceRect:{a4, a5, a6, a7}];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100497894(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    v15[4] = a4;
    v15[5] = a5;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100498AF8;
    v15[3] = a7;
    v14 = _Block_copy(v15);

    [v13 presentEditNoteViewControllerWithInitialText:a2 libraryAccessProvider:0 placeMUID:a3 completion:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }
}

void sub_1004979A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_unknownObjectRetain();

    if (a2)
    {

      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100498AF8;
    aBlock[3] = &unk_10161C2C8;
    v12 = _Block_copy(aBlock);

    [v10 presentEditNoteViewControllerWithInitialText:v11 libraryAccessProvider:0 placeMUID:a3 completion:v12];
    _Block_release(v12);

    swift_unknownObjectRelease_n();
  }
}

uint64_t LibraryCellActionHandlingUICoordination<>.presentNoteEditor(initialText:placeMUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = (*(a8 + 8))(a6, a8);
  if (result)
  {
    v16 = result;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a1;
    v17[4] = a2;
    v17[5] = a3;
    v17[6] = a4;
    v17[7] = a5;
    v18 = *(a8 + 16);

    swift_unknownObjectRetain();
    v18(sub_100499078, v17, a6, a8);
    swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100497D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  result = (*(a4 + 8))(a2, a4);
  if (result)
  {
    [result *a5];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100497D9C(unsigned __int8 a1, void *a2, void *a3, void *a4)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &ObjectType - v11;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v27 = [objc_opt_self() sharedHelper];
      v92 = [v27 alertControllerForAttemptedAddNote];

      v28 = v4 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (v92)
      {
        if (Strong)
        {
          v26 = *(v28 + 8);
          goto LABEL_18;
        }

LABEL_19:
        v32 = v92;

        return;
      }

      if (Strong)
      {
        v52 = *(v28 + 8);
        v53 = [a4 placeItemNote];
        if (v53)
        {
          v54 = v53;
          v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;
        }

        else
        {
          v92 = 0;
          v56 = 0;
        }

        ObjectType = swift_getObjectType();
        v81 = [a3 _muid];
        v82 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v83 = swift_allocObject();
        *(v83 + 16) = v82;
        *(v83 + 24) = a4;
        v84 = *(v52 + 16);
        swift_unknownObjectRetain();

        v84(v92, v56, v81, sub_100200878, v83, ObjectType, v52);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (a1 == 4)
      {
        v17 = [objc_opt_self() sharedHelper];
        v92 = [v17 alertControllerForAttemptedAddCollection];

        if (!v92)
        {
          v18 = [objc_allocWithZone(CollectionAddOrRemoveSession) initWithMapItem:a3];
          v19 = *(v4 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo);
          v92 = v18;
          [v18 setAnalyticsTarget:v19];
          v20 = v4 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v21 = *(v20 + 8);
            if (a2)
            {
              v22 = sub_1001F4AE8();
              v23 = a2;
            }

            else
            {
              v23 = 0;
              v22 = 0;
              v93[1] = 0;
              v93[2] = 0;
            }

            v93[0] = v23;
            v93[3] = v22;
            v85 = swift_getObjectType();
            y = CGRectNull.origin.y;
            width = CGRectNull.size.width;
            height = CGRectNull.size.height;
            v89 = *(v21 + 32);
            v90 = a2;
            v89(v92, v93, v85, v21, CGRectNull.origin.x, y, width, height);

            swift_unknownObjectRelease();
            sub_1000DB2F4(v93);
            return;
          }

          goto LABEL_19;
        }

        goto LABEL_13;
      }

      v42 = [a3 _muid];
      v43 = v4;
      v44 = *(v4 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo);
      if (v42)
      {
        v93[0] = v42;
        dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      v60 = [objc_opt_self() sharedService];
      if (!v60)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        return;
      }

      v61 = v60;
      if (v46)
      {
        v62 = String._bridgeToObjectiveC()();
      }

      else
      {
        v62 = 0;
      }

      [v61 captureUserAction:477 onTarget:v44 eventValue:v62];

      v68 = v43 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v68 + 8);
        v70 = swift_getObjectType();
        v71 = (*(v69 + 8))(v70, v69);
        swift_unknownObjectRelease();
        sub_10048AC00(a4, v71, 0, 0);
      }
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v13 = [a3 _muid];
        v14 = *(v4 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo);
        if (v13)
        {
          v93[0] = v13;
          dispatch thunk of CustomStringConvertible.description.getter();
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v57 = [objc_opt_self() sharedService];
        if (v57)
        {
          v58 = v57;
          if (v16)
          {
            v59 = String._bridgeToObjectiveC()();
          }

          else
          {
            v59 = 0;
          }

          [v58 captureUserAction:473 onTarget:v14 eventValue:v59];

          type metadata accessor for FavoriteItemWrapper();
          v63 = swift_dynamicCastClass();
          if (v63)
          {
            v64 = *(v63 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
            v65 = type metadata accessor for TaskPriority();
            (*(*(v65 - 8) + 56))(v12, 1, 1, v65);
            v66 = swift_allocObject();
            v66[2] = 0;
            v66[3] = 0;
            v66[4] = v64;
            v67 = v64;
            sub_10020ADD4(0, 0, v12, &unk_1011F0770, v66);
          }

          return;
        }

        __break(1u);
        goto LABEL_63;
      }

      v33 = [objc_allocWithZone(SearchResult) initWithMapItem:a3];
      if (!v33)
      {
        return;
      }

      v92 = v33;
      v34 = [v33 unknownContact];
      if (v34)
      {
        v35 = v34;
        v36 = [objc_opt_self() shareItemWithSearchResult:v92 contact:v34 includePrintActivity:1];
        v37 = v4 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v38 = *(v37 + 8);
          v39 = swift_getObjectType();
          v40 = *(v38 + 24);
          v41 = swift_unknownObjectRetain();
          v40(v41, 0, 0, v39, v38);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease_n();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      goto LABEL_19;
    }

    v24 = [objc_opt_self() sharedHelper];
    v92 = [v24 alertControllerForAttemptedAddShortcut];

    if (v92)
    {
LABEL_13:
      v25 = v4 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = *(v25 + 8);
LABEL_18:
        v30 = swift_getObjectType();
        v31 = (*(v26 + 8))(v30, v26);
        swift_unknownObjectRelease();
        [v31 _maps_topMostPresentViewController:v92 animated:1 completion:0];

        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v47 = [a3 _muid];
    v48 = v4;
    v49 = *(v4 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo);
    if (v47)
    {
      v93[0] = v47;
      dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v72 = [objc_opt_self() sharedService];
    if (!v72)
    {
      goto LABEL_64;
    }

    v73 = v72;
    if (v51)
    {
      v74 = String._bridgeToObjectiveC()();
    }

    else
    {
      v74 = 0;
    }

    [v73 captureUserAction:475 onTarget:v49 eventValue:v74];

    type metadata accessor for CollectionPlaceItem();
    v75 = swift_dynamicCastClass();
    if (v75)
    {
      v76 = v75;
      v77 = *(v48 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_dataOperationsProvider);
      v78 = type metadata accessor for TaskPriority();
      (*(*(v78 - 8) + 56))(v12, 1, 1, v78);
      v79 = swift_allocObject();
      v79[2] = 0;
      v79[3] = 0;
      v79[4] = v76;
      v79[5] = v77;
      swift_unknownObjectRetain();
      v80 = v77;
      sub_10020AAE4(0, 0, v12, &unk_1011F0780, v79);
    }
  }
}

void sub_100498784(unsigned __int8 a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (!Strong)
      {
        return;
      }

      v19 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 48))(a2, ObjectType, v19);
    }

    else
    {
      if (!Strong)
      {
        return;
      }

      v9 = *(v5 + 8);
      v10 = swift_getObjectType();
      (*(v9 + 40))(a2, v10, v9);
    }

    goto LABEL_16;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      if (!Strong)
      {
        return;
      }

      v7 = *(v5 + 8);
      v8 = swift_getObjectType();
      (*(v7 + 56))(a2, v8, v7);
    }

    else
    {
      if (!Strong)
      {
        return;
      }

      v17 = *(v5 + 8);
      v18 = swift_getObjectType();
      (*(v17 + 64))(a2, v18, v17);
    }

LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  if (Strong)
  {
    v11 = *(v5 + 8);
    v12 = swift_getObjectType();
    v13 = (*(v11 + 8))(v12, v11);
    swift_unknownObjectRelease();
    sub_1004919D0(a2, v13, 0, 0);
    v14 = [objc_opt_self() sharedService];
    if (v14)
    {
      v15 = v14;
      [a2 mapItemMuid];
      dispatch thunk of CustomStringConvertible.description.getter();
      v16 = String._bridgeToObjectiveC()();

      [v15 captureUserAction:479 onTarget:137 eventValue:v16];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_100498A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a5];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100498AF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t sub_100498B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;
    v13[5] = a1;
    v13[6] = a2;
    v13[7] = a4;

    swift_unknownObjectRetain();
    sub_10020B0D8(0, 0, v9, &unk_101209F90, v13);
  }

  return result;
}

uint64_t sub_100498CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100498CF0, 0, 0);
}

uint64_t sub_100498CF0()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100498D98;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  return sub_100489CBC(v4, v2, v3);
}

uint64_t sub_100498D98(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100498EE8;
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v5 = sub_100498EC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100498F84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v12[4] = a5;
  v12[5] = a6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100498AF8;
  v12[3] = &unk_10161C2F0;
  v11 = _Block_copy(v12);

  [a1 presentEditNoteViewControllerWithInitialText:v10 libraryAccessProvider:0 placeMUID:a4 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1004990BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC4C;

  return sub_100498CC8(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_1004991CC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a4];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100499338()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 recenterButtonTappedInOverlay:v1];
      swift_unknownObjectRelease();
    }
  }
}

id sub_10049945C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IOSRecenterButtonOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t LibraryViewController.actionDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC4Maps21LibraryViewController_collectionViewManager);
  if (v2)
  {
    *(*(v2 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_configuration) + OBJC_IVAR____TtC4Maps45LibraryHomeCollectionViewManagerConfiguration_cellActionHandlingUICoordinator + 8) = &protocol witness table for LibraryViewController;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void (*LibraryViewController.actionDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC4Maps21LibraryViewController_actionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100499734;
}

void sub_100499734(void **a1, char a2)
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
    v4 = v3[4];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(v4 + OBJC_IVAR____TtC4Maps21LibraryViewController_collectionViewManager);
    if (v5)
    {
      *(*(v5 + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_configuration) + OBJC_IVAR____TtC4Maps45LibraryHomeCollectionViewManagerConfiguration_cellActionHandlingUICoordinator + 8) = &protocol witness table for LibraryViewController;
      swift_unknownObjectWeakAssign();
    }
  }

  free(v3);
}

id sub_1004997FC()
{
  v1 = OBJC_IVAR____TtC4Maps21LibraryViewController____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR____TtC4Maps21LibraryViewController____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC4Maps21LibraryViewController____lazy_storage___collectionView];
  }

  else
  {
    v4 = sub_100499860(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100499860(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(UICollectionViewLayout) init];
    v12 = [objc_allocWithZone(UICollectionView) initWithFrame:v11 collectionViewLayout:{v4, v6, v8, v10}];

    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 clearColor];
    [v14 setBackgroundColor:v15];

    v16 = [v14 layer];
    [v16 setAllowsGroupOpacity:0];

    [v14 _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall LibraryViewController.viewDidLoad()()
{
  v1 = v0;
  v83.receiver = v0;
  v83.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v83, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  v5 = [v1 cardPresentationController];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5;
  [v5 setTakesAvailableHeight:1];

  v7 = [v1 cardPresentationController];
  if (!v7)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  [v7 setPresentedModally:1];

  v9 = [objc_allocWithZone(ContainerHeaderView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  v11 = v9;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setDelegate:v1];
  [v11 setHeaderSize:2];
  [v11 setHairLineAlpha:0.0];
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v84._object = 0x800000010123AC00;
  v12._countAndFlagsBits = 0x736563616C50;
  v13._countAndFlagsBits = 0xD000000000000020;
  v13._object = 0x800000010123ABD0;
  v84._countAndFlagsBits = 0xD000000000000014;
  v12._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, qword_1019600D8, v12, v84);
  v14 = String._bridgeToObjectiveC()();

  [v11 setTitle:v14];

  v15 = [v1 headerView];
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  [v15 addSubview:v11];

  sub_1000CE6B8(&qword_101908400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1011E5C00;
  v18 = [v11 topAnchor];
  v19 = [v1 headerView];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v17 + 32) = v22;
  v23 = [v11 leadingAnchor];
  v24 = [v1 headerView];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v17 + 40) = v27;
  v28 = [v11 trailingAnchor];
  v29 = [v1 headerView];
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v17 + 48) = v32;
  v33 = [v11 bottomAnchor];

  v34 = [v1 headerView];
  if (!v34)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 bottomAnchor];

  v38 = [v33 constraintEqualToAnchor:v37];
  *(v17 + 56) = v38;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];

  v40 = [v1 contentView];
  if (!v40)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v40;
  v42 = sub_1004997FC();
  [v41 addSubview:v42];

  v43 = OBJC_IVAR____TtC4Maps21LibraryViewController____lazy_storage___collectionView;
  [*&v1[OBJC_IVAR____TtC4Maps21LibraryViewController____lazy_storage___collectionView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1011E5C00;
  v45 = [*&v1[v43] topAnchor];
  v46 = [v1 contentView];
  if (!v46)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v47 = v46;
  v48 = [v46 topAnchor];

  v49 = [v45 constraintEqualToAnchor:v48];
  *(v44 + 32) = v49;
  v50 = [*&v1[v43] leadingAnchor];
  v51 = [v1 contentView];
  if (!v51)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v52 = v51;
  v53 = [v51 leadingAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v44 + 40) = v54;
  v55 = [*&v1[v43] trailingAnchor];
  v56 = [v1 contentView];
  if (!v56)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v57 = v56;
  v58 = [v56 trailingAnchor];

  v59 = [v55 constraintEqualToAnchor:v58];
  *(v44 + 48) = v59;
  v60 = [*&v1[v43] bottomAnchor];
  v61 = [v1 contentView];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 bottomAnchor];

    v64 = [v60 constraintEqualToAnchor:v63];
    *(v44 + 56) = v64;
    v65 = Array._bridgeToObjectiveC()().super.isa;

    [v36 activateConstraints:v65];

    v66 = *&v1[v43];
    v67 = type metadata accessor for LibraryHomeCollectionViewManagerConfiguration();
    v68 = objc_allocWithZone(v67);
    *&v68[OBJC_IVAR____TtC4Maps45LibraryHomeCollectionViewManagerConfiguration_cellActionHandlingUICoordinator + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v68[OBJC_IVAR____TtC4Maps45LibraryHomeCollectionViewManagerConfiguration_collectionView] = v66;
    v82.receiver = v68;
    v82.super_class = v67;
    v69 = v66;
    v70 = objc_msgSendSuper2(&v82, "init");
    *&v70[OBJC_IVAR____TtC4Maps45LibraryHomeCollectionViewManagerConfiguration_cellActionHandlingUICoordinator + 8] = &protocol witness table for LibraryViewController;
    swift_unknownObjectWeakAssign();
    v71 = objc_allocWithZone(type metadata accessor for LibraryHomeCollectionViewManager());
    v72 = sub_1004B672C(v70);
    v73 = *&v1[OBJC_IVAR____TtC4Maps21LibraryViewController_collectionViewManager];
    *&v1[OBJC_IVAR____TtC4Maps21LibraryViewController_collectionViewManager] = v72;
    v74 = v72;

    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v76 = &v74[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_tipkitActionHandler];
    v77 = *&v74[OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_tipkitActionHandler];
    *v76 = sub_10049B730;
    v76[1] = v75;

    sub_1000588AC(v77);

    v78 = *&v1[v43];
    v79 = sub_1004B2EE0();
    [v78 setDataSource:v79];

    [*&v1[v43] setDelegate:v1];
    v80 = *&v1[v43];
    v81 = sub_1004B2F88();
    [v80 setCollectionViewLayout:v81];

    [objc_opt_self() captureUserAction:21 target:137 value:0];
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_10049A384(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    GEOConfigSetBOOL();
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 showWarmingSheetViewController:a1];
      swift_unknownObjectRelease();
    }
  }
}

id LibraryViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC4Maps21LibraryViewController____lazy_storage___collectionView] = 0;
  *&v3[OBJC_IVAR____TtC4Maps21LibraryViewController_collectionViewManager] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id LibraryViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps21LibraryViewController____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR____TtC4Maps21LibraryViewController_collectionViewManager] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void LibraryViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v5 = sub_1000CE6B8(&qword_101922F88);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v43 = &v38 - v6;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906710 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100021540(v11, qword_10195FFD0);
  (*(v8 + 16))(v10, a2, v7);
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v41 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v39 = a1;
    v47[0] = v17;
    *v16 = 136315394;
    swift_getObjectType();
    v18 = _typeName(_:qualified:)();
    v20 = sub_10004DEB8(v18, v19, v47);
    v40 = a2;
    v21 = v12;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    sub_10037E6E4();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = sub_10004DEB8(v23, v25, v47);
    v12 = v21;

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s did select item at index path: %s", v16, 0x16u);
    swift_arrayDestroy();
    a1 = v39;

    v5 = v41;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v28 = *&v12[OBJC_IVAR____TtC4Maps21LibraryViewController_collectionViewManager];
  v29 = v43;
  if (v28)
  {
    v30 = v28;
    v31 = sub_1004B2EE0();
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v32 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    v33 = IndexPath.section.getter();
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v33 < *(v32 + 16))
    {
      v34 = *(v32 + v33 + 32);

      LOBYTE(v47[0]) = v34;
      v35 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
      v36 = IndexPath.item.getter();
      if ((v36 & 0x8000000000000000) == 0)
      {
        if (v36 < *(v35 + 16))
        {
          sub_10049B738(v35 + 40 * v36 + 32, v46);

          sub_10005E7BC(v46, v47);
          if (v34 == 1)
          {
            sub_10005EB40(v47, v46);
            sub_1000CE6B8(&unk_101922F98);
            type metadata accessor for LibraryListSavedItemCellModel();
            if (swift_dynamicCast())
            {
              v37 = v44;
              sub_10049AE94(v44);
            }
          }

          else if (!v34)
          {
            sub_10005EB40(v47, v46);
            sub_1000CE6B8(&unk_101922F98);
            if (swift_dynamicCast())
            {
              sub_10049AC9C(v44, v45);
            }

            else
            {
              sub_10005EB40(v47, v46);
              if (swift_dynamicCast())
              {
                sub_10049B2A4(v44, v45);
              }
            }
          }

          sub_10004E3D0(v47);
          (*(v42 + 8))(v29, v5);
          return;
        }

LABEL_24:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }
}

void sub_10049AC9C(uint64_t a1, __int16 a2)
{
  if (HIBYTE(a2) <= 6u)
  {
    if (HIBYTE(a2) == 5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      [Strong viewControllerShowMyShortcuts:v2];
    }

    else
    {
      if (HIBYTE(a2) != 6)
      {
LABEL_17:

        sub_10049B2A4(a1, a2);
        return;
      }

      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (!v3)
      {
        return;
      }

      [v3 viewControllerShowLibraryPlacesView:v2];
    }

LABEL_15:
    swift_unknownObjectRelease();
    return;
  }

  if (HIBYTE(a2) == 7)
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return;
    }

    [v4 viewControllerShowCollections:v2];
    goto LABEL_15;
  }

  if (HIBYTE(a2) == 8)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[4] = sub_10049B7D8;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1004DFD7C;
    v9[3] = &unk_10161C3F0;
    v7 = _Block_copy(v9);

    [v5 fetchSavedRoutesWithType:1 completion:v7];
    _Block_release(v7);
    return;
  }

  if (HIBYTE(a2) != 9)
  {
    goto LABEL_17;
  }
}

void sub_10049AE94(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item);
  v2 = *(a1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 8);
  if (!*(a1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = v3;
    swift_unknownObjectRetain();
    if (Strong)
    {
      v10 = [Strong mapSelectionManager];
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
    }

    swift_getObjectType();
    sub_1004C3BB4(v10);

    v16 = objc_opt_self();
    v17 = [v16 sharedService];
    if (v17)
    {
      v18 = v17;
      v23 = [v9 _muid];
      dispatch thunk of CustomStringConvertible.description.getter();
      v19 = String._bridgeToObjectiveC()();

      [v18 captureUserAction:478 onTarget:137 eventValue:{v19, v23}];

      v20 = [v16 sharedService];
      if (v20)
      {
        v21 = v20;
        [v20 captureUserAction:2007 onTarget:0 eventValue:0];

        swift_unknownObjectRelease();
        return;
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(a1 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 16) != 1)
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    v12 = v3;
    if (v11)
    {
      [v11 viewController:v1 enterRouteCreationWith:v12];
      swift_unknownObjectRelease();
    }

    v13 = [objc_opt_self() sharedService];
    if (v13)
    {
      v14 = v13;
      v22 = [v12 mapItemMuid];
      dispatch thunk of CustomStringConvertible.description.getter();
      v15 = String._bridgeToObjectiveC()();

      [v14 captureUserAction:480 onTarget:137 eventValue:{v15, v22}];

      v5 = v3;
      v6 = v2;
      v7 = 2;
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    [v4 viewController:v1 showCollection:v3];
    swift_unknownObjectRelease();
    v5 = v3;
    v6 = v2;
    v7 = 1;
LABEL_11:
    sub_100200814(v5, v6, v7);
  }
}

void sub_10049B2A4(uint64_t a1, __int16 a2)
{
  if (HIBYTE(a2) == 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    [Strong viewControllerShowVisitHistoryHome:v2];
LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  if (HIBYTE(a2) == 3)
  {
    return;
  }

  if (HIBYTE(a2) != 4)
  {
    if ((a2 & 0x100) != 0)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (!v4)
      {
        return;
      }

      [v4 showWarmingSheetViewController:2];
    }

    else
    {
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (!v5)
      {
        return;
      }

      [v5 showWarmingSheetViewController:1];
    }

    goto LABEL_14;
  }

  v6 = sub_10040E5E4();
  [v2 _maps_topMostPresentViewController:v6 animated:1 completion:0];
}

void sub_10049B3EC(Class isa, Class a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      if (isa)
      {
        sub_100193C2C(isa);
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      if (a2)
      {
        sub_100193C2C(a2);
        a2 = Array._bridgeToObjectiveC()().super.isa;
      }

      [v6 presentRouteLibraryWithAvailableRoutes:isa unavailableRoutes:a2];

      swift_unknownObjectRelease();
    }
  }
}