@interface PKTranscriptionController
- (PKAttachment)attachment;
- (PKRecognitionSessionManager)recognitionManager;
- (PKTranscriptionController)initWithRecognitionManager:(id)manager strokeSelection:(id)selection attachment:(id)attachment;
- (id)_fetchTranscriptionWithCompletion:(id)completion;
- (void)_hideHUD;
- (void)_progressChanged;
- (void)_receiveTranscription:(id)transcription;
- (void)_showHUDWithProgress:(id)progress;
- (void)_unregisterProgressObserver;
- (void)dealloc;
- (void)findCompleteTranscriptionForNote:(id)note;
- (void)findTranscriptionForType:(int)type withCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PKTranscriptionController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKTranscriptionController;
  [(PKTranscriptionController *)&v4 dealloc];
}

- (PKTranscriptionController)initWithRecognitionManager:(id)manager strokeSelection:(id)selection attachment:(id)attachment
{
  managerCopy = manager;
  selectionCopy = selection;
  attachmentCopy = attachment;
  v15.receiver = self;
  v15.super_class = PKTranscriptionController;
  v11 = [(PKTranscriptionController *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_recognitionManager, managerCopy);
    objc_storeStrong(&v12->_strokeSelection, selection);
    objc_storeWeak(&v12->_attachment, attachmentCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel_textInputDidChange_ name:@"TIPreferencesControllerChangedNotification" object:0];
  }

  return v12;
}

- (void)findTranscriptionForType:(int)type withCompletion:(id)completion
{
  completionCopy = completion;
  self->_didShowHUD = 0;
  self->_transcriptionType = type;
  textTranscription = [(PKTranscriptionController *)self textTranscription];

  if (textTranscription)
  {
    if (completionCopy)
    {
      v8 = [PKTranscriptionResult alloc];
      textTranscription2 = [(PKTranscriptionController *)self textTranscription];
      v10 = [(PKTranscriptionResult *)v8 initWithTranscription:textTranscription2 didShowHUD:self->_didShowHUD];

      completionCopy[2](completionCopy, v10);
    }
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__PKTranscriptionController_findTranscriptionForType_withCompletion___block_invoke;
    v15[3] = &unk_1E82D9ED0;
    v15[4] = self;
    v16 = completionCopy;
    v11 = [(PKTranscriptionController *)self _fetchTranscriptionWithCompletion:v15];
    if (type != 2)
    {
      v12 = dispatch_time(0, 2000000000);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __69__PKTranscriptionController_findTranscriptionForType_withCompletion___block_invoke_2;
      v13[3] = &unk_1E82D6E70;
      v13[4] = self;
      v14 = v11;
      dispatch_after(v12, MEMORY[0x1E69E96A0], v13);
    }
  }
}

void __69__PKTranscriptionController_findTranscriptionForType_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  *(*(a1 + 32) + 9) = 1;
  [*(a1 + 32) _hideHUD];
  if (*(a1 + 40))
  {
    v3 = [[PKTranscriptionResult alloc] initWithTranscription:v4 didShowHUD:*(*(a1 + 32) + 10)];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __69__PKTranscriptionController_findTranscriptionForType_withCompletion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 9) & 1) == 0)
  {
    *(v1 + 10) = 1;
    return [*(result + 32) _showHUDWithProgress:*(result + 40)];
  }

  return result;
}

- (id)_fetchTranscriptionWithCompletion:(id)completion
{
  completionCopy = completion;
  strokeSelection = [(PKTranscriptionController *)self strokeSelection];
  drawing = [strokeSelection drawing];

  if (drawing && (v7 = objc_loadWeakRetained(&self->_recognitionManager), v7, v7))
  {
    self->_shouldCancel = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__PKTranscriptionController__fetchTranscriptionWithCompletion___block_invoke;
    aBlock[3] = &unk_1E82D7668;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    WeakRetained = objc_loadWeakRetained(&self->_recognitionManager);
    state = [WeakRetained state];

    if (state != 3)
    {
      v11 = MEMORY[0x1E695DFA0];
      v12 = objc_loadWeakRetained(&self->_attachment);
      strokeSpatialCache = [v12 strokeSpatialCache];
      v14 = strokeSpatialCache;
      if (strokeSpatialCache)
      {
        v15 = *(strokeSpatialCache + 24);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = [v11 orderedSetWithArray:v16];

      strokeSelection2 = [(PKTranscriptionController *)self strokeSelection];
      strokes = [strokeSelection2 strokes];
      [v17 unionOrderedSet:strokes];

      v20 = objc_loadWeakRetained(&self->_recognitionManager);
      array = [v17 array];
      [(PKRecognitionSessionManager *)v20 setVisibleOnscreenStrokes:array];
    }

    v22 = objc_loadWeakRetained(&self->_recognitionManager);
    strokeSelection3 = [(PKTranscriptionController *)self strokeSelection];
    strokes2 = [strokeSelection3 strokes];
    array2 = [strokes2 array];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __63__PKTranscriptionController__fetchTranscriptionWithCompletion___block_invoke_2;
    v28[3] = &unk_1E82D9ED0;
    v28[4] = self;
    v29 = completionCopy;
    v26 = [(PKRecognitionSessionManager *)v22 fetchTranscriptionForStrokes:array2 cancelBlock:v8 withCompletion:v28];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void __63__PKTranscriptionController__fetchTranscriptionWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _receiveTranscription:a2];
  v3 = os_log_create("com.apple.pencilkit", "Recognition");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "[On-demand Transcription] Successfully fetched transcription from CoreHandwriting", v6, 2u);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) textTranscription];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)findCompleteTranscriptionForNote:(id)note
{
  noteCopy = note;
  WeakRetained = objc_loadWeakRetained(&self->_recognitionManager);

  if (WeakRetained)
  {
    self->_shouldCancel = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PKTranscriptionController_findCompleteTranscriptionForNote___block_invoke;
    aBlock[3] = &unk_1E82D7668;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    v7 = objc_loadWeakRetained(&self->_recognitionManager);
    attachment = [(PKTranscriptionController *)self attachment];
    drawing = [attachment drawing];
    strokes = [drawing strokes];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__PKTranscriptionController_findCompleteTranscriptionForNote___block_invoke_2;
    v12[3] = &unk_1E82D9ED0;
    v12[4] = self;
    v13 = noteCopy;
    v11 = [(PKRecognitionSessionManager *)v7 fetchTranscriptionForStrokes:strokes cancelBlock:v6 withCompletion:v12];
  }
}

