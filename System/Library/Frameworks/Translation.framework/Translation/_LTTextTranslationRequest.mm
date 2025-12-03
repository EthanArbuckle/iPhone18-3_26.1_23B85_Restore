@interface _LTTextTranslationRequest
- (NSArray)ignoringAttributes;
- (id)_getStoredAttributesForRequestIdentifier:(id)identifier alignmentIdentifier:(id)alignmentIdentifier;
- (id)_paragraphRequestForText:(id)text;
- (id)_replaceAdaptiveImageGlyphsIfNeededForText:(id)text requestUniqueID:(id)d;
- (id)serviceDelegate;
- (void)_addAlignmentAttributesToResult:(id)result requestIdentifier:(id)identifier;
- (void)_callCompletionHandlersWithResult:(id)result error:(id)error;
- (void)_cleanUpTemporaryStorage;
- (void)_constructFinalParagraphResult;
- (void)_handleParagraphResponse:(id)response error:(id)error;
- (void)_saveAttributes:(id)attributes forRequestUniqueID:(id)d alignmentIdentifier:(id)identifier;
- (void)_startTranslationWithService:(id)service done:(id)done;
- (void)_submitMessagesSELFLoggingIfNeededForInvocationStart:(BOOL)start error:(id)error;
- (void)_translationFailedWithError:(id)error;
- (void)setText:(id)text;
- (void)translationDidFinishWithError:(id)error;
- (void)translatorDidTranslate:(id)translate;
@end

@implementation _LTTextTranslationRequest

- (NSArray)ignoringAttributes
{
  taskHint = [(_LTTranslationRequest *)self taskHint];
  ignoringAttributes = self->_ignoringAttributes;
  if (taskHint == 11)
  {
    if (!ignoringAttributes)
    {
      ignoringAttributes = MEMORY[0x277CBEBF8];
    }

    v5 = [(NSArray *)ignoringAttributes arrayByAddingObject:@"CTAdaptiveImageProvider"];
  }

  else
  {
    v5 = [(NSArray *)ignoringAttributes copy];
  }

  return v5;
}

- (id)_replaceAdaptiveImageGlyphsIfNeededForText:(id)text requestUniqueID:(id)d
{
  textCopy = text;
  dCopy = d;
  if (![(_LTTextTranslationRequest *)self preserveGenmoji])
  {
    v21 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_LTTextTranslationRequest _replaceAdaptiveImageGlyphsIfNeededForText:requestUniqueID:];
    }

    goto LABEL_9;
  }

  if (([textCopy lt_containsSubstringWithAttribute:@"CTAdaptiveImageProvider"] & 1) == 0)
  {
LABEL_9:
    v20 = textCopy;
    goto LABEL_14;
  }

  if (!self->_genmojiReplacementManager)
  {
    v8 = objc_alloc_init(_LTGenmojiReplacementManager);
    genmojiReplacementManager = self->_genmojiReplacementManager;
    self->_genmojiReplacementManager = v8;
  }

  v10 = [MEMORY[0x277CBEB58] set];
  string = [textCopy string];
  v12 = [string length];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __88___LTTextTranslationRequest__replaceAdaptiveImageGlyphsIfNeededForText_requestUniqueID___block_invoke;
  v34[3] = &unk_278B6DA90;
  v13 = v10;
  v35 = v13;
  [string _enumerateEmojiTokensInRange:0 block:{v12, v34}];
  v14 = +[_LTGenmojiReplacementManager rareEmojiPlaceholderCandidates];
  v15 = [v14 mutableCopy];

  [v15 minusSet:v13];
  allObjects = [v15 allObjects];
  if ([allObjects count])
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = 0;
    v17 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:textCopy];
    v18 = [v17 length];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __88___LTTextTranslationRequest__replaceAdaptiveImageGlyphsIfNeededForText_requestUniqueID___block_invoke_231;
    v27 = &unk_278B6DAB8;
    v28 = allObjects;
    v32 = v33;
    v29 = dCopy;
    v19 = v17;
    v30 = v19;
    selfCopy = self;
    [v19 enumerateAttribute:@"CTAdaptiveImageProvider" inRange:0 options:v18 usingBlock:{0, &v24}];
    v20 = [v19 copy];

    _Block_object_dispose(v33, 8);
  }

  else
  {
    v22 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [_LTTextTranslationRequest _replaceAdaptiveImageGlyphsIfNeededForText:requestUniqueID:];
    }

    v20 = textCopy;
  }

