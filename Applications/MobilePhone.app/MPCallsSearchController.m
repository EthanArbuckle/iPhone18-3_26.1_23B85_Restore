@interface MPCallsSearchController
- (BOOL)sectionNeedsIndexing;
- (MPCallsSearchController)init;
- (MPCallsSearchController)initWithRecentsController:(id)a3 searchResultsController:(id)a4;
- (NSArray)resultIDs;
- (NSArray)results;
- (NSString)sectionTitle;
- (id)tableView:(id)a3 cellForRowAt:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)viewForDetails;
- (int64_t)configureWith:(id)a3 presentationResultForIndex:(id)a4;
- (int64_t)maximumNumberOfRowsInSection;
- (int64_t)numberOfRowsInConsolidatedView;
- (int64_t)sectionIndex;
- (unsigned)sectionType;
- (void)cancelPreviousSearchRequests;
- (void)highlightMatchedTextIn:(id)a3;
- (void)registerCellWith:(id)a3;
- (void)searchWith:(NSString *)a3 searchTokens:(NSArray *)a4 completion:(id)a5;
- (void)setMaximumNumberOfRowsInSection:(int64_t)a3;
- (void)setResultIDs:(id)a3;
- (void)setResults:(id)a3;
- (void)setSectionIndex:(int64_t)a3;
- (void)setSectionTitle:(id)a3;
- (void)setSectionType:(unsigned int)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation MPCallsSearchController

- (NSString)sectionTitle
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setSectionTitle:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR___MPCallsSearchController_sectionTitle);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)sectionIndex
{
  v3 = OBJC_IVAR___MPCallsSearchController_sectionIndex;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSectionIndex:(int64_t)a3
{
  v5 = OBJC_IVAR___MPCallsSearchController_sectionIndex;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)sectionType
{
  v3 = OBJC_IVAR___MPCallsSearchController_sectionType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSectionType:(unsigned int)a3
{
  v5 = OBJC_IVAR___MPCallsSearchController_sectionType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSArray)resultIDs
{
  swift_beginAccess();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setResultIDs:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___MPCallsSearchController_resultIDs;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSArray)results
{
  swift_beginAccess();
  v3 = self;

  specialized _arrayForceCast<A, B>(_:)(v4);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setResults:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = specialized _arrayForceCast<A, B>(_:)(v4);

  v7 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  swift_beginAccess();
  *(v5 + v7) = v6;
}

- (int64_t)maximumNumberOfRowsInSection
{
  v3 = OBJC_IVAR___MPCallsSearchController_maximumNumberOfRowsInSection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMaximumNumberOfRowsInSection:(int64_t)a3
{
  v5 = OBJC_IVAR___MPCallsSearchController_maximumNumberOfRowsInSection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MPCallsSearchController)initWithRecentsController:(id)a3 searchResultsController:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = objc_allocWithZone(TUFeatureFlags);
  v8 = a3;
  v9 = a4;
  v10 = [v7 init];
  v11 = objc_allocWithZone(ObjectType);
  v12 = CallsSearchController.init(recentsController:featureFlags:)(v8, v10);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (void)searchWith:(NSString *)a3 searchTokens:(NSArray *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in CallsSearchController.search(with:searchTokens:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTATu;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTATu, v16);
}

- (void)cancelPreviousSearchRequests
{
  v2 = self;
  CallsSearchController.cancelPreviousSearchRequests()();
}

- (int64_t)numberOfRowsInConsolidatedView
{
  v2 = self;
  v3 = CallsSearchController.numberOfRowsInConsolidatedView()();

  return v3;
}

- (void)registerCellWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CallsSearchController.cellConfigurator(for:)(v4);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *(self + OBJC_IVAR___MPCallsSearchController_recentsController);
  v11 = self;
  [v10 continuousScrollingReachedIndexPath:IndexPath.row.getter()];
  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)a3 cellForRowAt:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = CallsSearchController.tableView(_:cellForRowAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  CallsSearchController.tableView(_:didSelectRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = CallsSearchController.tableView(_:trailingSwipeActionsConfigurationForRowAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)highlightMatchedTextIn:(id)a3
{
  v4 = a3;
  v5 = self;
  CallsSearchController.highlightMatchedText(in:)(v4);
}

- (BOOL)sectionNeedsIndexing
{
  v2 = objc_opt_self();
  if ([v2 shouldReindexCallsDueToVersionMismatch])
  {
    return 1;
  }

  return [v2 shouldReindexCallsDueToDeferredReindexing];
}

- (int64_t)configureWith:(id)a3 presentationResultForIndex:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = CallsSearchController.configure(cardController:presentationResultForIndex:)(v10, v9);

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (id)viewForDetails
{
  v2 = self;
  v3.super.super.isa = CallsSearchController.viewForDetails()().super.super.isa;

  return v3.super.super.isa;
}

- (MPCallsSearchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end