@interface WFPlaylistPickerParameter
+ (id)referencedActionResourceClasses;
- (NSArray)possibleStates;
- (WFPlaylistPickerParameter)initWithDefinition:(id)a3;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleState:(id)a3;
- (void)authorizationStatusDidChange;
- (void)possibleStatesDidChange;
- (void)setActionResources:(id)a3;
- (void)setAppleMusicAccessResource:(id)a3;
- (void)updateChangeNotificationRegistration;
- (void)wasAddedToWorkflow;
- (void)wasRemovedFromWorkflow;
@end

@implementation WFPlaylistPickerParameter

- (id)defaultSerializedRepresentation
{
  if ([(WFPlaylistPickerParameter *)self showLibrary])
  {
    v3 = [(WFPlaylistPickerParameter *)self entireLibraryState];
    v4 = [v3 serializedRepresentation];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFPlaylistPickerParameter;
    v4 = [(WFPlaylistPickerParameter *)&v6 defaultSerializedRepresentation];
  }

  return v4;
}

- (id)localizedLabelForPossibleState:(id)a3
{
  v3 = a3;
  v4 = [v3 value];
  v5 = [v4 entireMusicLibrary];

  if (v5)
  {
    v6 = WFLocalizedString(@"My Music Library");
  }

  else
  {
    v7 = [v3 value];
    v6 = [v7 playlistName];
  }

  return v6;
}

- (NSArray)possibleStates
{
  if (!self->_possibleStates && [objc_opt_class() hasPlaylistAccess])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v3 = getMPMediaQueryClass_softClass_14416;
    v17 = getMPMediaQueryClass_softClass_14416;
    if (!getMPMediaQueryClass_softClass_14416)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __getMPMediaQueryClass_block_invoke_14417;
      v13[3] = &unk_278C222B8;
      v13[4] = &v14;
      __getMPMediaQueryClass_block_invoke_14417(v13);
      v3 = v15[3];
    }

    v4 = v3;
    _Block_object_dispose(&v14, 8);
    v5 = [v3 playlistsQuery];
    v6 = [v5 collections];
    v7 = [v6 if_compactMap:&__block_literal_global_14418];
    v8 = [v7 mutableCopy];

    if ([(WFPlaylistPickerParameter *)self showLibrary])
    {
      v9 = [(WFPlaylistPickerParameter *)self entireLibraryState];
      [(NSArray *)v8 insertObject:v9 atIndex:0];
    }

    possibleStates = self->_possibleStates;
    self->_possibleStates = v8;
  }

  v11 = self->_possibleStates;

  return v11;
}

WFPlaylistSubstitutableState *__43__WFPlaylistPickerParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getMPMediaPlaylistClass_softClass;
  v11 = getMPMediaPlaylistClass_softClass;
  if (!getMPMediaPlaylistClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getMPMediaPlaylistClass_block_invoke;
    v7[3] = &unk_278C222B8;
    v7[4] = &v8;
    __getMPMediaPlaylistClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[WFPlaylistSubstitutableState alloc] initWithPlaylist:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)possibleStatesDidChange
{
  possibleStates = self->_possibleStates;
  self->_possibleStates = 0;

  v4.receiver = self;
  v4.super_class = WFPlaylistPickerParameter;
  [(WFPlaylistPickerParameter *)&v4 possibleStatesDidChange];
}

- (void)updateChangeNotificationRegistration
{
  v3 = [(WFPlaylistPickerParameter *)self isInsideWorkflow];
  v4 = [(WFPlaylistPickerParameter *)self generatingNotifications];
  if (v3)
  {
    if (v4 || ![objc_opt_class() hasPlaylistAccess])
    {
      return;
    }

    v5 = [getMPMediaLibraryClass_14443() defaultMediaLibrary];
    [v5 beginGeneratingLibraryChangeNotifications];
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v5 = [getMPMediaLibraryClass_14443() defaultMediaLibrary];
    [v5 endGeneratingLibraryChangeNotifications];
  }

  [(WFPlaylistPickerParameter *)self setGeneratingNotifications:v3];
}

- (void)authorizationStatusDidChange
{
  [(WFPlaylistPickerParameter *)self possibleStatesDidChange];

  [(WFPlaylistPickerParameter *)self updateChangeNotificationRegistration];
}

- (void)wasRemovedFromWorkflow
{
  v5.receiver = self;
  v5.super_class = WFPlaylistPickerParameter;
  [(WFPlaylistPickerParameter *)&v5 wasRemovedFromWorkflow];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getMPMediaLibraryDidChangeNotification();
  [v3 removeObserver:self name:v4 object:0];

  [(WFPlaylistPickerParameter *)self updateChangeNotificationRegistration];
}

- (void)wasAddedToWorkflow
{
  v5.receiver = self;
  v5.super_class = WFPlaylistPickerParameter;
  [(WFPlaylistPickerParameter *)&v5 wasAddedToWorkflow];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getMPMediaLibraryDidChangeNotification();
  [v3 addObserver:self selector:sel_possibleStatesDidChange name:v4 object:0];

  [(WFPlaylistPickerParameter *)self updateChangeNotificationRegistration];
}

- (void)setAppleMusicAccessResource:(id)a3
{
  v8 = a3;
  v5 = MEMORY[0x277D7CF28];
  if (self->_appleMusicAccessResource)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self name:*v5 object:self->_appleMusicAccessResource];
  }

  objc_storeStrong(&self->_appleMusicAccessResource, a3);
  if (self->_appleMusicAccessResource)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:self selector:sel_authorizationStatusDidChange name:*v5 object:self->_appleMusicAccessResource];
  }
}

- (void)setActionResources:(id)a3
{
  v6 = [a3 anyObject];
  v4 = objc_opt_class();
  v5 = WFEnforceClass(v6, v4);
  [(WFPlaylistPickerParameter *)self setAppleMusicAccessResource:v5];
}

- (WFPlaylistPickerParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = WFPlaylistPickerParameter;
  v5 = [(WFPlaylistPickerParameter *)&v15 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"ShowLibrary"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass(v6, v7);
    v5->_showLibrary = [v8 BOOLValue];

    v9 = [WFPlaylistSubstitutableState alloc];
    v10 = [[WFPlaylistDescriptor alloc] initWithEntireMusicLibrary];
    v11 = [(WFVariableSubstitutableParameterState *)v9 initWithValue:v10];
    entireLibraryState = v5->_entireLibraryState;
    v5->_entireLibraryState = v11;

    v13 = v5;
  }

  return v5;
}

+ (id)referencedActionResourceClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

@end