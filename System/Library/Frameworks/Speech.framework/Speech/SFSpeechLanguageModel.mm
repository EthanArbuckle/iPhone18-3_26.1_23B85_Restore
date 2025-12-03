@interface SFSpeechLanguageModel
+ (void)appLmNeedsRebuild:(id)rebuild language:(id)language clientIdentifier:(id)identifier modelOverride:(id)override completion:(id)completion;
+ (void)initialize;
+ (void)prepareCustomLanguageModelForUrl:(NSURL *)asset clientIdentifier:(NSString *)clientIdentifier configuration:(SFSpeechLanguageModelConfiguration *)configuration ignoresCache:(BOOL)ignoresCache completion:(void *)completion;
+ (void)prepareCustomLanguageModelForUrl:(id)url configuration:(id)configuration completion:(id)completion;
+ (void)trainAppLmFromNgramCountsArtifact:(id)artifact language:(id)language clientIdentifier:(id)identifier writeToDirectory:(id)directory modelOverride:(id)override completion:(id)completion;
+ (void)trainAppLmFromNgramsSerializedDataFile:(id)file customPronsFile:(id)pronsFile language:(id)language writeToDirectory:(id)directory modelOverride:(id)override completion:(id)completion;
- (BOOL)addProns:(id)prons forWord:(id)word;
- (NSArray)outOfVocabularyWords;
- (NSDictionary)outOfVocabularyWordsAndFrequencies;
- (SFSpeechLanguageModel)initWithAssetPath:(id)path;
- (SFSpeechLanguageModel)initWithLocale:(id)locale clientID:(id)d;
- (id)addOovsFromSentence:(id)sentence;
- (id)createNgramCountsArtifactFromPhraseCountArtifact:(id)artifact writeDirectory:(id)directory;
- (id)createNgramCountsArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath writeDirectory:(id)directory;
- (id)createPhraseCountsArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath writeDirectory:(id)directory;
- (id)deserializeModelData:(id)data;
- (id)metrics;
- (int64_t)lmeThreshold;
- (void)addPronsFromFile:(id)file;
- (void)addSentences:(id)sentences;
- (void)dealloc;
- (void)generateNgramsSerializeDataAndWriteToFile:(id)file;
- (void)trainFromPlainTextAndWriteToDirectory:(id)directory completion:(id)completion;
@end

@implementation SFSpeechLanguageModel

- (id)createNgramCountsArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath writeDirectory:(id)directory
{
  directoryCopy = directory;
  v11 = [(SFSpeechLanguageModel *)self createPhraseCountsArtifactWithIdentifier:identifier rawPhraseCountsPath:path customPronunciationsPath:pronunciationsPath writeDirectory:directoryCopy];
  v12 = [(SFSpeechLanguageModel *)self createNgramCountsArtifactFromPhraseCountArtifact:v11 writeDirectory:directoryCopy];

  return v12;
}

- (id)createNgramCountsArtifactFromPhraseCountArtifact:(id)artifact writeDirectory:(id)directory
{
  artifactCopy = artifact;
  directoryCopy = directory;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__658;
  v24 = __Block_byref_object_dispose__659;
  v25 = 0;
  array = [MEMORY[0x1E695DF70] array];
  if (directoryCopy)
  {
    path = [directoryCopy path];
    v19 = 0;
    v10 = [SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:path error:&v19];
    v11 = v19;

    if (v10)
    {
      [array addObject:v10];

      if (!artifactCopy)
      {
        NSLog(&cfstr_NoPhrasecounta.isa);
        goto LABEL_12;
      }

      path2 = [artifactCopy path];
      v18 = 0;
      v13 = [SFUtilities issueReadSandboxExtensionForFilePath:path2 error:&v18];
      v11 = v18;

      if (v13)
      {
        [array addObject:v13];

        lsrClient = self->_lsrClient;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __89__SFSpeechLanguageModel_createNgramCountsArtifactFromPhraseCountArtifact_writeDirectory___block_invoke;
        v17[3] = &unk_1E797BE60;
        v17[4] = &v20;
        [(SFLocalSpeechRecognitionClient *)lsrClient createNgramCountsArtifactFromPhraseCountArtifact:artifactCopy writeToDirectory:directoryCopy sandboxExtensions:array completion:v17];
        v15 = v21[5];
        goto LABEL_13;
      }

      NSLog(&cfstr_CouldNotIssueS.isa, 0);
    }

    else
    {
      NSLog(&cfstr_CouldNotIssueS.isa, 0);
    }
  }

  else
  {
    NSLog(&cfstr_NoWriteDirecto.isa);
  }

LABEL_12:
  v15 = 0;
LABEL_13:

  _Block_object_dispose(&v20, 8);

  return v15;
}