LABEL_14:

  return v20;
}

- (id)_paragraphRequestForText:(id)text
{
  textCopy = text;
  v5 = [_LTParagraphTranslationRequest alloc];
  localePair = [(_LTTranslationRequest *)self localePair];
  v7 = [(_LTTranslationRequest *)v5 initWithLocalePair:localePair];

  [(_LTTranslationRequest *)v7 setTaskHint:[(_LTTranslationRequest *)self taskHint]];
  string = [textCopy string];
  [(_LTParagraphTranslationRequest *)v7 setText:string];

  array = [MEMORY[0x277CBEB18] array];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  uniqueID = [(_LTTranslationRequest *)v7 uniqueID];
  v11 = [(_LTTextTranslationRequest *)self _replaceAdaptiveImageGlyphsIfNeededForText:textCopy requestUniqueID:uniqueID];

  v12 = [v11 length];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54___LTTextTranslationRequest__paragraphRequestForText___block_invoke;
  v19[3] = &unk_278B6DAE0;
  v24 = v25;
  v13 = v11;
  v20 = v13;
  selfCopy = self;
  v14 = array;
  v22 = v14;
  v15 = v7;
  v23 = v15;
  [v13 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v19}];
  [(_LTParagraphTranslationRequest *)v15 setRanges:v14];
  v16 = v23;
  v17 = v15;

  _Block_object_dispose(v25, 8);

  return v17;
}

