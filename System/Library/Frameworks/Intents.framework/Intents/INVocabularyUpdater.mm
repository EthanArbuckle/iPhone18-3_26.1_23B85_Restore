@interface INVocabularyUpdater
+ (id)_sharedAppInstance;
+ (void)clearAllCustomVocabulary;
+ (void)clearAllCustomVocabularyOnBehalfOf:(id)of;
- (void)setCustomPhotoAlbumNames:(id)names;
- (void)setValidatedVocabulary:(id)vocabulary forIntentSlot:(id)slot onBehalfOf:(id)of validationCompletion:(id)completion;
@end

@implementation INVocabularyUpdater

+ (void)clearAllCustomVocabularyOnBehalfOf:(id)of
{
  ofCopy = of;
  _sharedAppInstance = [self _sharedAppInstance];
  _syncService = [_sharedAppInstance _syncService];
  [_syncService deleteEverythingOnBehalfOf:ofCopy];
}

+ (void)clearAllCustomVocabulary
{
  _sharedAppInstance = [self _sharedAppInstance];
  _syncService = [_sharedAppInstance _syncService];
  [_syncService deleteEverything];
}

+ (id)_sharedAppInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__INVocabularyUpdater__sharedAppInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_sharedAppInstance_onceToken != -1)
  {
    dispatch_once(&_sharedAppInstance_onceToken, block);
  }

  v2 = _sharedAppInstance_sSharedInstance;

  return v2;
}

uint64_t __41__INVocabularyUpdater__sharedAppInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _sharedAppInstance_sSharedInstance;
  _sharedAppInstance_sSharedInstance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (void)setCustomPhotoAlbumNames:(id)names
{
  namesCopy = names;
  +[_INAggregator logReceivedCount:ofVocabularyStringType:](_INAggregator, "logReceivedCount:ofVocabularyStringType:", [namesCopy count], 101);
  v5 = objc_alloc_init(_INVocabularyValidator);
  v6 = [(_INVocabularyValidator *)v5 validatedItemsFromVocabularyStrings:namesCopy ofType:101 loggingWarnings:0];

  v7 = @"PhotoAlbumNameType";
  [(INVocabularyUpdater *)self setValidatedVocabulary:v6 forIntentSlot:@"PhotoAlbumNameType" validationCompletion:0];

  v8 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__INVocabularyUpdater_setCustomPhotoAlbumNames___block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
}

- (void)setValidatedVocabulary:(id)vocabulary forIntentSlot:(id)slot onBehalfOf:(id)of validationCompletion:(id)completion
{
  ofCopy = of;
  completionCopy = completion;
  slotCopy = slot;
  vocabularyCopy = vocabulary;
  v13 = [ofCopy length];
  _syncService = [(_INVocabularyConnection *)self _syncService];
  v15 = _syncService;
  if (v13)
  {
    if (completionCopy)
    {
      v16 = completionCopy;
    }

    else
    {
      v16 = &__block_literal_global_91_71982;
    }

    [_syncService recordVocabulary:vocabularyCopy forIntentSlot:slotCopy onBehalfOf:ofCopy withValidationCompletion:v16];
  }

  else
  {
    if (completionCopy)
    {
      v17 = completionCopy;
    }

    else
    {
      v17 = &__block_literal_global_71981;
    }

    [_syncService recordVocabulary:vocabularyCopy forIntentSlot:slotCopy withValidationCompletion:v17];
  }
}

@end