- (id)createPhraseCountsArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath writeDirectory:(id)directory
{
  identifierCopy = identifier;
  pathCopy = path;
  pronunciationsPathCopy = pronunciationsPath;
  directoryCopy = directory;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__658;
  v34 = __Block_byref_object_dispose__659;
  v35 = 0;
  array = [MEMORY[0x1E695DF70] array];
  if (directoryCopy)
  {
    path = [directoryCopy path];
    v29 = 0;
    v16 = [SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:path error:&v29];
    v17 = v29;

    if (v16)
    {
      [array addObject:v16];

      if (!pathCopy)
      {
        NSLog(&cfstr_NoRawphrasecou.isa);
        goto LABEL_17;
      }

      path2 = [pathCopy path];
      v28 = 0;
      v19 = [SFUtilities issueReadSandboxExtensionForFilePath:path2 error:&v28];
      v17 = v28;

      if (v19)
      {
        [array addObject:v19];

        if (!pronunciationsPathCopy)
        {
          NSLog(&cfstr_NoCustompronun.isa);
          goto LABEL_14;
        }

        path3 = [pronunciationsPathCopy path];
        v27 = 0;
        v21 = [SFUtilities issueReadSandboxExtensionForFilePath:path3 error:&v27];
        v17 = v27;

        if (v21)
        {
          [array addObject:v21];

LABEL_14:
          lsrClient = self->_lsrClient;
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __126__SFSpeechLanguageModel_createPhraseCountsArtifactWithIdentifier_rawPhraseCountsPath_customPronunciationsPath_writeDirectory___block_invoke;
          v26[3] = &unk_1E797BE60;
          v26[4] = &v30;
          [(SFLocalSpeechRecognitionClient *)lsrClient createPhraseCountsArtifactWithIdentifier:identifierCopy rawPhraseCountsPath:pathCopy customPronunciationsPath:pronunciationsPathCopy writeToDirectory:directoryCopy sandboxExtensions:array completion:v26];
          v24 = v31[5];
          goto LABEL_18;
        }

        path4 = [pronunciationsPathCopy path];
        NSLog(&cfstr_CouldNotIssueS.isa, path4);
      }

      else
      {
        path4 = [pathCopy path];
        NSLog(&cfstr_CouldNotIssueS.isa, path4);
      }
    }

    else
    {
      path4 = [directoryCopy path];
      NSLog(&cfstr_CouldNotIssueS.isa, path4);
    }
  }

  else
  {
    NSLog(&cfstr_NoWriteDirecto.isa);
  }

LABEL_17:
  v24 = 0;
LABEL_18:

  _Block_object_dispose(&v30, 8);

  return v24;
}

- (id)metrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__658;
  v10 = __Block_byref_object_dispose__659;
  v11 = 0;
  lsrClient = self->_lsrClient;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SFSpeechLanguageModel_metrics__block_invoke;
  v5[3] = &unk_1E797CD30;
  v5[4] = &v6;
  [(SFLocalSpeechRecognitionClient *)lsrClient metricsWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)lmeThreshold
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lsrClient = self->_lsrClient;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SFSpeechLanguageModel_lmeThreshold__block_invoke;
  v5[3] = &unk_1E797BE10;
  v5[4] = &v6;
  [(SFLocalSpeechRecognitionClient *)lsrClient lmeThresholdWithCompletion:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)addProns:(id)prons forWord:(id)word
{
  pronsCopy = prons;
  wordCopy = word;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lsrClient = self->_lsrClient;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__SFSpeechLanguageModel_addProns_forWord___block_invoke;
  v10[3] = &unk_1E797BDE8;
  v10[4] = &v11;
  [(SFLocalSpeechRecognitionClient *)lsrClient addProns:pronsCopy forWord:wordCopy completion:v10];
  LOBYTE(self) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return self;
}

- (void)addPronsFromFile:(id)file
{
  v26 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [objc_alloc(MEMORY[0x1E699BA08]) initWithFilePath:fileCopy];
  obj = [v17 lexemes];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v19 = *MEMORY[0x1E695D940];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"grapheme"];
        v10 = MEMORY[0x1E695DFD8];
        v11 = [v8 objectForKeyedSubscript:@"phoneme"];
        v12 = [v11 componentsSeparatedByString:@"/"];
        v13 = [v10 setWithArray:v12];

        if (![(SFSpeechLanguageModel *)self addProns:v13 forWord:v9])
        {
          v14 = MEMORY[0x1E695DF30];
          allObjects = [v13 allObjects];
          [v14 raise:v19 format:{@"Invalid prons: %@ for word: %@", allObjects, v9}];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)deserializeModelData:(id)data
{
  dataCopy = data;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__658;
  v13 = __Block_byref_object_dispose__659;
  v14 = 0;
  lsrClient = self->_lsrClient;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SFSpeechLanguageModel_deserializeModelData___block_invoke;
  v8[3] = &unk_1E797CD30;
  v8[4] = &v9;
  [(SFLocalSpeechRecognitionClient *)lsrClient deserializeNgramCountsData:dataCopy completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)generateNgramsSerializeDataAndWriteToFile:(id)file
{
  fileCopy = file;
  lsrClient = self->_lsrClient;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SFSpeechLanguageModel_generateNgramsSerializeDataAndWriteToFile___block_invoke;
  v7[3] = &unk_1E797CA90;
  v8 = fileCopy;
  v6 = fileCopy;
  [(SFLocalSpeechRecognitionClient *)lsrClient generateNgramCountsSerializeDataWithCompletion:v7];
}

void __67__SFSpeechLanguageModel_generateNgramsSerializeDataAndWriteToFile___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v6 = 0;
    [a2 writeToURL:v3 options:1 error:&v6];
    v4 = v6;
    v5 = v4;
    if (v4)
    {
      NSLog(&cfstr_ThereWasAProbl.isa, v4);
    }

    else
    {
      NSLog(&cfstr_NgramCountsAnd.isa, *(a1 + 32));
    }
  }

  else
  {
    NSLog(&cfstr_FailedToGenera.isa);
  }
}

