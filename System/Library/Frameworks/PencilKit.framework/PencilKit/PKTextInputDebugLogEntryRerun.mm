@interface PKTextInputDebugLogEntryRerun
- (PKTextInputDebugLogEntryRerun)initWithLogEntry:(id)a3;
- (PKTextInputDebugLogEntryRerun)runWithCompletion:(id)a3;
- (id)recognitionManager:(id)a3 textInputTargetForItemStableIdentifier:(id)a4 strokeIdentifiers:(id)a5 simultaneousItemStableIdentifiers:(id)a6;
- (void)_finishRerunWithQueryItems:(id)a3 error:(id)a4;
- (void)recognitionManager:(id)a3 fetchContentInfoForTextInputTarget:(id)a4 strokeIdentifiers:(id)a5 completion:(id)a6;
@end

@implementation PKTextInputDebugLogEntryRerun

- (PKTextInputDebugLogEntryRerun)initWithLogEntry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKTextInputDebugLogEntryRerun;
  v6 = [(PKTextInputDebugLogEntryRerun *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logEntry, a3);
  }

  return v7;
}

- (PKTextInputDebugLogEntryRerun)runWithCompletion:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(a3);
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  v6 = [(PKTextInputDebugLogEntry *)self->_logEntry recognitionLocaleIdentifiers];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v6;
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

  v14 = [(PKTextInputDebugLogEntry *)self->_logEntry inputDrawing];
  if (!v14)
  {
    v23 = @"Invalid input drawing.";
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [[PKTextInputStrokeProvider alloc] initWithDrawing:v14];
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

- (void)_finishRerunWithQueryItems:(id)a3 error:(id)a4
{
  (*(self->_completionBlock + 2))();
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;
}

- (id)recognitionManager:(id)a3 textInputTargetForItemStableIdentifier:(id)a4 strokeIdentifiers:(id)a5 simultaneousItemStableIdentifiers:(id)a6
{
  v6 = [(PKTextInputDebugLogEntry *)self->_logEntry inputTargetContentInfo:a3];
  v7 = [v6 textInputTarget];

  return v7;
}

- (void)recognitionManager:(id)a3 fetchContentInfoForTextInputTarget:(id)a4 strokeIdentifiers:(id)a5 completion:(id)a6
{
  logEntry = self->_logEntry;
  v8 = a6;
  v9 = [(PKTextInputDebugLogEntry *)logEntry inputTargetContentInfo];
  (*(a6 + 2))(v8, v9);
}

@end