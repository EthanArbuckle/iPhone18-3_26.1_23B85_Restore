@interface AXMSpeechComponent
- (AXMSpeechComponent)init;
- (BOOL)canHandleRequest:(id)request;
- (void)handleRequest:(id)request completion:(id)completion;
- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didContinueSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didPauseSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance;
- (void)stopSpeakingAtNextWord;
- (void)stopSpeakingImmediately;
@end

@implementation AXMSpeechComponent

- (AXMSpeechComponent)init
{
  v6.receiver = self;
  v6.super_class = AXMSpeechComponent;
  v2 = [(AXMOutputComponent *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6958508]);
    [(AXMSpeechComponent *)v2 setSynthesizer:v3];

    synthesizer = [(AXMSpeechComponent *)v2 synthesizer];
    [synthesizer setDelegate:v2];
  }

  return v2;
}

- (BOOL)canHandleRequest:(id)request
{
  speechActions = [request speechActions];
  v4 = [speechActions count] != 0;

  return v4;
}

- (void)handleRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  speechActions = [request speechActions];
  firstObject = [speechActions firstObject];
  text = [firstObject text];

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:text attributes:0];
  currentRequestCompletionBlock = [(AXMSpeechComponent *)self currentRequestCompletionBlock];

  if (currentRequestCompletionBlock)
  {
    v12 = AXMediaLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(AXMSpeechComponent *)v12 handleRequest:v13 completion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = [MEMORY[0x1E6958518] speechUtteranceWithAttributedString:v10];
  [(AXMSpeechComponent *)self setCurrentRequestCompletionBlock:completionCopy];

  synthesizer = [(AXMSpeechComponent *)self synthesizer];
  [synthesizer speakUtterance:v20];
}

- (void)stopSpeakingImmediately
{
  synthesizer = [(AXMSpeechComponent *)self synthesizer];
  [synthesizer stopSpeakingAtBoundary:0];
}

- (void)stopSpeakingAtNextWord
{
  synthesizer = [(AXMSpeechComponent *)self synthesizer];
  [synthesizer stopSpeakingAtBoundary:1];
}

- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance
{
  v10 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  v5 = AXMediaLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    attributedSpeechString = [utteranceCopy attributedSpeechString];
    string = [attributedSpeechString string];
    v8 = 138412290;
    v9 = string;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "speech started: '%@'", &v8, 0xCu);
  }
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance
{
  v21 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  v6 = AXMediaLogSpeech();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    attributedSpeechString = [utteranceCopy attributedSpeechString];
    string = [attributedSpeechString string];
    v19 = 138412290;
    v20 = string;
    _os_log_impl(&dword_1AE37B000, v6, OS_LOG_TYPE_DEFAULT, "speech finished: '%@'", &v19, 0xCu);
  }

  currentRequestCompletionBlock = [(AXMSpeechComponent *)self currentRequestCompletionBlock];

  if (!currentRequestCompletionBlock)
  {
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(AXMSpeechComponent *)v10 speechSynthesizer:v11 didFinishSpeechUtterance:v12, v13, v14, v15, v16, v17];
    }
  }

  currentRequestCompletionBlock2 = [(AXMSpeechComponent *)self currentRequestCompletionBlock];
  [(AXMSpeechComponent *)self setCurrentRequestCompletionBlock:0];
  if (currentRequestCompletionBlock2)
  {
    currentRequestCompletionBlock2[2](currentRequestCompletionBlock2);
  }
}

- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance
{
  v21 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  v6 = AXMediaLogSpeech();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    attributedSpeechString = [utteranceCopy attributedSpeechString];
    string = [attributedSpeechString string];
    v19 = 138412290;
    v20 = string;
    _os_log_impl(&dword_1AE37B000, v6, OS_LOG_TYPE_DEFAULT, "speech canceled: '%@'", &v19, 0xCu);
  }

  currentRequestCompletionBlock = [(AXMSpeechComponent *)self currentRequestCompletionBlock];

  if (!currentRequestCompletionBlock)
  {
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(AXMSpeechComponent *)v10 speechSynthesizer:v11 didCancelSpeechUtterance:v12, v13, v14, v15, v16, v17];
    }
  }

  currentRequestCompletionBlock2 = [(AXMSpeechComponent *)self currentRequestCompletionBlock];
  [(AXMSpeechComponent *)self setCurrentRequestCompletionBlock:0];
  if (currentRequestCompletionBlock2)
  {
    currentRequestCompletionBlock2[2](currentRequestCompletionBlock2);
  }
}

- (void)speechSynthesizer:(id)synthesizer didPauseSpeechUtterance:(id)utterance
{
  v10 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  v5 = AXMediaLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    attributedSpeechString = [utteranceCopy attributedSpeechString];
    string = [attributedSpeechString string];
    v8 = 138412290;
    v9 = string;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "speech paused: '%@'", &v8, 0xCu);
  }
}

- (void)speechSynthesizer:(id)synthesizer didContinueSpeechUtterance:(id)utterance
{
  v10 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  v5 = AXMediaLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    attributedSpeechString = [utteranceCopy attributedSpeechString];
    string = [attributedSpeechString string];
    v8 = 138412290;
    v9 = string;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "speech resumed: '%@'", &v8, 0xCu);
  }
}

@end