- (void)trainFromPlainTextAndWriteToDirectory:(id)directory completion:(id)completion
{
  directoryCopy = directory;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__SFSpeechLanguageModel_trainFromPlainTextAndWriteToDirectory_completion___block_invoke;
  aBlock[3] = &unk_1E797BDC0;
  v8 = completionCopy;
  v19 = v8;
  v9 = _Block_copy(aBlock);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  v11 = [defaultManager createDirectoryAtURL:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v17];
  v12 = v17;
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    NSLog(&cfstr_WriteFailedErr.isa, v12);
LABEL_6:
    (*(v9 + 2))(v9, 0, 0);
    goto LABEL_7;
  }

  NSLog(&cfstr_WriteSuccessfu.isa);
  if (!directoryCopy)
  {
    goto LABEL_6;
  }

  path = [directoryCopy path];
  v16 = 0;
  v15 = [SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:path error:&v16];

  if (!v15)
  {
    goto LABEL_6;
  }

  [(SFLocalSpeechRecognitionClient *)self->_lsrClient trainFromPlainTextAndWriteToDirectory:directoryCopy sandboxExtension:v15 completion:v8];

LABEL_7:
}

uint64_t __74__SFSpeechLanguageModel_trainFromPlainTextAndWriteToDirectory_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (NSDictionary)outOfVocabularyWordsAndFrequencies
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__658;
  v10 = __Block_byref_object_dispose__659;
  v11 = 0;
  lsrClient = self->_lsrClient;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__SFSpeechLanguageModel_outOfVocabularyWordsAndFrequencies__block_invoke;
  v5[3] = &unk_1E797CD30;
  v5[4] = &v6;
  [(SFLocalSpeechRecognitionClient *)lsrClient oovWordsAndFrequenciesWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)outOfVocabularyWords
{
  outOfVocabularyWordsAndFrequencies = [(SFSpeechLanguageModel *)self outOfVocabularyWordsAndFrequencies];
  allKeys = [outOfVocabularyWordsAndFrequencies allKeys];

  return allKeys;
}