- (void)setText:(id)text
{
  v26 = *MEMORY[0x277D85DE8];
  textCopy = text;
  objc_storeStrong(&self->_text, text);
  text = [(_LTTextTranslationRequest *)self text];
  paragraphs = [text paragraphs];

  if ([paragraphs count] || -[_LTTextTranslationRequest requiresMultiParagraphPathway](self, "requiresMultiParagraphPathway"))
  {
    if (self->_session || ([(_LTTranslationRequest *)self batchSessionUUID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [_LTTextTranslationRequest setText:];
      }
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [_LTTranslationSession alloc];
    logIdentifier = [(_LTTranslationRequest *)self logIdentifier];
    v13 = [(_LTTranslationSession *)v11 initForFutureServiceWithSessionID:uUID selfLoggingInvocationId:logIdentifier];
    session = self->_session;
    self->_session = v13;

    v15 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v24 = 138543362;
      v25 = uUID;
      _os_log_impl(&dword_23AAF5000, v15, OS_LOG_TYPE_INFO, "Created _LTTranslationSession for use in a _LTTextTranslationRequest. SessionID: %{public}@", &v24, 0xCu);
    }

    uniqueID2 = [uUID copy];
    [(_LTTranslationRequest *)self setBatchSessionUUID:uniqueID2];
  }

  else
  {
    v18 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      uniqueID = [(_LTTranslationRequest *)self uniqueID];
      v24 = 138543362;
      v25 = uniqueID;
      _os_log_impl(&dword_23AAF5000, v19, OS_LOG_TYPE_INFO, "_LTTranslationRequest had text set, creating sub-request with suggested uniqueID: %{public}@", &v24, 0xCu);
    }

    v21 = [_LTTextToSpeechTranslationRequest alloc];
    uUID = [(_LTTranslationRequest *)self localePair];
    uniqueID2 = [(_LTTranslationRequest *)self uniqueID];
    v22 = [(_LTTextToSpeechTranslationRequest *)v21 initWithLocalePair:uUID suggestedUniqueID:uniqueID2];
    request = self->_request;
    self->_request = v22;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)serviceDelegate
{
  request = self->_request;
  if (!request)
  {
    request = self->_session;
  }

  return request;
}

- (void)_startTranslationWithService:(id)service done:(id)done
{
  v54[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  doneCopy = done;
  v6 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_INFO, "Text Translation: start with service", buf, 2u);
  }

  logIdentifier = [(_LTTranslationRequest *)self logIdentifier];
  localePair = [(_LTTranslationRequest *)self localePair];
  [(_LTTranslationRequest *)self setLogIdentifier:logIdentifier];

  [(_LTTextTranslationRequest *)self _submitMessagesSELFLoggingIfNeededForInvocationStart:1 error:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  savedAttributes = self->_savedAttributes;
  self->_savedAttributes = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  receivedParagraphs = self->_receivedParagraphs;
  self->_receivedParagraphs = dictionary2;

  paragraphOrder = self->_paragraphOrder;
  self->_paragraphOrder = 0;

  v14 = [doneCopy copy];
  done = self->_done;
  self->_done = v14;

  self->_outstandingCount = 0;
  self->_translationFinished = 0;
  v16 = self->_session == 0;
  v17 = _LTOSLogTranslationEngine();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (v18)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "Fallback to text to speech translation", buf, 2u);
    }

    [(_LTTranslationRequest *)self->_request setTaskHint:[(_LTTranslationRequest *)self taskHint]];
    [(_LTTranslationRequest *)self->_request setForcedOfflineTranslation:[(_LTTranslationRequest *)self forcedOfflineTranslation]];
    [(_LTTranslationRequest *)self->_request setPreferOnDeviceIfAvailable:[(_LTTranslationRequest *)self preferOnDeviceIfAvailable]];
    [(_LTTranslationRequest *)self->_request setCensorSpeech:[(_LTTranslationRequest *)self censorSpeech]];
    text = [(_LTTextTranslationRequest *)self text];
    string = [text string];
    [(_LTTextToSpeechTranslationRequest *)self->_request setText:string];

    [(_LTTextToSpeechTranslationRequest *)self->_request setDelegate:self];
    appIdentifier = [(_LTTranslationRequest *)self appIdentifier];
    [(_LTTranslationRequest *)self->_request setAppIdentifier:appIdentifier];

    [(_LTTranslationRequest *)self->_request setSourceOrigin:[(_LTTranslationRequest *)self sourceOrigin]];
    [(_LTTranslationRequest *)self->_request setIsFinal:[(_LTTranslationRequest *)self isFinal]];
    [(_LTTranslationRequest *)self->_request set_supportsGenderDisambiguation:[(_LTTranslationRequest *)self _supportsGenderDisambiguation]];
    [(_LTTranslationRequest *)self->_request setOverrideOngoingSessionIfNeeded:[(_LTTranslationRequest *)self overrideOngoingSessionIfNeeded]];
    logIdentifier2 = [(_LTTranslationRequest *)self logIdentifier];
    [(_LTTranslationRequest *)self->_request setLogIdentifier:logIdentifier2];

    [(_LTTextToSpeechTranslationRequest *)self->_request _startTranslationWithService:serviceCopy done:doneCopy];
  }

  else
  {
    if (v18)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "Using paragraph translation", buf, 2u);
    }

    logIdentifier3 = [(_LTTranslationRequest *)self logIdentifier];
    [(_LTTranslationSession *)self->_session setLogIdentifier:logIdentifier3];

    [(_LTTranslationSession *)self->_session prepareWithService:serviceCopy];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    text2 = [(_LTTextTranslationRequest *)self text];
    paragraphs = [text2 paragraphs];

    if (![paragraphs count])
    {
      text3 = [(_LTTextTranslationRequest *)self text];
      v54[0] = text3;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];

      paragraphs = v25;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = paragraphs;
    v26 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v26)
    {
      v27 = *v50;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = [(_LTTextTranslationRequest *)self _paragraphRequestForText:*(*(&v49 + 1) + 8 * i)];
          [v29 setTaskHint:{-[_LTTranslationRequest taskHint](self, "taskHint")}];
          [v29 setCensorSpeech:{-[_LTTranslationRequest censorSpeech](self, "censorSpeech")}];
          [v29 setForcedOfflineTranslation:{-[_LTTranslationRequest forcedOfflineTranslation](self, "forcedOfflineTranslation")}];
          [v29 setPreferOnDeviceIfAvailable:{-[_LTTranslationRequest preferOnDeviceIfAvailable](self, "preferOnDeviceIfAvailable")}];
          appIdentifier2 = [(_LTTranslationRequest *)self appIdentifier];
          [v29 setAppIdentifier:appIdentifier2];

          [v29 setSourceOrigin:{-[_LTTranslationRequest sourceOrigin](self, "sourceOrigin")}];
          [v29 setIsFinal:{-[_LTTranslationRequest isFinal](self, "isFinal")}];
          [v29 set_supportsGenderDisambiguation:{-[_LTTranslationRequest _supportsGenderDisambiguation](self, "_supportsGenderDisambiguation")}];
          [v29 setOverrideOngoingSessionIfNeeded:{-[_LTTranslationRequest overrideOngoingSessionIfNeeded](self, "overrideOngoingSessionIfNeeded")}];
          logIdentifier4 = [(_LTTranslationRequest *)self logIdentifier];
          [v29 setLogIdentifier:logIdentifier4];

          objc_initWeak(buf, self);
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __63___LTTextTranslationRequest__startTranslationWithService_done___block_invoke;
          v46[3] = &unk_278B6DB08;
          objc_copyWeak(&v47, buf);
          [v29 setCompletionHandler:v46];
          uniqueID = [v29 uniqueID];
          [(NSArray *)array2 addObject:uniqueID];

          [array addObject:v29];
          objc_destroyWeak(&v47);
          objc_destroyWeak(buf);
        }

        v26 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v26);
    }

    v33 = self->_paragraphOrder;
    self->_paragraphOrder = array2;
    v34 = array2;

    *(&self->super.super.isa + v42) = [(NSArray *)v34 count];
    v35 = [doneCopy copy];
    v36 = self->_done;
    self->_done = v35;

    [(_LTTranslationSession *)self->_session translate:array];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_translationFailedWithError:(id)error
{
  errorCopy = error;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_LTTextTranslationRequest _translationFailedWithError:];
  }

  [(_LTTextTranslationRequest *)self _callCompletionHandlersWithResult:0 error:errorCopy];
}

