@interface LNAppContext
- (void)createAsyncIteratorForSequence:(LNAsyncSequenceReference *)sequence options:(id)options connectionIdentifier:(id)identifier completionHandler:(id)handler;
- (void)exportTransientEntities:(NSArray *)entities withConfiguration:(LNExportedContentConfiguration *)configuration connectionIdentifier:(NSNumber *)identifier completionHandler:(id)handler;
- (void)fetchActionAppContextForAction:(id)action completionHandler:(id)handler;
- (void)fetchActionListenerEndpoint:(LNAction *)endpoint auditToken:(id *)token connectionIdentifier:(int64_t)identifier completionHandler:(id)handler;
- (void)fetchActionOutputValueForConnection:(NSXPCConnection *)connection withIdentifier:(NSUUID *)identifier completionHandler:(id)handler;
- (void)fetchAppShortcutParametersForMangledName:(NSString *)name withCompletionHandler:(id)handler;
- (void)fetchDestinationMDMAccountIdentifierForAction:(id)action completionHandler:(id)handler;
- (void)fetchDisplayRepresentationForActions:(NSArray *)actions completionHandler:(id)handler;
- (void)fetchEntityURL:(id)l completionHandler:(id)handler;
- (void)fetchOptionsDefaultValuesForAction:(id)action connectionIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchOptionsForAction:(id)action actionMetadata:(id)metadata parameterMetadata:(id)parameterMetadata optionsProviderReference:(id)reference searchTerm:(id)term localeIdentifier:(id)identifier connectionIdentifier:(id)connectionIdentifier completionHandler:(id)self0;
- (void)fetchParameterOptionDefaultValueForAction:(id)action actionMetadata:(id)metadata parameterIdentifier:(NSString *)identifier connectionIdentifier:(id)connectionIdentifier completionHandler:(id)handler;
- (void)fetchStateForAppIntentIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)identifier forEntityIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchSuggestedActionsForStartWorkoutAction:(id)action completionHandler:(id)handler;
- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)handler;
- (void)fetchSuggestedActionsWithSiriLanguageCode:(NSString *)code completionHandler:(id)handler;
- (void)fetchSuggestedFocusActionsForActionMetadata:(id)metadata suggestionContext:(id)context completionHandler:(id)handler;
- (void)fetchURLForEnumWithIdentifier:(NSString *)identifier caseIdentifier:(NSString *)caseIdentifier completionHandler:(id)handler;
- (void)fetchURLsForEnumWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)fetchValueForPropertyWithIdentifier:(NSString *)identifier entity:(id)entity auditToken:(id *)token connectionIdentifier:(int64_t)connectionIdentifier completionHandler:(id)handler;
- (void)fetchViewActionsWithCompletionHandler:(id)handler;
- (void)fetchViewEntitiesWithInteractionIDs:(id)ds completionHandler:(id)handler;
- (void)linkUndoManager:(_NSAuxiliaryUndoManagerReference *)manager completionHandler:(id)handler;
- (void)performAction:(id)action options:(id)options reportingProgress:(NSProgress *)progress delegate:(LNPerformActionExecutorDelegate *)delegate auditToken:(id *)token completionHandler:(id)handler;
- (void)performConfigurableQuery:(LNConfigurableQueryRequest *)query auditToken:(id *)token connectionIdentifier:(NSNumber *)identifier completionHandler:(id)handler;
- (void)performQuery:(id)query auditToken:(id *)token connectionIdentifier:(id)identifier completionHandler:(id)handler;
- (void)performSuggestedResultsQueryWithEntityType:(id)type auditToken:(id *)token connectionIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeAllDeferredOutputsFor:(id)for;
- (void)removeContextForConnection:(id)connection;
- (void)stageContextWithRequest:(LNStageContextRequest *)request completionHandler:(id)handler;
- (void)updateAppShortcutParametersWithCompletionHandler:(id)handler;
- (void)updateContextForConnection:(NSXPCConnection *)connection context:(id)context completionHandler:(id)handler;
- (void)updateProperties:(id)properties withQuery:(id)query completionHandler:(id)handler;
@end

