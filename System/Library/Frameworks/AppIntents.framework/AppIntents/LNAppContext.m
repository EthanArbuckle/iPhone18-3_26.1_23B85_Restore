@interface LNAppContext
- (void)createAsyncIteratorForSequence:(LNAsyncSequenceReference *)a3 options:(id)a4 connectionIdentifier:(id)a5 completionHandler:(id)a6;
- (void)exportTransientEntities:(NSArray *)a3 withConfiguration:(LNExportedContentConfiguration *)a4 connectionIdentifier:(NSNumber *)a5 completionHandler:(id)a6;
- (void)fetchActionAppContextForAction:(id)a3 completionHandler:(id)a4;
- (void)fetchActionListenerEndpoint:(LNAction *)a3 auditToken:(id *)a4 connectionIdentifier:(int64_t)a5 completionHandler:(id)a6;
- (void)fetchActionOutputValueForConnection:(NSXPCConnection *)a3 withIdentifier:(NSUUID *)a4 completionHandler:(id)a5;
- (void)fetchAppShortcutParametersForMangledName:(NSString *)a3 withCompletionHandler:(id)a4;
- (void)fetchDestinationMDMAccountIdentifierForAction:(id)a3 completionHandler:(id)a4;
- (void)fetchDisplayRepresentationForActions:(NSArray *)a3 completionHandler:(id)a4;
- (void)fetchEntityURL:(id)a3 completionHandler:(id)a4;
- (void)fetchOptionsDefaultValuesForAction:(id)a3 connectionIdentifier:(id)a4 completionHandler:(id)a5;
- (void)fetchOptionsForAction:(id)a3 actionMetadata:(id)a4 parameterMetadata:(id)a5 optionsProviderReference:(id)a6 searchTerm:(id)a7 localeIdentifier:(id)a8 connectionIdentifier:(id)a9 completionHandler:(id)a10;
- (void)fetchParameterOptionDefaultValueForAction:(id)a3 actionMetadata:(id)a4 parameterIdentifier:(NSString *)a5 connectionIdentifier:(id)a6 completionHandler:(id)a7;
- (void)fetchStateForAppIntentIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)a3 forEntityIdentifiers:(id)a4 completionHandler:(id)a5;
- (void)fetchSuggestedActionsForStartWorkoutAction:(id)a3 completionHandler:(id)a4;
- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)a3;
- (void)fetchSuggestedActionsWithSiriLanguageCode:(NSString *)a3 completionHandler:(id)a4;
- (void)fetchSuggestedFocusActionsForActionMetadata:(id)a3 suggestionContext:(id)a4 completionHandler:(id)a5;
- (void)fetchURLForEnumWithIdentifier:(NSString *)a3 caseIdentifier:(NSString *)a4 completionHandler:(id)a5;
- (void)fetchURLsForEnumWithIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (void)fetchValueForPropertyWithIdentifier:(NSString *)a3 entity:(id)a4 auditToken:(id *)a5 connectionIdentifier:(int64_t)a6 completionHandler:(id)a7;
- (void)fetchViewActionsWithCompletionHandler:(id)a3;
- (void)fetchViewEntitiesWithInteractionIDs:(id)a3 completionHandler:(id)a4;
- (void)linkUndoManager:(_NSAuxiliaryUndoManagerReference *)a3 completionHandler:(id)a4;
- (void)performAction:(id)a3 options:(id)a4 reportingProgress:(NSProgress *)a5 delegate:(LNPerformActionExecutorDelegate *)a6 auditToken:(id *)a7 completionHandler:(id)a8;
- (void)performConfigurableQuery:(LNConfigurableQueryRequest *)a3 auditToken:(id *)a4 connectionIdentifier:(NSNumber *)a5 completionHandler:(id)a6;
- (void)performQuery:(id)a3 auditToken:(id *)a4 connectionIdentifier:(id)a5 completionHandler:(id)a6;
- (void)performSuggestedResultsQueryWithEntityType:(id)a3 auditToken:(id *)a4 connectionIdentifier:(id)a5 completionHandler:(id)a6;
- (void)removeAllDeferredOutputsFor:(id)a3;
- (void)removeContextForConnection:(id)a3;
- (void)stageContextWithRequest:(LNStageContextRequest *)a3 completionHandler:(id)a4;
- (void)updateAppShortcutParametersWithCompletionHandler:(id)a3;
- (void)updateContextForConnection:(NSXPCConnection *)a3 context:(id)a4 completionHandler:(id)a5;
- (void)updateProperties:(id)a3 withQuery:(id)a4 completionHandler:(id)a5;
@end

@implementation LNAppContext

- (void)updateContextForConnection:(NSXPCConnection *)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = self;

  sub_18F10B344();
}

- (void)removeAllDeferredOutputsFor:(id)a3
{
  v4 = a3;
  v5 = self;
  AppContext.removeAllDeferredOutputs(for:)(v4);
}

- (void)fetchParameterOptionDefaultValueForAction:(id)a3 actionMetadata:(id)a4 parameterIdentifier:(NSString *)a5 connectionIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = a5;
  swift_unknownObjectRetain();
  v15 = self;

  sub_18F10B344();
}

- (void)updateProperties:(id)a3 withQuery:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = self;

  sub_18F10B344();
}

- (void)fetchViewEntitiesWithInteractionIDs:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  v8 = self;

  sub_18F10B344();
}

- (void)fetchViewActionsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_18F10B344();
}

- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)a3 forEntityIdentifiers:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  swift_unknownObjectRetain();
  v10 = self;

  sub_18F10B344();
}

- (void)updateAppShortcutParametersWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_18F10B344();
}