- (void)_constructFinalParagraphResult
{
  v3 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_INFO, "Constructing final paragraph result", buf, 2u);
  }

  v4 = [(NSMutableDictionary *)self->_receivedParagraphs copy];
  objc_initWeak(buf, self);
  paragraphOrder = self->_paragraphOrder;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __59___LTTextTranslationRequest__constructFinalParagraphResult__block_invoke;
  v14 = &unk_278B6DB30;
  v6 = v4;
  v15 = v6;
  objc_copyWeak(&v16, buf);
  v7 = [(NSArray *)paragraphOrder _ltCompactMap:&v11];
  v8 = [_LTCombinedTranslationResult alloc];
  v9 = [(_LTTranslationRequest *)self localePair:v11];
  v10 = [(_LTCombinedTranslationResult *)v8 initWithParagraphResults:v7 localePair:v9];

  [(_LTTranslationRequest *)self logIdentifier];
  [(_LTTextTranslationRequest *)self _callCompletionHandlersWithResult:v10 error:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_handleParagraphResponse:(id)response error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (error)
  {
    [(_LTTextTranslationRequest *)self translationDidFinishWithError:error];
  }

  else
  {
    v8 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      identifier = [responseCopy identifier];
      v17 = 138543362;
      v18 = identifier;
      _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_INFO, "Received translated paragraph for ID: %{public}@", &v17, 0xCu);
    }

    receivedParagraphs = self->_receivedParagraphs;
    identifier2 = [responseCopy identifier];
    [(NSMutableDictionary *)receivedParagraphs setObject:responseCopy forKeyedSubscript:identifier2];

    outstandingCount = self->_outstandingCount;
    if (outstandingCount)
    {
      self->_outstandingCount = outstandingCount - 1;
      v14 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = self->_outstandingCount;
        v17 = 134217984;
        v18 = v15;
        _os_log_impl(&dword_23AAF5000, v14, OS_LOG_TYPE_INFO, "New outstanding count: %zd", &v17, 0xCu);
      }

      if (!self->_outstandingCount)
      {
        [(_LTTextTranslationRequest *)self _constructFinalParagraphResult];
      }
    }

    else
    {
      v16 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [_LTTextTranslationRequest _handleParagraphResponse:v16 error:responseCopy];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_getStoredAttributesForRequestIdentifier:(id)identifier alignmentIdentifier:(id)alignmentIdentifier
{
  v5 = [(_LTTextTranslationRequest *)self _alignmentAttributeKeyFromRequestIdentifier:identifier alignmentIdentifier:alignmentIdentifier];
  v6 = [(NSMutableDictionary *)self->_savedAttributes objectForKeyedSubscript:v5];

  return v6;
}

- (void)_saveAttributes:(id)attributes forRequestUniqueID:(id)d alignmentIdentifier:(id)identifier
{
  attributesCopy = attributes;
  v9 = [(_LTTextTranslationRequest *)self _alignmentAttributeKeyFromRequestIdentifier:d alignmentIdentifier:identifier];
  [(NSMutableDictionary *)self->_savedAttributes setObject:attributesCopy forKeyedSubscript:v9];
}

- (void)_addAlignmentAttributesToResult:(id)result requestIdentifier:(id)identifier
{
  v35 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  identifierCopy = identifier;
  if (resultCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = resultCopy;
    obj = [resultCopy alignments];
    v8 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          identifier = [v12 identifier];
          v14 = [(_LTTextTranslationRequest *)self _getStoredAttributesForRequestIdentifier:identifierCopy alignmentIdentifier:identifier];

          identifier2 = [v12 identifier];
          v16 = [(_LTTextTranslationRequest *)self _alignmentAttributeKeyFromRequestIdentifier:identifierCopy alignmentIdentifier:identifier2];

          v17 = _LTOSLogTranslationEngine();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = v17;
            text = [v12 text];
            *buf = 138740483;
            v29 = text;
            v30 = 2114;
            v31 = v16;
            v32 = 2114;
            v33 = v14;
            _os_log_impl(&dword_23AAF5000, v18, OS_LOG_TYPE_INFO, "Alignment '%{sensitive}@' ID: %{public}@; attributes: %{public}@", buf, 0x20u);
          }

          [v12 setSourceAttributes:v14];
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v9);
    }

    v20 = [(_LTGenmojiReplacementManager *)self->_genmojiReplacementManager replacementInfoForRequestID:identifierCopy];
    resultCopy = v22;
    if ([v20 count])
    {
      [v22 setReplacementInfos:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)translatorDidTranslate:(id)translate
{
  v12[1] = *MEMORY[0x277D85DE8];
  translateCopy = translate;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_INFO, "Received text to speech result", v11, 2u);
  }

  if (translateCopy)
  {
    v12[0] = translateCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [_LTCombinedTranslationResult alloc];
  localePair = [(_LTTranslationRequest *)self localePair];
  v9 = [(_LTCombinedTranslationResult *)v7 initWithParagraphResults:v6 localePair:localePair];

  [(_LTTranslationRequest *)self logIdentifier];
  [(_LTTextTranslationRequest *)self _callCompletionHandlersWithResult:v9 error:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)translationDidFinishWithError:(id)error
{
  errorCopy = error;
  if (!self->_translationFinished)
  {
    self->_translationFinished = 1;
    done = self->_done;
    if (done)
    {
      done[2]();
      v6 = self->_done;
      self->_done = 0;
    }

    if (errorCopy)
    {
      [(_LTTranslationRequest *)self->_request logIdentifier];

      v7 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [_LTTextTranslationRequest _translationFailedWithError:];
      }

      [(_LTTextTranslationRequest *)self _callCompletionHandlersWithResult:0 error:errorCopy];
    }

    else
    {
      v8 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [_LTTextTranslationRequest translationDidFinishWithError:];
      }
    }
  }
}

