@interface _LTStreamingUtteranceTranslator
- (_LTStreamingUtteranceTranslating)utteranceTranslator;
- (_LTStreamingUtteranceTranslator)initWithLocalePair:(id)pair offlineMTModel:(id)model taskHint:(int64_t)hint;
- (_LTStreamingUtteranceTranslatorDelegate)delegate;
- (void)_checkSpeakableSegmentsForResult:(id)result expectedGeneration:(int64_t)generation;
- (void)_handleError:(id)error;
- (void)addInput:(id)input;
- (void)inputDidFinish;
- (void)translateInput:(id)input withGeneration:(int64_t)generation completion:(id)completion;
@end

@implementation _LTStreamingUtteranceTranslator

- (_LTStreamingUtteranceTranslator)initWithLocalePair:(id)pair offlineMTModel:(id)model taskHint:(int64_t)hint
{
  pairCopy = pair;
  modelCopy = model;
  v21.receiver = self;
  v21.super_class = _LTStreamingUtteranceTranslator;
  v10 = [(_LTStreamingUtteranceTranslator *)&v21 init];
  if (v10)
  {
    v11 = [pairCopy copy];
    localePair = v10->_localePair;
    v10->_localePair = v11;

    v13 = dispatch_queue_create("com.apple.translation.StreamingUtteranceTranslator", 0);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = objc_alloc_init(_LTTranslator);
    translator = v10->_translator;
    v10->_translator = v15;

    uUID = [MEMORY[0x277CCAD78] UUID];
    sessionID = v10->_sessionID;
    v10->_sessionID = uUID;

    objc_storeWeak(&v10->_utteranceTranslator, v10);
    objc_storeStrong(&v10->_offlineMTModelURL, model);
    v10->_taskHint = hint;
    v19 = v10;
  }

  return v10;
}

- (void)addInput:(id)input
{
  inputCopy = input;
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
    v8 = inputCopy;
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

- (void)_handleError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  delegate = [(_LTStreamingUtteranceTranslator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate translator:self didEncounterError:errorCopy];
  }
}

- (void)_checkSpeakableSegmentsForResult:(id)result expectedGeneration:(int64_t)generation
{
  v47 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  dispatch_assert_queue_V2(self->_queue);
  v7 = self->_spokenSegments;
  stableSegments = [resultCopy stableSegments];
  v9 = _LTOSLogStabilization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(_LTStreamingUtteranceTranslator *)v9 _checkSpeakableSegmentsForResult:stableSegments expectedGeneration:v7];
  }

  output = [resultCopy output];
  isFinal = [output isFinal];

  if (isFinal)
  {
    spokenSegments = self->_spokenSegments;
    self->_spokenSegments = 0;

    v13 = _LTOSLogStabilization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_LTStreamingUtteranceTranslator _checkSpeakableSegmentsForResult:expectedGeneration:];
    }
  }

  if (self->_lastSpokenGeneration <= generation)
  {
    if (![(NSArray *)v7 isEqualToArray:stableSegments])
    {
      v16 = [(NSArray *)v7 count];
      if (v16 <= [stableSegments count])
      {
        v34 = isFinal;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v36 = resultCopy;
        output2 = [resultCopy output];
        locale = [output2 locale];

        v35 = stableSegments;
        v21 = [stableSegments subarrayWithRange:{-[NSArray count](v7, "count"), objc_msgSend(stableSegments, "count") - -[NSArray count](v7, "count")}];
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

              v26 = [[_LTStreamingSpeakableOutput alloc] initWithText:*(*(&v38 + 1) + 8 * i) locale:locale];
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
                  generationCopy = v30;
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

        stableSegments = v35;
        if ((v34 & 1) == 0)
        {
          v31 = [v35 copy];
          v32 = self->_spokenSegments;
          self->_spokenSegments = v31;
        }

        resultCopy = v36;
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
      generationCopy = generation;
      v45 = 2048;
      v46 = currentGeneration;
      _os_log_impl(&dword_23AAF5000, v14, OS_LOG_TYPE_DEFAULT, "Processing older result from generation %zd instead of current generation %zd; ignoring any potential stableSegments since they should have already been spoken", buf, 0x16u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)translateInput:(id)input withGeneration:(int64_t)generation completion:(id)completion
{
  completionCopy = completion;
  inputCopy = input;
  v10 = [_LTStabilizationTranslationRequest alloc];
  localePair = [(_LTStreamingUtteranceTranslator *)self localePair];
  v13 = [(_LTStabilizationTranslationRequest *)v10 initWithLocalePair:localePair completion:completionCopy];

  uUIDString = [(NSUUID *)self->_sessionID UUIDString];
  [(_LTTranslationRequest *)v13 setSessionID:uUIDString];

  [(_LTStabilizationTranslationRequest *)v13 setInput:inputCopy];
  [(_LTStabilizationTranslationRequest *)v13 setGeneration:generation];
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