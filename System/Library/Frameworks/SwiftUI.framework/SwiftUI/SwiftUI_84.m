unint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceAppIntentsPayloads(for:request:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceAppIntentsPayloads(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceNeedsAppIntentsPayloadsFetch(for:request:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UITableViewListCoordinator<A, B>;

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v3;
  v7[1] = protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:) in conformance UITableViewListCoordinator<A, B>;

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for UITableViewListCoordinator<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined destroy of (IndexPath?, IndexPath?)(uint64_t a1)
{
  type metadata accessor for (IndexPath?, IndexPath?)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10Foundation9IndexPathVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding()
{
  result = lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding;
  if (!lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding);
  }

  return result;
}

void specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(__n128), uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v41 = a2;
  v42 = a3;
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = *a4;
  v16 = *(v7 + *a4);
  if (v16)
  {
    v17 = v16;
    if (((UIHostingViewBase.isHiddenForReuse.getter() ^ a1) & 1) == 0)
    {
      UIHostingViewBase.isHiddenForReuse.setter();
    }
  }

  a5(v12);
  v18 = type metadata accessor for UIBackgroundConfiguration();
  if ((*(*(v18 - 8) + 48))(v14, 1, v18))
  {
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  }

  else
  {
    v19 = UIBackgroundConfiguration.customView.getter();
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
    if (v19)
    {
      type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
      if (swift_dynamicCastClass() && (UIHostingViewBase.isHiddenForReuse.getter() & 1) == (a1 & 1))
      {
        UIHostingViewBase.isHiddenForReuse.setter();
      }
    }
  }

  v20 = *(v7 + v15);
  if (v20)
  {
    v21 = v20;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
    ViewGraphGeometryObservers.removeAll()();
    swift_endAccess();
  }

  if (a1)
  {
    v22 = *(v7 + v15);
    if (v22)
    {
      v23 = v22;
      v24 = [v23 superview];
      if (v24)
      {
        v25 = v24;
        v26 = v41;
        if (v41)
        {

          [v25 bounds];
          CGRectGetWidth(v48);
          _ProposedSize.init(width:height:)();
          v27 = v44;
          v28 = v45;
          v38 = v45;
          v29 = v46;
          v36 = v44;
          v37 = v46;
          v30 = v47;
          UIHostingViewBase.viewGraph.getter();

          v44 = v27;
          v45 = v28;
          v46 = v29;
          v47 = v30;
          v31 = swift_allocObject();
          v32 = v42;
          *(v31 + 16) = v26;
          *(v31 + 24) = v32;
          swift_beginAccess();
          type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();

          ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
          swift_endAccess();

          v33 = *(UIHostingViewBase.viewGraph.getter() + 88);

          swift_beginAccess();
          v34 = *(v33 + 352);

          v43 = v34;
          v44 = v36;
          v45 = v38;
          v46 = v37;
          v47 = v30;
          ViewGraphGeometryObservers.resetObserver(for:)();

          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26);
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

id specialized UITableViewListCoordinator.init(dataSource:selection:transaction:editMode:sidebarStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v7 = *v5;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v38 = &v36 - v12;
  v36 = *((v9 & v7) + 0x60);
  v13 = type metadata accessor for ShadowListDataSource();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = *a4;
  v42 = a4[1];
  v43 = v16;
  v44 = *(a4 + 16);
  v37 = *((v9 & v7) + 0x78);
  v17 = v37;
  v18 = type metadata accessor for Binding();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = &v5[*((*v8 & *v5) + 0x80)];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = *((*v8 & *v5) + 0x88);
  *&v5[v20] = 1;
  v21 = &v5[*((*v8 & *v5) + 0x98)];
  *v21 = 0;
  *(v21 + 4) = 256;
  v22 = *((*v8 & *v5) + 0xA0);
  *&v5[v22] = closure #1 in variable initialization expression of UITableViewListCoordinator.helper();
  *&v5[*((*v8 & *v5) + 0xA8)] = 0;
  v5[*((*v8 & *v5) + 0xB0)] = 1;
  v23 = *((*v8 & *v5) + 0xB8);
  v24 = type metadata accessor for IndexPath();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  ListCoreBatchUpdates.init()(&v5[*((*v8 & *v5) + 0xC0)]);
  (*(v11 + 56))(&v5[*((*v8 & *v5) + 0xC8)], 1, 1, v10);
  v5[*((*v8 & *v5) + 0xD0)] = 0;
  v5[*((*v8 & *v5) + 0xD8)] = 0;
  v5[*((*v8 & *v5) + 0xE0)] = 0;
  v5[*((*v8 & *v5) + 0xE8)] = 0;
  *&v5[*((*v8 & *v5) + 0xF0)] = MEMORY[0x1E69E7CD0];
  v5[*((*v8 & *v5) + 0xF8)] = 0;
  v25 = &v5[*((*v8 & *v5) + 0x100)];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[*((*v8 & *v5) + 0x108)];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  v27 = v38;
  (*(v11 + 16))(v38, v41, v10);
  ShadowListDataSource.init(_:)(v27, v10, v15);
  (*(v39 + 32))(&v5[*((*v8 & *v5) + 0x70)], v15, v40);
  v28 = v37;
  swift_beginAccess();
  v29 = type metadata accessor for Optional();
  (*(*(v29 - 8) + 24))(&v5[v28], v45, v29);
  swift_endAccess();
  swift_beginAccess();
  v30 = *&v5[v20];
  v31 = v46;
  *&v5[v20] = v46;
  outlined copy of Transaction?(v31);
  outlined consume of ListItemTint?(v30);
  v32 = *v19;
  v33 = *(v19 + 1);
  v34 = v42;
  *v19 = v43;
  *(v19 + 1) = v34;
  v19[16] = v44;
  outlined consume of Binding<NavigationSplitViewColumn>?(v32, v33);
  v5[*((*v8 & *v5) + 0x90)] = v48;
  v49.receiver = v5;
  v49.super_class = ObjectType;
  return objc_msgSendSuper2(&v49, sel_init);
}

id specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF0);
  swift_beginAccess();
  v4 = *(*(v1 + v3) + 16);
  result = [a1 dragInteractionEnabled];
  if ((v4 != 0) != result)
  {
    return [a1 setDragInteractionEnabled_];
  }

  return result;
}

void specialized UITableViewListCoordinator.updateHeaderFooter(_:section:position:in:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x90));
  v11 = a1 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration;
  swift_beginAccess();
  *(v11 + 1) = v10;
  v12 = OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host;
  v13 = *(a1 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host);
  if (v13)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
    v14 = v13;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  *(v11 + 8) = [a3 style];
  v15 = *(a1 + v12);
  if (v15)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
    v16 = v15;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  swift_beginAccess();
  *v11 = a2 & 1;
  if (a2)
  {
    static UIListContentConfiguration.footer()();
  }

  else
  {
    static UIListContentConfiguration.header()();
  }

  specialized HeaderFooterConfiguration.Values.init(_:)(v9, v23);
  v17 = v23[1];
  *(v11 + 24) = v23[0];
  *(v11 + 40) = v17;
  *(v11 + 56) = v23[2];

  swift_endAccess();
  v18 = *(a1 + v12);
  if (v18)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
    v19 = v18;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  *(v11 + 17) = UITableView.isPseudoInsetGrouped.getter();
  v20 = *(a1 + v12);
  if (v20)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
    v21 = v20;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

uint64_t specialized UITableViewListCoordinator.numberOfSections(in:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = type metadata accessor for ShadowSectionCollection();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ShadowListDataSource();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *((v2 & v1) + 0x70);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v0[v11], v7);
  ShadowListDataSource.sectionIDs.getter(v6);
  (*(v8 + 8))(v10, v7);
  v12 = specialized ViewLeafView.platformView.getter(v3);
  (*(v4 + 8))(v6, v3);
  return v12;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:numberOfRowsInSection:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for ShadowListDataSource();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ShadowRowCollection();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = *((v4 & v3) + 0x70);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v13], v5);
  WitnessTable = swift_getWitnessTable();
  ListDiffable.rowIDs(forSectionAtOffset:)(a1, v5, WitnessTable);
  (*(v6 + 8))(v8, v5);
  v15 = ShadowRowCollection.count.getter(v9);
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:canEditRowAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v38 = *MEMORY[0x1E69E7D40] & *v2;
  v7 = *((v6 & v4) + 0x50);
  v8 = *((v6 & v4) + 0x60);
  v9 = type metadata accessor for ShadowRowCollection();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - v10;
  v11 = type metadata accessor for ShadowSectionCollection();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v36 = v7;
  v37 = v8;
  v15 = type metadata accessor for ShadowListDataSource();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v42 = a1;
  v19 = IndexPath.section.getter();
  v20 = *((*v5 & *v2) + 0x70);
  swift_beginAccess();
  v43 = *(v16 + 16);
  v44 = v20;
  v43(v18, v2 + v20, v15);
  ShadowListDataSource.sectionIDs.getter(v14);
  v45 = *(v16 + 8);
  v45(v18, v15);
  v21 = specialized ViewLeafView.platformView.getter(v11);
  (*(v12 + 8))(v14, v11);
  if (v19 >= v21 || (v22 = v42, v23 = IndexPath.row.getter(), v43(v18, v2 + v44, v15), v24 = IndexPath.section.getter(), v25 = swift_getWitnessTable(), v26 = v39, ListDiffable.rowIDs(forSectionAtOffset:)(v24, v15, v25), v45(v18, v15), v27 = v41, v28 = ShadowRowCollection.count.getter(v41), (*(v40 + 8))(v26, v27), v23 >= v28))
  {
    v34 = 0;
  }

  else
  {
    v29 = (v43)(v18, v2 + v44, v15);
    MEMORY[0x1EEE9AC00](v29);
    v30 = v38;
    v31 = *(v38 + 88);
    *(&v36 - 4) = v36;
    *(&v36 - 3) = v31;
    v32 = *(v30 + 104);
    *(&v36 - 2) = v37;
    *(&v36 - 1) = v32;
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.visitContent<A>(atRow:visitor:)(v22, partial apply for closure #1 in UITableViewListCoordinator.tableView(_:canEditRowAt:), (&v36 - 6), v15, MEMORY[0x1E69E6370], WitnessTable, &v46);
    v45(v18, v15);
    v34 = v46;
  }

  return v34 & 1;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:editingStyleForRowAt:)(uint64_t a1)
{
  v21 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v5 = v4 + 11;
  v6 = v4 + 13;
  v7 = v4[10];
  v8 = v4[12];
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *((v3 & v2) + 0x70);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v1[v13], v9);
  *&v14 = v7;
  *(&v14 + 1) = *v5;
  *&v15 = v8;
  *(&v15 + 1) = *v6;
  v23 = v14;
  v24 = v15;
  type metadata accessor for UITableViewCellEditingStyle(0);
  v17 = v16;
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(v21, partial apply for closure #1 in UITableViewListCoordinator.tableView(_:editingStyleForRowAt:), v22, v9, v17, WitnessTable, &v25);
  (*(v10 + 8))(v12, v9);
  if (v26)
  {
    return 0;
  }

  else
  {
    return v25;
  }
}

uint64_t specialized UITableViewListCoordinator.tableView(_:canMoveRowAt:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for ShadowListDataSource();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *((v4 & v3) + 0x70);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(a1) = ListCoreDataSource.canMoveCell(forRowAt:)(a1, v5, WitnessTable);
  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:moveRowAt:to:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = type metadata accessor for ShadowListDataSource();
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.moveCell(fromRowAt:to:)(a1, a2, v4, WitnessTable);
  swift_endAccess();
  return UITableViewListCoordinator.commitUpdates()();
}

void *specialized UITableViewListCoordinator.tableView(_:willBeginEditingRowAt:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8)) = 1;
  result = UITableViewListCoordinator.resolvedEditMode.getter(&v6);
  if (v6 != 2)
  {
    v3 = (v0 + *((*v1 & *v0) + 0x80));
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;

      dispatch thunk of AnyLocation.set(_:transaction:)();
      return outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
    }
  }

  return result;
}

void *specialized UITableViewListCoordinator.tableView(_:didEndEditingRowAt:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8)) = 0;
  result = UITableViewListCoordinator.resolvedEditMode.getter(&v6);
  if (v6)
  {
    v3 = (v0 + *((*v1 & *v0) + 0x80));
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;

      dispatch thunk of AnyLocation.set(_:transaction:)();
      return outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
    }
  }

  return result;
}

uint64_t specialized UITableViewListCoordinator.updateSizeThatFitsObserver(tableView:observedParent:viewGraph:)(void *a1)
{
  [a1 bounds];
  CGRectGetWidth(v5);
  _ProposedSize.init(width:height:)();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
  ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
  swift_endAccess();

  ViewGraphGeometryObservers.resetObserver(for:)();
}

void specialized UITableViewListCoordinator.tableView(_:willDisplayHeaderView:forSection:)(void *a1, void *a2)
{
  type metadata accessor for ListTableViewHeaderFooter();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v8 = a2;
    specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(1, 0, 0, &OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host, MEMORY[0x1E69DC3A0], &unk_1EFFB24D0, thunk for @escaping @callee_guaranteed (@unowned CGSize, @unowned CGSize) -> ()partial apply);
    v6 = *(v5 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host);
    if (v6)
    {
      v7 = v6;
      UIHostingViewBase.viewGraph.getter();

      specialized UITableViewListCoordinator.updateSizeThatFitsObserver(tableView:observedParent:viewGraph:)(a1);
    }
  }
}

uint64_t specialized UITableViewListCoordinator.tableView(_:selectionFollowsFocusForRowAt:)(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForRowAtIndexPath_];

  if (v3)
  {
    type metadata accessor for ListTableViewCell();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {

      v9 = 0;
      return v9 & 1;
    }

    v18 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior);
    v6 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 32);
    v5 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 48);
    v7 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 16);
    v22 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 64);
    v20 = v6;
    v21 = v5;
    v19 = v7;
    _s10Foundation9IndexPathVSgWOcTm_0(&v18, &v11, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);

    v8 = v18;
    if (*(&v18 + 1) != 1)
    {
      v11 = v18;
      *v12 = *(&v18 + 1);
      *&v12[3] = DWORD1(v18);
      v13 = *(&v18 + 1);
      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = v22;
      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v11, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
      v9 = v8 ^ 1;
      return v9 & 1;
    }

    v11 = v18;
    *v12 = *(&v18 + 1);
    *&v12[3] = DWORD1(v18);
    v13 = 1;
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v11, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
  }

  v9 = 0;
  return v9 & 1;
}

double specialized UITableViewListCoordinator.tableView(_:heightForHeaderInSection:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ShadowListDataSource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &WitnessTable - v8;
  v10 = *((v5 & v4) + 0x70);
  swift_beginAccess();
  v11 = *(v7 + 16);
  v11(v9, &v2[v10], v6);
  v12 = a1;
  WitnessTable = swift_getWitnessTable();
  LOBYTE(a1) = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(a1, v6, WitnessTable);
  v13 = *(v7 + 8);
  v13(v9, v6);
  v14 = 6.0;
  if ((a1 & 1) == 0)
  {
    v15 = v12;
    v16 = v12 < 1;
    v17 = v12 - 1;
    if (v16)
    {
      return *MEMORY[0x1E69DE3D0];
    }

    v11(v9, &v2[v10], v6);
    swift_getWitnessTable();
    v18 = ListDiffable.hasHeader(forSectionAtOffset:)(v15);
    v13(v9, v6);
    if (v18)
    {
      return *MEMORY[0x1E69DE3D0];
    }

    v11(v9, &v2[v10], v6);
    v19 = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v17, v6, WitnessTable);
    v13(v9, v6);
    if ((v19 & 1) == 0)
    {
      return *MEMORY[0x1E69DE3D0];
    }
  }

  return v14;
}

double specialized UITableViewListCoordinator.tableView(_:estimatedHeightForHeaderInSection:)(Swift::Int a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ShadowListDataSource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = *((v5 & v4) + 0x70);
  swift_beginAccess();
  v11 = *(v7 + 16);
  v11(v9, &v2[v10], v6);
  swift_getWitnessTable();
  v18 = a1;
  LOBYTE(v5) = ListDiffable.hasHeader(forSectionAtOffset:)(a1);
  v12 = *(v7 + 8);
  v12(v9, v6);
  if (v5)
  {
    return 28.0;
  }

  v11(v9, &v2[v10], v6);
  WitnessTable = swift_getWitnessTable();
  v14 = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v18, v6, WitnessTable);
  v12(v9, v6);
  if (v14)
  {
    return 28.0;
  }

  result = 0.0;
  v16 = v18 - 1;
  if (v18 >= 1)
  {
    (v11)(v9, &v2[v10], v6, 0.0);
    v17 = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v16, v6, WitnessTable);
    v12(v9, v6);
    result = 0.0;
    if (v17)
    {
      return 28.0;
    }
  }

  return result;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:heightForFooterInSection:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ShadowSectionCollection();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = *((v5 & v4) + 0x70);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v14(v12, &v1[v13], v9);
  WitnessTable = swift_getWitnessTable();
  v26 = a1;
  v15 = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(a1, v9, WitnessTable);
  v16 = *(v10 + 8);
  result = v16(v12, v9);
  if ((v15 & 1) == 0)
  {
    v24 = v14;
    v14(v12, &v2[v13], v9);
    ShadowListDataSource.sectionIDs.getter(v8);
    v18 = v16;
    v16(v12, v9);
    v19 = v28;
    v20 = specialized ViewLeafView.platformView.getter(v28);
    result = (*(v27 + 8))(v8, v19);
    if (__OFSUB__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      v21 = v26;
      v22 = v24;
      if (v20 - 1 > v26)
      {
        v24(v12, &v2[v13], v9);
        swift_getWitnessTable();
        v23 = ListDiffable.hasFooter(forSectionAtOffset:)(v21);
        result = v18(v12, v9);
        if (!v23)
        {
          v22(v12, &v2[v13], v9);
          ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v21 + 1, v9, WitnessTable);
          return v18(v12, v9);
        }
      }
    }
  }

  return result;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:estimatedHeightForFooterInSection:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ShadowSectionCollection();
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v26 - v8;
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *((v5 & v4) + 0x70);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v14(v12, &v2[v13], v9);
  swift_getWitnessTable();
  v15 = a1;
  v16 = a1;
  v17 = v14;
  LOBYTE(v14) = ListDiffable.hasFooter(forSectionAtOffset:)(v16);
  v18 = *(v10 + 8);
  result = v18(v12, v9);
  if ((v14 & 1) == 0)
  {
    v17(v12, &v2[v13], v9);
    WitnessTable = swift_getWitnessTable();
    v20 = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v15, v9, WitnessTable);
    result = v18(v12, v9);
    if ((v20 & 1) == 0)
    {
      v27 = v17;
      v28 = v15;
      v17(v12, &v2[v13], v9);
      v21 = v30;
      ShadowListDataSource.sectionIDs.getter(v30);
      v18(v12, v9);
      v22 = v31;
      v23 = specialized ViewLeafView.platformView.getter(v31);
      result = (*(v32 + 8))(v21, v22);
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        __break(1u);
      }

      else
      {
        v25 = v28;
        if (v24 > v28)
        {
          v27(v12, &v2[v13], v9, 0.0);
          ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v25 + 1, v9, WitnessTable);
          return v18(v12, v9);
        }
      }
    }
  }

  return result;
}