@implementation LNAppContext

- (void)updateContextForConnection:(NSXPCConnection *)connection context:(id)context completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = connection;
  v9[3] = context;
  v9[4] = v8;
  v9[5] = self;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)removeAllDeferredOutputsFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  AppContext.removeAllDeferredOutputs(for:)(forCopy);
}

- (void)fetchParameterOptionDefaultValueForAction:(id)action actionMetadata:(id)metadata parameterIdentifier:(NSString *)identifier connectionIdentifier:(id)connectionIdentifier completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = action;
  v13[3] = metadata;
  v13[4] = identifier;
  v13[5] = connectionIdentifier;
  v13[6] = v12;
  v13[7] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)updateProperties:(id)properties withQuery:(id)query completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = properties;
  v9[3] = query;
  v9[4] = v8;
  v9[5] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchViewEntitiesWithInteractionIDs:(id)ds completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = ds;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchViewActionsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)identifier forEntityIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = identifier;
  v9[3] = identifiers;
  v9[4] = v8;
  v9[5] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)updateAppShortcutParametersWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_18F10B344();
}

- (void)stageContextWithRequest:(LNStageContextRequest *)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = request;
  v7[3] = v6;
  v7[4] = self;
  requestCopy = request;
  selfCopy = self;

  sub_18F10B344();
}

- (void)removeContextForConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  AppContext.removeContext(connection:)(connectionCopy);
}

- (void)fetchStateForAppIntentIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_18F521CAC();
  _Block_copy(v5);
  selfCopy = self;
  sub_18F1F9678(v6, selfCopy, v5);
  _Block_release(v5);
}