void __62__PKTranscriptionController_findCompleteTranscriptionForNote___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _receiveTranscription:a2];
  if (*(a1 + 40))
  {
    v3 = [PKTranscriptionResult alloc];
    v4 = [*(a1 + 32) textTranscription];
    v5 = [(PKTranscriptionResult *)v3 initWithTranscription:v4 didShowHUD:*(*(a1 + 32) + 10)];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_receiveTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  if (!transcriptionCopy)
  {
    v5 = os_log_create("com.apple.pencilkit", "Recognition");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_ERROR, "[On-demand Transcription] Unable to fetch transcription from CoreHandwriting, falling back on creating a new session with just the selected strokes", buf, 2u);
    }
  }

  if ([transcriptionCopy length] || self->_transcriptionType == 2)
  {
    [(PKTranscriptionController *)self setTextTranscription:transcriptionCopy];
  }

  else
  {
    v7 = _PencilKitBundle();
    v8 = [v7 localizedStringForKey:@"Handwritten Note" value:@"Handwritten Note" table:@"Localizable"];
    [(PKTranscriptionController *)self setTextTranscription:v8];
  }

  v6 = os_log_create("com.apple.pencilkit", "Recognition");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "[On-demand Transcription] Successfully fetched transcription from CoreHandwriting", v9, 2u);
  }
}

- (void)_showHUDWithProgress:(id)progress
{
  progressCopy = progress;
  transcriptionType = self->_transcriptionType;
  v6 = _PencilKitBundle();
  v7 = v6;
  if (transcriptionType == 1)
  {
    v20 = [v6 localizedStringForKey:@"Translating Text…" value:@"Translating Text…" table:@"Localizable"];
    v8 = @"Cancel translating";
  }

  else if (transcriptionType)
  {
    v20 = [v6 localizedStringForKey:@"Transcribing Text…" value:@"Transcribing Text…" table:@"Localizable"];
    v8 = @"Cancel transcription";
  }

  else
  {
    v20 = [v6 localizedStringForKey:@"Copying as Text…" value:@"Copying as Text…" table:@"Localizable"];
    v8 = @"Cancel copy as text";
  }

  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:v8 value:@"Cancel" table:@"Localizable"];

  v11 = [PKProgressAlertController newProgressAlertControllerWithTitle:v20 cancel:v10];
  progressAlertController = self->_progressAlertController;
  self->_progressAlertController = v11;

  [(PKProgressAlertController *)self->_progressAlertController setDelegate:self];
  v13 = self->_progressAlertController;
  [(NSProgress *)progressCopy fractionCompleted];
  [(PKProgressAlertController *)v13 setProgress:?];
  currentProgress = self->_currentProgress;
  self->_currentProgress = progressCopy;
  v15 = progressCopy;

  [(NSProgress *)self->_currentProgress addObserver:self forKeyPath:@"fractionCompleted" options:3 context:PKCopyAsTextContext];
  attachment = [(PKTranscriptionController *)self attachment];
  viewRep = [attachment viewRep];
  window = [viewRep window];
  rootViewController = [window rootViewController];
  [rootViewController presentViewController:self->_progressAlertController animated:1 completion:&__block_literal_global_51];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (PKCopyAsTextContext == context)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {

      [(PKTranscriptionController *)self _progressChanged];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__PKTranscriptionController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E82D7148;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_progressChanged
{
  presentingViewController = [(PKProgressAlertController *)self->_progressAlertController presentingViewController];

  if (presentingViewController)
  {
    progressAlertController = self->_progressAlertController;
    [(NSProgress *)self->_currentProgress fractionCompleted];

    [(PKProgressAlertController *)progressAlertController setProgress:?];
  }
}

- (void)_unregisterProgressObserver
{
  [(NSProgress *)self->_currentProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PKCopyAsTextContext];
  currentProgress = self->_currentProgress;
  self->_currentProgress = 0;
}

- (void)_hideHUD
{
  [(PKTranscriptionController *)self _unregisterProgressObserver];
  progressAlertController = self->_progressAlertController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__PKTranscriptionController__hideHUD__block_invoke;
  v4[3] = &unk_1E82D7148;
  v4[4] = self;
  [(PKProgressAlertController *)progressAlertController dismissViewControllerAnimated:1 completion:v4];
}

void __37__PKTranscriptionController__hideHUD__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (PKAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

- (PKRecognitionSessionManager)recognitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_recognitionManager);

  return WeakRetained;
}

@end