BOOL specialized UITableViewListCoordinator.tableView(_:shouldBeginMultipleSelectionInteractionAt:)(uint64_t a1)
{
  v19 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v18 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = type metadata accessor for ShadowListDataSource();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  if (!*&v1[*((v3 & v2) + 0x80) + 8])
  {
    return 0;
  }

  v13 = *(v18 + 112);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.selectionValue(forRowAt:)(v19, v4, WitnessTable, v12);
  (*(v5 + 8))(v7, v4);
  v15 = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) != 1;
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:didBeginMultipleSelectionInteractionAt:)()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;

    dispatch thunk of AnyLocation.set(_:transaction:)();
    return outlined consume of Binding<NavigationSplitViewColumn>?(v3, v2);
  }

  return result;
}

unint64_t specialized UITableViewListCoordinator.tableView(_:contextMenuConfigurationForRowAt:point:)(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForRowAtIndexPath_];

  if (v3)
  {
    type metadata accessor for ListTableViewCell();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
    v6 = v5;

    if (v5)
    {
      v3 = *(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x188));

      v7 = ContextMenuBridge.outermostConfiguration()();
LABEL_7:

      return v7;
    }
  }

  return 0;
}

uint64_t _s7SwiftUI12SwipeActionsO5ValueVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  return result;
}

unint64_t type metadata accessor for UISwipeActionsConfiguration()
{
  result = lazy cache variable for type metadata for UISwipeActionsConfiguration;
  if (!lazy cache variable for type metadata for UISwipeActionsConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISwipeActionsConfiguration);
  }

  return result;
}

uint64_t partial apply for closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(v6, v7, v8, v1, v2, v3, v4);
}

void partial apply for closure #1 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(v3, v0 + v2, v4);
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id partial apply for closure #1 in UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 48);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)(v4, v0 + v2, v5, v6);
}

void partial apply for closure #1 in UITableViewListCoordinator.tableView(_:commit:forRowAt:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in UITableViewListCoordinator.tableView(_:commit:forRowAt:)(v3, v0 + v2, v4);
}

void type metadata accessor for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void partial apply for closure #3 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)()
{
  v1 = *(v0 + 16);
  [v1 layoutIfNeeded];
  UITableViewListCoordinator.updateListContents(_:)(v1);
}

uint64_t partial apply for closure #2 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #2 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(*(v0 + 48), v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined init with take of (source: IndexPath, destination: IndexPath)?(uint64_t a1, uint64_t a2)
{
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier>();
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier>);
    }
  }
}

uint64_t one-time initialization function for default()
{
  type metadata accessor for StyleBox<SystemSegmentedControlStyle>();
  result = swift_allocObject();
  static AnySegmentedControlStyle.default = result;
  return result;
}

uint64_t closure #1 in SystemSegmentedControlStyle.Body.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SystemSegmentItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v22 = a2;
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v23;
    v12 = *(type metadata accessor for PlatformItemList.Item() - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      outlined init with copy of SystemSegmentItem(v13, v9, type metadata accessor for PlatformItemList.Item);
      v23 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
        v11 = v23;
      }

      *(v11 + 16) = v16 + 1;
      outlined init with take of SystemSegmentItem(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v13 += v14;
      --v10;
    }

    while (v10);
    a2 = v22;
  }

  v17 = *(a2 + 64);
  v18 = *(a2 + 72);
  v19 = *(a2 + 80);
  v20 = *(a2 + 88);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v20;
}

uint64_t closure #1 in closure #2 in SystemSegmentedControlStyle.Body.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v7 = *(a1 + 96);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  ViewTraitCollection.value<A>(for:defaultValue:)();

  v4 = swift_allocObject();
  *(v4 + 16) = (v6 & 1) == 0;
  *(v4 + 24) = v7;
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  result = outlined init with copy of Subview(a1, a2);
  *(a2 + 104) = partial apply for closure #1 in closure #1 in closure #2 in SystemSegmentedControlStyle.Body.body.getter;
  *(a2 + 112) = v4;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in SystemSegmentedControlStyle.Body.body.getter(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *result;
  v7 = *(*result + 16);
  if (v7)
  {
    LOBYTE(v12) = a2;
    v17 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    v13 = 0;
    v14 = (v12 & 1) == 0;
    do
    {
      if (v13 >= v6[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v15 = *(type metadata accessor for PlatformItemList.Item() - 8);
      v16 = v6 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13;
      *(v16 + 56) = v14;
      v12 = *(v16 + 488);
      *(v16 + 480) = a3;
      *(v16 + 488) = a4;
      *(v16 + 496) = a5;
      *(v16 + 504) = a6;

      ++v13;
    }

    while (v7 != v13);
    *v17 = v6;
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance SystemSegmentedControlStyle.Body@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  outlined init with copy of SystemSegmentedControlStyle.Body(v1, v9);
  v3 = swift_allocObject();
  v4 = v9[5];
  *(v3 + 80) = v9[4];
  *(v3 + 96) = v4;
  *(v3 + 112) = v9[6];
  *(v3 + 128) = v10;
  v5 = v9[1];
  *(v3 + 16) = v9[0];
  *(v3 + 32) = v5;
  v6 = v9[3];
  *(v3 + 48) = v9[2];
  *(v3 + 64) = v6;
  *a1 = partial apply for closure #1 in SystemSegmentedControlStyle.Body.body.getter;
  a1[1] = v3;

  a1[2] = static Alignment.center.getter();
  a1[3] = v7;
  outlined init with copy of SubviewsCollection(v1, v9);
  type metadata accessor for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>();
  lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
  lazy protocol witness table accessor for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Subview and conformance Subview();
  ForEach<>.init(_:content:)();

  a1[17] = closure #1 in View.forcePlatformItem();
  a1[18] = 0;
  return result;
}

id SystemSegmentedControl.makeUIView(context:)(uint64_t a1)
{
  v3 = type metadata accessor for SystemSegmentItem();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  v8 = *(v1 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v35 = v7;
    v70 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v70;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    while (1)
    {
      outlined init with copy of SystemSegmentItem(v11, v6, type metadata accessor for SystemSegmentItem);
      v13 = *v6;
      if (*v6)
      {
        *(&v69 + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
        *&v68 = v13;
        v14 = v13;
        outlined destroy of SystemSegmentItem(v6);
        outlined init with take of Any(&v68, &v36);
      }

      else
      {
        v15 = *(v6 + 13);
        v16 = *(v6 + 11);
        v57 = *(v6 + 12);
        v58 = v15;
        v17 = *(v6 + 13);
        v59[0] = *(v6 + 14);
        *(v59 + 11) = *(v6 + 235);
        v18 = *(v6 + 9);
        v19 = *(v6 + 7);
        v53 = *(v6 + 8);
        v54 = v18;
        v20 = *(v6 + 9);
        v21 = *(v6 + 11);
        v55 = *(v6 + 10);
        v56 = v21;
        v22 = *(v6 + 5);
        v50[0] = *(v6 + 4);
        v50[1] = v22;
        v23 = *(v6 + 7);
        v25 = *(v6 + 4);
        v24 = *(v6 + 5);
        v51 = *(v6 + 6);
        v52 = v23;
        v65[3] = v57;
        v66 = v17;
        v67[0] = *(v6 + 14);
        *(v67 + 11) = *(v6 + 235);
        v64 = v53;
        v65[0] = v20;
        v65[1] = v55;
        v65[2] = v16;
        v60 = v25;
        v61 = v24;
        v68 = 0u;
        v69 = 0u;
        v62 = v51;
        v63 = v19;
        if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v60) != 1)
        {
          if (v66)
          {
            swift_unknownObjectRetain();
            objc_opt_self();
            v28 = swift_dynamicCastObjCClassUnconditional();
LABEL_15:
            *(&v45 + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
            *&v44 = v28;
            outlined destroy of SystemSegmentItem(v6);
            outlined init with take of Any(&v44, &v36);
            if (!*(&v69 + 1))
            {
              goto LABEL_8;
            }

LABEL_7:
            outlined destroy of AnyAccessibilityValue?(&v68, &lazy cache variable for type metadata for Any?);
            goto LABEL_8;
          }

          v42 = v64;
          v43[0] = v65[0];
          *(v43 + 12) = *(v65 + 12);
          v38 = v60;
          v39 = v61;
          v40 = v62;
          v41 = v63;
          v29 = *(v6 + 6);
          outlined init with copy of Image.Resolved?(v50, &v36);
          outlined init with copy of GraphicsImage(&v60, &v36);
          v28 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v29);
          outlined destroy of AnyAccessibilityValue?(v50, &lazy cache variable for type metadata for Image.Resolved?);
          v48 = v42;
          v49[0] = v43[0];
          *(v49 + 12) = *(v43 + 12);
          v44 = v38;
          v45 = v39;
          v46 = v40;
          v47 = v41;
          outlined destroy of GraphicsImage(&v44);
          if (v28)
          {
            goto LABEL_15;
          }
        }

        v37 = MEMORY[0x1E69E6158];
        *&v36 = 0;
        *(&v36 + 1) = 0xE000000000000000;
        outlined destroy of SystemSegmentItem(v6);
        if (*(&v69 + 1))
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      v70 = v10;
      v27 = *(v10 + 16);
      v26 = *(v10 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v10 = v70;
      }

      *(v10 + 16) = v27 + 1;
      outlined init with take of Any(&v36, (v10 + 32 * v27 + 32));
      v11 += v12;
      if (!--v9)
      {
        v7 = v35;
        break;
      }
    }
  }

  v30 = objc_allocWithZone(type metadata accessor for SystemSegmentedControl.UISegmentedControl());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v30 initWithItems_];

  [v32 addTarget:v7 action:sel_selectionChanged_ forControlEvents:4096];
  return v32;
}

id SystemSegmentedControl.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v21 = *(a2 + 32);
  v4 = *(a2 + 5);
  v15 = *v2;
  v14 = *(v2 + 8);
  v5 = v2[2];
  v6 = v2[3];
  v17 = v2[5];
  v18 = v2[4];
  v16 = *(v2 + 48);
  v7 = (v4 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration);
  v26 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration + 16);
  v28 = v5;
  v13 = OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_itemChanges;
  swift_beginAccess();
  type metadata accessor for CollectionChanges<Int, Int>();
  type metadata accessor for [SystemSegmentItem]();
  lazy protocol witness table accessor for type [SystemSegmentItem] and conformance [A](&lazy protocol witness table cache variable for type [SystemSegmentItem] and conformance [A], type metadata accessor for [SystemSegmentItem]);
  lazy protocol witness table accessor for type [SystemSegmentItem] and conformance [A](&lazy protocol witness table cache variable for type SystemSegmentItem and conformance SystemSegmentItem, type metadata accessor for SystemSegmentItem);
  v19 = a2[1];
  v22 = *a2;
  CollectionChanges.formChanges<A, B>(from:to:)();
  swift_endAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  v12 = v7[2];
  *v7 = v15;
  *(v7 + 8) = v14;
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v18;
  v7[5] = v17;
  *(v7 + 48) = v16;
  outlined copy of Environment<Bool>.Content(v15, v14);

  outlined consume of Environment<Bool>.Content(v8, v9);

  *&v23 = *(v4 + v13);

  SegmentedControlCoordinator.apply(_:to:in:)(&v23, a1);

  *&v23 = v6;
  *(&v23 + 1) = v18;
  *&v24 = v17;
  BYTE8(v24) = v16;
  type metadata accessor for Binding<Int?>();
  MEMORY[0x18D00ACC0](&v26);
  if (v27)
  {
    v10 = -1;
  }

  else
  {
    v10 = v26;
  }

  [a1 setSelectedSegmentIndex_];
  v24 = v19;
  v23 = v22;
  v25 = v21;
  RepresentableContextValues.environment.getter();
  if (v27)
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return [a1 setSpringLoaded_];
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance SystemSegmentedControl@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 48);
  v10 = type metadata accessor for SegmentedControlCoordinator();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration];
  *v12 = v3;
  v12[8] = v4;
  *(v12 + 2) = v5;
  *(v12 + 3) = v6;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  v12[48] = v9;
  *&v11[OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_itemChanges] = MEMORY[0x1E69E7CC0];
  outlined copy of Environment<Bool>.Content(v3, v4);
  v14.receiver = v11;
  v14.super_class = v10;

  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