- (void)createAsyncIteratorForSequence:(LNAsyncSequenceReference *)sequence options:(id)options connectionIdentifier:(id)identifier completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = sequence;
  v11[3] = options;
  v11[4] = identifier;
  v11[5] = v10;
  v11[6] = self;
  sequenceCopy = sequence;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchSuggestedActionsWithSiriLanguageCode:(NSString *)code completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = code;
  v7[3] = v6;
  v7[4] = self;
  codeCopy = code;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchSuggestedActionsForStartWorkoutAction:(id)action completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = action;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)performAction:(id)action options:(id)options reportingProgress:(NSProgress *)progress delegate:(LNPerformActionExecutorDelegate *)delegate auditToken:(id *)token completionHandler:(id)handler
{
  v17 = *&token->var0[4];
  v18 = *token->var0;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = action;
  *(v14 + 24) = options;
  *(v14 + 32) = progress;
  *(v14 + 40) = delegate;
  *(v14 + 48) = v18;
  *(v14 + 64) = v17;
  *(v14 + 80) = v13;
  *(v14 + 88) = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  progressCopy = progress;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)performQuery:(id)query auditToken:(id *)token connectionIdentifier:(id)identifier completionHandler:(id)handler
{
  v12 = *&token->var0[4];
  v13 = *token->var0;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = query;
  *(v10 + 24) = v13;
  *(v10 + 40) = v12;
  *(v10 + 56) = identifier;
  *(v10 + 64) = v9;
  *(v10 + 72) = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)performSuggestedResultsQueryWithEntityType:(id)type auditToken:(id *)token connectionIdentifier:(id)identifier completionHandler:(id)handler
{
  v12 = *&token->var0[4];
  v13 = *token->var0;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = type;
  *(v10 + 24) = v13;
  *(v10 + 40) = v12;
  *(v10 + 56) = identifier;
  *(v10 + 64) = v9;
  *(v10 + 72) = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)performConfigurableQuery:(LNConfigurableQueryRequest *)query auditToken:(id *)token connectionIdentifier:(NSNumber *)identifier completionHandler:(id)handler
{
  v14 = *&token->var0[4];
  v15 = *token->var0;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = query;
  *(v10 + 24) = v15;
  *(v10 + 40) = v14;
  *(v10 + 56) = identifier;
  *(v10 + 64) = v9;
  *(v10 + 72) = self;
  queryCopy = query;
  identifierCopy = identifier;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchSuggestedFocusActionsForActionMetadata:(id)metadata suggestionContext:(id)context completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = metadata;
  v9[3] = context;
  v9[4] = v8;
  v9[5] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)linkUndoManager:(_NSAuxiliaryUndoManagerReference *)manager completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = manager;
  v7[3] = v6;
  v7[4] = self;
  managerCopy = manager;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchEntityURL:(id)l completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = l;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchActionListenerEndpoint:(LNAction *)endpoint auditToken:(id *)token connectionIdentifier:(int64_t)identifier completionHandler:(id)handler
{
  v13 = *&token->var0[4];
  v14 = *token->var0;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = endpoint;
  *(v10 + 24) = v14;
  *(v10 + 40) = v13;
  *(v10 + 56) = identifier;
  *(v10 + 64) = v9;
  *(v10 + 72) = self;
  endpointCopy = endpoint;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchDestinationMDMAccountIdentifierForAction:(id)action completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = action;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchURLForEnumWithIdentifier:(NSString *)identifier caseIdentifier:(NSString *)caseIdentifier completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = identifier;
  v9[3] = caseIdentifier;
  v9[4] = v8;
  v9[5] = self;
  identifierCopy = identifier;
  caseIdentifierCopy = caseIdentifier;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchURLsForEnumWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = identifier;
  v7[3] = v6;
  v7[4] = self;
  identifierCopy = identifier;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchDisplayRepresentationForActions:(NSArray *)actions completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = actions;
  v7[3] = v6;
  v7[4] = self;
  actionsCopy = actions;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchActionAppContextForAction:(id)action completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = action;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchActionOutputValueForConnection:(NSXPCConnection *)connection withIdentifier:(NSUUID *)identifier completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = connection;
  v9[3] = identifier;
  v9[4] = v8;
  v9[5] = self;
  connectionCopy = connection;
  identifierCopy = identifier;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchAppShortcutParametersForMangledName:(NSString *)name withCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = name;
  v7[3] = v6;
  v7[4] = self;
  nameCopy = name;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchValueForPropertyWithIdentifier:(NSString *)identifier entity:(id)entity auditToken:(id *)token connectionIdentifier:(int64_t)connectionIdentifier completionHandler:(id)handler
{
  v15 = *&token->var0[4];
  v16 = *token->var0;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = identifier;
  *(v12 + 24) = entity;
  *(v12 + 32) = v16;
  *(v12 + 48) = v15;
  *(v12 + 64) = connectionIdentifier;
  *(v12 + 72) = v11;
  *(v12 + 80) = self;
  identifierCopy = identifier;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)exportTransientEntities:(NSArray *)entities withConfiguration:(LNExportedContentConfiguration *)configuration connectionIdentifier:(NSNumber *)identifier completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = entities;
  v11[3] = configuration;
  v11[4] = identifier;
  v11[5] = v10;
  v11[6] = self;
  entitiesCopy = entities;
  configurationCopy = configuration;
  identifierCopy = identifier;
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchOptionsForAction:(id)action actionMetadata:(id)metadata parameterMetadata:(id)parameterMetadata optionsProviderReference:(id)reference searchTerm:(id)term localeIdentifier:(id)identifier connectionIdentifier:(id)connectionIdentifier completionHandler:(id)self0
{
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = action;
  v18[3] = metadata;
  v18[4] = parameterMetadata;
  v18[5] = reference;
  v18[6] = term;
  v18[7] = identifier;
  v18[8] = connectionIdentifier;
  v18[9] = v17;
  v18[10] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

- (void)fetchOptionsDefaultValuesForAction:(id)action connectionIdentifier:(id)identifier completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = action;
  v9[3] = identifier;
  v9[4] = v8;
  v9[5] = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_18F10B344();
}

@end