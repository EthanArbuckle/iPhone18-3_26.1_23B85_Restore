@interface WFSpeakTextActionOperation
- (NSProgress)progress;
- (WFSpeakTextActionOperation)init;
- (void)addCompletionHandlerIfRunning:(id)a3;
- (void)callCompletionHandlersWithError:(id)a3;
- (void)cancel;
- (void)cleanupSpeechSynthesizer;
- (void)speakTextUsingSynthesizer:(id)a3 voice:(id)a4 rate:(float)a5 pitch:(float)a6;
- (void)speechSynthesizer:(id)a3 didFailSpeakingUtterance:(id)a4 error:(id)a5;
- (void)speechSynthesizer:(id)a3 didFinishSpeakingUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 willSpeakRangeOfUtterance:(_NSRange)a4 utterance:(id)a5;
@end

@implementation WFSpeakTextActionOperation

- (NSProgress)progress
{
  WeakRetained = objc_loadWeakRetained(&self->_progress);

  return WeakRetained;
}

- (void)addCompletionHandlerIfRunning:(id)a3
{
  v4 = a3;
  v5 = [(WFSpeakTextActionOperation *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__WFSpeakTextActionOperation_addCompletionHandlerIfRunning___block_invoke;
  v7[3] = &unk_278C22448;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__WFSpeakTextActionOperation_addCompletionHandlerIfRunning___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) synthesizer];

  if (v2)
  {
    v3 = *(*(a1 + 32) + 24);
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = v4;

      v3 = *(*(a1 + 32) + 24);
    }

    v8 = _Block_copy(*(a1 + 40));
    [v3 addObject:v8];
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)callCompletionHandlersWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFSpeakTextActionOperation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(NSMutableArray *)self->_completionHandlers copy];
  completionHandlers = self->_completionHandlers;
  self->_completionHandlers = 0;

  objc_storeWeak(&self->_progress, 0);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cleanupSpeechSynthesizer
{
  v3 = [(WFSpeakTextActionOperation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [getAVAudioSessionClass() sharedInstance];
  [v4 setActive:0 withOptions:1 error:0];

  synthesizer = self->_synthesizer;
  self->_synthesizer = 0;
}

- (void)speechSynthesizer:(id)a3 didFailSpeakingUtterance:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = [(WFSpeakTextActionOperation *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__WFSpeakTextActionOperation_speechSynthesizer_didFailSpeakingUtterance_error___block_invoke;
  v9[3] = &unk_278C21508;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

uint64_t __79__WFSpeakTextActionOperation_speechSynthesizer_didFailSpeakingUtterance_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanupSpeechSynthesizer];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 callCompletionHandlersWithError:v3];
}

- (void)speechSynthesizer:(id)a3 didFinishSpeakingUtterance:(id)a4
{
  v5 = [(WFSpeakTextActionOperation *)self queue:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__WFSpeakTextActionOperation_speechSynthesizer_didFinishSpeakingUtterance___block_invoke;
  block[3] = &unk_278C224A0;
  block[4] = self;
  dispatch_async(v5, block);
}

uint64_t __75__WFSpeakTextActionOperation_speechSynthesizer_didFinishSpeakingUtterance___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanupSpeechSynthesizer];
  v2 = *(a1 + 32);

  return [v2 callCompletionHandlersWithError:0];
}

- (void)speechSynthesizer:(id)a3 willSpeakRangeOfUtterance:(_NSRange)a4 utterance:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = [(WFSpeakTextActionOperation *)self queue:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__WFSpeakTextActionOperation_speechSynthesizer_willSpeakRangeOfUtterance_utterance___block_invoke;
  block[3] = &unk_278C1C270;
  block[4] = self;
  block[5] = location;
  block[6] = length;
  dispatch_async(v8, block);
}

void __84__WFSpeakTextActionOperation_speechSynthesizer_willSpeakRangeOfUtterance_utterance___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = [*(a1 + 32) progress];
  [v3 setCompletedUnitCount:v1 + v2];
}

- (void)cancel
{
  v3 = [(WFSpeakTextActionOperation *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__WFSpeakTextActionOperation_cancel__block_invoke;
  block[3] = &unk_278C224A0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __36__WFSpeakTextActionOperation_cancel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  objc_storeWeak((*(a1 + 32) + 8), 0);
  v4 = [*(a1 + 32) synthesizer];
  [v4 stop];
}

- (void)speakTextUsingSynthesizer:(id)a3 voice:(id)a4 rate:(float)a5 pitch:(float)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(WFSpeakTextActionOperation *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__WFSpeakTextActionOperation_speakTextUsingSynthesizer_voice_rate_pitch___block_invoke;
  v15[3] = &unk_278C219E0;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, v15);
}

void __73__WFSpeakTextActionOperation_speakTextUsingSynthesizer_voice_rate_pitch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) length];
  v3 = [*(a1 + 32) progress];
  [v3 setTotalUnitCount:v2];

  v4 = objc_alloc_init(WFSpeechSynthesizer);
  [(WFSpeechSynthesizer *)v4 setDelegate:*(a1 + 32)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
  v7 = v4;

  [(WFSpeechSynthesizer *)v7 speakUtterance:*(a1 + 40) usingVoice:*(a1 + 48) rate:*(a1 + 56) pitch:*(a1 + 60)];
}

- (WFSpeakTextActionOperation)init
{
  v9.receiver = self;
  v9.super_class = WFSpeakTextActionOperation;
  v2 = [(WFSpeakTextActionOperation *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_get_global_queue(21, 0);
    v5 = dispatch_queue_create_with_target_V2("com.apple.shortcuts.action.speaktext", v3, v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = v2;
  }

  return v2;
}

@end