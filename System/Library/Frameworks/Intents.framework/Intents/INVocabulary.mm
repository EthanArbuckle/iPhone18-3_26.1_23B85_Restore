@interface INVocabulary
+ (INVocabulary)sharedVocabulary;
- (INVocabulary)init;
- (void)_THROW_EXCEPTION_FOR_PROCESS_MISSING_ENTITLEMENT_com_apple_developer_siri;
- (void)removeAllVocabularyStrings;
- (void)setVocabulary:(NSOrderedSet *)vocabulary ofType:(INVocabularyStringType)type;
- (void)setVocabularyStrings:(NSOrderedSet *)vocabulary ofType:(INVocabularyStringType)type;
@end

@implementation INVocabulary

- (void)_THROW_EXCEPTION_FOR_PROCESS_MISSING_ENTITLEMENT_com_apple_developer_siri
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Use of the class %@ requires the entitlement %@. Make sure you have enabled the Siri capability in your Xcode project.", objc_opt_class(), @"com.apple.developer.siri"];
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v2);
}

- (void)removeAllVocabularyStrings
{
  v2 = +[_INVocabulary sharedVocabulary];
  [v2 removeAllVocabularyStrings];
}

uint64_t __54___INVocabulary_removeAllVocabularyStringsOnBehalfOf___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);

  return [v3 clearAllCustomVocabularyOnBehalfOf:v4];
}

uint64_t __43___INVocabulary_removeAllVocabularyStrings__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = objc_opt_class();

  return [v2 clearAllCustomVocabulary];
}

void __50___INVocabulary__setVocabulary_ofType_onBehalfOf___block_invoke(uint64_t a1)
{
  [*(a1 + 32) validateVocabularyType:*(a1 + 56)];
  +[_INAggregator logReceivedCount:ofVocabularyStringType:](_INAggregator, "logReceivedCount:ofVocabularyStringType:", [*(a1 + 40) count], *(a1 + 56));
  v2 = [*(a1 + 32) _validator];
  v3 = [v2 validatedItemsFromVocabularySpeakables:*(a1 + 40) ofType:*(a1 + 56) loggingWarnings:1];

  [*(a1 + 32) setValidatedVocabulary:v3 ofType:*(a1 + 56) onBehalfOf:*(a1 + 48)];
}

void __45___INVocabulary_setVocabularyStrings_ofType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) validateVocabularyType:*(a1 + 48)];
  +[_INAggregator logReceivedCount:ofVocabularyStringType:](_INAggregator, "logReceivedCount:ofVocabularyStringType:", [*(a1 + 40) count], *(a1 + 48));
  v2 = [*(a1 + 32) _validator];
  v3 = [v2 validatedItemsFromVocabularyStrings:*(a1 + 40) ofType:*(a1 + 48) loggingWarnings:1];

  [*(a1 + 32) setValidatedVocabulary:v3 ofType:*(a1 + 48)];
}

void __58___INVocabulary_setValidatedVocabulary_ofType_onBehalfOf___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __58___INVocabulary_setValidatedVocabulary_ofType_onBehalfOf___block_invoke_2;
    v3[3] = &unk_1E7283F50;
    objc_copyWeak(v4, (a1 + 32));
    v4[1] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(v4);
  }
}

void __58___INVocabulary_setValidatedVocabulary_ofType_onBehalfOf___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _INStringFromVocabularyStringType(*(a1 + 40));
  [WeakRetained _THROW_EXCEPTION_FOR_ATTEMPT_TO_PROVIDE_VOCABULARY_OF_TYPE_THAT_APP_DOES_NOT_HANDLE_:v2];
}

uint64_t __33___INVocabulary_sharedVocabulary__block_invoke(uint64_t a1)
{
  sharedVocabulary_sSharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

void __47___INVocabulary_supportedVocabularyStringTypes__block_invoke()
{
  v3[20] = *MEMORY[0x1E69E9840];
  v3[0] = @"ContactNameType";
  v3[1] = @"ContactGroupNameType";
  v3[2] = @"PhotoTagsType";
  v3[3] = @"PhotoAlbumNameType";
  v3[4] = @"PhotoMemoryNameType";
  v3[5] = @"HealthActivityNameType";
  v3[6] = @"CarProfileNameType";
  v3[7] = @"CarNameType";
  v3[8] = @"PaymentsOrganizationNameType";
  v3[9] = @"PaymentsAccountNicknameType";
  v3[10] = @"NotebookItemTitleType";
  v3[11] = @"NotebookItemGroupNameType";
  v3[12] = @"VoiceCommandNameType";
  v3[13] = @"AutoShortcutNameType";
  v3[14] = @"PlaylistTitleType";
  v3[15] = @"MusicArtistNameType";
  v3[16] = @"AudiobookTitleType";
  v3[17] = @"AudiobookAuthorNameType";
  v3[18] = @"ShowTitleType";
  v3[19] = @"MediaUserContextType";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:20];
  v1 = supportedVocabularyStringTypes_stAllTypes;
  supportedVocabularyStringTypes_stAllTypes = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)setVocabulary:(NSOrderedSet *)vocabulary ofType:(INVocabularyStringType)type
{
  v5 = vocabulary;
  v6 = +[_INVocabulary sharedVocabulary];
  [v6 setVocabulary:v5 ofType:type];
}

- (void)setVocabularyStrings:(NSOrderedSet *)vocabulary ofType:(INVocabularyStringType)type
{
  v5 = vocabulary;
  v6 = +[_INVocabulary sharedVocabulary];
  [v6 setVocabularyStrings:v5 ofType:type];
}

- (INVocabulary)init
{
  if (INThisProcessHasEntitlement(@"com.apple.developer.siri", 1))
  {
    v5.receiver = self;
    v5.super_class = INVocabulary;
    self = [(INVocabulary *)&v5 init];
    selfCopy = self;
  }

  else
  {
    [(INVocabulary *)self _THROW_EXCEPTION_FOR_PROCESS_MISSING_ENTITLEMENT_com_apple_developer_siri];
    selfCopy = 0;
  }

  return selfCopy;
}

+ (INVocabulary)sharedVocabulary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__INVocabulary_sharedVocabulary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedVocabulary_onceToken != -1)
  {
    dispatch_once(&sharedVocabulary_onceToken, block);
  }

  v2 = sharedVocabulary_sharedVocabulary;

  return v2;
}

uint64_t __32__INVocabulary_sharedVocabulary__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedVocabulary_sharedVocabulary;
  sharedVocabulary_sharedVocabulary = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end