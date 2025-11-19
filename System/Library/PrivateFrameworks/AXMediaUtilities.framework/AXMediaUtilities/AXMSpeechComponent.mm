@interface AXMSpeechComponent
- (AXMSpeechComponent)init;
- (BOOL)canHandleRequest:(id)a3;
- (void)handleRequest:(id)a3 completion:(id)a4;
- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didContinueSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didPauseSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4;
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

    v4 = [(AXMSpeechComponent *)v2 synthesizer];
    [v4 setDelegate:v2];
  }

  return v2;
}

- (BOOL)canHandleRequest:(id)a3
{
  v3 = [a3 speechActions];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)handleRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 speechActions];
  v8 = [v7 firstObject];
  v9 = [v8 text];

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:0];
  v11 = [(AXMSpeechComponent *)self currentRequestCompletionBlock];

  if (v11)
  {
    v12 = AXMediaLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(AXMSpeechComponent *)v12 handleRequest:v13 completion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = [MEMORY[0x1E6958518] speechUtteranceWithAttributedString:v10];
  [(AXMSpeechComponent *)self setCurrentRequestCompletionBlock:v6];

  v21 = [(AXMSpeechComponent *)self synthesizer];
  [v21 speakUtterance:v20];
}

- (void)stopSpeakingImmediately
{
  v2 = [(AXMSpeechComponent *)self synthesizer];
  [v2 stopSpeakingAtBoundary:0];
}

- (void)stopSpeakingAtNextWord
{
  v2 = [(AXMSpeechComponent *)self synthesizer];
  [v2 stopSpeakingAtBoundary:1];
}

- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = AXMediaLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 attributedSpeechString];
    v7 = [v6 string];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "speech started: '%@'", &v8, 0xCu);
  }
}

- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AXMediaLogSpeech();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 attributedSpeechString];
    v8 = [v7 string];
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&dword_1AE37B000, v6, OS_LOG_TYPE_DEFAULT, "speech finished: '%@'", &v19, 0xCu);
  }

  v9 = [(AXMSpeechComponent *)self currentRequestCompletionBlock];

  if (!v9)
  {
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(AXMSpeechComponent *)v10 speechSynthesizer:v11 didFinishSpeechUtterance:v12, v13, v14, v15, v16, v17];
    }
  }

  v18 = [(AXMSpeechComponent *)self currentRequestCompletionBlock];
  [(AXMSpeechComponent *)self setCurrentRequestCompletionBlock:0];
  if (v18)
  {
    v18[2](v18);
  }
}

- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AXMediaLogSpeech();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 attributedSpeechString];
    v8 = [v7 string];
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&dword_1AE37B000, v6, OS_LOG_TYPE_DEFAULT, "speech canceled: '%@'", &v19, 0xCu);
  }

  v9 = [(AXMSpeechComponent *)self currentRequestCompletionBlock];

  if (!v9)
  {
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(AXMSpeechComponent *)v10 speechSynthesizer:v11 didCancelSpeechUtterance:v12, v13, v14, v15, v16, v17];
    }
  }

  v18 = [(AXMSpeechComponent *)self currentRequestCompletionBlock];
  [(AXMSpeechComponent *)self setCurrentRequestCompletionBlock:0];
  if (v18)
  {
    v18[2](v18);
  }
}

- (void)speechSynthesizer:(id)a3 didPauseSpeechUtterance:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = AXMediaLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 attributedSpeechString];
    v7 = [v6 string];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "speech paused: '%@'", &v8, 0xCu);
  }
}

- (void)speechSynthesizer:(id)a3 didContinueSpeechUtterance:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = AXMediaLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 attributedSpeechString];
    v7 = [v6 string];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "speech resumed: '%@'", &v8, 0xCu);
  }
}

@end