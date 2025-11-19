@interface _LTStreamingUtteranceTranslator
- (_LTStreamingUtteranceTranslating)utteranceTranslator;
- (_LTStreamingUtteranceTranslator)initWithLocalePair:(id)a3 offlineMTModel:(id)a4 taskHint:(int64_t)a5;
- (_LTStreamingUtteranceTranslatorDelegate)delegate;
- (void)_checkSpeakableSegmentsForResult:(id)a3 expectedGeneration:(int64_t)a4;
- (void)_handleError:(id)a3;
- (void)addInput:(id)a3;
- (void)inputDidFinish;
- (void)translateInput:(id)a3 withGeneration:(int64_t)a4 completion:(id)a5;
@end

@implementation _LTStreamingUtteranceTranslator

- (_LTStreamingUtteranceTranslator)initWithLocalePair:(id)a3 offlineMTModel:(id)a4 taskHint:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = _LTStreamingUtteranceTranslator;
  v10 = [(_LTStreamingUtteranceTranslator *)&v21 init];
  if (v10)
  {
    v11 = [v8 copy];
    localePair = v10->_localePair;
    v10->_localePair = v11;

    v13 = dispatch_queue_create("com.apple.translation.StreamingUtteranceTranslator", 0);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = objc_alloc_init(_LTTranslator);
    translator = v10->_translator;
    v10->_translator = v15;

    v17 = [MEMORY[0x277CCAD78] UUID];
    sessionID = v10->_sessionID;
    v10->_sessionID = v17;

    objc_storeWeak(&v10->_utteranceTranslator, v10);
    objc_storeStrong(&v10->_offlineMTModelURL, a4);
    v10->_taskHint = a5;
    v19 = v10;
  }

  return v10;
}

- (void)addInput:(id)a3
{
  v4 = a3;
  if (self->_isFinished)
  {
    v5 = _LTOSLogSpeech();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_LTStreamingUtteranceTranslator addInput:];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44___LTStreamingUtteranceTranslator_addInput___block_invoke;
    block[3] = &unk_278B6CD08;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    dispatch_async(queue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)inputDidFinish
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49___LTStreamingUtteranceTranslator_inputDidFinish__block_invoke;
  v4[3] = &unk_278B6CD30;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_handleError:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(_LTStreamingUtteranceTranslator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 translator:self didEncounterError:v5];
  }
}

- (void)_checkSpeakableSegmentsForResult:(id)a3 expectedGeneration:(int64_t)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = self->_spokenSegments;
  v8 = [v6 stableSegments];
  v9 = _LTOSLogStabilization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(_LTStreamingUtteranceTranslator *)v9 _checkSpeakableSegmentsForResult:v8 expectedGeneration:v7];
  }

  v10 = [v6 output];
  v11 = [v10 isFinal];

  if (v11)
  {
    spokenSegments = self->_spokenSegments;
    self->_spokenSegments = 0;

    v13 = _LTOSLogStabilization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_LTStreamingUtteranceTranslator _checkSpeakableSegmentsForResult:expectedGeneration:];
    }
  }

  if (self->_lastSpokenGeneration <= a4)
  {
    if (![(NSArray *)v7 isEqualToArray:v8])
    {
      v16 = [(NSArray *)v7 count];
      if (v16 <= [v8 count])
      {
        v34 = v11;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v36 = v6;
        v19 = [v6 output];
        v20 = [v19 locale];

        v35 = v8;
        v21 = [v8 subarrayWithRange:{-[NSArray count](v7, "count"), objc_msgSend(v8, "count") - -[NSArray count](v7, "count")}];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
        v37 = v21;
        if (v22)
        {
          v23 = v22;
          v24 = *v39;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v39 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [[_LTStreamingSpeakableOutput alloc] initWithText:*(*(&v38 + 1) + 8 * i) locale:v20];
              if (objc_opt_respondsToSelector())
              {
                [WeakRetained translator:self didProduceSpeakableOutput:v26];
                v27 = _LTOSLogStabilization();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  v28 = v27;
                  [(_LTStreamingSpeakableOutput *)v26 translatedText];
                  v30 = v29 = self;
                  *buf = 138739971;
                  v44 = v30;
                  _os_log_impl(&dword_23AAF5000, v28, OS_LOG_TYPE_INFO, "Producing spoken output: %{sensitive}@", buf, 0xCu);

                  self = v29;
                  v21 = v37;
                }
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v23);
        }

        v8 = v35;
        if ((v34 & 1) == 0)
        {
          v31 = [v35 copy];
          v32 = self->_spokenSegments;
          self->_spokenSegments = v31;
        }

        v6 = v36;
        self->_lastSpokenGeneration = [v36 generation];
      }

      else
      {
        v17 = _LTOSLogStabilization();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [_LTStreamingUtteranceTranslator _checkSpeakableSegmentsForResult:expectedGeneration:];
        }
      }
    }
  }

  else
  {
    v14 = _LTOSLogStabilization();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      currentGeneration = self->_currentGeneration;
      *buf = 134218240;
      v44 = a4;
      v45 = 2048;
      v46 = currentGeneration;
      _os_log_impl(&dword_23AAF5000, v14, OS_LOG_TYPE_DEFAULT, "Processing older result from generation %zd instead of current generation %zd; ignoring any potential stableSegments since they should have already been spoken", buf, 0x16u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)translateInput:(id)a3 withGeneration:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [_LTStabilizationTranslationRequest alloc];
  v11 = [(_LTStreamingUtteranceTranslator *)self localePair];
  v13 = [(_LTStabilizationTranslationRequest *)v10 initWithLocalePair:v11 completion:v8];

  v12 = [(NSUUID *)self->_sessionID UUIDString];
  [(_LTTranslationRequest *)v13 setSessionID:v12];

  [(_LTStabilizationTranslationRequest *)v13 setInput:v9];
  [(_LTStabilizationTranslationRequest *)v13 setGeneration:a4];
  [(_LTTranslationRequest *)v13 setTaskHint:self->_taskHint];
  [(_LTTranslationRequest *)v13 set_offlineMTModelURL:self->_offlineMTModelURL];
  [(_LTTranslator *)self->_translator translate:v13];
}

- (_LTStreamingUtteranceTranslatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_LTStreamingUtteranceTranslating)utteranceTranslator
{
  WeakRetained = objc_loadWeakRetained(&self->_utteranceTranslator);

  return WeakRetained;
}

- (void)_checkSpeakableSegmentsForResult:(uint64_t)a3 expectedGeneration:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEA60];
  v6 = a1;
  v7 = [v5 lt_stringArrayDebugDescription:a2];
  v8 = [MEMORY[0x277CBEA60] lt_stringArrayDebugDescription:a3];
  v10 = 138740227;
  v11 = v7;
  v12 = 2117;
  v13 = v8;
  _os_log_debug_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_DEBUG, "New stableSegments: %{sensitive}@; old stable segments: %{sensitive}@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end