@interface INVocabularyUpdater
+ (id)_sharedAppInstance;
+ (void)clearAllCustomVocabulary;
+ (void)clearAllCustomVocabularyOnBehalfOf:(id)a3;
- (void)setCustomPhotoAlbumNames:(id)a3;
- (void)setValidatedVocabulary:(id)a3 forIntentSlot:(id)a4 onBehalfOf:(id)a5 validationCompletion:(id)a6;
@end

@implementation INVocabularyUpdater

+ (void)clearAllCustomVocabularyOnBehalfOf:(id)a3
{
  v4 = a3;
  v6 = [a1 _sharedAppInstance];
  v5 = [v6 _syncService];
  [v5 deleteEverythingOnBehalfOf:v4];
}

+ (void)clearAllCustomVocabulary
{
  v3 = [a1 _sharedAppInstance];
  v2 = [v3 _syncService];
  [v2 deleteEverything];
}

+ (id)_sharedAppInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__INVocabularyUpdater__sharedAppInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)setCustomPhotoAlbumNames:(id)a3
{
  v4 = a3;
  +[_INAggregator logReceivedCount:ofVocabularyStringType:](_INAggregator, "logReceivedCount:ofVocabularyStringType:", [v4 count], 101);
  v5 = objc_alloc_init(_INVocabularyValidator);
  v6 = [(_INVocabularyValidator *)v5 validatedItemsFromVocabularyStrings:v4 ofType:101 loggingWarnings:0];

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

- (void)setValidatedVocabulary:(id)a3 forIntentSlot:(id)a4 onBehalfOf:(id)a5 validationCompletion:(id)a6
{
  v18 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v18 length];
  v14 = [(_INVocabularyConnection *)self _syncService];
  v15 = v14;
  if (v13)
  {
    if (v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = &__block_literal_global_91_71982;
    }

    [v14 recordVocabulary:v12 forIntentSlot:v11 onBehalfOf:v18 withValidationCompletion:v16];
  }

  else
  {
    if (v10)
    {
      v17 = v10;
    }

    else
    {
      v17 = &__block_literal_global_71981;
    }

    [v14 recordVocabulary:v12 forIntentSlot:v11 withValidationCompletion:v17];
  }
}

@end