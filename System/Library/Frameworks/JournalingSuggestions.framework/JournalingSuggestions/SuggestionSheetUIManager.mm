@interface SuggestionSheetUIManager
- (void)didReceiveConnectionUUIDWithUuid:(id)uuid;
- (void)didReceiveNotificationScheduleChangeTo:(id)to;
- (void)didReceiveUserSelectionWithSuggestion:(id)suggestion;
- (void)didTransitionTo:(id)to;
- (void)willReceiveUserSelection;
@end

@implementation SuggestionSheetUIManager

- (void)didReceiveConnectionUUIDWithUuid:(id)uuid
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)didReceiveNotificationScheduleChangeTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(toCopy);
}

- (void)willReceiveUserSelection
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  selfCopy = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = selfCopy;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()partial apply, v10);
}

- (void)didReceiveUserSelectionWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  selfCopy = self;
  SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(suggestionCopy);
}

- (void)didTransitionTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  SuggestionSheetUIManager.didTransition(to:)(toCopy);
}

@end