- (id)addOovsFromSentence:(id)sentence
{
  sentenceCopy = sentence;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__658;
  v13 = __Block_byref_object_dispose__659;
  v14 = MEMORY[0x1E695E0F0];
  lsrClient = self->_lsrClient;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SFSpeechLanguageModel_addOovsFromSentence___block_invoke;
  v8[3] = &unk_1E797CBC0;
  v8[4] = &v9;
  [(SFLocalSpeechRecognitionClient *)lsrClient addSentenceToNgramCounts:sentenceCopy completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)addSentences:(id)sentences
{
  v15 = *MEMORY[0x1E69E9840];
  sentencesCopy = sentences;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [sentencesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(sentencesCopy);
        }

        [(SFSpeechLanguageModel *)self addSentence:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [sentencesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(SFLocalSpeechRecognitionClient *)self->_lsrClient invalidate];
  v3.receiver = self;
  v3.super_class = SFSpeechLanguageModel;
  [(SFSpeechLanguageModel *)&v3 dealloc];
}

- (SFSpeechLanguageModel)initWithAssetPath:(id)path
{
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = SFSpeechLanguageModel;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__658;
  v17 = __Block_byref_object_dispose__659;
  v5 = [(SFSpeechLanguageModel *)&v19 init];
  v18 = v5;
  if (v5)
  {
    v6 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    lsrClient = v5->_lsrClient;
    v5->_lsrClient = v6;

    v8 = v5->_lsrClient;
    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__SFSpeechLanguageModel_initWithAssetPath___block_invoke;
      v12[3] = &unk_1E797CD80;
      v12[4] = &v13;
      [(SFLocalSpeechRecognitionClient *)v8 initializeLmWithAssetPath:pathCopy completion:v12];
    }

    else
    {
      v9 = v14[5];
      v14[5] = 0;
    }
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __43__SFSpeechLanguageModel_initWithAssetPath___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

- (SFSpeechLanguageModel)initWithLocale:(id)locale clientID:(id)d
{
  localeCopy = locale;
  dCopy = d;
  localeIdentifier = [localeCopy localeIdentifier];
  v9 = [SFUtilities stringByReplacingUnderscoresWithHyphens:localeIdentifier];

  if (!v9 || ([sSupportedLocaleIdentifiers containsObject:v9] & 1) == 0)
  {
    selfCopy = AFDictationLanguageForKeyboardLanguage();
    if (!selfCopy)
    {
      NSLog(&cfstr_IsNotASupporte.isa, v9, sSupportedLocaleIdentifiers);
      goto LABEL_14;
    }

    v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:selfCopy];

    localeCopy = v11;
  }

  v23.receiver = self;
  v23.super_class = SFSpeechLanguageModel;
  self = [(SFSpeechLanguageModel *)&v23 init];
  if (!self)
  {
    goto LABEL_8;
  }

  v12 = [localeCopy copy];
  locale = self->_locale;
  self->_locale = v12;

  v14 = [SFUtilities localeCodeForLocale:localeCopy];
  v15 = [[SFEntitledAssetConfig alloc] initWithLanguage:v14 taskHint:0];
  v16 = [SFSpeechAssetManager pathToAssetWithConfig:v15 clientIdentifier:dCopy];
  if (v16)
  {
    v17 = v16;
    self = [(SFSpeechLanguageModel *)self initWithAssetPath:v16];

LABEL_8:
    self = self;
    selfCopy = self;
    goto LABEL_14;
  }

  assetType = [(SFEntitledAssetConfig *)v15 assetType];
  if ((assetType - 1) > 6)
  {
    v19 = @"Unknown";
  }

  else
  {
    v19 = off_1E797BC18[assetType - 1];
  }

  v20 = v19;
  language = [(SFEntitledAssetConfig *)v15 language];
  NSLog(&cfstr_NoAssetForLang.isa, v20, language);

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

+ (void)prepareCustomLanguageModelForUrl:(NSURL *)asset clientIdentifier:(NSString *)clientIdentifier configuration:(SFSpeechLanguageModelConfiguration *)configuration ignoresCache:(BOOL)ignoresCache completion:(void *)completion
{
  v66[1] = *MEMORY[0x1E69E9840];
  v11 = asset;
  v12 = clientIdentifier;
  v13 = configuration;
  v14 = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__SFSpeechLanguageModel_prepareCustomLanguageModelForUrl_clientIdentifier_configuration_ignoresCache_completion___block_invoke;
  aBlock[3] = &unk_1E797C1C8;
  v15 = v14;
  v60 = v15;
  v16 = _Block_copy(aBlock);
  weight = [(SFSpeechLanguageModelConfiguration *)v13 weight];
  if (weight)
  {
    v18 = weight;
    weight2 = [(SFSpeechLanguageModelConfiguration *)v13 weight];
    [weight2 doubleValue];
    if (v20 < 0.0)
    {

LABEL_5:
      v24 = MEMORY[0x1E696AEC0];
      v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"Custom configuration weight not within [0.0 value:1.0]: illegal value %@" table:{&stru_1F2139F58, @"Localizable"}];
      weight3 = [(SFSpeechLanguageModelConfiguration *)v13 weight];
      v28 = [v24 localizedStringWithFormat:v26, weight3];

      v29 = MEMORY[0x1E696ABC0];
      v65 = *MEMORY[0x1E696A578];
      v66[0] = v28;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
      v31 = [v29 errorWithDomain:@"SFSpeechErrorDomain" code:8 userInfo:v30];
      v16[2](v16, v31);
      goto LABEL_11;
    }

    weight4 = [(SFSpeechLanguageModelConfiguration *)v13 weight];
    [weight4 doubleValue];
    v23 = v22;

    if (v23 > 1.0)
    {
      goto LABEL_5;
    }
  }

  v32 = objc_alloc(MEMORY[0x1E699B9E8]);
  path = [(NSURL *)v11 path];
  v28 = [v32 initWithPath:path];

  if (v28)
  {
    getLocale = [v28 getLocale];
    if (getLocale)
    {
      v35 = getLocale;
      languageModel = [(SFSpeechLanguageModelConfiguration *)v13 languageModel];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __113__SFSpeechLanguageModel_prepareCustomLanguageModelForUrl_clientIdentifier_configuration_ignoresCache_completion___block_invoke_2;
      v52[3] = &unk_1E797BF50;
      v57 = v16;
      v58 = ignoresCache;
      v53 = v13;
      v54 = v11;
      v30 = v35;
      v55 = v30;
      v56 = v12;
      [SFSpeechLanguageModel appLmNeedsRebuild:languageModel language:v30 clientIdentifier:v56 modelOverride:0 completion:v52];

      v31 = v57;
    }

    else
    {
      v43 = MEMORY[0x1E696AEC0];
      v44 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:@"Error reading asset language for %@" value:&stru_1F2139F58 table:@"Localizable"];
      [(NSURL *)v11 path];
      v46 = v51 = v12;
      v31 = [v43 localizedStringWithFormat:v45, v46];

      v47 = MEMORY[0x1E696ABC0];
      v61 = *MEMORY[0x1E696A578];
      v62 = v31;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v49 = [v47 errorWithDomain:@"SFSpeechErrorDomain" code:8 userInfo:v48];
      v16[2](v16, v49);

      v12 = v51;
      v30 = 0;
    }
  }

  else
  {
    v37 = MEMORY[0x1E696AEC0];
    v38 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v39 = [v38 localizedStringForKey:@"Error reading asset from %@" value:&stru_1F2139F58 table:@"Localizable"];
    path2 = [(NSURL *)v11 path];
    v30 = [v37 localizedStringWithFormat:v39, path2];

    v41 = MEMORY[0x1E696ABC0];
    v63 = *MEMORY[0x1E696A578];
    v64 = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v42 = [v41 errorWithDomain:@"SFSpeechErrorDomain" code:8 userInfo:v31];
    v16[2](v16, v42);

    v28 = 0;
  }

LABEL_11:

  v50 = *MEMORY[0x1E69E9840];
}

uint64_t __113__SFSpeechLanguageModel_prepareCustomLanguageModelForUrl_clientIdentifier_configuration_ignoresCache_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __113__SFSpeechLanguageModel_prepareCustomLanguageModelForUrl_clientIdentifier_configuration_ignoresCache_completion___block_invoke_2(uint64_t a1, _BOOL4 a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 64) + 16);
  }

  else
  {
    v7 = *(a1 + 72);
    if ((v7 & 1) == 0 && !a2)
    {
      v8 = [*(a1 + 32) languageModel];
      v9 = __113__SFSpeechLanguageModel_prepareCustomLanguageModelForUrl_clientIdentifier_configuration_ignoresCache_completion___block_invoke_3(v8);

      v10 = __113__SFSpeechLanguageModel_prepareCustomLanguageModelForUrl_clientIdentifier_configuration_ignoresCache_completion___block_invoke_3(*(a1 + 40));
      v11 = v10;
      a2 = 1;
      if (v9 && v10)
      {
        a2 = [v9 compare:v10] == -1;
      }

      v7 = *(a1 + 72);
    }

    if ((v7 & 1) != 0 || a2)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = [MEMORY[0x1E696AC08] defaultManager];
      v16 = [v15 temporaryDirectory];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __113__SFSpeechLanguageModel_prepareCustomLanguageModelForUrl_clientIdentifier_configuration_ignoresCache_completion___block_invoke_4;
      v17[3] = &unk_1E797BF28;
      v18 = *(a1 + 40);
      v20 = *(a1 + 64);
      v19 = *(a1 + 32);
      [SFSpeechLanguageModel trainAppLmFromNgramCountsArtifact:v12 language:v13 clientIdentifier:v14 writeToDirectory:v16 modelOverride:0 completion:v17];

      goto LABEL_13;
    }

    v6 = *(*(a1 + 64) + 16);
  }

  v6();