- (void)_callCompletionHandlersWithResult:(id)result error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  if (self->_hasCalledCompletionHandler)
  {
    v8 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_LTTextTranslationRequest *)resultCopy _callCompletionHandlersWithResult:errorCopy error:v8];
    }
  }

  else
  {
    self->_hasCalledCompletionHandler = 1;
    if (!self->_receivedParagraphs)
    {
      v9 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_LTTextTranslationRequest _callCompletionHandlersWithResult:error:];
      }
    }

    textTranslationHandler = [(_LTTextTranslationRequest *)self textTranslationHandler];

    if (textTranslationHandler)
    {
      paragraphResults = [resultCopy paragraphResults];
      if ([paragraphResults count] == 1)
      {
        firstObject = [paragraphResults firstObject];
      }

      else
      {
        firstObject = 0;
      }

      translatedText = [resultCopy translatedText];
      v15 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        *v23 = 134218498;
        *&v23[4] = [translatedText length];
        *&v23[12] = 1024;
        *&v23[14] = firstObject != 0;
        v24 = 2112;
        v25 = errorCopy;
        _os_log_impl(&dword_23AAF5000, v16, OS_LOG_TYPE_DEFAULT, "Calling _LTTextTranslationRequest.textTranslationHandler with translatedText of length %zu; has result: %{BOOL}i; error: %@", v23, 0x1Cu);
      }

      textTranslationHandler2 = [(_LTTextTranslationRequest *)self textTranslationHandler];
      (textTranslationHandler2)[2](textTranslationHandler2, translatedText, firstObject, errorCopy);
    }

    else
    {
      v13 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [_LTTextTranslationRequest _callCompletionHandlersWithResult:error:];
      }
    }

    completionHandler = [(_LTTextTranslationRequest *)self completionHandler];

    v19 = _LTOSLogTranslationEngine();
    v20 = v19;
    if (completionHandler)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 67109378;
        *&v23[4] = resultCopy != 0;
        *&v23[8] = 2112;
        *&v23[10] = errorCopy;
        _os_log_impl(&dword_23AAF5000, v20, OS_LOG_TYPE_DEFAULT, "Calling _LTTextTranslationRequest.completionHandler; has result: %{BOOL}i; error: %@", v23, 0x12u);
      }

      completionHandler2 = [(_LTTextTranslationRequest *)self completionHandler];
      (completionHandler2)[2](completionHandler2, resultCopy, errorCopy);
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [_LTTextTranslationRequest _callCompletionHandlersWithResult:error:];
    }

    [(_LTTextTranslationRequest *)self _submitMessagesSELFLoggingIfNeededForInvocationStart:0 error:errorCopy];
    [(_LTTextTranslationRequest *)self _cleanUpTemporaryStorage];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpTemporaryStorage
{
  paragraphOrder = self->_paragraphOrder;
  self->_paragraphOrder = 0;

  receivedParagraphs = self->_receivedParagraphs;
  self->_receivedParagraphs = 0;

  savedAttributes = self->_savedAttributes;
  self->_savedAttributes = 0;

  session = self->_session;
  self->_session = 0;

  request = self->_request;
  self->_request = 0;

  done = self->_done;
  if (done)
  {
    done[2]();
    v9 = self->_done;
    self->_done = 0;
  }
}

