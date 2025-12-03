@interface PKTextInputDebugLogEntryRerun
- (PKTextInputDebugLogEntryRerun)initWithLogEntry:(id)entry;
- (PKTextInputDebugLogEntryRerun)runWithCompletion:(id)completion;
- (id)recognitionManager:(id)manager textInputTargetForItemStableIdentifier:(id)identifier strokeIdentifiers:(id)identifiers simultaneousItemStableIdentifiers:(id)stableIdentifiers;
- (void)_finishRerunWithQueryItems:(id)items error:(id)error;
- (void)recognitionManager:(id)manager fetchContentInfoForTextInputTarget:(id)target strokeIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation PKTextInputDebugLogEntryRerun

- (PKTextInputDebugLogEntryRerun)initWithLogEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = PKTextInputDebugLogEntryRerun;
  v6 = [(PKTextInputDebugLogEntryRerun *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logEntry, entry);
  }

  return v7;
}

- (PKTextInputDebugLogEntryRerun)runWithCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(completion);
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  recognitionLocaleIdentifiers = [(PKTextInputDebugLogEntry *)self->_logEntry recognitionLocaleIdentifiers];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recognitionLocaleIdentifiers, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = recognitionLocaleIdentifiers;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v29 + 1) + 8 * v12)];
        if (v13)
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v10);
  }

  if (![v7 count])
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid locales for log entry: %@", v8];
LABEL_17:
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A250];
    v33 = *MEMORY[0x1E696A578];
    v34 = v23;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v27 = [v24 errorWithDomain:v25 code:1 userInfo:v26];

    [(PKTextInputDebugLogEntryRerun *)self _finishRerunWithQueryItems:0 error:v27];
    goto LABEL_18;
  }

  inputDrawing = [(PKTextInputDebugLogEntry *)self->_logEntry inputDrawing];
  if (!inputDrawing)
  {
    v23 = @"Invalid input drawing.";
    goto LABEL_17;
  }

  v15 = inputDrawing;
  v16 = [[PKTextInputStrokeProvider alloc] initWithDrawing:inputDrawing];
  strokeProvider = self->_strokeProvider;
  self->_strokeProvider = v16;

  v18 = [[PKTextInputLanguageSpec alloc] initWithLocales:v7];
  languageSpec = self->_languageSpec;
  self->_languageSpec = v18;

  v20 = objc_alloc_init(PKTextInputRecognitionManager);
  recognitionManager = self->_recognitionManager;
  self->_recognitionManager = v20;

  v22 = self->_languageSpec;
  if (v22)
  {
    [(PKTextInputRecognitionManager *)self->_recognitionManager setRecognitionLocales:?];
  }

  [(PKTextInputRecognitionManager *)&self->_recognitionManager->super.isa beginRecognitionRequestWithDataSource:?];
LABEL_18:

  return result;
}

- (void)_finishRerunWithQueryItems:(id)items error:(id)error
{
  (*(self->_completionBlock + 2))();
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;
}

- (id)recognitionManager:(id)manager textInputTargetForItemStableIdentifier:(id)identifier strokeIdentifiers:(id)identifiers simultaneousItemStableIdentifiers:(id)stableIdentifiers
{
  v6 = [(PKTextInputDebugLogEntry *)self->_logEntry inputTargetContentInfo:manager];
  textInputTarget = [v6 textInputTarget];

  return textInputTarget;
}

- (void)recognitionManager:(id)manager fetchContentInfoForTextInputTarget:(id)target strokeIdentifiers:(id)identifiers completion:(id)completion
{
  logEntry = self->_logEntry;
  completionCopy = completion;
  inputTargetContentInfo = [(PKTextInputDebugLogEntry *)logEntry inputTargetContentInfo];
  (*(completion + 2))(completionCopy, inputTargetContentInfo);
}

@end