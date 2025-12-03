@interface MPVoicemailsSearchController
- (BOOL)sectionNeedsIndexing;
- (MPVoicemailsSearchController)init;
- (NSString)sectionTitle;
- (id)tableView:(id)view cellForRowAt:(id)at;
- (int64_t)configureWith:(id)with presentationResultForIndex:(id)index;
- (int64_t)numberOfRowsInConsolidatedView;
- (int64_t)sectionIndex;
- (unsigned)sectionType;
- (void)cancelPreviousSearchRequests;
- (void)highlightMatchedTextIn:(id)in;
- (void)registerCellWith:(id)with;
- (void)searchWith:(NSString *)with searchTokens:(NSArray *)tokens completion:(id)completion;
- (void)setSectionIndex:(int64_t)index;
- (void)setSectionType:(unsigned int)type;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableViewController:(id)controller didChangeVoicemails:(id)voicemails;
@end

@implementation MPVoicemailsSearchController

- (NSString)sectionTitle
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (int64_t)sectionIndex
{
  v3 = OBJC_IVAR___MPVoicemailsSearchController_sectionIndex;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSectionIndex:(int64_t)index
{
  v5 = OBJC_IVAR___MPVoicemailsSearchController_sectionIndex;
  swift_beginAccess();
  *(self + v5) = index;
}

- (unsigned)sectionType
{
  v3 = OBJC_IVAR___MPVoicemailsSearchController_sectionType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSectionType:(unsigned int)type
{
  v5 = OBJC_IVAR___MPVoicemailsSearchController_sectionType;
  swift_beginAccess();
  *(self + v5) = type;
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
  v15[4] = &async function pointer to partial apply for @objc closure #1 in VoicemailsSearchController.search(with:searchTokens:);
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
  VoicemailsSearchController.cancelPreviousSearchRequests()();
}

- (int64_t)numberOfRowsInConsolidatedView
{
  v2 = *(self + OBJC_IVAR___MPVoicemailsSearchController_featureFlags);
  selfCopy = self;
  if ([v2 voicemailSearchEnabled])
  {
    v4 = OBJC_IVAR___MPVoicemailsSearchController_results;
    swift_beginAccess();
    v5 = *(*(selfCopy + v4) + 16);

    if (v5 >= 3)
    {
      return 3;
    }

    else
    {
      return v5;
    }
  }

  else
  {

    return 0;
  }
}

- (void)registerCellWith:(id)with
{
  type metadata accessor for VoicemailSearchViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  withCopy = with;
  v5 = String._bridgeToObjectiveC()();
  [withCopy registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];
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
  v12 = VoicemailSearchTableViewController.tableView(_:cellForRowAt:)(viewCopy, v9);

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
  VoicemailsSearchController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)highlightMatchedTextIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  VoicemailsSearchController.highlightMatchedText(in:)(inCopy);
}

- (void)tableViewController:(id)controller didChangeVoicemails:(id)voicemails
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  specialized VoicemailsSearchController.tableViewController(_:didChangeVoicemails:)(v6);
}

- (BOOL)sectionNeedsIndexing
{
  type metadata accessor for SpotlightIndexManagerUtilities();
  if (static SpotlightIndexManagerUtilities.voicemailsNeedsDeferredReindexing(defaults:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = static SpotlightIndexManagerUtilities.voicemailsNeedIndexingDueToVersionMismatch(defaults:)();
  }

  return v2 & 1;
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
  v12 = VoicemailSearchTableViewController.configure(cardController:presentationResultForIndex:)(withCopy);

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (MPVoicemailsSearchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end