LABEL_13:
}

id __113__SFSpeechLanguageModel_prepareCustomLanguageModelForUrl_clientIdentifier_configuration_ignoresCache_completion___block_invoke_3(void *a1)
{
  v1 = MEMORY[0x1E696AC08];
  v2 = a1;
  v3 = [v1 defaultManager];
  v4 = [v2 path];

  v5 = [v3 attributesOfItemAtPath:v4 error:0];

  if (v5)
  {
    v6 = [v5 fileModificationDate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __113__SFSpeechLanguageModel_prepareCustomLanguageModelForUrl_clientIdentifier_configuration_ignoresCache_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [*(a1 + 40) languageModel];
    [v8 removeItemAtURL:v9 error:0];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [*(a1 + 40) languageModel];
    v30 = 0;
    v12 = [v10 moveItemAtURL:v5 toURL:v11 error:&v30];
    v13 = v30;

    if (v12)
    {
      v14 = [*(a1 + 40) vocabulary];

      if (v14)
      {
        v15 = [MEMORY[0x1E696AC08] defaultManager];
        v16 = [*(a1 + 40) vocabulary];
        [v15 removeItemAtURL:v16 error:0];

        v17 = [MEMORY[0x1E696AC08] defaultManager];
        v18 = [*(a1 + 40) vocabulary];
        v29 = v13;
        [v17 moveItemAtURL:v7 toURL:v18 error:&v29];
        v19 = v29;
      }

      else
      {
        v19 = v13;
      }
    }

    else
    {
      v19 = v13;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"Error building custom language model at %@" value:&stru_1F2139F58 table:@"Localizable"];
    v23 = [*(a1 + 32) path];
    v19 = [v20 localizedStringWithFormat:v22, v23];

    v24 = *(a1 + 48);
    v25 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32[0] = v19;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v27 = [v25 errorWithDomain:@"SFSpeechErrorDomain" code:1 userInfo:v26];
    (*(v24 + 16))(v24, v27);
  }

  v28 = *MEMORY[0x1E69E9840];
}

+ (void)prepareCustomLanguageModelForUrl:(id)url configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  urlCopy = url;
  v11 = +[SFUtilities defaultClientID];
  [self prepareCustomLanguageModelForUrl:urlCopy clientIdentifier:v11 configuration:configurationCopy ignoresCache:0 completion:completionCopy];
}

