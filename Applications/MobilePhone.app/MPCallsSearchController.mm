@interface MPCallsSearchController
- (BOOL)sectionNeedsIndexing;
- (MPCallsSearchController)init;
- (MPCallsSearchController)initWithRecentsController:(id)controller searchResultsController:(id)resultsController;
- (NSArray)resultIDs;
- (NSArray)results;
- (NSString)sectionTitle;
- (id)tableView:(id)view cellForRowAt:(id)at;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)viewForDetails;
- (int64_t)configureWith:(id)with presentationResultForIndex:(id)index;
- (int64_t)maximumNumberOfRowsInSection;
- (int64_t)numberOfRowsInConsolidatedView;
- (int64_t)sectionIndex;
- (unsigned)sectionType;
- (void)cancelPreviousSearchRequests;
- (void)highlightMatchedTextIn:(id)in;
- (void)registerCellWith:(id)with;
- (void)searchWith:(NSString *)with searchTokens:(NSArray *)tokens completion:(id)completion;
- (void)setMaximumNumberOfRowsInSection:(int64_t)section;
- (void)setResultIDs:(id)ds;
- (void)setResults:(id)results;
- (void)setSectionIndex:(int64_t)index;
- (void)setSectionTitle:(id)title;
- (void)setSectionType:(unsigned int)type;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation MPCallsSearchController

- (NSString)sectionTitle
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setSectionTitle:(id)title
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

- (void)setSectionIndex:(int64_t)index
{
  v5 = OBJC_IVAR___MPCallsSearchController_sectionIndex;
  swift_beginAccess();
  *(self + v5) = index;
}

- (unsigned)sectionType
{
  v3 = OBJC_IVAR___MPCallsSearchController_sectionType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSectionType:(unsigned int)type
{
  v5 = OBJC_IVAR___MPCallsSearchController_sectionType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (NSArray)resultIDs
{
  swift_beginAccess();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setResultIDs:(id)ds
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___MPCallsSearchController_resultIDs;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSArray)results
{
  swift_beginAccess();
  selfCopy = self;

  specialized _arrayForceCast<A, B>(_:)(v4);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setResults:(id)results
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v6 = specialized _arrayForceCast<A, B>(_:)(v4);

  v7 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  swift_beginAccess();
  *(selfCopy + v7) = v6;
}

- (int64_t)maximumNumberOfRowsInSection
{
  v3 = OBJC_IVAR___MPCallsSearchController_maximumNumberOfRowsInSection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMaximumNumberOfRowsInSection:(int64_t)section
{
  v5 = OBJC_IVAR___MPCallsSearchController_maximumNumberOfRowsInSection;
  swift_beginAccess();
  *(self + v5) = section;
}

- (MPCallsSearchController)initWithRecentsController:(id)controller searchResultsController:(id)resultsController
{
  ObjectType = swift_getObjectType();
  v7 = objc_allocWithZone(TUFeatureFlags);
  controllerCopy = controller;
  resultsControllerCopy = resultsController;
  v10 = [v7 init];
  v11 = objc_allocWithZone(ObjectType);
  v12 = CallsSearchController.init(recentsController:featureFlags:)(controllerCopy, v10);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (void)searchWith:(NSString *)with searchTokens:(NSArray *)tokens completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = with;
  v13[3] = tokens;
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
  withCopy = with;
  tokensCopy = tokens;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTATu, v16);
}

- (void)cancelPreviousSearchRequests
{
  selfCopy = self;
  CallsSearchController.cancelPreviousSearchRequests()();
}

- (int64_t)numberOfRowsInConsolidatedView
{
  selfCopy = self;
  v3 = CallsSearchController.numberOfRowsInConsolidatedView()();

  return v3;
}

- (void)registerCellWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v6 = CallsSearchController.cellConfigurator(for:)(withCopy);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *(self + OBJC_IVAR___MPCallsSearchController_recentsController);
  selfCopy = self;
  [v10 continuousScrollingReachedIndexPath:IndexPath.row.getter()];
  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)view cellForRowAt:(id)at
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = CallsSearchController.tableView(_:cellForRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  CallsSearchController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = CallsSearchController.tableView(_:trailingSwipeActionsConfigurationForRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)highlightMatchedTextIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  CallsSearchController.highlightMatchedText(in:)(inCopy);
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

- (int64_t)configureWith:(id)with presentationResultForIndex:(id)index
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  withCopy = with;
  selfCopy = self;
  v12 = CallsSearchController.configure(cardController:presentationResultForIndex:)(withCopy, v9);

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (id)viewForDetails
{
  selfCopy = self;
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