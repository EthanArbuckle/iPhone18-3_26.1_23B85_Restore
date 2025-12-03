@interface WFPlaylistSubstitutableState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFPlaylistSubstitutableState)initWithPlaylist:(id)playlist;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFPlaylistSubstitutableState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  valueHandlerCopy = valueHandler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__WFPlaylistSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  v13[3] = &unk_278C199A8;
  v13[4] = self;
  v14 = contextCopy;
  v15 = valueHandlerCopy;
  v12.receiver = self;
  v12.super_class = WFPlaylistSubstitutableState;
  v10 = valueHandlerCopy;
  v11 = contextCopy;
  [(WFVariableSubstitutableParameterState *)&v12 processWithContext:v11 userInputRequiredHandler:handler valueHandler:v13];
}

void __89__WFPlaylistSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 || ([*(a1 + 32) variable], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) variable];
    v9 = objc_opt_class();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__WFPlaylistSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v11[3] = &unk_278C21810;
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    [v8 getObjectRepresentationForClass:v9 context:v10 completionHandler:v11];
  }
}

void __89__WFPlaylistSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v12 = v7;
  if (v7)
  {
    v9 = a5;
    v10 = [[WFPlaylistDescriptor alloc] initWithPlaylistName:v12 persistentIdentifier:0];
    (*(v8 + 16))(v8, v10, v9);
  }

  else
  {
    v11 = *(v8 + 16);
    v10 = a5;
    v11(v8, 0, v10);
  }
}

- (WFPlaylistSubstitutableState)initWithPlaylist:(id)playlist
{
  playlistCopy = playlist;
  v5 = [WFPlaylistDescriptor alloc];
  name = [playlistCopy name];

  v7 = [(WFPlaylistDescriptor *)v5 initWithPlaylistName:name persistentIdentifier:0];
  v10.receiver = self;
  v10.super_class = WFPlaylistSubstitutableState;
  v8 = [(WFVariableSubstitutableParameterState *)&v10 initWithValue:v7];

  return v8;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  v12[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPlaylistSubstitutableState.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFPlaylistDescriptor class]]"}];
  }

  if ([valueCopy entireMusicLibrary])
  {
    v11 = @"EntireMusicLibrary";
    v12[0] = MEMORY[0x277CBEC38];
    playlistName = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    playlistName = [valueCopy playlistName];
  }

  v7 = playlistName;

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [representationCopy objectForKeyedSubscript:@"EntireMusicLibrary"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass(v6, v7);
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      initWithEntireMusicLibrary = [[WFPlaylistDescriptor alloc] initWithEntireMusicLibrary];
      goto LABEL_8;
    }
  }

  else
  {
    v11 = objc_opt_class();
    v12 = WFEnforceClass(representationCopy, v11);
    if ([v12 length])
    {
      initWithEntireMusicLibrary = [[WFPlaylistDescriptor alloc] initWithPlaylistName:v12 persistentIdentifier:0];

      goto LABEL_8;
    }
  }

  initWithEntireMusicLibrary = 0;
LABEL_8:

  return initWithEntireMusicLibrary;
}

@end