+ (void)appLmNeedsRebuild:(id)rebuild language:(id)language clientIdentifier:(id)identifier modelOverride:(id)override completion:(id)completion
{
  v58[1] = *MEMORY[0x1E69E9840];
  rebuildCopy = rebuild;
  languageCopy = language;
  identifierCopy = identifier;
  overrideCopy = override;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__SFSpeechLanguageModel_appLmNeedsRebuild_language_clientIdentifier_modelOverride_completion___block_invoke;
  aBlock[3] = &unk_1E797BEB0;
  v16 = completionCopy;
  v56 = v16;
  v17 = _Block_copy(aBlock);
  array = [MEMORY[0x1E695DF70] array];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [rebuildCopy path];
  v21 = [defaultManager fileExistsAtPath:path];

  if (v21)
  {
    if (rebuildCopy)
    {
      v47 = languageCopy;
      path2 = [rebuildCopy path];
      v54 = 0;
      v23 = [SFUtilities issueReadSandboxExtensionForFilePath:path2 error:&v54];
      v24 = v54;

      if (v23)
      {
        [array addObject:v23];

        v25 = +[SFUtilities sandboxExtensionsForUsingANEAndAssets];
        if (v25)
        {
          [array addObjectsFromArray:v25];
        }

        else
        {
          NSLog(&cfstr_DidNotIssueSan_0.isa);
        }

        v34 = NSTemporaryDirectory();
        v53 = 0;
        v35 = [SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:v34 error:&v53];
        v36 = v53;

        if (v35)
        {
          v44 = v36;
          v45 = v35;
          v46 = v25;
          [array addObject:v35];
          v37 = objc_alloc_init(SFLocalSpeechRecognitionClient);
          [(SFLocalSpeechRecognitionClient *)v37 initializeWithSandboxExtensions:array];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __94__SFSpeechLanguageModel_appLmNeedsRebuild_language_clientIdentifier_modelOverride_completion___block_invoke_2;
          v48[3] = &unk_1E797BF00;
          v52 = v17;
          v38 = v37;
          v49 = v38;
          v50 = rebuildCopy;
          languageCopy = v47;
          v39 = v47;
          v51 = v39;
          v40 = _Block_copy(v48);
          if (!overrideCopy)
          {
            goto LABEL_16;
          }

          if (SFIsInternalInstall_onceToken != -1)
          {
            dispatch_once(&SFIsInternalInstall_onceToken, &__block_literal_global_2153);
          }

          if (SFIsInternalInstall_isInternal == 1)
          {
            [(SFLocalSpeechRecognitionClient *)v38 initializeLmWithAssetPath:overrideCopy completion:v40];
          }

          else
          {
LABEL_16:
            v41 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v39];
            [(SFLocalSpeechRecognitionClient *)v38 initializeLmWithLocale:v41 clientID:identifierCopy completion:v40];
          }

          v35 = v45;
          v25 = v46;
          v42 = v44;
        }

        else
        {
          NSLog(&cfstr_CouldNotIssueS_0.isa, v36);
          (*(v17 + 2))(v17, 1, v36);
          v42 = v36;
          languageCopy = v47;
        }
      }

      else
      {
        (*(v17 + 2))(v17, 1, v24);
      }
    }

    else
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"Error issuing sandbox extension for %@: %s" value:&stru_1F2139F58 table:@"Localizable"];
      v29 = __error();
      v30 = [v26 localizedStringWithFormat:v28, 0, strerror(*v29)];

      v31 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v58[0] = v30;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      v33 = [v31 errorWithDomain:@"SFSpeechErrorDomain" code:1 userInfo:v32];
      (*(v17 + 2))(v17, 1, v33);
    }
  }

  else
  {
    (*(v17 + 2))(v17, 1, 0);
  }

  v43 = *MEMORY[0x1E69E9840];
}

uint64_t __94__SFSpeechLanguageModel_appLmNeedsRebuild_language_clientIdentifier_modelOverride_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __94__SFSpeechLanguageModel_appLmNeedsRebuild_language_clientIdentifier_modelOverride_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __94__SFSpeechLanguageModel_appLmNeedsRebuild_language_clientIdentifier_modelOverride_completion___block_invoke_3;
    v8[3] = &unk_1E797BED8;
    v7 = *(a1 + 48);
    v10 = *(a1 + 56);
    v9 = *(a1 + 32);
    [v5 appLmNeedsRebuild:v6 language:v7 sandboxExtensions:MEMORY[0x1E695E0F0] completion:v8];
  }
}

uint64_t __94__SFSpeechLanguageModel_appLmNeedsRebuild_language_clientIdentifier_modelOverride_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