- (void)_submitMessagesSELFLoggingIfNeededForInvocationStart:(BOOL)start error:(id)error
{
  startCopy = start;
  errorCopy = error;
  v7 = untrustedClientIdentifier();
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_284DC98A0];
  if (-[_LTTranslationRequest taskHint](self, "taskHint") == 11 || [v8 containsObject:v7])
  {
    if (startCopy || ([(_LTTranslationRequest *)self logIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      logIdentifier = [(_LTTranslationRequest *)self logIdentifier];
      if (logIdentifier)
      {
        [(_LTTranslationRequest *)self setLogIdentifier:logIdentifier];
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        [(_LTTranslationRequest *)self setLogIdentifier:uUID];
      }

      v12 = 2;
      if (errorCopy)
      {
        v12 = 3;
      }

      if (startCopy)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = [_LTSELFLoggingEventData alloc];
      logIdentifier2 = [(_LTTranslationRequest *)self logIdentifier];
      v16 = [(_LTSELFLoggingEventData *)v14 initWithType:v13 invocationId:logIdentifier2];

      v17 = [[_LTSELFLoggingInvocationOptions alloc] initWithTask:0 inputMode:0 invocationType:17 translateAppContext:0];
      [(_LTSELFLoggingEventData *)v16 setStartInvocationOptions:v17];
      localePair = [(_LTTranslationRequest *)self localePair];
      [(_LTSELFLoggingEventData *)v16 setTranslationLocalePair:localePair];

      [(_LTSELFLoggingEventData *)v16 setUntrustedClientIdentifier:v7];
      [(_LTSELFLoggingEventData *)v16 setInvocationEndedError:errorCopy];
      [_LTTranslator selfLoggingEventWithData:v16];
    }

    else
    {
      v19 = _LTOSLogSELFLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_23AAF5000, v19, OS_LOG_TYPE_INFO, "Ignoring Messages invocation ended event since the log identifier was never set", v20, 2u);
      }
    }
  }
}

- (void)_replaceAdaptiveImageGlyphsIfNeededForText:requestUniqueID:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_translationFailedWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleParagraphResponse:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_FAULT, "Received a paragraph response with ID %{public}@, but we didn't expect any paragraphs to be outstanding; this should never happen", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_callCompletionHandlersWithResult:error:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_callCompletionHandlersWithResult:(os_log_t)log error:.cold.4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a1 != 0;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_23AAF5000, log, OS_LOG_TYPE_ERROR, "Attempted to call completionHandler even though it's already been called, will not call it again. Combined result exists: %{BOOL}i; error: %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end