uint64_t SegmentedControlCoordinator.apply(_:to:in:)(uint64_t *a1, void *a2)
{
  v5 = type metadata accessor for SystemSegmentItem();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v105 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v105 - v12;
  v13 = *a1;
  v115 = *(v2 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration + 16);

  v14 = Transaction.animation.getter();
  if (v14)
  {
  }

  v118 = v8;
  v15 = *(v13 + 16);
  v114 = v6;
  if (v15)
  {
    v16 = v13 + 32;

    while (v15 <= *(v13 + 16))
    {
      v17 = v13;
      --v15;
      v18 = (v16 + 40 * v15);
      v13 = *v18;
      v19 = v18[1];
      if (*(v18 + 32))
      {
        v20 = 1;
      }

      else
      {
        v20 = v19 == v13;
      }

      if (!v20)
      {
        while (v13 < v19)
        {
          [a2 removeSegmentAtIndex:--v19 animated:v14 != 0];
          if (v13 == v19)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
        break;
      }

LABEL_5:
      v13 = v17;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

LABEL_17:

  v21 = *(v13 + 16);

  v23 = v117;
  v24 = v118;
  v107 = v21;
  if (!v21)
  {
LABEL_95:
  }

  v25 = 0;
  v106 = v13 + 32;
  v109 = v13;
  while (1)
  {
    if (v25 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_97;
    }

    v108 = v25;
    v26 = v106 + 40 * v25;
    if (!*(v26 + 32))
    {
      goto LABEL_19;
    }

    if (*(v26 + 32) != 1)
    {
      break;
    }

    v27 = *v26;
    v28 = *(v26 + 8);
    if (*v26 != v28)
    {
      if (v28 >= v27)
      {
        if (v27 < v28)
        {
          if ((v27 & 0x8000000000000000) == 0)
          {
            v29 = *(v115 + 16);
            if (v27 < v29 && v28 - 1 < v29)
            {
              v31 = (*(v114 + 80) + 32) & ~*(v114 + 80);
              v32 = *(v114 + 72);
              v111 = v28;
              v112 = v32;
              v33 = v115 + v31 + v27 * v32;
              while (1)
              {
                outlined init with copy of SystemSegmentItem(v33, v23, type metadata accessor for SystemSegmentItem);
                v34 = *v23;
                if (*v23)
                {
                  v113 = v33;
                  v35 = v34;
                  outlined destroy of SystemSegmentItem(v23);
                  v36 = [v35 string];
                  if (!v36)
                  {
                    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v36 = MEMORY[0x18D00C850](v37);
                    v28 = v111;
                  }

                  [a2 insertSegmentWithTitle:v36 atIndex:v27 animated:v14 != 0];

                  v33 = v113;
                  v24 = v118;
                  goto LABEL_45;
                }

                v38 = *(v23 + 208);
                v39 = *(v23 + 176);
                v140 = *(v23 + 192);
                v141 = v38;
                v40 = *(v23 + 208);
                v142[0] = *(v23 + 224);
                *(v142 + 11) = *(v23 + 235);
                v41 = *(v23 + 144);
                v42 = *(v23 + 112);
                v136 = *(v23 + 128);
                v137 = v41;
                v43 = *(v23 + 144);
                v44 = *(v23 + 176);
                v138 = *(v23 + 160);
                v139 = v44;
                v45 = *(v23 + 80);
                v132 = *(v23 + 64);
                v133 = v45;
                v46 = *(v23 + 112);
                v48 = *(v23 + 64);
                v47 = *(v23 + 80);
                v134 = *(v23 + 96);
                v135 = v46;
                v150 = v140;
                v151 = v40;
                v152[0] = *(v23 + 224);
                *(v152 + 11) = *(v23 + 235);
                v147 = v136;
                v148[0] = v43;
                v148[1] = v138;
                v149 = v39;
                v143 = v48;
                v144 = v47;
                v145 = v134;
                v146 = v42;
                if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v143) != 1)
                {
                  v113 = v33;
                  if (v151)
                  {
                    swift_unknownObjectRetain();
                    objc_opt_self();
                    v49 = swift_dynamicCastObjCClassUnconditional();
LABEL_44:
                    outlined destroy of SystemSegmentItem(v23);
                    [a2 insertSegmentWithImage:v49 atIndex:v27 animated:v14 != 0];

                    v33 = v113;
                    goto LABEL_45;
                  }

                  v124 = v147;
                  v125[0] = v148[0];
                  *(v125 + 12) = *(v148 + 12);
                  v120 = v143;
                  v121 = v144;
                  v122 = v145;
                  v123 = v146;
                  v50 = *(v23 + 48);
                  outlined init with copy of Image.Resolved?(&v132, v119);
                  outlined init with copy of GraphicsImage(&v143, v119);
                  v49 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v50);
                  outlined destroy of AnyAccessibilityValue?(&v132, &lazy cache variable for type metadata for Image.Resolved?);
                  v130 = v124;
                  v131[0] = v125[0];
                  *(v131 + 12) = *(v125 + 12);
                  v126 = v120;
                  v127 = v121;
                  v128 = v122;
                  v129 = v123;
                  outlined destroy of GraphicsImage(&v126);
                  if (v49)
                  {
                    v28 = v111;
                    goto LABEL_44;
                  }

                  v28 = v111;
                  v33 = v113;
                }

                outlined destroy of SystemSegmentItem(v23);
                [a2 insertSegmentWithImage:0 atIndex:v27 animated:v14 != 0];
LABEL_45:
                if ([a2 _accessibilitySegmentItemAtIndex_])
                {
                  _bridgeAnyObjectToAny(_:)();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v132 = 0u;
                  v133 = 0u;
                }

                v143 = v132;
                v144 = v133;
                if (*(&v133 + 1))
                {
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
                  result = swift_dynamicCast();
                  if (result)
                  {
                    v51 = v119[0];
                    v52 = v116;
                    outlined init with copy of SystemSegmentItem(v33, v116, type metadata accessor for SystemSegmentItem);
                    outlined destroy of SystemSegmentItem(v52);
                    isa = Bool._bridgeToObjectiveC()().super.super.isa;
                    v54 = MEMORY[0x18D00C850](0x64656C62616E65, 0xE700000000000000);
                    [v51 setValue:isa forKey:v54];

                    v28 = v111;
                    outlined init with copy of SystemSegmentItem(v33, v52, type metadata accessor for SystemSegmentItem);
                    v55 = v51;
                    v24 = v118;
                    v56 = v55;
                    specialized SegmentedControlCoordinator.applyAccessibility(_:item:)(v55);

                    v57 = v52;
                    v13 = v109;
                    v23 = v117;
                    result = outlined destroy of SystemSegmentItem(v57);
                  }
                }

                else
                {
                  result = outlined destroy of AnyAccessibilityValue?(&v143, &lazy cache variable for type metadata for Any?);
                }

                ++v27;
                v33 += v112;
                if (v28 == v27)
                {
                  goto LABEL_19;
                }
              }
            }

            goto LABEL_104;
          }

          goto LABEL_101;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_19:
    v25 = v108 + 1;
    if (v108 + 1 == v107)
    {
      goto LABEL_95;
    }
  }

  v59 = *(v26 + 16);
  v58 = *(v26 + 24);
  if (v59 == v58)
  {
    goto LABEL_19;
  }

  if (v58 < v59)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v59 >= v58)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if ((v59 & 0x8000000000000000) == 0)
  {
    v60 = *(v115 + 16);
    if (v59 >= v60 || v58 - 1 >= v60)
    {
      goto LABEL_103;
    }

    v62 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v110 = *(v114 + 72);
    v111 = v58;
    v63 = v115 + v62 + v59 * v110;
    while (2)
    {
      outlined init with copy of SystemSegmentItem(v63, v24, type metadata accessor for SystemSegmentItem);
      v64 = *v24;
      if (*v24)
      {
        v113 = v63;
        v65 = v64;
        outlined destroy of SystemSegmentItem(v24);
        v66 = [a2 titleForSegmentAtIndex_];
        v67 = v59;
        if (v66)
        {
          v68 = v66;
          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;
        }

        else
        {
          v69 = 0;
          v71 = 0;
        }

        v112 = v65;
        v83 = [v65 string];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        if (v71)
        {
          v59 = v67;
          if (v69 == v84 && v71 == v86)
          {

            v23 = v117;
            v24 = v118;
            v63 = v113;
            goto LABEL_88;
          }

          v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v23 = v117;
          v24 = v118;
          if (v87)
          {

            v63 = v113;
            goto LABEL_88;
          }
        }

        else
        {

          v59 = v67;
          v23 = v117;
          v24 = v118;
        }

        v88 = v112;
        v89 = [v112 string];
        v63 = v113;
        if (!v89)
        {
          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = MEMORY[0x18D00C850](v90);
          v88 = v112;
        }

        [a2 setTitle:v89 forSegmentAtIndex:v59];

LABEL_87:
LABEL_88:
        if ([a2 _accessibilitySegmentItemAtIndex_])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v132 = 0u;
          v133 = 0u;
        }

        v143 = v132;
        v144 = v133;
        if (*(&v133 + 1))
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
          result = swift_dynamicCast();
          if (result)
          {
            v97 = v119[0];
            v98 = v116;
            outlined init with copy of SystemSegmentItem(v63, v116, type metadata accessor for SystemSegmentItem);
            v99 = v63;
            outlined destroy of SystemSegmentItem(v98);
            v100 = Bool._bridgeToObjectiveC()().super.super.isa;
            v101 = v59;
            v102 = MEMORY[0x18D00C850](0x64656C62616E65, 0xE700000000000000);
            [v97 setValue:v100 forKey:v102];

            v63 = v99;
            v59 = v101;
            v24 = v118;
            outlined init with copy of SystemSegmentItem(v99, v98, type metadata accessor for SystemSegmentItem);
            v103 = v97;
            specialized SegmentedControlCoordinator.applyAccessibility(_:item:)(v103);

            v104 = v98;
            v13 = v109;
            v23 = v117;
            result = outlined destroy of SystemSegmentItem(v104);
          }
        }

        else
        {
          result = outlined destroy of AnyAccessibilityValue?(&v143, &lazy cache variable for type metadata for Any?);
        }

        ++v59;
        v63 += v110;
        if (v111 == v59)
        {
          goto LABEL_19;
        }

        continue;
      }

      break;
    }

    v72 = *(v24 + 208);
    v73 = *(v24 + 176);
    v140 = *(v24 + 192);
    v141 = v72;
    v74 = *(v24 + 208);
    v142[0] = *(v24 + 224);
    *(v142 + 11) = *(v24 + 235);
    v75 = *(v24 + 144);
    v76 = *(v24 + 112);
    v136 = *(v24 + 128);
    v137 = v75;
    v77 = *(v24 + 144);
    v78 = *(v24 + 176);
    v138 = *(v24 + 160);
    v139 = v78;
    v79 = *(v24 + 80);
    v132 = *(v24 + 64);
    v133 = v79;
    v80 = *(v24 + 112);
    v82 = *(v24 + 64);
    v81 = *(v24 + 80);
    v134 = *(v24 + 96);
    v135 = v80;
    v150 = v140;
    v151 = v74;
    v152[0] = *(v24 + 224);
    *(v152 + 11) = *(v24 + 235);
    v147 = v136;
    v148[0] = v77;
    v148[1] = v138;
    v149 = v73;
    v143 = v82;
    v144 = v81;
    v145 = v134;
    v146 = v76;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v143) == 1)
    {
LABEL_67:
      outlined destroy of SystemSegmentItem(v24);
      [a2 setImage:0 forSegmentAtIndex:v59];
      goto LABEL_88;
    }

    v113 = v63;
    if (v151)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v88 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v124 = v147;
      v125[0] = v148[0];
      *(v125 + 12) = *(v148 + 12);
      v120 = v143;
      v121 = v144;
      v122 = v145;
      v123 = v146;
      v91 = *(v24 + 48);
      outlined init with copy of Image.Resolved?(&v132, v119);
      outlined init with copy of GraphicsImage(&v143, v119);
      v88 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v91);
      outlined destroy of AnyAccessibilityValue?(&v132, &lazy cache variable for type metadata for Image.Resolved?);
      v130 = v124;
      v131[0] = v125[0];
      *(v131 + 12) = *(v125 + 12);
      v126 = v120;
      v127 = v121;
      v128 = v122;
      v129 = v123;
      outlined destroy of GraphicsImage(&v126);
      if (!v88)
      {
        v63 = v113;
        goto LABEL_67;
      }
    }

    outlined destroy of SystemSegmentItem(v24);
    v92 = [a2 imageForSegmentAtIndex_];
    if (v92)
    {
      v93 = v92;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v112 = v88;
      v94 = static NSObject.== infix(_:_:)();

      v63 = v113;
      if (v94)
      {
        v95 = v112;

        goto LABEL_88;
      }
    }

    else
    {
      v96 = v88;
      v63 = v113;
    }

    [a2 setImage:v88 forSegmentAtIndex:v59];

    goto LABEL_87;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

id SegmentedControlCoordinator.selectionChanged(_:)(void *a1)
{
  v3 = [a1 selectedSegmentIndex];
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 selectedSegmentIndex];
  }

  v5 = v1 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration;
  *&v12 = v4;
  BYTE8(v12) = v3 == -1;

  dispatch thunk of AnyLocation.set(_:transaction:)();

  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v12 = *(v5 + 24);
  v13 = v6;
  v14 = v7;
  type metadata accessor for Binding<Int?>();
  MEMORY[0x18D00ACC0](&v10);
  if (v11)
  {
    v8 = -1;
  }

  else
  {
    v8 = v10;
  }

  return [a1 setSelectedSegmentIndex_];
}

uint64_t SegmentedControlCoordinator.__ivar_destroyer()
{
  outlined consume of Environment<Bool>.Content(*(v0 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration), *(v0 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration + 8));
}

id SegmentedControlCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedControlCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t destroy for SystemSegmentedControl(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
}

