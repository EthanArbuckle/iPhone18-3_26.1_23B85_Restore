@interface WFRecordAudioActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithFileRepresentation:(id)representation error:(id)error;
- (void)showWithOutputFormat:(int64_t)format startImmediately:(BOOL)immediately recordingDuration:(double)duration completionHandler:(id)handler;
@end

@implementation WFRecordAudioActionUIKitUserInterface

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFRecordAudioActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFRecordAudioActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __81__WFRecordAudioActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithFileRepresentation:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithFileRepresentation:(id)representation error:(id)error
{
  representationCopy = representation;
  errorCopy = error;
  completionHandler = [(WFRecordAudioActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFRecordAudioActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, representationCopy, errorCopy);
  }

  [(WFRecordAudioActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithOutputFormat:(int64_t)format startImmediately:(BOOL)immediately recordingDuration:(double)duration completionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRecordAudioActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(WFRecordAudioActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__WFRecordAudioActionUIKitUserInterface_showWithOutputFormat_startImmediately_recordingDuration_completionHandler___block_invoke;
  block[3] = &unk_278C366C8;
  immediatelyCopy = immediately;
  *&block[6] = duration;
  block[4] = self;
  block[5] = format;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __115__WFRecordAudioActionUIKitUserInterface_showWithOutputFormat_startImmediately_recordingDuration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CFC538];
  v3 = [objc_opt_class() datedFilenameForFormat:*(a1 + 40)];
  v4 = [v2 proposedTemporaryFileURLForFilename:v3];

  v5 = [[WFAudioRecorderViewController alloc] initWithOutputFormat:*(a1 + 40) destinationURL:v4];
  [(WFAudioRecorderViewController *)v5 setStartImmediately:*(a1 + 56)];
  [(WFAudioRecorderViewController *)v5 setRecordingDuration:*(a1 + 48)];
  objc_initWeak(&location, v5);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__WFRecordAudioActionUIKitUserInterface_showWithOutputFormat_startImmediately_recordingDuration_completionHandler___block_invoke_2;
  v6[3] = &unk_278C366A0;
  objc_copyWeak(&v7, &location);
  v6[4] = *(a1 + 32);
  [(WFAudioRecorderViewController *)v5 setCompletionHandler:v6];
  [*(a1 + 32) presentContent:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __115__WFRecordAudioActionUIKitUserInterface_showWithOutputFormat_startImmediately_recordingDuration_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained presentingViewController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __115__WFRecordAudioActionUIKitUserInterface_showWithOutputFormat_startImmediately_recordingDuration_completionHandler___block_invoke_3;
  v12[3] = &unk_278C37058;
  v9 = *(a1 + 32);
  v13 = v5;
  v14 = v9;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  [v8 dismissViewControllerAnimated:1 completion:v12];
}

void __115__WFRecordAudioActionUIKitUserInterface_showWithOutputFormat_startImmediately_recordingDuration_completionHandler___block_invoke_3(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  if (v1)
  {
    v5 = [MEMORY[0x277CFC3C8] fileWithURL:v1 options:1];
    [v2 finishWithFileRepresentation:v5 error:0];
  }

  else
  {
    v3 = a1[6];
    v4 = a1[5];

    [v4 finishWithFileRepresentation:? error:?];
  }
}

@end