+ (void)trainAppLmFromNgramCountsArtifact:(id)artifact language:(id)language clientIdentifier:(id)identifier writeToDirectory:(id)directory modelOverride:(id)override completion:(id)completion
{
  artifactCopy = artifact;
  languageCopy = language;
  identifierCopy = identifier;
  directoryCopy = directory;
  overrideCopy = override;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__SFSpeechLanguageModel_trainAppLmFromNgramCountsArtifact_language_clientIdentifier_writeToDirectory_modelOverride_completion___block_invoke;
  aBlock[3] = &unk_1E797BDC0;
  v19 = completionCopy;
  v67 = v19;
  v20 = _Block_copy(aBlock);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (artifactCopy)
  {
    path = [artifactCopy path];
    v23 = [defaultManager fileExistsAtPath:path];

    if (v23)
    {
      v65 = 0;
      v24 = [defaultManager createDirectoryAtURL:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v65];
      v25 = v65;
      v26 = v25;
      if (v24)
      {
        NSLog(&cfstr_CreatedDirecto.isa, directoryCopy);
      }

      else
      {
        NSLog(&cfstr_FailedToCreate.isa, v25);
      }

      array = [MEMORY[0x1E695DF70] array];
      v28 = array;
      if (directoryCopy)
      {
        v54 = languageCopy;
        v55 = array;
        v52 = v26;
        path2 = [directoryCopy path];
        v64 = 0;
        v30 = [SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:path2 error:&v64];
        v31 = v64;

        if (v30)
        {
          v51 = identifierCopy;
          [v55 addObject:v30];

          path3 = [artifactCopy path];
          v63 = 0;
          v33 = [SFUtilities issueReadSandboxExtensionForFilePath:path3 error:&v63];
          v34 = v63;

          if (v33)
          {
            [v55 addObject:v33];

            v35 = NSTemporaryDirectory();
            v62 = 0;
            v36 = [SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:v35 error:&v62];
            v37 = v62;

            v49 = overrideCopy;
            v50 = v36;
            if (v36)
            {
              v48 = v37;
              [v55 addObject:v36];
              v38 = +[SFUtilities sandboxExtensionsForUsingANEAndAssets];
              identifierCopy = v51;
              v47 = v38;
              if (v38)
              {
                [v55 addObjectsFromArray:v38];
              }

              else
              {
                NSLog(&cfstr_DidNotIssueSan.isa);
              }

              v26 = v52;
              v40 = objc_alloc_init(SFLocalSpeechRecognitionClient);
              [(SFLocalSpeechRecognitionClient *)v40 initializeWithSandboxExtensions:v55];
              v56[0] = MEMORY[0x1E69E9820];
              v56[1] = 3221225472;
              v56[2] = __127__SFSpeechLanguageModel_trainAppLmFromNgramCountsArtifact_language_clientIdentifier_writeToDirectory_modelOverride_completion___block_invoke_2;
              v56[3] = &unk_1E797BE88;
              v61 = v20;
              v53 = v40;
              v57 = v53;
              v58 = artifactCopy;
              languageCopy = v54;
              v41 = v54;
              v59 = v41;
              v60 = directoryCopy;
              v46 = _Block_copy(v56);
              if (!overrideCopy)
              {
                goto LABEL_24;
              }

              if (SFIsInternalInstall_onceToken != -1)
              {
                dispatch_once(&SFIsInternalInstall_onceToken, &__block_literal_global_2153);
              }

              if (SFIsInternalInstall_isInternal == 1)
              {
                v42 = v53;
                v43 = overrideCopy;
                v44 = v46;
                [(SFLocalSpeechRecognitionClient *)v53 initializeLmWithAssetPath:v43 completion:v46];
              }

              else
              {
LABEL_24:
                v45 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v41];
                v42 = v53;
                v44 = v46;
                [(SFLocalSpeechRecognitionClient *)v53 initializeLmWithLocale:v45 clientID:v51 completion:v46];

                languageCopy = v54;
              }

              v28 = v55;
              v39 = v48;
            }

            else
            {
              NSLog(&cfstr_CouldNotIssueS_0.isa, v37);
              (*(v20 + 2))(v20, 0, 0);
              v26 = v52;
              languageCopy = v54;
              identifierCopy = v51;
              v39 = v37;
              v28 = v55;
            }

            overrideCopy = v49;
            goto LABEL_27;
          }

          NSLog(&cfstr_CouldNotIssueS.isa, 0);
          (*(v20 + 2))(v20, 0, 0);

          languageCopy = v54;
          identifierCopy = v51;
        }

        else
        {
          NSLog(&cfstr_CouldNotIssueS.isa, 0);
          (*(v20 + 2))(v20, 0, 0);

          languageCopy = v54;
        }

        v26 = v52;
        v28 = v55;
      }

      else
      {
        NSLog(&cfstr_NoWriteDirecto.isa);
        (*(v20 + 2))(v20, 0, 0);
      }

LABEL_27:

      goto LABEL_28;
    }
  }

  NSLog(&cfstr_CouldNotFindNg.isa, artifactCopy);
  (*(v20 + 2))(v20, 0, 0);
LABEL_28:
}

uint64_t __127__SFSpeechLanguageModel_trainAppLmFromNgramCountsArtifact_language_clientIdentifier_writeToDirectory_modelOverride_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __127__SFSpeechLanguageModel_trainAppLmFromNgramCountsArtifact_language_clientIdentifier_writeToDirectory_modelOverride_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_FailedToInitia.isa, a2);
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __127__SFSpeechLanguageModel_trainAppLmFromNgramCountsArtifact_language_clientIdentifier_writeToDirectory_modelOverride_completion___block_invoke_3;
    v10[3] = &unk_1E797BE38;
    v12 = *(a1 + 64);
    v11 = *(a1 + 32);
    [v4 trainAppLmFromNgramCountsArtifact:v5 forApp:v7 language:v8 writeToDirectory:v9 sandboxExtensions:MEMORY[0x1E695E0F0] completion:v10];
  }
}

uint64_t __127__SFSpeechLanguageModel_trainAppLmFromNgramCountsArtifact_language_clientIdentifier_writeToDirectory_modelOverride_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