uint64_t initializeWithCopy for SystemSegmentedControl(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;
  v7 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t *assignWithCopy for SystemSegmentedControl(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  v8 = a2[5];
  *(a1 + 48) = *(a2 + 48);
  a1[5] = v8;
  return a1;
}

uint64_t *assignWithTake for SystemSegmentedControl(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);

  *(a1 + 1) = *(a2 + 1);

  a1[4] = a2[4];

  a1[5] = a2[5];
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for SystemSegmentedControl(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for SystemSegmentedControl(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized SegmentedControlCoordinator.applyAccessibility(_:item:)(void *a1)
{
  v2 = SystemSegmentItem.accessibilityIdentifier.getter();
  if (v3)
  {
    v4 = MEMORY[0x18D00C850](v2);

    [a1 setAccessibilityIdentifier_];
  }

  v5 = PlatformItemList.Item.accessibilityEffectiveText.getter();
  if (v5)
  {
    v6 = v5;
    [a1 setAccessibilityAttributedLabel_];
  }

  v7 = SystemSegmentItem.accessibilityHint.getter();
  if (v8)
  {
    v9 = MEMORY[0x18D00C850](v7);

    [a1 setAccessibilityHint_];
  }
}

uint64_t specialized SystemSegmentedControl._overrideSizeThatFits(_:in:uiView:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  v5 = a2[2];
  v6 = *(a2 + 24);
  v7 = *v2;
  v8 = *(v2 + 8);
  v16 = *a2;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v9 = _ProposedSize.width.getter();
  if ((v10 & 1) == 0)
  {
    *a1 = v9;
  }

  result = specialized Environment.wrappedValue.getter(v7, v8, &v16);
  v14 = qword_1EFF8C3B8;
  if (qword_1EFF8C3B8)
  {
    v12 = 0;
    v13 = &outlined read-only object #0 of static ControlSize.< infix(_:_:);
    while (*(&outlined read-only object #0 of static ControlSize.< infix(_:_:) + v12 + 32) != v16)
    {
      if (qword_1EFF8C3B8 == ++v12)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    __break(1u);
  }

  v15 = 0;
  while (v13[v15 + 32] != 3)
  {
    if (v14 == ++v15)
    {
      __break(1u);
      break;
    }
  }

  if (v12 >= v15)
  {
    static Semantics.v7.getter();
    result = isLinkedOnOrAfter(_:)();
    if (result)
    {
      a1[1] = 0x4048000000000000;
    }
  }

  return result;
}

void type metadata accessor for [SystemSegmentItem]()
{
  if (!lazy cache variable for type metadata for [SystemSegmentItem])
  {
    type metadata accessor for SystemSegmentItem();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [SystemSegmentItem]);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [SystemSegmentItem] and conformance [A](unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of SystemSegmentItem(uint64_t a1)
{
  v2 = type metadata accessor for SystemSegmentItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for StyleBox<SystemSegmentedControlStyle>()
{
  if (!lazy cache variable for type metadata for StyleBox<SystemSegmentedControlStyle>)
  {
    lazy protocol witness table accessor for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle();
    v0 = type metadata accessor for StyleBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleBox<SystemSegmentedControlStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle()
{
  result = lazy protocol witness table cache variable for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle;
  if (!lazy protocol witness table cache variable for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemSegmentedControlStyle.Body and conformance SystemSegmentedControlStyle.Body()
{
  result = lazy protocol witness table cache variable for type SystemSegmentedControlStyle.Body and conformance SystemSegmentedControlStyle.Body;
  if (!lazy protocol witness table cache variable for type SystemSegmentedControlStyle.Body and conformance SystemSegmentedControlStyle.Body)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemSegmentedControlStyle.Body and conformance SystemSegmentedControlStyle.Body);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<AllPlatformItemListFlags>, &type metadata for AllPlatformItemListFlags, &protocol witness table for AllPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of SystemSegmentItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SystemSegmentItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemSegmentItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t destroy for SystemSegmentedControlStyle.Body(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for SystemSegmentedControlStyle.Body(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v8;
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 104);
  LOBYTE(v8) = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  *(a1 + 112) = v8;
  v10 = v5;

  return a1;
}

uint64_t assignWithCopy for SystemSegmentedControlStyle.Body(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v7 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);

  v8 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;

  return a1;
}

uint64_t assignWithTake for SystemSegmentedControlStyle.Body(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  v8 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for SystemSegmentedControlStyle.Body(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for SystemSegmentedControlStyle.Body(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.searchable<A>(text:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v84 = a7;
  v86 = a4;
  v89 = a2;
  v90 = a3;
  v88 = a1;
  v82 = a9;
  v83 = a10;
  v79 = a5;
  v80 = a11;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v81 = &v69 - v14;
  v78 = type metadata accessor for SearchFieldState(0) - 8;
  MEMORY[0x1EEE9AC00](v78);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v75 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedString>();
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v69 - v22);
  v24 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  v29 = v28;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v85 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v79) = *v79;
  (*(v24 + 16))(v27, a6, a8, v30);
  v32 = v16;

  v33 = Text.init<A>(_:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v77 = v37;
  v40 = v37 & 1;
  outlined copy of Text.Storage(v33, v35, v40);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v41 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v42 = v87;
  *v23 = v88;
  v23[1] = v41;
  v80 = v23;
  v43 = v23;
  v44 = v85;
  outlined init with copy of Binding<AttributedString>(v43, v42, type metadata accessor for Binding<AttributedString>);
  v45 = &v44[v29[12]];
  *v45 = 0;
  *(v45 + 1) = 0;
  *(v45 + 8) = 0;
  *v32 = 2;

  v46 = v39;

  outlined copy of Text.Storage(v33, v35, v40);
  *(v32 + 1) = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v32 + 2) = 2;
  *(v32 + 4) = 0;
  *(v32 + 8) = 1;
  v47 = v78;
  AttributedString.init()();
  *(v32 + *(v47 + 48)) = 0;
  v48 = *(v47 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v49 = v32 + v48;
  v50 = byte_1EAB095CC;
  *v49 = static SearchFocusUpdate.empty;
  *(v49 + 4) = v50;

  v51 = outlined copy of Text.Storage(v33, v35, v40);
  MEMORY[0x18D009CE0](v92, v51);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v33, v35, v40);

  *(v44 + 1) = v33;
  *(v44 + 2) = v35;
  v44[24] = v40;
  *(v44 + 4) = v39;
  v76 = v29;
  outlined init with copy of Binding<AttributedString>(v87, &v44[v29[11]], type metadata accessor for Binding<AttributedString>);
  v52 = &v44[v29[13]];
  outlined init with copy of Binding<AttributedString>(v32, v52, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v52 + *(v53 + 28)) = 0;
  v54 = v29[10];
  LOBYTE(v52) = v40;
  v74 = v40;
  v55 = &v44[v54];
  v78 = v77 & 1;
  v93 = 1;
  v73 = v35;
  v72 = v33;
  v56 = v89;
  v92[0] = v88;
  v92[1] = v89;
  v57 = v86;
  v92[2] = v90;
  v92[3] = v86;

  outlined copy of Text.Storage(v33, v35, v52);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v91);
  v71 = v91[0];
  v70 = v91[1];
  LODWORD(v75) = v93;
  type metadata accessor for Binding<TextSelection?>(0);
  v59 = v58;
  v60 = *(*(v58 - 8) + 56);
  v77 = v32;
  v61 = v81;
  v60(v81, 1, 1, v58);
  type metadata accessor for TextField<EmptyView>();
  v63 = *(v62 + 56);
  v60(&v55[v63], 1, 1, v59);
  LOBYTE(v92[0]) = 0;
  v64 = v70;
  *(v55 + 9) = v71;
  *(v55 + 10) = v64;
  *(v55 + 88) = 0u;
  *(v55 + 104) = 0u;
  *(v55 + 120) = 0u;
  *(v55 + 136) = 0u;
  v55[152] = 0;
  *(v55 + 39) = 0;
  v55[160] = v75;
  *(v55 + 161) = 2;
  v55[163] = 0;
  *(v55 + 21) = 0;
  v55[180] = 0;
  *v55 = v88;
  *(v55 + 1) = v56;
  *(v55 + 2) = v90;
  *(v55 + 3) = v57;
  *(v55 + 16) = 0;
  v65 = v72;
  v66 = v73;
  *(v55 + 5) = v72;
  *(v55 + 6) = v66;
  *(v55 + 7) = v78;
  *(v55 + 8) = v46;
  outlined assign with take of Binding<TextSelection?>?(v61, &v55[v63]);

  v67 = v85;
  *v85 = v79;
  LOBYTE(v56) = v74;
  outlined consume of Text.Storage(v65, v66, v74);

  outlined consume of Text.Storage(v65, v66, v56);

  _s7SwiftUI16SearchFieldStateVWOhTm_2(v77, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v87, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v80, type metadata accessor for Binding<AttributedString>);
  MEMORY[0x18D00A570](v67, v84, v76, v83);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v67, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t View.searchable(text:isPresented:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v34 = a7;
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v37 = a9;
  v35 = a3;
  v36 = a14;
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a8;

  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v25 = v24;
  v27 = v26 & 1;
  v28 = v32;

  v29 = v33;

  SearchModifier.init<>(text:isPresented:placement:prompt:)(a1, a2, v35, v31, v28, v29, v34 & 1, &v39, v20, v21, v23, v27, v25);
  MEMORY[0x18D00A570](v20, v36, v18, v38);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v20, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t View.searchable<A>(text:isPresented:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45 = a9;
  v42 = a7;
  v39 = a5;
  v40 = a6;
  v37[1] = a14;
  v43 = a3;
  v44 = a13;
  v18 = *(a12 - 8);
  v41 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  v38 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a8;
  (*(v18 + 16))(v20, a10, a12, v22);

  v25 = a2;

  v26 = a4;

  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32 & 1;
  v34 = v39;

  v35 = v40;

  SearchModifier.init<>(text:isPresented:placement:prompt:)(a1, v25, v43, v26, v34, v35, v42 & 1, &v46, v24, v27, v29, v33, v31);
  MEMORY[0x18D00A570](v24, v41, v38, v44);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v24, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance BorderlessButtonStyle_Car@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  return outlined destroy of PrimitiveButtonStyleConfiguration(v7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>, type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>, type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>);
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>, type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>);
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>()
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>)
  {
    lazy protocol witness table accessor for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit();
    v0 = type metadata accessor for PrimitiveButtonStyleContainerModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit;
  if (!lazy protocol witness table cache variable for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit);
  }

  return result;
}

uint64_t BorderlessButtonStyle_UIKit.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimitiveButtonStyleConfiguration);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v16 = 1;
  v15 = 1;
  v14 = 1;
  static Color.accentColor.getter();
  View.defaultForegroundColor(_:)();

  v10 = v13[0];
  v11 = v13[1];
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  result = static UIButton.Configuration.borderless()();
  *a2 = v7;
  *(a2 + 8) = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 1;
  *(a2 + 37) = 514;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11;
  return result;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>()
{
  if (!lazy cache variable for type metadata for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>)
  {
    type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>();
    lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for UIKitButton();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Color?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for Color?()
{
  if (!lazy cache variable for type metadata for Color?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Color?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>();
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>(255, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(&lazy protocol witness table cache variable for type UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>> and conformance UIKitButton<A>, type metadata accessor for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void *initializeBufferWithCopyOfBuffer for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  v8 = ~(v6 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + 64);
  v10 = ((v6 & 0xF8) + 23) & v8;
  if (v7)
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 <= v9)
  {
    v12 = *(v5 + 64);
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 | 1;
  v15 = (v10 | 1) + v13;
  if ((v6 & 0x1000F8) == 0 && ((v15 + (((v6 & 0xF8) + 15) & v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    v18 = a2 + 15;
    *a1 = *a2;
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = (v18 & 0xFFFFFFFFFFFFFFF8);
    v21 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (*v21 < 0xFFFFFFFFuLL)
    {
      memcpy(v19, v20, v15);
LABEL_51:
      *((((v3 + 15) | 7) + v14 + v13) & 0xFFFFFFFFFFFFFFF8) = *(((v18 | 7) + v14 + v13) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_52;
    }

    v37 = v7;
    *v19 = *v20;
    v22 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v21;
    v34 = v22 + 15;
    v35 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = v10 | 1;
    v23 = *(v35 + v13);

    if (v23 < 3)
    {
      v27 = v34;
      v25 = v35;
    }

    else
    {
      if (v13 <= 3)
      {
        v24 = v13;
      }

      else
      {
        v24 = 4;
      }

      if (v24 > 1)
      {
        v25 = v35;
        if (v24 == 2)
        {
          v26 = *v35;
        }

        else if (v24 == 3)
        {
          v26 = *v35 | (*(v35 + 2) << 16);
        }

        else
        {
          v26 = *v35;
        }

        v27 = v34;
        if (v13 >= 4)
        {
          goto LABEL_33;
        }

LABEL_29:
        v23 = (v26 | ((v23 - 3) << (8 * v13))) + 3;
        goto LABEL_34;
      }

      v27 = v34;
      v25 = v35;
      if (v24)
      {
        v26 = *v35;
        if (v13 >= 4)
        {
LABEL_33:
          v23 = v26 + 3;
          goto LABEL_34;
        }

        goto LABEL_29;
      }
    }

LABEL_34:
    v28 = (v27 & 0xFFFFFFFFFFFFFFF8);
    if (v23 == 2)
    {
      (*(v5 + 16))(v27 & 0xFFFFFFFFFFFFFFF8, v25, v4);
      v30 = v9 + 1;
      *(v28 + v13) = 2;
      v31 = v37;
      v14 = v36;
    }

    else if (v23 == 1)
    {
      v29 = v25;
      if ((*(v5 + 48))(v25, 1, v4))
      {
        memcpy(v28, v29, v11);
      }

      else
      {
        (*(v5 + 16))(v28, v29, v4);
        (*(v5 + 56))(v28, 0, 1, v4);
      }

      v30 = v9 + 1;
      v14 = v36;
      *(v28 + v13) = 1;
      v31 = v37;
    }

    else
    {
      v14 = v36;
      *v28 = *v25;
      *(v28 + v13) = 0;

      v31 = v37;
      v30 = v9 + 1;
    }

    v32 = 8;
    if (v9 > 8)
    {
      v32 = v9;
    }

    if (v30 <= v9)
    {
      v30 = v9;
    }

    if (v30 <= 8)
    {
      v30 = 8;
    }

    if (v31)
    {
      v13 = v32;
    }

    else
    {
      v13 = v30;
    }

    goto LABEL_51;
  }

  v17 = *a2;
  *v3 = *a2;
  v3 = (v17 + v10);
LABEL_52:

  return v3;
}

void *initializeWithTake for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 15;
  v9 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = ((a1 + v7 + 15) & v9);
  v11 = ((a2 + v7 + 15) & v9);
  v12 = *(v5 + 64);
  v13 = (v7 + 23) & v9;
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v14 < 0xFFFFFFFFuLL)
  {
    if (v6)
    {
      v25 = *(v5 + 64);
    }

    else
    {
      v25 = v12 + 1;
    }

    if (v25 > v12)
    {
      v12 = v25;
    }

    if (v12 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v12;
    }

    memcpy(v10, v11, v20 + v13 + 1);
    goto LABEL_42;
  }

  v15 = v6 == 0;
  *v10 = *v11;
  v16 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v14;
  v17 = ((v16 + v8) & v9);
  v18 = ((v14 + v8) & v9);
  if (v15)
  {
    v19 = v12 + 1;
  }

  else
  {
    v19 = v12;
  }

  if (v19 > v12)
  {
    v12 = v19;
  }

  if (v12 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v12;
  }

  v21 = *(v18 + v20);
  v22 = v21 - 3;
  if (v21 >= 3)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *v18;
      }

      else if (v23 == 3)
      {
        v24 = *v18 | (*(v18 + 2) << 16);
      }

      else
      {
        v24 = *v18;
      }

LABEL_31:
      v26 = (v24 | (v22 << (8 * v20))) + 3;
      v21 = v24 + 3;
      if (v20 < 4)
      {
        v21 = v26;
      }

      goto LABEL_33;
    }

    if (v23)
    {
      v24 = *v18;
      goto LABEL_31;
    }
  }

LABEL_33:
  if (v21 == 2)
  {
    (*(v5 + 32))(v17, v18, v4);
    v27 = 2;
LABEL_41:
    *(v17 + v20) = v27;
    goto LABEL_42;
  }

  if (v21 == 1)
  {
    if ((*(v5 + 48))(v18, 1, v4))
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v5 + 32))(v17, v18, v4);
      (*(v5 + 56))(v17, 0, 1, v4);
    }

    v27 = 1;
    goto LABEL_41;
  }

  *v17 = *v18;
  *(v17 + v20) = 0;
LABEL_42:
  *((v10 + v20 + v13 + 8) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v20 + v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 15;
  v9 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = ((a1 + v7 + 15) & v9);
  v11 = ((a2 + v7 + 15) & v9);
  v12 = *(v5 + 64);
  v53 = (v7 + 23) & v9;
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  if (*v13 < 0xFFFFFFFFuLL)
  {
    if (v15 < 0xFFFFFFFF)
    {
      if (v6)
      {
        v38 = *(*(v4 - 8) + 64);
      }

      else
      {
        v38 = v12 + 1;
      }

      if (v38 <= v12)
      {
        v38 = *(*(v4 - 8) + 64);
      }

      if (v38 <= 8)
      {
        v21 = 8;
      }

      else
      {
        v21 = v38;
      }

      goto LABEL_88;
    }

    v16 = v6 == 0;
    *v10 = *v11;
    *v13 = *v14;
    v17 = ((v13 + v8) & v9);
    v18 = ((v14 + v8) & v9);
    if (v16)
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = v12;
    }

    if (v19 <= v12)
    {
      v27 = v12;
    }

    else
    {
      v27 = v19;
    }

    if (v27 <= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v27;
    }

    v28 = v18[v21];
    v29 = v28 - 3;
    if (v28 >= 3)
    {
      if (v21 <= 3)
      {
        v30 = v21;
      }

      else
      {
        v30 = 4;
      }

      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v31 = *v18;
        }

        else if (v30 == 3)
        {
          v31 = *v18 | (v18[2] << 16);
        }

        else
        {
          v31 = *v18;
        }

LABEL_72:
        v40 = (v31 | (v29 << (8 * v21))) + 3;
        v28 = v31 + 3;
        if (v21 < 4)
        {
          v28 = v40;
        }

        goto LABEL_74;
      }

      if (v30)
      {
        v31 = *v18;
        goto LABEL_72;
      }
    }

LABEL_74:
    if (v28 != 2)
    {
      if (v28 == 1)
      {
        v41 = v4;
        if (!(*(v5 + 48))(v18, 1))
        {
LABEL_120:
          (*(v5 + 32))(v17, v18, v41);
          (*(v5 + 56))(v17, 0, 1, v41);
          goto LABEL_121;
        }

LABEL_77:
        memcpy(v17, v18, v19);
LABEL_121:
        v50 = 1;
LABEL_125:
        v17[v21] = v50;
        goto LABEL_126;
      }

LABEL_122:
      *v17 = *v18;
      v17[v21] = 0;
LABEL_126:
      v43 = v53;
      goto LABEL_127;
    }

    (*(v5 + 32))(v17, v18, v4);
LABEL_124:
    v50 = 2;
    goto LABEL_125;
  }

  v52 = v4;
  if (v15 >= 0xFFFFFFFF)
  {
    *v10 = *v11;

    *v13 = *v14;

    v16 = v6 == 0;
    v17 = ((v13 + v8) & v9);
    v18 = ((v14 + v8) & v9);
    if (v16)
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = v12;
    }

    if (v19 <= v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = v19;
    }

    if (v20 <= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v20;
    }

    if (v17 == v18)
    {
      goto LABEL_126;
    }

    v22 = v17[v21];
    v23 = v22 - 3;
    if (v22 < 3)
    {
      v25 = v52;
      goto LABEL_95;
    }

    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    v25 = v52;
    if (v24 <= 1)
    {
      if (!v24)
      {
        goto LABEL_95;
      }

      v26 = *v17;
    }

    else if (v24 == 2)
    {
      v26 = *v17;
    }

    else if (v24 == 3)
    {
      v26 = *v17 | (v17[2] << 16);
    }

    else
    {
      v26 = *v17;
    }

    v44 = (v26 | (v23 << (8 * v21))) + 3;
    v22 = v26 + 3;
    if (v21 < 4)
    {
      v22 = v44;
    }

LABEL_95:
    if (v22 == 2)
    {
      (*(v5 + 8))(v17, v25);
    }

    else if (v22 == 1)
    {
      if (!(*(v5 + 48))(v17, 1, v25))
      {
        (*(v5 + 8))(v17, v52);
      }
    }

    else
    {
    }

    v45 = v18[v21];
    v46 = v45 - 3;
    if (v45 < 3)
    {
      v41 = v52;
    }

    else
    {
      if (v21 <= 3)
      {
        v47 = v21;
      }

      else
      {
        v47 = 4;
      }

      v41 = v52;
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v48 = *v18;
        }

        else if (v47 == 3)
        {
          v48 = *v18 | (v18[2] << 16);
        }

        else
        {
          v48 = *v18;
        }

LABEL_115:
        v49 = (v48 | (v46 << (8 * v21))) + 3;
        v45 = v48 + 3;
        if (v21 < 4)
        {
          v45 = v49;
        }

        goto LABEL_117;
      }

      if (v47)
      {
        v48 = *v18;
        goto LABEL_115;
      }
    }

LABEL_117:
    if (v45 != 2)
    {
      if (v45 == 1)
      {
        if (!(*(v5 + 48))(v18, 1, v41))
        {
          goto LABEL_120;
        }

        goto LABEL_77;
      }

      goto LABEL_122;
    }

    (*(v5 + 32))(v17, v18, v41);
    goto LABEL_124;
  }

  v16 = v6 == 0;
  v32 = ((v13 + v8) & v9);
  if (v16)
  {
    v33 = v12 + 1;
  }

  else
  {
    v33 = v12;
  }

  if (v33 <= v12)
  {
    v33 = v12;
  }

  if (v33 <= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = v33;
  }

  v34 = *(v32 + v21);
  v35 = v34 - 3;
  if (v34 < 3)
  {
    v39 = v52;
  }

  else
  {
    if (v21 <= 3)
    {
      v36 = v21;
    }

    else
    {
      v36 = 4;
    }

    if (v36 > 1)
    {
      if (v36 == 2)
      {
        v37 = *v32;
      }

      else if (v36 == 3)
      {
        v37 = *v32 | (*(((v13 + v8) & v9) + 2) << 16);
      }

      else
      {
        v37 = *v32;
      }

      v39 = v52;
LABEL_81:
      v42 = (v37 | (v35 << (8 * v21))) + 3;
      v34 = v37 + 3;
      if (v21 < 4)
      {
        v34 = v42;
      }

      goto LABEL_83;
    }

    v39 = v52;
    if (v36)
    {
      v37 = *v32;
      goto LABEL_81;
    }
  }

LABEL_83:
  if (v34 == 2)
  {
    goto LABEL_86;
  }

  if (v34 != 1)
  {

    goto LABEL_88;
  }

  if (!(*(v5 + 48))((v13 + v8) & v9, 1, v39))
  {
LABEL_86:
    (*(v5 + 8))((v13 + v8) & v9, v39);
  }

LABEL_88:
  v43 = v53;
  memcpy(v10, v11, v21 + v53 + 1);
LABEL_127:
  *((v10 + v21 + v43 + 8) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v21 + v43 + 8) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigableListModifier(int *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4)
  {
    v5 = *(v3 + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = *(v3 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = v5 + ((v6 + 23) & ~(v6 | 7)) + 1;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v11 = ((v8 + ((v6 + 15) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  v13 = a2 - 2147483646;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == 4)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else if (v15 == 2)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
LABEL_10:
      v9 = *((v8 + ((a1 + v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v9 >= 0xFFFFFFFF)
      {
        LODWORD(v9) = -1;
      }

      return (v9 + 1);
    }
  }

  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    v18 = *a1;
  }

  else
  {
    v18 = 0;
  }

  return (v18 | v17) ^ 0x80000000;
}

int *storeEnumTagSinglePayload for NavigableListModifier(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = (v6 + 15) & ~(v6 | 7);
  v9 = (v6 + 23) & ~(v6 | 7);
  if (*(v4 + 84))
  {
    v10 = *(v4 + 64);
  }

  else
  {
    v10 = v5 + 1;
  }

  if (v10 > v5)
  {
    v5 = v10;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v11 = v5 + v9 + 1;
  v12 = ((v11 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v14 = a3 - 2147483646;
    if (((v11 + v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = v15;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    v16 = a2 & 0x7FFFFFFF;
    if (v12)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16 + 1;
    }

    if (v12)
    {
      v18 = result;
      bzero(result, v12);
      result = v18;
      *v18 = v16;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v12) = v17;
      }

      else
      {
        *(result + v12) = v17;
      }
    }

    else if (v13)
    {
      *(result + v12) = v17;
    }

    return result;
  }

  v13 = 0;
  if (a2 < 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (v13 <= 1)
  {
    if (v13)
    {
      *(result + v12) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (v13 == 2)
  {
    *(result + v12) = 0;
    goto LABEL_33;
  }

  *(result + v12) = 0;
  if (a2)
  {
LABEL_34:
    *((v11 + ((result + v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance NavigableListModifier<A>.ListKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  return result;
}

double protocol witness for static StatefulRule.initialValue.getter in conformance NavigableListModifier<A>.EnsureNavigationAuthority@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CD874C0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t assignWithCopy for NavigableListModifier.EnsureNavigationAuthority(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 32);
  if (*(a1 + 32) == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
    }
  }

  else
  {
    v6 = a1 + 24;
    if (v4 == 1)
    {
      outlined destroy of NavigationAuthority(v6);
      v7 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v7;
    }

    else
    {
      swift_weakCopyAssign();
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);
    }
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t initializeWithTake for NavigableListModifier.EnsureNavigationAuthority(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  v3 = (a2 + 32);
  if (*(a2 + 32) == 1)
  {
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
  }

  else
  {
    v4 = result;
    swift_weakTakeInit();
    result = v4;
    *(v4 + 32) = *v3;
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

uint64_t assignWithTake for NavigableListModifier.EnsureNavigationAuthority(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = (a1 + 32);
  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    v7 = a1 + 24;
    if (v5 != 1)
    {
      swift_weakTakeAssign();
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);

      goto LABEL_8;
    }

    outlined destroy of NavigationAuthority(v7);
    goto LABEL_6;
  }

  if (v5 == 1)
  {
LABEL_6:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_8;
  }

  swift_weakTakeInit();
  *v4 = *v6;
LABEL_8:
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigableListModifier.EnsureNavigationAuthority(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 49))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigableListModifier.EnsureNavigationAuthority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for NavigableListModifier.BoundListSelectionDetector(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  v8 = *(v5 + 64);
  if (v7)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (v9 <= v8)
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  if ((v6 & 0x1000F8) == 0 && ((-61 - (v6 & 0xF8 | 7)) | v6 & 0xF8 | 6uLL) - (v11 + 1) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = *a2;
    v14 = a2 + 11;
    *a1 = v15;
    v16 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v18 = (((v14 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *v18;
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v19 = *v20;
    v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    *v21 = *v22;
    v23 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v24 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v24 = *v23;
    v25 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = (v23 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    *v25 = *v26;
    *(v25 + 4) = *(v26 + 4);
    v27 = ((v24 + 15) & 0xFFFFFFFFFFFFFFFCLL);
    v28 = ((v23 + 15) & 0xFFFFFFFFFFFFFFFCLL);
    v29 = *v28;
    *(v27 + 5) = *(v28 + 5);
    *v27 = v29;
    v30 = ((v24 + 31) & 0xFFFFFFFFFFFFFFFCLL);
    v31 = ((v23 + 31) & 0xFFFFFFFFFFFFFFFCLL);
    *v30 = *v31;
    v32 = ((v30 + 11) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v31 + 11) & 0xFFFFFFFFFFFFFFF8);
    v34 = *(v33 + v11);
    if (v34 > 2)
    {
      memcpy(v32, ((v31 + 11) & 0xFFFFFFFFFFFFFFF8), v11 + 1);
LABEL_36:
      *(v32 + v11 + 1) = *(v33 + v11 + 1);
      return v3;
    }

    if (v34 == 2)
    {
      (*(v5 + 16))(v32, (v31 + 11) & 0xFFFFFFFFFFFFFFF8, v4);
      v35 = 2;
    }

    else
    {
      if (v34 != 1)
      {
        *v32 = *v33;
        *(v32 + v11) = 0;

LABEL_26:
        v36 = 8;
        if (v8 > 8)
        {
          v36 = v8;
        }

        if (v8 + 1 <= v8)
        {
          v37 = v8;
        }

        else
        {
          v37 = v8 + 1;
        }

        if (v37 <= 8)
        {
          v37 = 8;
        }

        if (v7)
        {
          v11 = v36;
        }

        else
        {
          v11 = v37;
        }

        goto LABEL_36;
      }

      if ((*(v5 + 48))(v33, 1, v4))
      {
        memcpy(v32, v33, v9);
      }

      else
      {
        (*(v5 + 16))(v32, v33, v4);
        (*(v5 + 56))(v32, 0, 1, v4);
      }

      v35 = 1;
    }

    *(v32 + v11) = v35;
    goto LABEL_26;
  }

  v13 = *a2;
  *v3 = *a2;
  v3 = (v13 + (((v6 & 0xF8 | 7) + 16) & ~(v6 & 0xF8 | 7)));

  return v3;
}

_DWORD *assignWithCopy for NavigableListModifier.BoundListSelectionDetector(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = ((v8 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v14 = *v15;
  *(v14 + 4) = *(v15 + 4);
  v16 = (v12 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = (v13 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  *v16 = *v17;
  *(v16 + 4) = *(v17 + 4);
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 12) = *(v17 + 12);
  v18 = ((v12 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v13 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v19;
  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80) & 0xF8;
  v23 = ~v22 & 0xFFFFFFFFFFFFFFF8;
  v22 += 11;
  v24 = v18 + v22;
  v25 = (v24 & v23);
  v26 = ((v19 + v22) & v23);
  v27 = *(v21 + 64);
  if (*(v21 + 84))
  {
    v28 = *(v21 + 64);
  }

  else
  {
    v28 = v27 + 1;
  }

  if (v28 > v27)
  {
    v27 = v28;
  }

  if (v27 <= 8)
  {
    v29 = 8;
  }

  else
  {
    v29 = v27;
  }

  v30 = *(v25 + v29);
  v31 = v26[v29];
  if (v30 > 2)
  {
    if (v31 <= 2)
    {
      if (v31 == 2)
      {
LABEL_46:
        (*(v21 + 16))(v25, v26, v20);
        v32 = 2;
LABEL_47:
        *(v25 + v29) = v32;
        goto LABEL_48;
      }

      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (v31 > 2)
  {
    if (v30 == 2)
    {
      goto LABEL_25;
    }

    if (v30 != 1)
    {

      goto LABEL_28;
    }

    if (!(*(v21 + 48))(v24 & v23, 1, v20))
    {
LABEL_25:
      (*(v21 + 8))(v25, v20);
    }

LABEL_28:
    memcpy(v25, v26, v29 + 1);
    goto LABEL_48;
  }

  if (v25 == v26)
  {
    goto LABEL_48;
  }

  if (v30 == 2)
  {
LABEL_15:
    (*(v21 + 8))(v25, v20);
    goto LABEL_31;
  }

  if (v30 == 1)
  {
    if ((*(v21 + 48))(v24 & v23, 1, v20))
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

LABEL_31:
  v31 = v26[v29];
  v33 = v31 - 3;
  if (v31 < 3)
  {
    goto LABEL_45;
  }

  if (v29 <= 3)
  {
    v34 = v29;
  }

  else
  {
    v34 = 4;
  }

  if (v34 <= 1)
  {
    if (!v34)
    {
      goto LABEL_45;
    }

    v35 = *v26;
  }

  else if (v34 == 2)
  {
    v35 = *v26;
  }

  else if (v34 == 3)
  {
    v35 = *v26 | (v26[2] << 16);
  }

  else
  {
    v35 = *v26;
  }

  v36 = (v35 | (v33 << (8 * v29))) + 3;
  v31 = v35 + 3;
  if (v29 < 4)
  {
    v31 = v36;
  }

LABEL_45:
  if (v31 == 2)
  {
    goto LABEL_46;
  }

LABEL_18:
  if (v31 == 1)
  {
    if ((*(v21 + 48))(v26, 1, v20))
    {
      memcpy(v25, v26, v28);
    }

    else
    {
      (*(v21 + 16))(v25, v26, v20);
      (*(v21 + 56))(v25, 0, 1, v20);
    }

    v32 = 1;
    goto LABEL_47;
  }

  *v25 = *v26;
  *(v25 + v29) = 0;

LABEL_48:
  *(v25 + v29 + 1) = v26[v29 + 1];
  return a1;
}

void *initializeWithTake for NavigableListModifier.BoundListSelectionDetector(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v15 = *v16;
  *(v15 + 4) = *(v16 + 4);
  v17 = ((v13 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = *v18;
  *(v17 + 5) = *(v18 + 5);
  *v17 = v19;
  v20 = ((v13 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v14 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = *(a3 + 16);
  v23 = *(v22 - 8);
  v24 = *(v23 + 80) & 0xF8;
  v25 = ~v24 & 0xFFFFFFFFFFFFFFF8;
  v24 += 11;
  v26 = v20 + v24;
  v27 = (v26 & v25);
  v28 = ((v21 + v24) & v25);
  v29 = *(v23 + 64);
  if (*(v23 + 84))
  {
    v30 = *(v23 + 64);
  }

  else
  {
    v30 = v29 + 1;
  }

  if (v30 > v29)
  {
    v29 = v30;
  }

  if (v29 <= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v29;
  }

  v32 = *(v28 + v31);
  if (v32 > 2)
  {
    v33 = v31 + 1;
    memcpy((v26 & v25), v28, v31 + 1);
  }

  else
  {
    if (v32 == 2)
    {
      (*(v23 + 32))(v26 & v25, v28, v22);
    }

    else if (v32 == 1)
    {
      if ((*(v23 + 48))(v28, 1, v22))
      {
        memcpy(v27, v28, v30);
      }

      else
      {
        (*(v23 + 32))(v27, v28, v22);
        (*(v23 + 56))(v27, 0, 1, v22);
      }
    }

    else
    {
      *v27 = *v28;
    }

    *(v27 + v31) = v32;
    v33 = v31 + 1;
  }

  *(v27 + v33) = *(v28 + v33);
  return a1;
}

void *assignWithTake for NavigableListModifier.BoundListSelectionDetector(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v15 = *v16;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v13 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v14 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  *v17 = *v18;
  *(v17 + 4) = *(v18 + 4);
  *(v17 + 8) = *(v18 + 8);
  *(v17 + 12) = *(v18 + 12);
  v19 = ((v13 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v14 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = *(a3 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 80) & 0xF8;
  v24 = ~v23 & 0xFFFFFFFFFFFFFFF8;
  v23 += 11;
  v25 = v19 + v23;
  v26 = (v25 & v24);
  v27 = ((v20 + v23) & v24);
  v28 = *(v22 + 64);
  if (*(v22 + 84))
  {
    v29 = *(v22 + 64);
  }

  else
  {
    v29 = v28 + 1;
  }

  if (v29 > v28)
  {
    v28 = v29;
  }

  if (v28 <= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v28;
  }

  v31 = *(v26 + v30);
  v32 = v27[v30];
  if (v31 > 2)
  {
    if (v32 <= 2)
    {
      if (v32 == 2)
      {
LABEL_46:
        (*(v22 + 32))(v26, v27, v21);
        v33 = 2;
LABEL_47:
        *(v26 + v30) = v33;
        goto LABEL_48;
      }

      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (v32 > 2)
  {
    if (v31 == 2)
    {
      goto LABEL_25;
    }

    if (v31 != 1)
    {

      goto LABEL_28;
    }

    if (!(*(v22 + 48))(v25 & v24, 1, v21))
    {
LABEL_25:
      (*(v22 + 8))(v26, v21);
    }

LABEL_28:
    memcpy(v26, v27, v30 + 1);
    goto LABEL_48;
  }

  if (v26 == v27)
  {
    goto LABEL_48;
  }

  if (v31 == 2)
  {
LABEL_15:
    (*(v22 + 8))(v26, v21);
    goto LABEL_31;
  }

  if (v31 == 1)
  {
    if ((*(v22 + 48))(v25 & v24, 1, v21))
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

LABEL_31:
  v32 = v27[v30];
  v34 = v32 - 3;
  if (v32 < 3)
  {
    goto LABEL_45;
  }

  if (v30 <= 3)
  {
    v35 = v30;
  }

  else
  {
    v35 = 4;
  }

  if (v35 <= 1)
  {
    if (!v35)
    {
      goto LABEL_45;
    }

    v36 = *v27;
  }

  else if (v35 == 2)
  {
    v36 = *v27;
  }

  else if (v35 == 3)
  {
    v36 = *v27 | (v27[2] << 16);
  }

  else
  {
    v36 = *v27;
  }

  v37 = (v36 | (v34 << (8 * v30))) + 3;
  v32 = v36 + 3;
  if (v30 < 4)
  {
    v32 = v37;
  }

LABEL_45:
  if (v32 == 2)
  {
    goto LABEL_46;
  }

LABEL_18:
  if (v32 == 1)
  {
    if ((*(v22 + 48))(v27, 1, v21))
    {
      memcpy(v26, v27, v29);
    }

    else
    {
      (*(v22 + 32))(v26, v27, v21);
      (*(v22 + 56))(v26, 0, 1, v21);
    }

    v33 = 1;
    goto LABEL_47;
  }

  *v26 = *v27;
  *(v26 + v30) = 0;
LABEL_48:
  *(v26 + v30 + 1) = v27[v30 + 1];
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigableListModifier.BoundListSelectionDetector(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4)
  {
    v5 = *(v3 + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    v6 = v5 + (((*(v3 + 80) & 0xF8) + 67) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 2;
    v7 = 8 * v6;
    if (v6 > 3)
    {
      goto LABEL_11;
    }

    v9 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v9 <= 0xFF)
      {
        if (v9 < 2)
        {
          goto LABEL_29;
        }

LABEL_11:
        v8 = *(a1 + v6);
        if (!*(a1 + v6))
        {
          goto LABEL_29;
        }

LABEL_18:
        v10 = (v8 - 1) << v7;
        if (v6 > 3)
        {
          v10 = 0;
        }

        if (v6)
        {
          if (v6 > 3)
          {
            LODWORD(v6) = 4;
          }

          if (v6 > 2)
          {
            if (v6 == 3)
            {
              LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v6) = *a1;
            }
          }

          else if (v6 == 1)
          {
            LODWORD(v6) = *a1;
          }

          else
          {
            LODWORD(v6) = *a1;
          }
        }

        return (v6 | v10) + 255;
      }

      v8 = *(a1 + v6);
      if (*(a1 + v6))
      {
        goto LABEL_18;
      }
    }
  }

LABEL_29:
  v11 = *(((((((((((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  if (v11 < 2)
  {
    return 0;
  }

  return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
}

void storeEnumTagSinglePayload for NavigableListModifier.BoundListSelectionDetector(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v7 = *(v5 + 64);
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + (((*(v5 + 80) & 0xF8) + 67) & ~(*(v5 + 80) & 0xF8) & 0x1F8) + 2;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_44:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      *(((((((((((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4) = a2 + 1;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_29;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t CustomizableToolbarContent.platterHidden(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3;
  return ToolbarContent.modifier<A>(_:)(&v5, a2, &type metadata for PlatterVisibilityModifier, a3);
}

uint64_t ToolbarContent.platterHidden(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3;
  return ToolbarContent.modifier<A>(_:)(&v5, a2, &type metadata for PlatterVisibilityModifier, a3);
}

uint64_t static PlatterVisibilityModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

uint64_t PlatterVisibilityModifier.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.toolbarItemPlatterVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.toolbarItemPlatterVisibility.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FocusViewGraph(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FocusViewGraph(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t FocusViewGraph.IsFocusSystemEnabledMutation.combine<A>(with:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v8;
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  *(v1 + 8) = v5;
  return 1;
}

unint64_t type metadata accessor for FocusHost()
{
  result = lazy cache variable for type metadata for FocusHost;
  if (!lazy cache variable for type metadata for FocusHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FocusHost);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.IsFocusSystemEnabledKey@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static _GraphInputs.IsFocusSystemEnabledKey.defaultValue;
  return result;
}

uint64_t type metadata completion function for PickerCurrentValueLabel()
{
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for PickerCurrentValueLabel(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v4 = *(v6 + 8);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = ((v8 + 16) & ~v8) + *(v7 + 64) + v10;
  if ((v8 | 7 | v10) == 7 && ((*(v9 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((((-2 - (v8 | 7)) | v8 | 7) - v11) | v10) - *(*(v5 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v23 = v4;
    v24 = ~v8;
    *a1 = *a2;
    v15 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *v15;
    v16 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v18 = v16 + v8 + 8;
    v19 = v17 + v8 + 8;
    v20 = *(v7 + 16);
    v22 = v5;

    v20(v18 & v24, v19 & v24, v23);
    (*(v9 + 16))((v11 + (a1 & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, (v15 + v11) & ~v10, v22);
  }

  else
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = v14 + (((v8 | 7 | v10) + 16) & ~(v8 | 7 | v10));
  }

  return a1;
}

uint64_t destroy for PickerCurrentValueLabel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (a1 + (v5 | 7) + 1) & ~(v5 | 7);

  (*(v4 + 8))((v5 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v5, v3);
  v7 = *(*(a2 + 16) - 8);
  v8 = *(v7 + 8);
  v9 = (v6 + ((v5 + 16) & ~v5) + *(v4 + 64) + *(v7 + 80)) & ~*(v7 + 80);

  return v8(v9);
}

_BYTE *initializeWithCopy for PickerCurrentValueLabel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v19 = *(*(v5 - 8) + 16);
  v6 = *(v5 - 8) + 16;
  v7 = *(*(v5 - 8) + 80);
  v8 = (v7 | 7) + 1;
  v9 = (&a1[v8] & ~(v7 | 7));
  v10 = (&a2[v8] & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v11 + v7 + 8;
  v14 = v12 + v7 + 8;

  v19(v13 & ~v7, v14 & ~v7, v5);
  v15 = *(*(a3 + 16) - 8);
  v16 = *(v15 + 80);
  v17 = *(v6 + 48) + v16 + ((v7 + 16) & ~v7);
  (*(v15 + 16))((v9 + v17) & ~v16, (v10 + v17) & ~v16);
  return a1;
}

_BYTE *assignWithCopy for PickerCurrentValueLabel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 | 7) + 1;
  v9 = (&a1[v8] & ~(v7 | 7));
  v10 = (&a2[v8] & ~(v7 | 7));
  *v9 = *v10;

  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  (*(v6 + 24))((v11 + v7 + 8) & ~v7, (v12 + v7 + 8) & ~v7, v5);
  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 80);
  v15 = *(v6 + 64) + ((v7 + 16) & ~v7) + v14;
  (*(v13 + 24))((v9 + v15) & ~v14, (v10 + v15) & ~v14);
  return a1;
}

_BYTE *initializeWithTake for PickerCurrentValueLabel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v8 = *(v5 + 80);
  v9 = (v8 | 7) + 1;
  v10 = (&a1[v9] & ~(v8 | 7));
  v11 = (&a2[v9] & ~(v8 | 7));
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v6((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8);
  v14 = *(*(a3 + 16) - 8);
  v15 = *(v14 + 80);
  v16 = *(v7 + 32) + v15 + ((v8 + 16) & ~v8);
  (*(v14 + 32))((v10 + v16) & ~v15, (v11 + v16) & ~v15);
  return a1;
}

_BYTE *assignWithTake for PickerCurrentValueLabel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 | 7) + 1;
  v9 = (&a1[v8] & ~(v7 | 7));
  v10 = (&a2[v8] & ~(v7 | 7));
  *v9 = *v10;

  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  (*(v6 + 40))((v11 + v7 + 8) & ~v7, (v12 + v7 + 8) & ~v7, v5);
  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 80);
  v15 = *(v6 + 64) + ((v7 + 16) & ~v7) + v14;
  (*(v13 + 40))((v9 + v15) & ~v14, (v10 + v15) & ~v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for PickerCurrentValueLabel(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v4 + 80);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 | 7;
  v14 = ((v10 + 16) & ~v10) + *(*(*(a3 + 24) - 8) + 64) + v11;
  v15 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = ((v14 + ((v13 + 1) & ~v13)) & ~v11) + *(*(v7 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      v24 = (a1 + v13 + 1) & ~v13;
      if (v6 < v9)
      {
        return (*(v8 + 48))((v14 + v24) & ~v11, v9, v7);
      }

      v25 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v25 + v10 + 8) & ~v10);
      }

      v26 = *v25;
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for PickerCurrentValueLabel(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a4 + 24) - 8) + 64);
  v16 = ((v15 + v13 + (((v12 | 7) + 1) & ~(v12 | 7))) & ~v13) + *(*(v9 - 8) + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 < 4)
    {
      v21 = (v20 >> (8 * v16)) + 1;
      if (v16)
      {
        v24 = v20 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_61:
              if (v19 == 2)
              {
                *&a1[v16] = v21;
              }

              else
              {
                *&a1[v16] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v19)
    {
      a1[v16] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v19)
  {
    goto LABEL_33;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v25 = (&a1[(v12 | 7) + 1] & ~(v12 | 7));
  if (v8 >= v11)
  {
    if (v8 >= a2)
    {
      v30 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v32 = *(v6 + 56);

        v32((v30 + v12 + 8) & ~v12);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v31 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v31 = a2 - 1;
        }

        *v30 = v31;
      }
    }

    else
    {
      if (v15 <= 3)
      {
        v27 = ~(-1 << (8 * v15));
      }

      else
      {
        v27 = -1;
      }

      if (v15)
      {
        v28 = v27 & (~v8 + a2);
        if (v15 <= 3)
        {
          v29 = v15;
        }

        else
        {
          v29 = 4;
        }

        bzero(v25, v15);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v25 = v28;
            v25[2] = BYTE2(v28);
          }

          else
          {
            *v25 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v25 = v28;
        }

        else
        {
          *v25 = v28;
        }
      }
    }
  }

  else
  {
    v26 = *(v10 + 56);

    v26(&v25[v15 + v13] & ~v13);
  }
}

uint64_t PickerCurrentValueLabel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = *(a1 + 24);
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v45 = *(v5 + 32);
  v54[0] = v6;
  v54[1] = v3;
  v55 = v45;
  v7 = type metadata accessor for PickerCurrentValueLabel.Root();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v41 = v10;
  v11 = type metadata accessor for _VariadicView.Tree();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v37 - v15;
  v16 = type metadata accessor for PickerStyleConfiguration.CurrentValueLabel();
  v17 = type metadata accessor for _ConditionalContent();
  v42 = *(v17 - 8);
  v43 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  v20 = *v2;
  WitnessTable = swift_getWitnessTable();
  v22 = OptionalViewAlias.wrappedValue.getter(v20, v16, WitnessTable, v54);
  if (v54[0])
  {
    v23 = type metadata accessor for Binding();
    v24 = v37;
    MEMORY[0x18D00ACC0](v23);
    v25 = (*(v38 + 32))(v9, v24, v3);
    MEMORY[0x1EEE9AC00](v25);
    *&v26 = v6;
    *(&v26 + 1) = v3;
    v27 = v45;
    *(&v37 - 3) = v26;
    *(&v37 - 2) = v27;
    *(&v37 - 2) = v2;
    _VariadicView.Tree.init(_:content:)();
    v52 = swift_getWitnessTable();
    v53 = v45;
    v28 = swift_getWitnessTable();
    v29 = v39;
    static ViewBuilder.buildExpression<A>(_:)(v13, v11, v28);
    v30 = *(v40 + 8);
    v30(v13, v11);
    static ViewBuilder.buildExpression<A>(_:)(v29, v11, v28);
    static ViewBuilder.buildEither<A, B>(second:)(v13, v16, v11);
    v30(v13, v11);
    v30(v29, v11);
  }

  else
  {
    v31 = static ViewBuilder.buildExpression<A>(_:)(v22, v16, &protocol witness table for PickerStyleConfiguration<A>.CurrentValueLabel);
    static ViewBuilder.buildExpression<A>(_:)(v31, v16, &protocol witness table for PickerStyleConfiguration<A>.CurrentValueLabel);
    v46 = swift_getWitnessTable();
    v47 = v45;
    v32 = swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(first:)(v32, v16);
  }

  v50 = swift_getWitnessTable();
  v51 = v45;
  v33 = swift_getWitnessTable();
  v48 = &protocol witness table for PickerStyleConfiguration<A>.CurrentValueLabel;
  v49 = v33;
  v34 = v43;
  v35 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v34, v35);
  return (*(v42 + 8))(v19, v34);
}

uint64_t closure #1 in PickerCurrentValueLabel.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for PickerCurrentValueLabel();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v14 + 56), a2, a4);
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a4);
  return (*(v7 + 8))(v9, a2);
}

double PickerCurrentValueLabel.Root.body(children:)@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  if (_VariadicView_Children.endIndex.getter())
  {
    closure #1 in PickerCurrentValueLabel.Root.body(children:)(a1[2], a1[3], a1[4], a1[5], v11);
    closure #2 in PickerCurrentValueLabel.Root.body(children:)();
    v4 = v11[11];
    a2[10] = v11[10];
    a2[11] = v4;
    a2[12] = v11[12];
    v5 = v11[7];
    a2[6] = v11[6];
    a2[7] = v5;
    v6 = v11[9];
    a2[8] = v11[8];
    a2[9] = v6;
    v7 = v11[3];
    a2[2] = v11[2];
    a2[3] = v7;
    v8 = v11[5];
    a2[4] = v11[4];
    a2[5] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
  }

  else
  {
    *&v9 = 0;
    a2[11] = 0u;
    a2[12] = 0u;
    a2[9] = 0u;
    a2[10] = 0u;
    a2[7] = 0u;
    a2[8] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return *&v9;
}

__n128 closure #1 in PickerCurrentValueLabel.Root.body(children:)@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  *&v9 = a3;
  *(&v9 + 1) = a4;
  type metadata accessor for PickerCurrentValueLabel.Root();
  PickerCurrentValueLabel.Root.selectedIndex(for:)();
  if (v7)
  {
    *(a5 + 96) = 0;
    result.n128_u64[0] = 0;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    _VariadicView_Children.subscript.getter();
    *(a5 + 64) = v12;
    *(a5 + 80) = v13;
    *(a5 + 96) = v14;
    *a5 = v8;
    *(a5 + 16) = v9;
    result = v11;
    *(a5 + 32) = v10;
    *(a5 + 48) = v11;
  }

  return result;
}

uint64_t PickerCurrentValueLabel.Root.selectedIndex(for:)()
{
  result = _VariadicView_Children.tagIndex<A>(_:)();
  if (v1)
  {
    v2 = result;
    _StringGuts.grow(_:)(108);
    MEMORY[0x18D00C9B0](0xD000000000000017, 0x800000018CD45710);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](0xD000000000000053, 0x800000018CD45730);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    return v2;
  }

  return result;
}

uint64_t closure #2 in PickerCurrentValueLabel.Root.body(children:)()
{
  type metadata accessor for PickerCurrentValueLabel.Root();
  PickerCurrentValueLabel.Root.selectedIndex(for:)();
  return _VariadicView_Children.subscript.getter();
}

uint64_t PickerCurrentValueLabel.init(selection:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  type metadata accessor for PickerStyleConfiguration.CurrentValueLabel();
  swift_getWitnessTable();
  *a4 = protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key() & 1;
  v8 = type metadata accessor for PickerCurrentValueLabel();
  v9 = *(v8 + 52);
  v10 = type metadata accessor for Binding();
  (*(*(v10 - 8) + 32))(&a4[v9], a1, v10);
  return (*(*(a3 - 8) + 32))(&a4[*(v8 + 56)], a2, a3);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance PickerCurrentValueLabel<A, B>.Root(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for PickerCurrentValueLabel<A, B>.Root(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>? and conformance <A> A?)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>?();
    lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>?()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>?)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>?);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    type metadata accessor for _VariadicView_Children.Element?();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>);
    }
  }
}

void type metadata accessor for _VariadicView_Children.Element?()
{
  if (!lazy cache variable for type metadata for _VariadicView_Children.Element?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView_Children.Element?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    lazy protocol witness table accessor for type _VariadicView_Children.Element? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView_Children.Element? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _VariadicView_Children.Element? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children.Element? and conformance <A> A?)
  {
    type metadata accessor for _VariadicView_Children.Element?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children.Element? and conformance <A> A?);
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance AutomaticMultiDatePickerStyle.Body@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIKitCalendarView(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance AutomaticMultiDatePickerStyle.Body@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of MultiDatePickerValue<AutomaticMultiDatePickerStyle>(Value, v7);
  outlined init with take of MultiDatePickerStyleConfiguration(v7, v4);
  return UIKitCalendarView.init(configuration:)(v4, a1);
}

uint64_t protocol witness for static MultiDatePickerStyle._makeView(value:inputs:) in conformance AutomaticMultiDatePickerStyle()
{
  type metadata accessor for UIKitCalendarView(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type UIKitCalendarView and conformance UIKitCalendarView();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static MultiDatePickerStyle._makeViewList(value:inputs:) in conformance AutomaticMultiDatePickerStyle()
{
  type metadata accessor for UIKitCalendarView(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type UIKitCalendarView and conformance UIKitCalendarView();
  return static View.makeDebuggableViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body()
{
  result = lazy protocol witness table cache variable for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body;
  if (!lazy protocol witness table cache variable for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitCalendarView and conformance UIKitCalendarView()
{
  result = lazy protocol witness table cache variable for type UIKitCalendarView and conformance UIKitCalendarView;
  if (!lazy protocol witness table cache variable for type UIKitCalendarView and conformance UIKitCalendarView)
  {
    type metadata accessor for UIKitCalendarView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitCalendarView and conformance UIKitCalendarView);
  }

  return result;
}

void type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>()
{
  if (!lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>)
  {
    v0 = type metadata accessor for MultiDatePickerValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>);
    }
  }
}

uint64_t outlined init with copy of MultiDatePickerValue<AutomaticMultiDatePickerStyle>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MultiDatePickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ForEach.init<A, B>(_:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a7;
  v34 = a8;
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a9;
  v32 = a13;
  v29[1] = a5;
  v30 = a11;
  v35 = a10;
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v29 - v20;
  v22 = *a2;
  (*(v18 + 16))(v29 - v20, a1, v17, v19);
  v40 = a5;
  v41 = a6;
  v23 = v33;
  v24 = v34;
  v42 = v33;
  v43 = v34;
  v44 = a10;
  v25 = v30;
  v45 = v30;
  v46 = a12;
  v26 = v32;
  v47 = v32;
  KeyPath = swift_getKeyPath();
  v48 = v22;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ForEach.init<A, B>(_:id:editActions:content:)(v21, KeyPath, &v48, v38, v39, a6, v23, AssociatedConformanceWitness, v37, v24, v35, v25, v26);
  return (*(v18 + 8))(v36, v17);
}

uint64_t ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v54 = a7;
  v57 = a4;
  v58 = a5;
  v59 = a9;
  v63 = a13;
  v64 = a2;
  v60 = a12;
  v61 = a1;
  v53 = a11;
  v16 = *a2;
  v17 = type metadata accessor for Binding();
  v52 = *(v17 - 8);
  v50 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v23 = *(a10 + 8);
  v47 = a10;
  v73 = a6;
  v74 = v22;
  v46 = v22;
  v75 = v23;
  v76 = a8;
  v24 = a8;
  v55 = type metadata accessor for IndexedIdentifierCollection();
  v25 = MEMORY[0x1EEE9AC00](v55);
  v27 = &v45 - v26;
  v56 = &v45 - v26;
  v49 = *a3;
  v28 = v17;
  v29 = v17;
  v30 = v61;
  MEMORY[0x18D00ACC0](v28, v25);
  v31 = v64;

  v45 = a6;
  IndexedIdentifierCollection.init(_:id:)(v21, v31, a6, v23, v24, v27);
  v65 = v22;
  v66 = a6;
  v32 = v54;
  v67 = v54;
  v68 = v24;
  v33 = v24;
  v48 = v24;
  v34 = v53;
  v69 = a10;
  v70 = v53;
  v71 = v60;
  v72 = v63;
  KeyPath = swift_getKeyPath();
  v35 = v52;
  (*(v52 + 16))(v62, v30, v29);
  v36 = (*(v35 + 80) + 80) & ~*(v35 + 80);
  v37 = (v50 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v45;
  *(v38 + 2) = v46;
  *(v38 + 3) = v39;
  *(v38 + 4) = v32;
  *(v38 + 5) = v33;
  *(v38 + 6) = v47;
  *(v38 + 7) = v34;
  v40 = v62;
  v41 = v63;
  *(v38 + 8) = v60;
  *(v38 + 9) = v41;
  (*(v35 + 32))(&v38[v36], v40, v29);
  *&v38[v37] = v49;
  v42 = &v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8];
  v43 = v58;
  *v42 = v57;
  *(v42 + 1) = v43;
  type metadata accessor for EditableCollectionContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  ForEach<>.init(_:id:content:)();

  return (*(v35 + 8))(v61, v29);
}

uint64_t IndexedIdentifierCollection.init(_:id:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a2;
  v36 = a6;
  v32 = *a2;
  v9 = *(a3 - 8);
  v30 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v31 = type metadata accessor for LazySequence();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - v13;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  dispatch thunk of Collection.indices.getter();
  MEMORY[0x18D00CB50](AssociatedTypeWitness, v12);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  v18 = v29;
  (*(v9 + 16))(v29, a1, a3);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = (v30 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a3;
  v22 = *(v32 + *MEMORY[0x1E69E77B0] + 8);
  *(v21 + 3) = v22;
  *(v21 + 4) = a4;
  v23 = v34;
  *(v21 + 5) = v34;
  (*(v9 + 32))(&v21[v19], v18, a3);
  *&v21[v20] = v35;

  v37 = a3;
  v38 = v22;
  v39 = a4;
  v40 = v23;
  type metadata accessor for IndexedIdentifierCollection.Element();
  v24 = v31;
  swift_getWitnessTable();
  v25 = v28;
  LazySequenceProtocol.map<A>(_:)();

  (*(v9 + 8))(a1, a3);
  return (*(v33 + 8))(v25, v24);
}

uint64_t closure #1 in ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v82 = a5;
  v83 = a4;
  v80 = a3;
  v99 = a2;
  v92 = a1;
  v85 = a9;
  v96 = a14;
  v97 = a6;
  v95 = a13;
  v76 = a12;
  v93 = a8;
  v94 = a10;
  v91 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for EditableCollectionContent();
  v84 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v64 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v87 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v73 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = type metadata accessor for Binding();
  v86 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  v88 = a7;
  v72 = swift_getAssociatedTypeWitness();
  v75 = type metadata accessor for Binding();
  v74 = *(v75 - 8);
  v30 = MEMORY[0x1EEE9AC00](v75);
  v71 = &v64 - v31;
  v32 = *(v25 + 16);
  v89 = v25 + 16;
  v90 = v32;
  v69 = v29;
  (v32)(v29, v99, v24, v30);
  v68 = *(v19 + 16);
  v68(v23, v92, AssociatedTypeWitness);
  v33 = *(v25 + 80);
  v34 = (v33 + 96) & ~v33;
  v35 = *(v19 + 80);
  v65 = v34;
  v36 = (v26 + v34 + v35) & ~v35;
  v67 = v33 | v35;
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 4) = v97;
  *(v37 + 5) = a7;
  v38 = v94;
  *(v37 + 6) = v93;
  *(v37 + 7) = v38;
  v39 = v76;
  *(v37 + 8) = v91;
  *(v37 + 9) = v39;
  v40 = v96;
  *(v37 + 10) = v95;
  *(v37 + 11) = v40;
  v41 = *(v25 + 32);
  v66 = v25 + 32;
  v42 = v29;
  v43 = v86;
  v41(&v37[v34], v42, v86);
  v44 = *(v19 + 32);
  v45 = AssociatedTypeWitness;
  v44(&v37[v36], v23, AssociatedTypeWitness);
  v46 = v70;
  v90(v70, v99, v43);
  v47 = v73;
  v68(v73, v92, v45);
  v48 = swift_allocObject();
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  v49 = v88;
  *(v48 + 4) = v97;
  *(v48 + 5) = v49;
  v51 = v93;
  v50 = v94;
  *(v48 + 6) = v93;
  *(v48 + 7) = v50;
  *(v48 + 8) = v91;
  *(v48 + 9) = v39;
  v52 = v96;
  *(v48 + 10) = v95;
  *(v48 + 11) = v52;
  v53 = v46;
  v54 = v86;
  v41(&v48[v65], v53, v86);
  v44(&v48[v36], v47, AssociatedTypeWitness);
  v55 = v71;
  Binding.init(get:set:)();
  v56 = v69;
  v90(v69, v99, v54);
  v100 = v80;
  v57 = v78;
  v83(v55);
  v58 = v77;
  EditableCollectionContent.init(data:editActions:content:)(v56, &v100, v57, v51, v88, v77);
  (*(v74 + 8))(v55, v75);
  v59 = v81;
  WitnessTable = swift_getWitnessTable();
  v61 = v79;
  static ViewBuilder.buildExpression<A>(_:)(v58, v59, WitnessTable);
  v62 = *(v84 + 8);
  v62(v58, v59);
  static ViewBuilder.buildExpression<A>(_:)(v61, v59, WitnessTable);
  return (v62)(v61, v59);
}

uint64_t partial apply for closure #1 in ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v13 = *(v2 + 56);
  v14 = *(v2 + 40);
  v8 = *(v2 + 72);
  v9 = *(type metadata accessor for Binding() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(a1, v2 + v10, *(v2 + v11), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v5, v6, v7, a2, v14, *(&v14 + 1), v13, *(&v13 + 1), v8);
}

uint64_t closure #1 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v8);
  v9 = dispatch thunk of Collection.subscript.read();
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v11, AssociatedTypeWitness);
  v9(v14, 0);
  return (*(v5 + 8))(v7, a2);
}

uint64_t closure #2 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a1;
  v9 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v21 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(&v21 - v18, a5, v17);
  (*(v13 + 16))(v15, v22, AssociatedTypeWitness);
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  dispatch thunk of MutableCollection.subscript.setter();
  specialized Binding.wrappedValue.setter();
  return (*(v9 + 8))(v11, a7);
}

uint64_t EditableCollectionContent.init(data:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Binding();
  v13 = *(v12 - 8);
  v37 = *(v13 + 64);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a2;
  v18 = *(a4 - 8);
  v19 = *(v18 + 16);
  v38 = a6;
  v36 = a3;
  v19(a6, a3, a4, v14);
  v35 = v17;
  v39 = v17;
  type metadata accessor for EditActions();
  v20 = 0;
  v21 = 0;
  if (EditActions.canDelete.getter())
  {
    (*(v13 + 16))(v16, a1, v12);
    v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    (*(v13 + 32))(v21 + v22, v16, v12);
    v20 = partial apply for closure #1 in EditableCollectionContent.init(data:editActions:content:);
  }

  v34 = v16;
  v23 = v12;
  v24 = type metadata accessor for EditableCollectionContent();
  v25 = (v38 + *(v24 + 36));
  *v25 = v20;
  v25[1] = v21;
  v39 = v35;
  v26 = EditActions.canDelete.getter();
  (*(v18 + 8))(v36, a4);
  if (v26)
  {
    v27 = *(v13 + 32);
    v28 = v34;
    v27(v34, a1, v23);
    v29 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = a4;
    *(v30 + 24) = a5;
    result = (v27)(v30 + v29, v28, v23);
    v32 = partial apply for closure #2 in EditableCollectionContent.init(data:editActions:content:);
  }

  else
  {
    result = (*(v13 + 8))(a1, v23);
    v32 = 0;
    v30 = 0;
  }

  v33 = (v38 + *(v24 + 40));
  *v33 = v32;
  v33[1] = v30;
  return result;
}

uint64_t static EditActions.all.getter()
{
  type metadata accessor for EditActions();
  static Array._allocateUninitialized(_:)();
  swift_getWitnessTable();
  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance EditActions<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

uint64_t protocol witness for SetAlgebra.contains(_:) in conformance EditActions<A>()
{
  swift_getWitnessTable();

  return OptionSet<>.contains(_:)();
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.insert(_:) in conformance EditActions<A>()
{
  swift_getWitnessTable();

  return OptionSet<>.insert(_:)();
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type Int and conformance Int();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EditActions<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = EditActions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EditActions<A>@<X0>(uint64_t *a1@<X8>)
{
  result = EditActions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance EditActions<A>()
{
  swift_getWitnessTable();

  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t static EditActions<A>.all.getter()
{
  type metadata accessor for EditActions();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  *v0 = 1;
  v1 = type metadata accessor for Array();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v1, v2, v3, v4);
  swift_getWitnessTable();
  return SetAlgebra<>.init(arrayLiteral:)();
}

{
  type metadata accessor for EditActions();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  *v0 = xmmword_18CD63400;
  v1 = type metadata accessor for Array();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v1, v2, v3, v4);
  swift_getWitnessTable();
  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t closure #1 in EditableCollectionContent.init(data:editActions:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  type metadata accessor for MutableCollection & RangeReplaceableCollection();
  if (swift_dynamicCast())
  {
    outlined init with take of MutableCollection & RangeReplaceableCollection(&v12, &v15);
    __swift_mutable_project_boxed_opaque_existential_1(&v15, v16);
    RangeReplaceableCollection<>.remove(atOffsets:)();
    outlined init with copy of MutableCollection & RangeReplaceableCollection(&v15, &v12);
LABEL_5:
    swift_dynamicCast();
    specialized Binding.wrappedValue.setter();
    (*(v5 + 8))(v7, a4);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  outlined destroy of (MutableCollection & RangeReplaceableCollection)?(&v12);
  MEMORY[0x18D00ACC0](v10);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for RangeReplaceableCollection);
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v12, &v15);
    __swift_mutable_project_boxed_opaque_existential_1(&v15, v16);
    RangeReplaceableCollection._remove(atOffsets:)();
    outlined init with copy of _Benchmark(&v15, &v12);
    goto LABEL_5;
  }

  *&v14 = 0;
  v12 = 0u;
  v13 = 0u;
  return outlined destroy of LocationBasedSensoryFeedback?(&v12, &lazy cache variable for type metadata for RangeReplaceableCollection?, &lazy cache variable for type metadata for RangeReplaceableCollection);
}

uint64_t closure #2 in EditableCollectionContent.init(data:editActions:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for MutableCollection);
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v11, v13);
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    MutableCollection.move(fromOffsets:toOffset:)();
    outlined init with copy of _Benchmark(v13, v11);
    swift_dynamicCast();
    specialized Binding.wrappedValue.setter();
    (*(v6 + 8))(v8, a5);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    return outlined destroy of LocationBasedSensoryFeedback?(v11, &lazy cache variable for type metadata for MutableCollection?, &lazy cache variable for type metadata for MutableCollection);
  }
}

uint64_t EditableCollectionContent<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a2;
  v43 = a3;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<OnDeleteDefaultTraitKey>);
  v10 = type metadata accessor for ModifiedContent();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v37 - v11;
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveDefaultTraitKey>);
  v12 = type metadata accessor for ModifiedContent();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v39 = &v37 - v17;
  (*(v7 + 16))(v9, v4, v6, v16);
  v37 = a1;
  v38 = v4;
  v18 = (v4 + *(a1 + 36));
  v19 = *v18;
  v20 = v18[1];
  if (*v18)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v22 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v49 = v22;
  v50 = v21;
  outlined copy of AppIntentExecutor?(v19);
  v23 = v41;
  View._trait<A>(_:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v22);
  (*(v7 + 8))(v9, v6);
  v24 = (v38 + *(v37 + 40));
  v25 = *v24;
  v26 = v24[1];
  if (*v24)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    v28 = _s10Foundation8IndexSetVSiIegny_ACSiytIegnnr_TRTA_0;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v49 = v28;
  v50 = v27;
  outlined copy of AppIntentExecutor?(v25);
  v29 = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<OnDeleteDefaultTraitKey>);
  v47 = v23;
  v48 = v29;
  WitnessTable = swift_getWitnessTable();
  v31 = v44;
  View._trait<A>(_:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v28);
  (*(v40 + 8))(v31, v10);
  v32 = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveDefaultTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveDefaultTraitKey>);
  v45 = WitnessTable;
  v46 = v32;
  v33 = swift_getWitnessTable();
  v34 = v39;
  static ViewBuilder.buildExpression<A>(_:)(v14, v12, v33);
  v35 = *(v42 + 8);
  v35(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)(v34, v12, v33);
  return (v35)(v34, v12);
}

uint64_t IndexedIdentifierCollection.Element.init(index:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = type metadata accessor for IndexedIdentifierCollection.Element();
  return (*(*(a3 - 8) + 32))(a4 + *(v9 + 52), a2, a3);
}

uint64_t closure #1 in IndexedIdentifierCollection.init(_:id:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v22 = a4;
  v23 = a3;
  v21 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20 - v5;
  v8 = *v7;
  v9 = *(*v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v20 - v15;
  (*(v17 + 16))(&v20 - v15, a1, v14);
  v18 = dispatch thunk of Collection.subscript.read();
  (*(v9 + 16))(v12);
  v18(v24, 0);
  swift_getAtKeyPath();
  (*(v9 + 8))(v12, v8);
  return IndexedIdentifierCollection.Element.init(index:id:)(v16, v6, v21, v22);
}

uint64_t IndexedIdentifierCollection.startIndex.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for IndexedIdentifierCollection.Element();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for LazyMapSequence();
  return a2(v4, AssociatedConformanceWitness);
}

uint64_t IndexedIdentifierCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for IndexedIdentifierCollection.Element();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for LazyMapSequence();
  return a3(a1, v6, AssociatedConformanceWitness);
}

void (*protocol witness for Collection.subscript.read in conformance IndexedIdentifierCollection<A, B>(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = IndexedIdentifierCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>;
}

void (*IndexedIdentifierCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 32);
  *v7 = *(a3 + 16);
  v7[1] = v9;
  v10 = type metadata accessor for IndexedIdentifierCollection.Element();
  v8[4] = v10;
  v11 = *(v10 - 8);
  v8[5] = v11;
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v8[6] = v12;
  IndexedIdentifierCollection.subscript.getter(a2, a3);
  return IndexedIdentifierCollection.subscript.read;
}

void IndexedIdentifierCollection.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  (*(*(*a1 + 40) + 8))(v2, *(*a1 + 32));
  free(v2);

  free(v1);
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance IndexedIdentifierCollection<A, B>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance IndexedIdentifierCollection<A, B>(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v5 + 32))(&v10 - v7, a1, AssociatedTypeWitness, v6);
  IndexedIdentifierCollection.index(after:)(v8, a2);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance IndexedIdentifierCollection<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  type metadata accessor for IndexingIterator();
  IndexedIdentifierCollection.startIndex.getter(a1);
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance IndexedIdentifierCollection<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance IndexedIdentifierCollection<A, B>(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t IndexedIdentifierCollection<>.index(before:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for IndexedIdentifierCollection.Element();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for LazyMapSequence();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return MEMORY[0x18D00EBB0](a1, v2, AssociatedConformanceWitness);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> IndexedIdentifierCollection<A, B>(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  (*(v3 + 32))(&v8 - v5, a1, AssociatedTypeWitness, v4);
  IndexedIdentifierCollection<>.index(before:)(v6);
  return (*(v3 + 8))(v6, AssociatedTypeWitness);
}

void type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _TraitWritingModifier();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> IndexedIdentifierCollection<A, B>()
{
  return associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> IndexedIdentifierCollection<A, B>();
}

{
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for EditableCollectionContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for EditableCollectionContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v11 < 0xFFFFFFFFuLL)
    {
      *v10 = *v11;
    }

    else
    {
      v12 = *(v11 + 8);
      *v10 = *v11;
      *(v10 + 8) = v12;
    }

    v13 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    if (*v14 < 0xFFFFFFFFuLL)
    {
      *v13 = *v14;
      return v3;
    }

    v15 = *(v14 + 8);
    *v13 = *v14;
    *(v13 + 8) = v15;
  }

  return v3;
}

uint64_t destroy for EditableCollectionContent(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  result = (*v3)();
  v5 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v5 >= 0xFFFFFFFFuLL)
  {
  }

  if (*((v5 + 23) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for EditableCollectionContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*v8 < 0xFFFFFFFFuLL)
  {
    *v7 = *v8;
  }

  else
  {
    v9 = *(v8 + 8);
    *v7 = *v8;
    *(v7 + 8) = v9;
  }

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*v11 < 0xFFFFFFFFuLL)
  {
    *v10 = *v11;
  }

  else
  {
    v12 = *(v11 + 8);
    *v10 = *v11;
    *(v10 + 8) = v12;
  }

  return a1;
}

uint64_t assignWithCopy for EditableCollectionContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  if (*v7 < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v11 = v8[1];
      *v7 = v9;
      v7[1] = v11;

      goto LABEL_8;
    }
  }

  else
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v10 = v8[1];
      *v7 = v9;
      v7[1] = v10;

      goto LABEL_8;
    }
  }

  *v7 = *v8;
LABEL_8:
  v12 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v16 = v13[1];
      *v12 = v14;
      v12[1] = v16;

      return a1;
    }

LABEL_14:
    *v12 = *v13;
    return a1;
  }

  if (v14 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v15 = v13[1];
  *v12 = v14;
  v12[1] = v15;

  return a1;
}

uint64_t initializeWithTake for EditableCollectionContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*v8 < 0xFFFFFFFFuLL)
  {
    *v7 = *v8;
  }

  else
  {
    v9 = *(v8 + 8);
    *v7 = *v8;
    *(v7 + 8) = v9;
  }

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  if (*v11 < 0xFFFFFFFF)
  {
    *v10 = *v11;
  }

  else
  {
    v13 = v11[1];
    *v10 = v12;
    *(v10 + 8) = v13;
  }

  return a1;
}

uint64_t assignWithTake for EditableCollectionContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  if (*v7 < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v11 = v8[1];
      *v7 = v9;
      v7[1] = v11;
      goto LABEL_8;
    }
  }

  else
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v10 = v8[1];
      *v7 = v9;
      v7[1] = v10;

      goto LABEL_8;
    }
  }

  *v7 = *v8;
LABEL_8:
  v12 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v16 = v13[1];
      *v12 = v14;
      v12[1] = v16;
      return a1;
    }

LABEL_14:
    *v12 = *v13;
    return a1;
  }

  if (v14 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v15 = v13[1];
  *v12 = v14;
  v12[1] = v15;

  return a1;
}

uint64_t getEnumTagSinglePayload for EditableCollectionContent(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for EditableCollectionContent(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          v19[1] = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t type metadata completion function for IndexedIdentifierCollection()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for IndexedIdentifierCollection.Element();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for LazyMapSequence();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for IndexedIdentifierCollection(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v10 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return a1;
}

uint64_t destroy for IndexedIdentifierCollection(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for IndexedIdentifierCollection(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t assignWithCopy for IndexedIdentifierCollection(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t initializeWithTake for IndexedIdentifierCollection(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for IndexedIdentifierCollection(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for IndexedIdentifierCollection(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void storeEnumTagSinglePayload for IndexedIdentifierCollection(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v9 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v9 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v9)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v10) = 0;
  }

  else if (v14)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v7 < 0x7FFFFFFF)
  {
    v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = (a2 - 1);
    }
  }

  else
  {
    v17 = *(v6 + 56);

    v17(a1, a2);
  }
}

uint64_t type metadata completion function for IndexedIdentifierCollection.Element()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for IndexedIdentifierCollection.Element(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = ((v8 + v11) & ~v11) + *(v10 + 64);
  v14 = (*(v7 + 80) | *(v10 + 80));
  if (v14 > 7 || ((*(v7 + 80) | *(v10 + 80)) & 0x100000) != 0 || v13 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v14 + 16) & ~v14));
  }

  else
  {
    v18 = ~v11;
    (*(v7 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v10 + 16))((a1 + v12) & v18, (a2 + v12) & v18, v9);
  }

  return a1;
}

uint64_t destroy for IndexedIdentifierCollection.Element(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 8;
  (*v5)(a1, AssociatedTypeWitness);
  v6 = *(*(a2 + 24) - 8);
  v7 = *(v6 + 8);
  v8 = (*(v5 + 56) + a1 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t initializeWithCopy for IndexedIdentifierCollection.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 16;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 16))((*(v7 + 48) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 48) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithCopy for IndexedIdentifierCollection.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 24;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 24))((*(v7 + 40) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 40) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t initializeWithTake for IndexedIdentifierCollection.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 32;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 32))((*(v7 + 32) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 32) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithTake for IndexedIdentifierCollection.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 40;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 40))((*(v7 + 24) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 24) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for IndexedIdentifierCollection.Element(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for IndexedIdentifierCollection.Element(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t partial apply for closure #1 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  type metadata accessor for Binding();
  swift_getAssociatedTypeWitness();
  return closure #1 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(*(v1 + 16), v3, a1);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 40);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 96) & ~*(*v2 + 80);
  v4 = v3 + *(*v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[10], v1);
  (*(v6 + 8))(v0 + v7, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(type metadata accessor for Binding() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  return closure #2 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(a1, v1[2], v1[3], v1 + v6, v1 + ((v7 + *(v8 + 80)) & ~*(v8 + 80)), v3, v4);
}

uint64_t partial apply for closure #2 in EditableCollectionContent.init(data:editActions:content:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for Binding() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #2 in EditableCollectionContent.init(data:editActions:content:)(a1, a2, v8, v5, v6);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[10], v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in EditableCollectionContent.init(data:editActions:content:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for Binding() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in EditableCollectionContent.init(data:editActions:content:)(a1, v6, v3, v4);
}

unint64_t type metadata accessor for MutableCollection & RangeReplaceableCollection()
{
  result = lazy cache variable for type metadata for MutableCollection & RangeReplaceableCollection;
  if (!lazy cache variable for type metadata for MutableCollection & RangeReplaceableCollection)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MutableCollection & RangeReplaceableCollection);
  }

  return result;
}

uint64_t outlined destroy of (MutableCollection & RangeReplaceableCollection)?(uint64_t a1)
{
  type metadata accessor for (MutableCollection & RangeReplaceableCollection)?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (MutableCollection & RangeReplaceableCollection)?()
{
  if (!lazy cache variable for type metadata for (MutableCollection & RangeReplaceableCollection)?)
  {
    type metadata accessor for MutableCollection & RangeReplaceableCollection();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (MutableCollection & RangeReplaceableCollection)?);
    }
  }
}

uint64_t outlined init with copy of MutableCollection & RangeReplaceableCollection(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _AutomaticNavigationStackStyle.makeBody(configuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

id CustomizableDocumentViewControllerRepresentable.makeUIViewController(context:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v31 = *(a1 + 8);
  v4 = v1[16];
  v5 = v2[14];
  v6 = *(v5 + 16);
  v34 = v5;
  if (v6)
  {
    v7 = v5 + 32;

    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of DocumentLaunchScreenAction(v7, &v35);
      outlined init with copy of DocumentCreationStrategy?(v36, &v37, type metadata accessor for DocumentCreationStrategy?);
      outlined destroy of DocumentLaunchScreenAction(&v35);
      if (v38)
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v37, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
        }

        v10 = v8[2];
        v9 = v8[3];
        if (v10 >= v9 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
        }

        v8[2] = v10 + 1;
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v39, &v8[5 * v10 + 4]);
      }

      else
      {
        outlined destroy of DocumentCreationStrategy?(&v37);
      }

      v7 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = objc_allocWithZone(type metadata accessor for IdentifiedDocumentGroupDocumentCreation());
  v33 = IdentifiedDocumentGroupDocumentCreation.init(configurations:strategies:)(v4, v8);
  *&v33[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentBrowserContextMenu] = v2[15];
  if (v2[8])
  {
    v35 = v31;
    v36[0] = v3;
    v39[0] = 0uLL;

    MEMORY[0x18D009CB0](&v37, v12);
    v13 = Text.resolveString(in:with:idiom:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = v2[9];
  v17 = v2[10];
  v18 = v2[11];
  v32 = v2[12];
  v19 = v2[13];
  v20 = objc_allocWithZone(type metadata accessor for CustomizableDocumentViewController());
  v21 = &v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground;
  *&v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground] = 0;
  v23 = &v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView];
  *v24 = 0;
  v24[1] = 0;
  *v21 = v13;
  v21[1] = v15;
  *&v20[v22] = v16;
  *&v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions] = v34;
  v25 = *v23;
  *v23 = v17;
  v23[1] = v18;

  v26 = v33;
  outlined copy of AppIntentExecutor?(v17);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v25);
  v27 = *v24;
  *v24 = v32;
  v24[1] = v19;
  outlined copy of AppIntentExecutor?(v32);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27);
  v28 = specialized DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)(v26, 0, 0);

  outlined init with copy of RootModifier((v2 + 17), &v35);
  v29 = v28;
  DocumentViewController.rootModifier.setter(&v35);

  return v29;
}

void CustomizableDocumentViewControllerRepresentable.updateUIViewController(_:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3[8];
  if (v5)
  {
    v7 = v3[5];
    v6 = v3[6];
    v8 = v3[7];
    v9 = *(a2 + 16);
    v27[0] = *(a2 + 8);
    v27[1] = v9;
    v26[1] = 0;
    v26[2] = 0;
    outlined copy of Text?(v7, v6, v8, v5);

    MEMORY[0x18D009CB0](v26, v10);
    v11 = Text.resolveString(in:with:idiom:)();
    v13 = v12;

    v14 = (a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle);
    v15 = *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle + 8);
    if (v15)
    {
      if (*v14 == v11 && v15 == v13)
      {

        outlined consume of Text.Storage(v7, v6, v8 & 1);

        goto LABEL_12;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined consume of Text.Storage(v7, v6, v8 & 1);

      if (v25)
      {
        goto LABEL_12;
      }
    }

    else
    {
      outlined consume of Text.Storage(v7, v6, v8 & 1);
    }

    *v14 = v11;
    v14[1] = v13;
LABEL_12:
  }

  *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions) = v3[14];

  *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground) = v3[9];

  v17 = v3[10];
  v18 = v3[11];
  v19 = (a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView);
  v20 = *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView);
  *v19 = v17;
  v19[1] = v18;
  outlined copy of AppIntentExecutor?(v17);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v20);
  v21 = v3[12];
  v22 = v3[13];
  v23 = (a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView);
  v24 = *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView);
  *v23 = v21;
  v23[1] = v22;
  outlined copy of AppIntentExecutor?(v21);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v24);
  outlined init with copy of RootModifier((v3 + 17), v27);
  DocumentViewController.rootModifier.setter(v27);
  CustomizableDocumentViewController.setupLaunchOptions()();
}

double closure #1 in static DocumentLaunchScreenAction.makeActions(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v4 = *(a1 + 296);
  v5 = *(a1 + 304);
  if (v5 != 1 && (*(a1 + 296) & 8) != 0)
  {
    v17 = *(a1 + 280);
    v18 = *(a1 + 288);
    v74 = v4;
    v53 = v17;
    v54 = v18;
    if (v5)
    {
      swift_unknownObjectRetain();
      outlined destroy of DocumentCreationStrategy?(&v71);
      outlined init with copy of _Benchmark((v5 + 2), &v71);
      v19 = v5[5];
      v20 = v5[6];
      v21 = __swift_project_boxed_opaque_existential_1(v5 + 2, v19);
      v51 = &v51;
      v52 = a2;
      v22 = *(v19 - 8);
      v23 = MEMORY[0x1EEE9AC00](v21);
      v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25, v23);
      v26 = (*(v20 + 16))(v19, v20);
      v28 = v27;
      (*(v22 + 8))(v25, v19);
      a2 = v52;
      v29 = MEMORY[0x18D00C850](v26, v28);
    }

    else
    {
      v32 = *MEMORY[0x1E69DDCD0];
      outlined copy of PlatformItem.SelectionContent?(v17, v18, v4, 0);
      v29 = v32;
    }

    v31 = [objc_opt_self() createDocumentActionWithIntent_];

    v33 = *(a1 + 240);
    v55[12] = *(a1 + 224);
    v55[13] = v33;
    v55[14] = *(a1 + 256);
    v34 = *(a1 + 176);
    v55[8] = *(a1 + 160);
    v55[9] = v34;
    v35 = *(a1 + 208);
    v55[10] = *(a1 + 192);
    v55[11] = v35;
    v36 = *(a1 + 112);
    v55[4] = *(a1 + 96);
    v55[5] = v36;
    v37 = *(a1 + 144);
    v55[6] = *(a1 + 128);
    v55[7] = v37;
    v38 = *(a1 + 48);
    v55[0] = *(a1 + 32);
    v55[1] = v38;
    v39 = *(a1 + 80);
    v55[2] = *(a1 + 64);
    v55[3] = v39;
    if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v55) != 1)
    {
      v68 = v55[12];
      v69 = v55[13];
      v70 = v55[14];
      v64 = v55[8];
      v65 = v55[9];
      v66 = v55[10];
      v67 = v55[11];
      v60 = v55[4];
      v61 = v55[5];
      v62 = v55[6];
      v63 = v55[7];
      v56 = v55[0];
      v57 = v55[1];
      v58 = v55[2];
      v59 = v55[3];
      v40 = PlatformItem.PrimaryContent.text.getter();
      if (v40)
      {
        v41 = v40;
        v42 = [v40 string];

        v43 = v42;
        if (!v42)
        {
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = MEMORY[0x18D00C850](v44);
        }

        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = HIBYTE(v47) & 0xF;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v48 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          [v31 setTitle_];
          outlined consume of PlatformItem.SelectionContent?(v53, v54, v74, v5);

          goto LABEL_23;
        }
      }
    }

    outlined consume of PlatformItem.SelectionContent?(v53, v54, v74, v5);
    goto LABEL_23;
  }

  v7 = *(a1 + 240);
  v68 = *(a1 + 224);
  v69 = v7;
  v70 = *(a1 + 256);
  v8 = *(a1 + 176);
  v64 = *(a1 + 160);
  v65 = v8;
  v9 = *(a1 + 208);
  v66 = *(a1 + 192);
  v67 = v9;
  v10 = *(a1 + 112);
  v60 = *(a1 + 96);
  v61 = v10;
  v11 = *(a1 + 144);
  v62 = *(a1 + 128);
  v63 = v11;
  v12 = *(a1 + 48);
  v56 = *(a1 + 32);
  v57 = v12;
  v13 = *(a1 + 80);
  v58 = *(a1 + 64);
  v59 = v13;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v56) != 1)
  {
    v55[12] = v68;
    v55[13] = v69;
    v55[14] = v70;
    v55[8] = v64;
    v55[9] = v65;
    v55[10] = v66;
    v55[11] = v67;
    v55[4] = v60;
    v55[5] = v61;
    v55[6] = v62;
    v55[7] = v63;
    v55[0] = v56;
    v55[1] = v57;
    v55[2] = v58;
    v55[3] = v59;
    v14 = PlatformItem.PrimaryContent.text.getter();
    if (v14)
    {
      v15 = v14;
      v16 = [v14 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  outlined init with copy of PlatformItem(a1, v55);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v55, 0x271uLL);
  v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
LABEL_23:
  *a2 = v31;
  result = *&v71;
  v50 = v72;
  *(a2 + 8) = v71;
  *(a2 + 24) = v50;
  *(a2 + 40) = v73;
  return result;
}

uint64_t closure #1 in closure #1 in static DocumentLaunchScreenAction.makeActions(from:)(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 304);
  if (result != 1)
  {
    swift_unknownObjectRetain();
    PlatformItem.SelectionContent.select()();
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall CustomizableDocumentViewController.setupLaunchOptions()()
{
  v1 = v0;
  v2 = type metadata accessor for UIBackgroundConfiguration();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v77 - v7;
  DocumentViewController.setupLaunchOptions()();
  v9 = &v0[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle];
  v10 = *&v0[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle + 8];
  if (v10)
  {
    v11 = *v9;

    v12 = [v1 launchOptions];
    v13 = MEMORY[0x18D00C850](v11, v10);

    [v12 setTitle_];
  }

  if (*&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground])
  {

    static UIBackgroundConfiguration.clear()();
    type metadata accessor for _UIHostingView<AnyView>();
    v15 = objc_allocWithZone(v14);

    specialized _UIHostingView.init(rootView:)(v16);
    UIBackgroundConfiguration.customView.setter();
    v17 = [v1 launchOptions];
    (*(v3 + 16))(v5, v8, v2);
    UIDocumentViewControllerLaunchOptions.background.setter();

    (*(v3 + 8))(v8, v2);
  }

  v18 = *&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView];
  if (v18)
  {
    v19 = *&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView + 8];

    v20 = [v1 launchOptions];
    v21 = [v20 backgroundAccessoryView];

    if (v21)
    {
      type metadata accessor for DocumentAccessoryView();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = (v22 + OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider);
        *v23 = v18;
        v23[1] = v19;

        DocumentAccessoryView.updateRootView()();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18);
        goto LABEL_12;
      }
    }

    v24 = [v1 launchOptions];
    v25 = type metadata accessor for DocumentAccessoryView();
    v26 = objc_allocWithZone(v25);
    v27 = &v26[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider];
    *v27 = v18;
    v27[1] = v19;
    outlined copy of AppIntentExecutor?(v18);

    v28 = AnyView.init<A>(_:)();
    type metadata accessor for _UIHostingView<AnyView>();
    v30 = objc_allocWithZone(v29);
    *&v26[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView] = specialized _UIHostingView.init(rootView:)(v28);
    v78.receiver = v26;
    v78.super_class = v25;
    v31 = objc_msgSendSuper2(&v78, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v32 = OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView;
    v33 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView];
    v21 = v31;
    [v21 addSubview_];
    v34 = *&v31[v32];
    UIView.constrainToView(_:exceptEdges:identifier:)(v21, 0, 0xD000000000000015, 0x800000018CD8E150);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18);
    [v24 setBackgroundAccessoryView_];
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18);
  }

  else
  {
    v21 = [v1 launchOptions];
    [v21 setBackgroundAccessoryView_];
  }

LABEL_12:

  v35 = *&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView];
  if (v35)
  {
    v36 = *&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView + 8];

    v37 = [v1 launchOptions];
    v38 = [v37 foregroundAccessoryView];

    if (v38)
    {
      type metadata accessor for DocumentAccessoryView();
      v39 = swift_dynamicCastClass();
      if (v39)
      {
        v40 = (v39 + OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider);
        *v40 = v35;
        v40[1] = v36;

        DocumentAccessoryView.updateRootView()();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v35);
        goto LABEL_19;
      }
    }

    v41 = [v1 launchOptions];
    v42 = type metadata accessor for DocumentAccessoryView();
    v43 = objc_allocWithZone(v42);
    v44 = &v43[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider];
    *v44 = v35;
    v44[1] = v36;
    outlined copy of AppIntentExecutor?(v35);

    v45 = AnyView.init<A>(_:)();
    type metadata accessor for _UIHostingView<AnyView>();
    v47 = objc_allocWithZone(v46);
    *&v43[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView] = specialized _UIHostingView.init(rootView:)(v45);
    v79.receiver = v43;
    v79.super_class = v42;
    v48 = objc_msgSendSuper2(&v79, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v49 = OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView;
    v50 = *&v48[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView];
    v38 = v48;
    [v38 addSubview_];
    v51 = *&v48[v49];
    UIView.constrainToView(_:exceptEdges:identifier:)(v38, 0, 0xD000000000000015, 0x800000018CD8E150);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v35);
    [v41 setForegroundAccessoryView_];
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v35);
  }

  else
  {
    v38 = [v1 launchOptions];
    [v38 setForegroundAccessoryView_];
  }

LABEL_19:

  v52 = OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions;
  v53 = *(*&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions] + 16);
  v54 = [v1 launchOptions];
  v55 = v54;
  if (v53 == 2)
  {
    v57 = *&v1[v52];
    if (*(v57 + 16))
    {
      v53 = *(v57 + 32);
      [v55 setPrimaryAction_];

      v60 = [v1 launchOptions];
      v57 = *&v1[v52];
      if (*(v57 + 16) >= 2uLL)
      {
        v61 = v60;
        v62 = *(v57 + 80);
        [v61 setSecondaryAction_];

        v56 = [v1 launchOptions];
        goto LABEL_28;
      }

      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v53 == 1)
  {
    v57 = *&v1[v52];
    if (*(v57 + 16))
    {
      v58 = *(v57 + 32);
      [v55 setPrimaryAction_];

      v59 = [v1 launchOptions];
      [v59 setSecondaryAction_];

      v56 = [v1 launchOptions];
      goto LABEL_28;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v53)
  {
    [v54 setSecondaryAction_];

    v56 = [v1 launchOptions];
LABEL_28:
    v63 = v56;
    [v63 _setSecondaryMenu_];
    goto LABEL_38;
  }

  v57 = *&v1[v52];
  if (!*(v57 + 16))
  {
    goto LABEL_41;
  }

  v64 = *(v57 + 32);
  [v55 setPrimaryAction_];

  v65 = [v1 launchOptions];
  [v65 setSecondaryAction_];

  v53 = *&v1[v52];
  v57 = v53[2];
  if (v57)
  {
LABEL_43:
    specialized _copyCollectionToContiguousArray<A>(_:)(v53, (v53 + 4), 1, (2 * v57) | 1);
    v53 = v75;
    goto LABEL_32;
  }

LABEL_32:
  specialized CustomizableDocumentViewController.warnIfMenuActionsInvalid(_:)(v53);
  v66 = [v1 launchOptions];
  v67 = MEMORY[0x18D00C850](0xD00000000000001ALL, 0x800000018CD45910);
  v68 = v53[2];
  if (v68)
  {
    v81 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v69 = (v53 + 4);
    do
    {
      outlined init with copy of DocumentLaunchScreenAction(v69, v80);
      v70 = v80[0];
      outlined destroy of DocumentLaunchScreenAction(v80);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v69 += 48;
      --v68;
    }

    while (v68);

    v71 = v81;
  }

  else
  {

    v71 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v82.value.super.isa = 0;
  v82.is_nil = v67;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v73, v72, 0, v82, 0, 0xFFFFFFFFFFFFFFFFLL, v71, v76);
  v63 = v74;
  [v66 _setSecondaryMenu_];

LABEL_38:
}

uint64_t CustomizableDocumentViewController.update(with:in:)(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[8];
  if (v6)
  {
    v19 = *a2;
    v20 = v5;
    v18[0] = 0;
    v18[1] = 0;
    MEMORY[0x18D009CB0](&v17);
    v7 = Text.resolveString(in:with:idiom:)();
    v6 = MEMORY[0x18D00C850](v7);
  }

  [v2 setTitle_];

  v18[0] = a1[9];
  *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground] = v18[0];
  outlined init with copy of DocumentCreationStrategy?(v18, &v19, type metadata accessor for AnyView?);

  *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions] = a1[14];

  v8 = a1[10];
  v9 = a1[11];
  v10 = &v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView];
  v11 = *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView];
  *v10 = v8;
  v10[1] = v9;
  outlined copy of AppIntentExecutor?(v8);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
  v12 = a1[12];
  v13 = a1[13];
  v14 = &v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView];
  v15 = *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView];
  *v14 = v12;
  v14[1] = v13;
  outlined copy of AppIntentExecutor?(v12);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v15);
  v19 = v4;
  v20 = v5;
  return DocumentViewController.updateInheritedEnvironment(with:)(&v19);
}