- (void)stageContextWithRequest:(LNStageContextRequest *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_18F10B344();
}

- (void)removeContextForConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  AppContext.removeContext(connection:)(v4);
}

- (void)fetchStateForAppIntentIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_18F521CAC();
  _Block_copy(v5);
  v7 = self;
  sub_18F1F9678(v6, v7, v5);
  _Block_release(v5);
}

- (void)createAsyncIteratorForSequence:(LNAsyncSequenceReference *)a3 options:(id)a4 connectionIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = self;

  sub_18F10B344();
}

- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_18F10B344();
}

- (void)fetchSuggestedActionsWithSiriLanguageCode:(NSString *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_18F10B344();
}

- (void)fetchSuggestedActionsForStartWorkoutAction:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  v8 = self;

  sub_18F10B344();
}

- (void)performAction:(id)a3 options:(id)a4 reportingProgress:(NSProgress *)a5 delegate:(LNPerformActionExecutorDelegate *)a6 auditToken:(id *)a7 completionHandler:(id)a8
{
  v17 = *&a7->var0[4];
  v18 = *a7->var0;
  v13 = _Block_copy(a8);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  *(v14 + 48) = v18;
  *(v14 + 64) = v17;
  *(v14 + 80) = v13;
  *(v14 + 88) = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = a5;
  swift_unknownObjectRetain();
  v16 = self;

  sub_18F10B344();
}

- (void)performQuery:(id)a3 auditToken:(id *)a4 connectionIdentifier:(id)a5 completionHandler:(id)a6
{
  v12 = *&a4->var0[4];
  v13 = *a4->var0;
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v13;
  *(v10 + 40) = v12;
  *(v10 + 56) = a5;
  *(v10 + 64) = v9;
  *(v10 + 72) = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = self;

  sub_18F10B344();
}

- (void)performSuggestedResultsQueryWithEntityType:(id)a3 auditToken:(id *)a4 connectionIdentifier:(id)a5 completionHandler:(id)a6
{
  v12 = *&a4->var0[4];
  v13 = *a4->var0;
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v13;
  *(v10 + 40) = v12;
  *(v10 + 56) = a5;
  *(v10 + 64) = v9;
  *(v10 + 72) = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = self;

  sub_18F10B344();
}

- (void)performConfigurableQuery:(LNConfigurableQueryRequest *)a3 auditToken:(id *)a4 connectionIdentifier:(NSNumber *)a5 completionHandler:(id)a6
{
  v14 = *&a4->var0[4];
  v15 = *a4->var0;
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v15;
  *(v10 + 40) = v14;
  *(v10 + 56) = a5;
  *(v10 + 64) = v9;
  *(v10 + 72) = self;
  v11 = a3;
  v12 = a5;
  v13 = self;

  sub_18F10B344();
}

- (void)fetchSuggestedFocusActionsForActionMetadata:(id)a3 suggestionContext:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = self;

  sub_18F10B344();
}

- (void)linkUndoManager:(_NSAuxiliaryUndoManagerReference *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_18F10B344();
}

- (void)fetchEntityURL:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  v8 = self;

  sub_18F10B344();
}

- (void)fetchActionListenerEndpoint:(LNAction *)a3 auditToken:(id *)a4 connectionIdentifier:(int64_t)a5 completionHandler:(id)a6
{
  v13 = *&a4->var0[4];
  v14 = *a4->var0;
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v14;
  *(v10 + 40) = v13;
  *(v10 + 56) = a5;
  *(v10 + 64) = v9;
  *(v10 + 72) = self;
  v11 = a3;
  v12 = self;

  sub_18F10B344();
}

- (void)fetchDestinationMDMAccountIdentifierForAction:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  v8 = self;

  sub_18F10B344();
}

- (void)fetchURLForEnumWithIdentifier:(NSString *)a3 caseIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_18F10B344();
}

- (void)fetchURLsForEnumWithIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_18F10B344();
}

- (void)fetchDisplayRepresentationForActions:(NSArray *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_18F10B344();
}

- (void)fetchActionAppContextForAction:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  v8 = self;

  sub_18F10B344();
}

- (void)fetchActionOutputValueForConnection:(NSXPCConnection *)a3 withIdentifier:(NSUUID *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_18F10B344();
}

- (void)fetchAppShortcutParametersForMangledName:(NSString *)a3 withCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_18F10B344();
}

- (void)fetchValueForPropertyWithIdentifier:(NSString *)a3 entity:(id)a4 auditToken:(id *)a5 connectionIdentifier:(int64_t)a6 completionHandler:(id)a7
{
  v15 = *&a5->var0[4];
  v16 = *a5->var0;
  v11 = _Block_copy(a7);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = v16;
  *(v12 + 48) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = v11;
  *(v12 + 80) = self;
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;

  sub_18F10B344();
}

- (void)exportTransientEntities:(NSArray *)a3 withConfiguration:(LNExportedContentConfiguration *)a4 connectionIdentifier:(NSNumber *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_18F10B344();
}

- (void)fetchOptionsForAction:(id)a3 actionMetadata:(id)a4 parameterMetadata:(id)a5 optionsProviderReference:(id)a6 searchTerm:(id)a7 localeIdentifier:(id)a8 connectionIdentifier:(id)a9 completionHandler:(id)a10
{
  v17 = _Block_copy(a10);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v18[8] = a9;
  v18[9] = v17;
  v18[10] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = self;

  sub_18F10B344();
}

- (void)fetchOptionsDefaultValuesForAction:(id)a3 connectionIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = self;

  sub_18F10B344();
}

@end