@interface WFPlaylistSubstitutableState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFPlaylistSubstitutableState)initWithPlaylist:(id)a3;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFPlaylistSubstitutableState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__WFPlaylistSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  v13[3] = &unk_278C199A8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v12.receiver = self;
  v12.super_class = WFPlaylistSubstitutableState;
  v10 = v9;
  v11 = v8;
  [(WFVariableSubstitutableParameterState *)&v12 processWithContext:v11 userInputRequiredHandler:a4 valueHandler:v13];
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

- (WFPlaylistSubstitutableState)initWithPlaylist:(id)a3
{
  v4 = a3;
  v5 = [WFPlaylistDescriptor alloc];
  v6 = [v4 name];

  v7 = [(WFPlaylistDescriptor *)v5 initWithPlaylistName:v6 persistentIdentifier:0];
  v10.receiver = self;
  v10.super_class = WFPlaylistSubstitutableState;
  v8 = [(WFVariableSubstitutableParameterState *)&v10 initWithValue:v7];

  return v8;
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"WFPlaylistSubstitutableState.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFPlaylistDescriptor class]]"}];
  }

  if ([v5 entireMusicLibrary])
  {
    v11 = @"EntireMusicLibrary";
    v12[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v6 = [v5 playlistName];
  }

  v7 = v6;

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKeyedSubscript:@"EntireMusicLibrary"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass(v6, v7);
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [[WFPlaylistDescriptor alloc] initWithEntireMusicLibrary];
      goto LABEL_8;
    }
  }

  else
  {
    v11 = objc_opt_class();
    v12 = WFEnforceClass(v5, v11);
    if ([v12 length])
    {
      v10 = [[WFPlaylistDescriptor alloc] initWithPlaylistName:v12 persistentIdentifier:0];

      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

@end