+ (void)trainAppLmFromNgramsSerializedDataFile:(id)file customPronsFile:(id)pronsFile language:(id)language writeToDirectory:(id)directory modelOverride:(id)override completion:(id)completion
{
  fileCopy = file;
  pronsFileCopy = pronsFile;
  languageCopy = language;
  directoryCopy = directory;
  overrideCopy = override;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __131__SFSpeechLanguageModel_trainAppLmFromNgramsSerializedDataFile_customPronsFile_language_writeToDirectory_modelOverride_completion___block_invoke;
  aBlock[3] = &unk_1E797BDC0;
  v19 = completionCopy;
  v55 = v19;
  v20 = _Block_copy(aBlock);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (fileCopy && ([fileCopy path], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(defaultManager, "fileExistsAtPath:", v22), v22, (v23 & 1) != 0))
  {
    v39 = overrideCopy;
    v24 = languageCopy;
    v25 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileCopy];
    path = [fileCopy path];
    v27 = path;
    v40 = v25;
    if (v25)
    {
      NSLog(&cfstr_SuccessfullyRe.isa, path);

      if (pronsFileCopy)
      {
        v28 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:pronsFileCopy];
        path2 = [pronsFileCopy path];
        v37 = v28;
        if (v28)
        {
          NSLog(&cfstr_SuccessfullyRe.isa, path2);
        }

        else
        {
          NSLog(&cfstr_FailedToReadTh_0.isa, path2);
        }
      }

      else
      {
        v37 = 0;
      }

      languageCopy = v24;
      v53 = 0;
      v30 = [defaultManager createDirectoryAtURL:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v53];
      v31 = v53;
      overrideCopy = v39;
      v36 = v31;
      if (v30)
      {
        NSLog(&cfstr_CreatedDirecto.isa, directoryCopy);
      }

      else
      {
        NSLog(&cfstr_FailedToCreate.isa, v31);
      }

      v38 = objc_alloc_init(SFLocalSpeechRecognitionClient);
      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__658;
      v51 = __Block_byref_object_dispose__659;
      v52 = 0;
      if (!v39)
      {
        goto LABEL_20;
      }

      if (SFIsInternalInstall_onceToken != -1)
      {
        dispatch_once(&SFIsInternalInstall_onceToken, &__block_literal_global_2153);
      }

      if (SFIsInternalInstall_isInternal == 1)
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __131__SFSpeechLanguageModel_trainAppLmFromNgramsSerializedDataFile_customPronsFile_language_writeToDirectory_modelOverride_completion___block_invoke_2;
        v46[3] = &unk_1E797CD80;
        v46[4] = &v47;
        [(SFLocalSpeechRecognitionClient *)v38 initializeLmWithAssetPath:v39 completion:v46];
      }

      else
      {
LABEL_20:
        v32 = +[SFUtilities defaultClientID];
        v33 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:languageCopy];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __131__SFSpeechLanguageModel_trainAppLmFromNgramsSerializedDataFile_customPronsFile_language_writeToDirectory_modelOverride_completion___block_invoke_3;
        v45[3] = &unk_1E797CD80;
        v45[4] = &v47;
        [(SFLocalSpeechRecognitionClient *)v38 initializeLmWithLocale:v33 clientID:v32 completion:v45];
      }

      if (v48[5])
      {
        NSLog(&cfstr_FailedToInitia.isa, v48[5], v36);
        (*(v20 + 2))(v20, 0, 0);
      }

      else if (directoryCopy && ([directoryCopy path], v34 = objc_claimAutoreleasedReturnValue(), v44 = 0, +[SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:error:](SFUtilities, "issueReadWriteSandboxExtensionForDirectoryPath:error:", v34, &v44), v35 = objc_claimAutoreleasedReturnValue(), v34, v35))
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __131__SFSpeechLanguageModel_trainAppLmFromNgramsSerializedDataFile_customPronsFile_language_writeToDirectory_modelOverride_completion___block_invoke_4;
        v41[3] = &unk_1E797BE38;
        v43 = v19;
        v42 = v38;
        [(SFLocalSpeechRecognitionClient *)v42 trainAppLmFromNgramsSerializedData:v40 customPronsData:v37 language:languageCopy writeToDirectory:directoryCopy sandboxExtension:v35 completion:v41];
      }

      else
      {
        (*(v20 + 2))(v20, 0, 0);
      }

      _Block_object_dispose(&v47, 8);
    }

    else
    {
      NSLog(&cfstr_FailedToReadTh.isa, path);

      (*(v20 + 2))(v20, 0, 0);
      overrideCopy = v39;
    }
  }

  else
  {
    NSLog(&cfstr_CouldNotFindNg.isa, fileCopy);
    (*(v20 + 2))(v20, 0, 0);
  }
}

uint64_t __131__SFSpeechLanguageModel_trainAppLmFromNgramsSerializedDataFile_customPronsFile_language_writeToDirectory_modelOverride_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __131__SFSpeechLanguageModel_trainAppLmFromNgramsSerializedDataFile_customPronsFile_language_writeToDirectory_modelOverride_completion___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [SFUtilities supportedLocalesWithCompletion:&__block_literal_global_720];
  }
}

void __35__SFSpeechLanguageModel_initialize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 copy];
  v6 = sSupportedLocales;
  sSupportedLocales = v5;

  v7 = [v4 copy];
  v8 = sSupportedLocaleIdentifiers;
  sSupportedLocaleIdentifiers = v7;
}

@end