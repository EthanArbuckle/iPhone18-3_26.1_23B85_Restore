@interface AFUtteranceSuggestions
- (AFUtteranceSuggestions)initWithLanguageCode:(id)a3 delegate:(id)a4;
- (AFUtteranceSuggestionsDelegate)delegate;
- (id)_suggestionsFilePath;
- (void)getSuggestedUtterancesWithCompletion:(id)a3;
- (void)setSuggestedUtterances:(id)a3;
@end

@implementation AFUtteranceSuggestions

- (AFUtteranceSuggestionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSuggestedUtterances:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__AFUtteranceSuggestions_setSuggestedUtterances___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __49__AFUtteranceSuggestions_setSuggestedUtterances___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 16) isEqualToArray:*(a1 + 40)] & 1) == 0)
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    [WeakRetained suggestionsDidChange:*(a1 + 32)];

    v6 = *(a1 + 32);
    v7 = v6[2];
    v8 = [v6 _suggestionsFilePath];
    [v7 writeToFile:v8 atomically:1];
  }
}

- (void)getSuggestedUtterancesWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AFUtteranceSuggestions_getSuggestedUtterancesWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __63__AFUtteranceSuggestions_getSuggestedUtterancesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    v3 = MEMORY[0x1E695DEC8];
    v4 = [v2 _suggestionsFilePath];
    v5 = [v3 arrayWithContentsOfFile:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__AFUtteranceSuggestions_getSuggestedUtterancesWithCompletion___block_invoke_2;
    v10[3] = &unk_1E7349838;
    v9 = v8;
    v10[4] = *(a1 + 32);
    v11 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

- (id)_suggestionsFilePath
{
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v4 = [v3 firstObject];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.siri.suggestions-%@.plist", self->_languageCode];
  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

- (AFUtteranceSuggestions)initWithLanguageCode:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = AFUtteranceSuggestions;
  v8 = [(AFUtteranceSuggestions *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    languageCode = v8->_languageCode;
    v8->_languageCode = v9;

    objc_storeWeak(&v8->_delegate, v7);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("Siri Utterance Suggestions Queue", v11);

    queue = v8->_queue;
    v8->_queue = v12;
  }

  return v8;
}

@end