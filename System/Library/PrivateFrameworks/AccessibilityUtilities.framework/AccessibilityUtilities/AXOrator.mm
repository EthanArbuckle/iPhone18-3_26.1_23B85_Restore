@interface AXOrator
- (AXOrator)init;
- (AXOratorDelegate)delegate;
- (BOOL)_canSpeakTaggedContent:(id)content;
- (BOOL)_changeSpeakingSpeed:(double)speed;
- (BOOL)_skipByUnit:(BOOL)unit boundary:(unint64_t)boundary;
- (BOOL)_successWithCode:(int64_t)code error:(id *)error;
- (BOOL)canResumeWithContent:(id)content;
- (BOOL)isPaused;
- (BOOL)isSpeaking;
- (BOOL)pauseSpeaking:(id *)speaking;
- (BOOL)resumeSpeakingAfterDelay:(double)delay error:(id *)error;
- (BOOL)speakFaster;
- (BOOL)speakSlower;
- (BOOL)startSpeakingWithPreferredLanguage:(id)language delayBeforeStart:(double)start error:(id *)error;
- (BOOL)stopSpeaking:(id *)speaking;
- (NSString)content;
- (NSString)currentVoiceIdentifier;
- (_NSRange)lastSpokenSubstringRange;
- (_NSRange)lastUtteranceSubstringRange;
- (double)currentSpeechRateForAdjustment;
- (float)speechRate;
- (id)_getLangCodeForItem:(id)item;
- (id)_speechSequenceItemsStartingAtContentLocation:(unint64_t)location;
- (id)currentVoiceSelection;
- (int64_t)_currentTokenIndex:(BOOL)index;
- (void)_clearAllContentState;
- (void)_processAdditionalContentInPreparationForSpeech;
- (void)_respeakUtteranceIfNeeded;
- (void)_speakNextItemInSequence;
- (void)_speakNextTokenFromCurrentTokenIndex:(int64_t)index forward:(BOOL)forward boundary:(unint64_t)boundary;
- (void)_startSpeakingSequence;
- (void)_tokenizeContentIfNeeded;
- (void)_updateAudioSessionCategory;
- (void)_updateSequenceForSpellOutBehavior;
- (void)addAdditionalContentToSpeechQueue:(id)queue;
- (void)setAudioSessionInactiveTimeout:(double)timeout;
- (void)setContent:(id)content;
- (void)speakStatusWithLanguage:(id)language rate:(id)rate;
- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didContinueSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didPauseSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer willSpeakRangeOfSpeechString:(_NSRange)string utterance:(id)utterance;
@end

@implementation AXOrator

- (AXOrator)init
{
  v12.receiver = self;
  v12.super_class = AXOrator;
  v2 = [(AXOrator *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(AXOrator *)v2 setLastUtteranceSubstringRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(AXOrator *)v3 setLastSpokenSubstringRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(AXOrator *)v3 setSpeakingContext:0];
    array = [MEMORY[0x1E695DF70] array];
    [(AXOrator *)v3 setAdditionalContentToProcess:array];

    objc_initWeak(&location, v3);
    v5 = +[AXSettings sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __16__AXOrator_init__block_invoke;
    v9[3] = &unk_1E71EA778;
    objc_copyWeak(&v10, &location);
    [v5 registerUpdateBlock:v9 forRetrieveSelector:sel_quickSpeakSpeakingRate withListener:v3];

    objc_destroyWeak(&v10);
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v7 = ModifySpeechJobsLock;
    ModifySpeechJobsLock = v6;

    objc_destroyWeak(&location);
  }

  return v3;
}

void __16__AXOrator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _respeakUtteranceIfNeeded];
}

- (NSString)content
{
  selectedContent = [(AXOrator *)self selectedContent];
  content = [selectedContent content];

  return content;
}

- (void)setContent:(id)content
{
  contentCopy = content;
  if (contentCopy)
  {
    v5 = contentCopy;
    v6 = [AXLanguageManager stringByReplacingFatWidthCharactersWithBasicCharacters:contentCopy];

    v7 = [[AXLanguageTaggedContent alloc] initWithContent:v6];
    [(AXOrator *)self setSelectedContent:v7];
    v8 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Orator did set content. Will tag content now", v11, 2u);
    }

    selectedContent = [(AXOrator *)self selectedContent];
    [selectedContent tagContent];

    selectedContent2 = [(AXOrator *)self selectedContent];
    self->_contentIsSpeakable = [(AXOrator *)self _canSpeakTaggedContent:selectedContent2];

    self->_isProcessingContentForSpeech = 1;
  }

  else
  {
    [(AXOrator *)self setSelectedContent:0];
    self->_contentIsSpeakable = 0;
    self->_isProcessingContentForSpeech = 0;
  }
}

- (void)addAdditionalContentToSpeechQueue:(id)queue
{
  queueCopy = queue;
  isProcessingContentForSpeech = [(AXOrator *)self isProcessingContentForSpeech];
  if (queueCopy && isProcessingContentForSpeech)
  {
    v6 = [AXLanguageManager stringByReplacingFatWidthCharactersWithBasicCharacters:queueCopy];

    v7 = [[AXLanguageTaggedContent alloc] initWithContent:v6];
    v8 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Orator added additional content to queue. Will tag content now", buf, 2u);
    }

    [(AXLanguageTaggedContent *)v7 tagContent];
    [ModifySpeechJobsLock lock];
    if ([(AXOrator *)self isProcessingContentForSpeech])
    {
      tags = [(AXLanguageTaggedContent *)v7 tags];

      if (tags)
      {
        additionalContentToProcess = [(AXOrator *)self additionalContentToProcess];
        tags2 = [(AXLanguageTaggedContent *)v7 tags];
        [additionalContentToProcess addObjectsFromArray:tags2];

        selectedContent = [(AXOrator *)self selectedContent];
        [selectedContent appendLanguageTaggedContent:v7];
      }
    }

    [ModifySpeechJobsLock unlock];

    queueCopy = v6;
  }

  [(AXOrator *)self setIsFetchingAdditionalContent:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AXOrator_addAdditionalContentToSpeechQueue___block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __46__AXOrator_addAdditionalContentToSpeechQueue___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSpeaking];
  if (result)
  {
    return result;
  }

  v3 = [*(a1 + 32) additionalContentToProcess];
  if ([v3 count])
  {
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) speechSequenceItems];
  if ([v4 count])
  {

LABEL_5:
LABEL_6:
    v5 = *(a1 + 32);

    return [v5 _speakNextItemInSequence];
  }

  v6 = [*(a1 + 32) isSpeaking];

  if (v6)
  {
    goto LABEL_6;
  }

  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(a1 + 32) delegate];
    [v9 oratorDidFinishSpeaking:*(a1 + 32)];
  }

  v10 = *(a1 + 32);

  return [v10 _clearAllContentState];
}

- (NSString)currentVoiceIdentifier
{
  speechSequenceItems = [(AXOrator *)self speechSequenceItems];
  if ([speechSequenceItems count])
  {
    speechSequenceItems2 = [(AXOrator *)self speechSequenceItems];
    dialectForSystemLanguage = [speechSequenceItems2 objectAtIndex:0];
    [(AXOrator *)self _getLangCodeForItem:dialectForSystemLanguage];
  }

  else
  {
    speechSequenceItems2 = +[AXLanguageManager sharedInstance];
    dialectForSystemLanguage = [speechSequenceItems2 dialectForSystemLanguage];
    [dialectForSystemLanguage specificLanguageID];
  }
  v6 = ;

  lastUtteranceLanguageCode = [(AXOrator *)self lastUtteranceLanguageCode];

  if (lastUtteranceLanguageCode)
  {
    lastUtteranceLanguageCode2 = [(AXOrator *)self lastUtteranceLanguageCode];

    v6 = lastUtteranceLanguageCode2;
  }

  v9 = +[AXSettings sharedInstance];
  v10 = AXLanguageCanonicalFormToGeneralLanguage(v6);
  v11 = [v9 speechVoiceIdentifierForLanguage:v10 sourceKey:*MEMORY[0x1E6988648] exists:0];

  return v11;
}

- (BOOL)startSpeakingWithPreferredLanguage:(id)language delayBeforeStart:(double)start error:(id *)error
{
  languageCopy = language;
  [(AXOrator *)self setCurrentLanguageCode:0];
  [(AXOrator *)self setPreferredLanguageWasSpecified:1];
  contentIsSpeakable = self->_contentIsSpeakable;
  if (contentIsSpeakable)
  {
    if (!languageCopy)
    {
      [(AXOrator *)self setPreferredLanguageWasSpecified:0];
      selectedContent = [(AXOrator *)self selectedContent];
      primaryUnambiguousDialect = [selectedContent primaryUnambiguousDialect];

      if (!primaryUnambiguousDialect)
      {
        selectedContent2 = [(AXOrator *)self selectedContent];
        primaryUnambiguousDialect = [selectedContent2 primaryAmbiguousDialect];
      }

      languageCopy = [primaryUnambiguousDialect specificLanguageID];
    }

    speechSynthesizer = [(AXOrator *)self speechSynthesizer];

    if (!speechSynthesizer)
    {
      v14 = objc_alloc_init(MEMORY[0x1E6958508]);
      [(AXOrator *)self setSpeechSynthesizer:v14];

      speechSynthesizer2 = [(AXOrator *)self speechSynthesizer];
      [speechSynthesizer2 setIsInternalSynth:1];

      v16 = *MEMORY[0x1E6988648];
      speechSynthesizer3 = [(AXOrator *)self speechSynthesizer];
      [speechSynthesizer3 setSpeechSource:v16];

      speechSynthesizer4 = [(AXOrator *)self speechSynthesizer];
      [speechSynthesizer4 setDelegate:self];

      speechSynthesizer5 = [(AXOrator *)self speechSynthesizer];
      [speechSynthesizer5 setUsesApplicationAudioSession:0];

      [(AXOrator *)self _updateAudioSessionCategory];
    }

    speakingContext = [(AXOrator *)self speakingContext];
    if (error && speakingContext == 1)
    {
      self->_contentIsSpeakable = 0;
    }

    selectedContent3 = [(AXOrator *)self selectedContent];
    [selectedContent3 setUserPreferredLangID:languageCopy];

    if (start == 0.0)
    {
      [(AXOrator *)self _startSpeakingSequence];
    }

    else
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }

  else if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXOratorErrorDomain" code:1 userInfo:0];
  }

  return contentIsSpeakable;
}

- (BOOL)pauseSpeaking:(id *)speaking
{
  speakingContent = [(AXOrator *)self speakingContent];

  if (speakingContent)
  {
    if ([(AXOrator *)self isSpeaking])
    {
      speechSynthesizer = [(AXOrator *)self speechSynthesizer];
      v7 = [speechSynthesizer pauseSpeakingAtBoundary:0];

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 5;
      }
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 2;
  }

  return [(AXOrator *)self _successWithCode:v8 error:speaking];
}

- (BOOL)stopSpeaking:(id *)speaking
{
  lastUtterance = [(AXOrator *)self lastUtterance];
  [(AXOrator *)self _clearAllContentState];
  [(AXOrator *)self setLastUtterance:lastUtterance];
  speechSynthesizer = [(AXOrator *)self speechSynthesizer];
  v6 = [speechSynthesizer stopSpeakingAtBoundary:0];

  return v6;
}

- (BOOL)resumeSpeakingAfterDelay:(double)delay error:(id *)error
{
  speakingContent = [(AXOrator *)self speakingContent];

  if (speakingContent)
  {
    if ([(AXOrator *)self isSpeaking])
    {
      v8 = 4;
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__AXOrator_resumeSpeakingAfterDelay_error___block_invoke;
      aBlock[3] = &unk_1E71E9B98;
      aBlock[4] = self;
      v9 = _Block_copy(aBlock);
      v10 = v9;
      if (delay == 0.0)
      {
        (*(v9 + 2))(v9);
      }

      else
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 2;
  }

  return [(AXOrator *)self _successWithCode:v8 error:error];
}

void __43__AXOrator_resumeSpeakingAfterDelay_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldSpeakNextItemOnResume];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setShouldSpeakNextItemOnResume:0];
    [*(a1 + 32) _speakNextItemInSequence];
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v9 = [*(a1 + 32) delegate];
      [v9 oratorDidResumeSpeaking:*(a1 + 32)];
    }
  }

  else
  {
    v6 = [v3 speechSynthesizer];
    v7 = [v6 continueSpeaking];

    if ((v7 & 1) == 0)
    {
      v8 = AXLogOrator();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __43__AXOrator_resumeSpeakingAfterDelay_error___block_invoke_cold_1();
      }
    }
  }
}

- (float)speechRate
{
  v2 = +[AXSettings sharedInstance];
  [v2 quickSpeakSpeakingRate];
  v4 = v3;

  return v4;
}

- (BOOL)isPaused
{
  speechSynthesizer = [(AXOrator *)self speechSynthesizer];
  isPaused = [speechSynthesizer isPaused];

  return isPaused;
}

- (BOOL)isSpeaking
{
  speechSynthesizer = [(AXOrator *)self speechSynthesizer];
  if ([speechSynthesizer isSpeaking])
  {
    speechSynthesizer2 = [(AXOrator *)self speechSynthesizer];
    v5 = [speechSynthesizer2 isPaused] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)currentVoiceSelection
{
  v3 = +[AXSettings sharedInstance];
  lastUtteranceLanguageCode = [(AXOrator *)self lastUtteranceLanguageCode];
  v5 = [v3 spokenContentVoiceSelectionForLanguage:lastUtteranceLanguageCode];

  return v5;
}

- (double)currentSpeechRateForAdjustment
{
  currentVoiceSelection = [(AXOrator *)self currentVoiceSelection];
  rate = [currentVoiceSelection rate];
  v4 = rate;
  if (!rate)
  {
    rate = &unk_1EFE97610;
  }

  [rate floatValue];
  v6 = v5;

  return v6;
}

- (BOOL)speakFaster
{
  [(AXOrator *)self currentSpeechRateForAdjustment];
  v4 = v3 + (*MEMORY[0x1E6958370] - *MEMORY[0x1E6958378]) * 0.05;

  return [(AXOrator *)self _changeSpeakingSpeed:v4];
}

- (BOOL)speakSlower
{
  [(AXOrator *)self currentSpeechRateForAdjustment];
  v4 = v3 + (*MEMORY[0x1E6958370] - *MEMORY[0x1E6958378]) * -0.05;

  return [(AXOrator *)self _changeSpeakingSpeed:v4];
}

- (void)speakStatusWithLanguage:(id)language rate:(id)rate
{
  v5 = speakStatusWithLanguage_rate__onceToken;
  languageCopy = language;
  if (v5 != -1)
  {
    [AXOrator speakStatusWithLanguage:rate:];
  }

  [speakStatusWithLanguage_rate__QuickManager setDelegate:self];
  [speakStatusWithLanguage_rate__QuickManager setIsInternalSynth:1];
  [speakStatusWithLanguage_rate__QuickManager setUsesApplicationAudioSession:0];
  v7 = MEMORY[0x1E696AAE8];
  v8 = AXAccessibilityBundlesDirectory();
  v9 = [v8 stringByAppendingPathComponent:@"QuickSpeak.bundle"];
  v16 = [v7 bundleWithPath:v9];

  v10 = AXNSLocalizedStringForLocale();
  v11 = [MEMORY[0x1E6958518] speechUtteranceWithString:v10];
  statusUtterance = self->_statusUtterance;
  self->_statusUtterance = v11;

  v13 = +[AXSettings sharedInstance];
  v14 = [v13 spokenContentVoiceSelectionForLanguage:languageCopy];

  [(AVSpeechUtterance *)self->_statusUtterance setVoiceSelection:v14];
  audioSession = [speakStatusWithLanguage_rate__QuickManager audioSession];
  [audioSession setCategory:*MEMORY[0x1E69580A0] withOptions:2 error:0];

  [speakStatusWithLanguage_rate__QuickManager stopSpeakingAtBoundary:0];
  [speakStatusWithLanguage_rate__QuickManager speakUtterance:self->_statusUtterance];
}

uint64_t __41__AXOrator_speakStatusWithLanguage_rate___block_invoke()
{
  speakStatusWithLanguage_rate__QuickManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)canResumeWithContent:(id)content
{
  contentCopy = content;
  speechSynthesizer = [(AXOrator *)self speechSynthesizer];
  if ([speechSynthesizer isSpeaking])
  {
    speechSynthesizer2 = [(AXOrator *)self speechSynthesizer];
    if ([speechSynthesizer2 isPaused])
    {
      speakingContent = [(AXOrator *)self speakingContent];
      content = [speakingContent content];
      v9 = [content isEqualToString:contentCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_startSpeakingSequence
{
  selectedContent = [(AXOrator *)self selectedContent];
  [(AXOrator *)self setSpeakingContent:selectedContent];

  [(AXOrator *)self setSpeakingContentTokenRanges:0];
  speakingContent = [(AXOrator *)self speakingContent];
  tags = [speakingContent tags];
  v6 = [tags mutableCopy];
  [(AXOrator *)self setSpeechSequenceItems:v6];

  [(AXOrator *)self _updateSequenceForSpellOutBehavior];
  [(AXOrator *)self setShouldSpeakNextItemOnResume:0];

  [(AXOrator *)self _speakNextItemInSequence];
}

- (void)_updateSequenceForSpellOutBehavior
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(AXOrator *)self spellOutContent])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    selfCopy = self;
    speechSequenceItems = [(AXOrator *)self speechSequenceItems];
    v5 = [speechSequenceItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(speechSequenceItems);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          for (j = [v9 range]; ; j += v16)
          {
            range = [v9 range];
            if (j >= range + v12)
            {
              break;
            }

            content = [v9 content];
            v14 = [content rangeOfComposedCharacterSequenceAtIndex:j];
            v16 = v15;

            v17 = [v9 copy];
            [v17 setRange:{v14, v16}];
            [array addObject:v17];
          }
        }

        v6 = [speechSequenceItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    [(AXOrator *)selfCopy setSpeechSequenceItems:array];
  }
}

- (id)_getLangCodeForItem:(id)item
{
  itemCopy = item;
  if (-[AXOrator preferredLanguageWasSpecified](self, "preferredLanguageWasSpecified") && (-[AXOrator speakingContent](self, "speakingContent"), v5 = objc_claimAutoreleasedReturnValue(), [v5 userPreferredLangID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(itemCopy, "canBeSpokenByLanguage:", v6), v6, v5, v7))
  {
    speakingContent = [(AXOrator *)self speakingContent];
    userPreferredLangID = [speakingContent userPreferredLangID];
  }

  else
  {
    dialect = [itemCopy dialect];
    specificLanguageID = [dialect specificLanguageID];

    if ([itemCopy wasPredicted])
    {
      goto LABEL_10;
    }

    speakingContent2 = [(AXOrator *)self speakingContent];
    userPreferredLangID2 = [speakingContent2 userPreferredLangID];
    if ([itemCopy canBeSpokenByLanguage:userPreferredLangID2])
    {
    }

    else
    {
      v14 = [itemCopy canBeSpokenByLanguage:specificLanguageID];

      if (v14)
      {
        goto LABEL_10;
      }
    }

    speakingContent = [(AXOrator *)self speakingContent];
    userPreferredLangID = [speakingContent userPreferredLangID];
  }

  specificLanguageID = userPreferredLangID;
LABEL_10:

  return specificLanguageID;
}

- (void)_processAdditionalContentInPreparationForSpeech
{
  [ModifySpeechJobsLock lock];
  additionalContentToProcess = [(AXOrator *)self additionalContentToProcess];
  if ([additionalContentToProcess count])
  {
    speechSequenceItems = [(AXOrator *)self speechSequenceItems];

    if (!speechSequenceItems)
    {
      goto LABEL_5;
    }

    speechSequenceItems2 = [(AXOrator *)self speechSequenceItems];
    additionalContentToProcess2 = [(AXOrator *)self additionalContentToProcess];
    [speechSequenceItems2 addObjectsFromArray:additionalContentToProcess2];

    additionalContentToProcess = [(AXOrator *)self additionalContentToProcess];
    [additionalContentToProcess removeAllObjects];
  }

LABEL_5:
  v7 = ModifySpeechJobsLock;

  [v7 unlock];
}

- (void)_speakNextItemInSequence
{
  v74 = *MEMORY[0x1E69E9840];
  [(AXOrator *)self _processAdditionalContentInPreparationForSpeech];
  if (self->_contentIsSpeakable)
  {
    delegate = [(AXOrator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      speechSequenceItems = [(AXOrator *)self speechSequenceItems];
      v5 = [speechSequenceItems count];

      if (v5 > 4)
      {
        goto LABEL_6;
      }

      [(AXOrator *)self setIsFetchingAdditionalContent:1];
      delegate = [(AXOrator *)self delegate];
      [delegate oratorShouldFetchNextElements:self shouldScrollOpaqueProviderIfNecessary:0];
    }
  }

LABEL_6:
  speechSequenceItems2 = [(AXOrator *)self speechSequenceItems];
  v7 = [speechSequenceItems2 count];

  if (v7)
  {
    speechSequenceItems3 = [(AXOrator *)self speechSequenceItems];
    v9 = [speechSequenceItems3 objectAtIndex:0];

    speechSequenceItems4 = [(AXOrator *)self speechSequenceItems];
    [speechSequenceItems4 removeObjectAtIndex:0];

    v11 = [(AXOrator *)self _getLangCodeForItem:v9];
    range = [v9 range];
    v14 = v13;
    currentLanguageCode = [(AXOrator *)self currentLanguageCode];

    if (!currentLanguageCode)
    {
      [(AXOrator *)self setCurrentLanguageCode:v11];
    }

    v63 = v9;
    if ([v9 createdFromNewline])
    {
      [(AXOrator *)self setCurrentLanguageCode:0];
    }

    else
    {
      currentLanguageCode2 = [(AXOrator *)self currentLanguageCode];
      if ([currentLanguageCode2 isEqualToString:v11])
      {
        spellOutContent = [(AXOrator *)self spellOutContent];

        if (!spellOutContent)
        {
          do
          {
            speechSequenceItems5 = [(AXOrator *)self speechSequenceItems];
            v22 = [speechSequenceItems5 count];

            if (!v22)
            {
              break;
            }

            speechSequenceItems6 = [(AXOrator *)self speechSequenceItems];
            currentLanguageCode2 = [speechSequenceItems6 objectAtIndex:0];

            currentLanguageCode3 = [(AXOrator *)self currentLanguageCode];
            v25 = [currentLanguageCode2 canBeSpokenByLanguage:currentLanguageCode3];

            v66 = v25;
            if (v25)
            {
              speechSequenceItems7 = [(AXOrator *)self speechSequenceItems];
              [speechSequenceItems7 removeObjectAtIndex:0];

              [currentLanguageCode2 range];
              v14 += v27;
            }

            contentSubstring = [currentLanguageCode2 contentSubstring];
            if ([contentSubstring length])
            {
              newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
              [currentLanguageCode2 contentSubstring];
              v30 = v11;
              v31 = v14;
              v33 = v32 = range;
              contentSubstring2 = [currentLanguageCode2 contentSubstring];
              v35 = [newlineCharacterSet characterIsMember:{objc_msgSend(v33, "characterAtIndex:", objc_msgSend(contentSubstring2, "length") - 1)}];

              range = v32;
              v14 = v31;
              v11 = v30;

              if (v35)
              {
                [(AXOrator *)self setCurrentLanguageCode:0];
                goto LABEL_26;
              }
            }

            else
            {
            }
          }

          while ((v66 & 1) != 0);
        }
      }

      else
      {
LABEL_26:
      }
    }

    v36 = +[AXSettings sharedInstance];
    v37 = AXLanguageCanonicalFormToGeneralLanguage(v11);
    [v36 quickSpeakSpeakingRateForLanguage:v37];
    v39 = v38;

    speakingContent = [(AXOrator *)self speakingContent];
    content = [speakingContent content];
    v42 = [content length];

    if (v14 + range > v42)
    {
      v43 = AXLogOrator();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        speakingContent2 = [(AXOrator *)self speakingContent];
        *buf = 134218498;
        v69 = range;
        v70 = 2048;
        v71 = v14;
        v72 = 2112;
        v73 = speakingContent2;
        _os_log_impl(&dword_18B15E000, v43, OS_LOG_TYPE_INFO, "Our substring range was greater than speaking content! (%lu,%lu) %@", buf, 0x20u);
      }

      goto LABEL_39;
    }

    v45 = AXLanguageCanonicalFormToGeneralLanguage(v11);

    v46 = +[AXSettings sharedInstance];
    v47 = [v46 spokenContentVoiceSelectionForLanguage:v45];

    speakingContent3 = [(AXOrator *)self speakingContent];
    content2 = [speakingContent3 content];
    v67 = range;
    v50 = [content2 substringWithRange:{range, v14}];

    v51 = MEMORY[0x1E6958500];
    voiceId = [v47 voiceId];
    v53 = [v51 voiceWithIdentifier:voiceId];

    synthesisProviderVoice = [v53 synthesisProviderVoice];
    LODWORD(voiceId) = [synthesisProviderVoice isPersonalVoice];

    if (voiceId)
    {
      v55 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v50];
      [v55 addAttribute:@"AXAccessibilityLanguageCode" value:v45 range:{0, objc_msgSend(v50, "length")}];
      v56 = [MEMORY[0x1E6958518] speechUtteranceWithAttributedString:v55];
    }

    else
    {
      v56 = [MEMORY[0x1E6958518] speechUtteranceWithString:v50];
    }

    [v56 setVoiceSelection:v47];
    [v56 setProcessEmoticons:1];
    speechSynthesizer = [(AXOrator *)self speechSynthesizer];
    [speechSynthesizer stopSpeakingAtBoundary:0];

    [(AXOrator *)self _updateAudioSessionCategory];
    speechSynthesizer2 = [(AXOrator *)self speechSynthesizer];
    [speechSynthesizer2 speakUtterance:v56];

    [(AXOrator *)self setLastUtteranceLanguageCode:v45];
    [(AXOrator *)self setLastUtteranceSubstringRange:v67, v14];
    [(AXOrator *)self setLastUtteranceLanguageTag:v64];
    lastUtterance = [(AXOrator *)self lastUtterance];
    [lastUtterance rate];
    if (v60 != v39)
    {
      delegate2 = [(AXOrator *)self delegate];
      v62 = objc_opt_respondsToSelector();

      if ((v62 & 1) == 0)
      {
LABEL_38:
        [(AXOrator *)self setLastUtterance:v56];

        v11 = v45;
LABEL_39:

        return;
      }

      lastUtterance = [(AXOrator *)self delegate];
      [lastUtterance oratorDidChangeSpeakingRate:self];
    }

    goto LABEL_38;
  }

  speechSynthesizer3 = [(AXOrator *)self speechSynthesizer];
  [speechSynthesizer3 stopSpeakingAtBoundary:0];

  delegate3 = [(AXOrator *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate4 = [(AXOrator *)self delegate];
    [delegate4 oratorDidFinishSpeaking:self];
  }
}

- (BOOL)_changeSpeakingSpeed:(double)speed
{
  v5 = AXLogOrator();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _changeSpeakingSpeed:];
  }

  v6 = +[AXSettings sharedInstance];
  if (*MEMORY[0x1E6958370] >= speed && *MEMORY[0x1E6958378] <= speed)
  {
    lastUtteranceLanguageCode = [(AXOrator *)self lastUtteranceLanguageCode];
    speedCopy = speed;
    *&v10 = speedCopy;
    [v6 setQuickSpeakSpeakingRate:lastUtteranceLanguageCode forLanguage:v10];

    [(AXOrator *)self _respeakUtteranceIfNeeded];
    delegate = [(AXOrator *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(AXOrator *)self delegate];
      [delegate2 oratorDidChangeSpeakingRate:self];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_speechSequenceItemsStartingAtContentLocation:(unint64_t)location
{
  v25 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  speakingContent = [(AXOrator *)self speakingContent];
  tags = [speakingContent tags];

  v8 = [tags countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(tags);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        range = [v12 range];
        if (location < range || location - range >= v14)
        {
          if ([v12 range] > location)
          {
            [array addObject:v12];
          }
        }

        else
        {
          v16 = [v12 copy];
          range2 = [v16 range];
          [v16 setRange:{location, v18 - location + range2}];
          [array addObject:v16];
        }
      }

      v9 = [tags countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return array;
}

- (void)_respeakUtteranceIfNeeded
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (int64_t)_currentTokenIndex:(BOOL)index
{
  indexCopy = index;
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  speechSynthesizer = [(AXOrator *)self speechSynthesizer];
  isSpeaking = [speechSynthesizer isSpeaking];

  if (isSpeaking)
  {
    if ([(AXOrator *)self lastSpokenSubstringRange]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = AXLogOrator();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "We tried to skip a unit in the currently spoken text, but hadn't tried to speak a substring yet.  This is possible but probably requires extremely fast timing.  If not, something may be wrong", buf, 2u);
      }

      [(AXOrator *)self setLastSpokenSubstringRange:0, 0];
    }

    v8 = AXLogOrator();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v26.location = [(AXOrator *)self lastSpokenSubstringRange];
      v9 = NSStringFromRange(v26);
      [(AXOrator *)v9 _currentTokenIndex:buf, v8];
    }

    speakingContentTokenRanges = [(AXOrator *)self speakingContentTokenRanges];
    v11 = speakingContentTokenRanges;
    if (indexCopy)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __31__AXOrator__currentTokenIndex___block_invoke;
    v18[3] = &unk_1E71EB608;
    v19 = indexCopy;
    v18[4] = self;
    v18[5] = &v20;
    [speakingContentTokenRanges enumerateObjectsWithOptions:v12 usingBlock:v18];
  }

  else
  {
    if (indexCopy)
    {
      speakingContentTokenRanges2 = [(AXOrator *)self speakingContentTokenRanges];
      v14 = [speakingContentTokenRanges2 count];
      v21[3] = v14;
    }

    else
    {
      v21[3] = 0;
    }

    v15 = AXLogOrator();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [AXOrator _currentTokenIndex:];
    }
  }

  v16 = v21[3];
  _Block_object_dispose(&v20, 8);
  return v16;
}

unint64_t __31__AXOrator__currentTokenIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = [a2 rangeValue];
  if (*(a1 + 48) != 1)
  {
    goto LABEL_4;
  }

  v9 = v7;
  result = [*(a1 + 32) lastSpokenSubstringRange];
  if (result >= v8 + v9)
  {
    if (*(a1 + 48))
    {
      return result;
    }

LABEL_4:
    result = [*(a1 + 32) lastSpokenSubstringRange];
    if (result < v8)
    {
      return result;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a3;
  *a4 = 1;
  return result;
}

- (void)_speakNextTokenFromCurrentTokenIndex:(int64_t)index forward:(BOOL)forward boundary:(unint64_t)boundary
{
  forwardCopy = forward;
  numberOfTokensToSkip = [(AXOrator *)self numberOfTokensToSkip];
  if (forwardCopy)
  {
    v10 = numberOfTokensToSkip;
  }

  else
  {
    v10 = -numberOfTokensToSkip;
  }

  v11 = v10 + index;
  speakingContentTokenRanges = [(AXOrator *)self speakingContentTokenRanges];
  v13 = [speakingContentTokenRanges count];

  if (v11 < v13)
  {
    if (v11 <= 0)
    {
      delegate = [(AXOrator *)self delegate];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        [(AXOrator *)self setIsFetchingAdditionalContent:1];
        delegate2 = [(AXOrator *)self delegate];
        [delegate2 oratorShouldFetchNextElements:self shouldScrollOpaqueProviderIfNecessary:1];
      }

      if (boundary == 0x7FFFFFFFFFFFFFFFLL)
      {
        [ModifySpeechJobsLock lock];
        speakingContent = [(AXOrator *)self speakingContent];
        tags = [speakingContent tags];
        v29 = [tags mutableCopy];

        [(AXOrator *)self setSpeechSequenceItems:v29];
        additionalContentToProcess = [(AXOrator *)self additionalContentToProcess];
        [additionalContentToProcess removeAllObjects];

        [ModifySpeechJobsLock unlock];
        goto LABEL_21;
      }
    }

    else
    {
      speakingContentTokenRanges2 = [(AXOrator *)self speakingContentTokenRanges];
      v15 = [speakingContentTokenRanges2 objectAtIndex:v11];
      rangeValue = [v15 rangeValue];

      v17 = rangeValue <= boundary;
      if (!forwardCopy)
      {
        v17 = rangeValue >= boundary;
      }

      if (v17)
      {
        [ModifySpeechJobsLock lock];
        selfCopy2 = self;
        boundaryCopy = rangeValue;
LABEL_20:
        v32 = [(AXOrator *)selfCopy2 _speechSequenceItemsStartingAtContentLocation:boundaryCopy];
        [(AXOrator *)self setSpeechSequenceItems:v32];

        additionalContentToProcess2 = [(AXOrator *)self additionalContentToProcess];
        [additionalContentToProcess2 removeAllObjects];

        [ModifySpeechJobsLock unlock];
        goto LABEL_21;
      }
    }

LABEL_17:
    v31 = AXLogOrator();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [AXOrator _speakNextTokenFromCurrentTokenIndex:forward:boundary:];
    }

    [ModifySpeechJobsLock lock];
    selfCopy2 = self;
    boundaryCopy = boundary;
    goto LABEL_20;
  }

  if (boundary != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  array = [MEMORY[0x1E695DF70] array];
  [(AXOrator *)self setSpeechSequenceItems:array];

  delegate3 = [(AXOrator *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    [(AXOrator *)self setIsFetchingAdditionalContent:1];
    delegate4 = [(AXOrator *)self delegate];
    [delegate4 oratorShouldFetchNextElements:self shouldScrollOpaqueProviderIfNecessary:1];
  }

LABEL_21:
  v34 = AXLogOrator();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _speakNextTokenFromCurrentTokenIndex:? forward:? boundary:?];
  }

  speechSynthesizer = [(AXOrator *)self speechSynthesizer];
  isPaused = [speechSynthesizer isPaused];

  if (isPaused)
  {
    [(AXOrator *)self setShouldSpeakNextItemOnResume:1];
  }

  else
  {
    [(AXOrator *)self _speakNextItemInSequence];
  }
}

- (BOOL)_skipByUnit:(BOOL)unit boundary:(unint64_t)boundary
{
  unitCopy = unit;
  v7 = AXLogOrator();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _skipByUnit:boundary:];
  }

  speakingContent = [(AXOrator *)self speakingContent];

  if (!speakingContent)
  {
    goto LABEL_13;
  }

  [(AXOrator *)self setCurrentLanguageCode:0];
  [(AXOrator *)self _tokenizeContentIfNeeded];
  v9 = AXLogOrator();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _skipByUnit:? boundary:?];
  }

  speakingContentTokenRanges = [(AXOrator *)self speakingContentTokenRanges];
  v11 = [speakingContentTokenRanges count];

  if (!v11)
  {
    _AXAssert();
  }

  speakingContentTokenRanges2 = [(AXOrator *)self speakingContentTokenRanges];
  v13 = [speakingContentTokenRanges2 count];

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [(AXOrator *)self _currentTokenIndex:unitCopy];
  v15 = AXLogOrator();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _skipByUnit:boundary:];
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21.location = [(AXOrator *)self lastSpokenSubstringRange];
    v16 = NSStringFromRange(v21);
    speakingContentTokenRanges3 = [(AXOrator *)self speakingContentTokenRanges];
    _AXAssert();

LABEL_13:
    v17 = AXLogOrator();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [AXOrator _skipByUnit:boundary:];
    }

    v18 = 0;
    goto LABEL_16;
  }

  [(AXOrator *)self _speakNextTokenFromCurrentTokenIndex:v14 forward:unitCopy boundary:boundary];
  v17 = AXLogOrator();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _skipByUnit:boundary:];
  }

  v18 = 1;
LABEL_16:

  return v18;
}

- (void)_tokenizeContentIfNeeded
{
  [ModifySpeechJobsLock lock];
  speakingContentTokenRanges = [(AXOrator *)self speakingContentTokenRanges];

  if (speakingContentTokenRanges)
  {
    speakingContentTokenRanges2 = [(AXOrator *)self speakingContentTokenRanges];
    lastObject = [speakingContentTokenRanges2 lastObject];
    rangeValue = [lastObject rangeValue];
    v8 = v7;

    v9 = rangeValue + v8;
    speakingContent = [(AXOrator *)self speakingContent];
    content = [speakingContent content];
    v12 = [content length];

    if (v9 > v12)
    {
      goto LABEL_10;
    }

    content2 = [(AXOrator *)self content];
    v14 = [content2 length] - v9;
  }

  else
  {
    content2 = [(AXOrator *)self speakingContent];
    v13Content = [content2 content];
    v14 = [v13Content length];

    v9 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__AXOrator__tokenizeContentIfNeeded__block_invoke;
  aBlock[3] = &unk_1E71EB630;
  v17 = array;
  v28 = v17;
  v18 = _Block_copy(aBlock);
  speakingContent2 = [(AXOrator *)self speakingContent];
  content3 = [speakingContent2 content];
  speakingContent3 = [(AXOrator *)self speakingContent];
  content4 = [speakingContent3 content];
  v23 = 1;
  [content3 enumerateSubstringsInRange:0 options:objc_msgSend(content4 usingBlock:{"length"), 1, v18}];

  if ([v17 count] <= 4)
  {
    [v17 removeAllObjects];
    speakingContent4 = [(AXOrator *)self speakingContent];
    content5 = [speakingContent4 content];
    [content5 enumerateSubstringsInRange:v9 options:v14 usingBlock:{1028, v18}];

    v26 = [v17 count];
    if (v26 / 5 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v26 / 5;
    }
  }

  [(AXOrator *)self setSpeakingContentTokenRanges:v17];
  [(AXOrator *)self setNumberOfTokensToSkip:v23];

LABEL_10:
  [ModifySpeechJobsLock unlock];
}

void __36__AXOrator__tokenizeContentIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x1E696AB08];
  v10 = a2;
  v11 = [v9 whitespaceAndNewlineCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  v13 = [v12 length];
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x1E696B098] valueWithRange:{a5, a6}];
    [v14 addObject:v15];
  }
}

- (void)setAudioSessionInactiveTimeout:(double)timeout
{
  speechSynthesizer = [(AXOrator *)self speechSynthesizer];
  [speechSynthesizer setAudioSessionInactiveTimeout:timeout];
}

- (void)_clearAllContentState
{
  [(AXOrator *)self setSpeakingContent:0];
  [(AXOrator *)self setSpeakingContentTokenRanges:0];
  [(AXOrator *)self setSpeechSequenceItems:0];
  [(AXOrator *)self setLastUtteranceLanguageCode:0];
  [(AXOrator *)self setLastUtteranceSubstringRange:0x7FFFFFFFFFFFFFFFLL, 0];
  [(AXOrator *)self setLastSpokenSubstringRange:0x7FFFFFFFFFFFFFFFLL, 0];
  [(AXOrator *)self setLastUtteranceLanguageTag:0];
  [(AXOrator *)self setLastUtterance:0];
  [(AXOrator *)self setShouldSpeakNextItemOnResume:0];
  [ModifySpeechJobsLock lock];
  [(AXOrator *)self setIsProcessingContentForSpeech:0];
  additionalContentToProcess = [(AXOrator *)self additionalContentToProcess];
  [additionalContentToProcess removeAllObjects];

  v4 = ModifySpeechJobsLock;

  [v4 unlock];
}

- (void)_updateAudioSessionCategory
{
  v3 = *MEMORY[0x1E6958068];
  v4 = 2 * (([(AXOrator *)self speakingContext]& 0xFFFFFFFFFFFFFFFELL) == 2);
  speechSynthesizer = [(AXOrator *)self speechSynthesizer];
  [speechSynthesizer setSetActiveOptions:1];

  speechSynthesizer2 = [(AXOrator *)self speechSynthesizer];
  [speechSynthesizer2 setAudioSessionCategory:v3];

  speechSynthesizer3 = [(AXOrator *)self speechSynthesizer];
  [speechSynthesizer3 setAudioSessionCategoryOptions:v4];
}

- (BOOL)_canSpeakTaggedContent:(id)content
{
  contentCopy = content;
  content = [contentCopy content];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [content stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v7 = [v6 length];

  if (v7)
  {
    ambiguousLangMaps = [contentCopy ambiguousLangMaps];
    if ([ambiguousLangMaps count])
    {
      v9 = 1;
    }

    else
    {
      unambiguousLangMaps = [contentCopy unambiguousLangMaps];
      v9 = [unambiguousLangMaps count] != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_successWithCode:(int64_t)code error:(id *)error
{
  if (error)
  {
    if (code)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXOratorErrorDomain" code:code userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    *error = v7;
  }

  return code == 0;
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance
{
  utteranceCopy = utterance;
  AXAssertMainThreadCallback();
  lastUtterance = [(AXOrator *)self lastUtterance];
  delegate = [(AXOrator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  v8 = lastUtterance;
  if ((v7 & 1) != 0 && lastUtterance == utteranceCopy)
  {
    speechSequenceItems = [(AXOrator *)self speechSequenceItems];
    if ([speechSequenceItems count])
    {

LABEL_5:
      v8 = lastUtterance;
      goto LABEL_7;
    }

    additionalContentToProcess = [(AXOrator *)self additionalContentToProcess];
    v11 = [additionalContentToProcess count];

    v8 = lastUtterance;
    if (!v11)
    {
      [(AXOrator *)self setIsFetchingAdditionalContent:1];
      delegate2 = [(AXOrator *)self delegate];
      [delegate2 oratorShouldFetchNextElements:self shouldScrollOpaqueProviderIfNecessary:1];

      [(AXOrator *)self _processAdditionalContentInPreparationForSpeech];
      goto LABEL_5;
    }
  }

LABEL_7:
  if (v8 == utteranceCopy)
  {
    speechSequenceItems2 = [(AXOrator *)self speechSequenceItems];
    if (![speechSequenceItems2 count])
    {
      additionalContentToProcess2 = [(AXOrator *)self additionalContentToProcess];
      if (![additionalContentToProcess2 count])
      {
        isFetchingAdditionalContent = [(AXOrator *)self isFetchingAdditionalContent];

        if (!isFetchingAdditionalContent)
        {
          [(AXOrator *)self _clearAllContentState];
        }

        goto LABEL_15;
      }
    }

LABEL_15:
    [(AXOrator *)self _speakNextItemInSequence];
    goto LABEL_16;
  }

  if (!v8)
  {
    speechSequenceItems3 = [(AXOrator *)self speechSequenceItems];
    v13 = [speechSequenceItems3 count];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  [(AXOrator *)self _updateAudioSessionCategory];
}

- (void)speechSynthesizer:(id)synthesizer didPauseSpeechUtterance:(id)utterance
{
  AXAssertMainThreadCallback();
  delegate = [(AXOrator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AXOrator *)self delegate];
    [delegate2 oratorDidPauseSpeaking:self];
  }

  [(AXOrator *)self _updateAudioSessionCategory];
}

- (void)speechSynthesizer:(id)synthesizer didContinueSpeechUtterance:(id)utterance
{
  AXAssertMainThreadCallback();
  delegate = [(AXOrator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AXOrator *)self delegate];
    [delegate2 oratorDidResumeSpeaking:self];
  }

  [(AXOrator *)self _updateAudioSessionCategory];
}

- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance
{
  AXAssertMainThreadCallback();
  delegate = [(AXOrator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AXOrator *)self delegate];
    [delegate2 oratorDidStartSpeaking:self];
  }
}

- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance
{
  utteranceCopy = utterance;
  AXAssertMainThreadCallback();
  [(AXOrator *)self _updateAudioSessionCategory];
  lastUtterance = [(AXOrator *)self lastUtterance];

  v6 = lastUtterance;
  if (lastUtterance == utteranceCopy)
  {
    delegate = [(AXOrator *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(AXOrator *)self delegate];
      [delegate2 oratorDidCancelSpeaking:self];
    }

    [(AXOrator *)self _clearAllContentState];
    v6 = lastUtterance;
  }
}

- (void)speechSynthesizer:(id)synthesizer willSpeakRangeOfSpeechString:(_NSRange)string utterance:(id)utterance
{
  length = string.length;
  location = string.location;
  utteranceCopy = utterance;
  v9 = dispatch_get_current_queue();
  v10 = MEMORY[0x1E69E96A0];

  if (v9 != v10)
  {
    _AXAssert();
  }

  lastUtterance = [(AXOrator *)self lastUtterance];

  if (lastUtterance != utteranceCopy)
  {
    delegate2 = AXLogOrator();
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEBUG))
    {
      [AXOrator speechSynthesizer:utteranceCopy willSpeakRangeOfSpeechString:self utterance:?];
    }

    goto LABEL_15;
  }

  if ([(AXOrator *)self lastUtteranceSubstringRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    delegate2 = AXLogOrator();
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
    {
      v24.location = location;
      v24.length = length;
      [AXOrator speechSynthesizer:v24 willSpeakRangeOfSpeechString:utteranceCopy utterance:delegate2];
    }

    goto LABEL_15;
  }

  v13 = [(AXOrator *)self lastUtteranceSubstringRange]+ location;
  lastUtteranceSubstringRange = [(AXOrator *)self lastUtteranceSubstringRange];
  if (v13 + length > lastUtteranceSubstringRange + v15)
  {
    v25.location = v13;
    v25.length = length;
    v16 = NSStringFromRange(v25);
    v26.location = [(AXOrator *)self lastUtteranceSubstringRange];
    NSStringFromRange(v26);
    v23 = v22 = v16;
    _AXAssert();
  }

  [(AXOrator *)self setLastSpokenSubstringRange:v13, length, v22, v23];
  v17 = AXLogOrator();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v27.location = v13;
    v27.length = length;
    [AXOrator speechSynthesizer:v27 willSpeakRangeOfSpeechString:? utterance:?];
  }

  delegate = [(AXOrator *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate2 = [(AXOrator *)self delegate];
    speakingContent = [(AXOrator *)self speakingContent];
    content = [speakingContent content];
    [delegate2 orator:self willSpeakRange:v13 ofContent:length, content];

LABEL_15:
  }
}

- (AXOratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_NSRange)lastSpokenSubstringRange
{
  length = self->_lastSpokenSubstringRange.length;
  location = self->_lastSpokenSubstringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)lastUtteranceSubstringRange
{
  length = self->_lastUtteranceSubstringRange.length;
  location = self->_lastUtteranceSubstringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)_currentTokenIndex:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_currentTokenIndex:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_18B15E000, log, OS_LOG_TYPE_DEBUG, "Last spoken substring range was %{private}@.", buf, 0xCu);
}

- (void)_speakNextTokenFromCurrentTokenIndex:forward:boundary:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_speakNextTokenFromCurrentTokenIndex:(void *)a1 forward:boundary:.cold.2(void *a1)
{
  v1 = [a1 speechSequenceItems];
  v2 = [v1 firstObject];
  v3 = [v2 content];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_skipByUnit:boundary:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_skipByUnit:(void *)a1 boundary:.cold.2(void *a1)
{
  v1 = [a1 speakingContentTokenRanges];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_skipByUnit:boundary:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_skipByUnit:boundary:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_skipByUnit:boundary:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)speechSynthesizer:(uint64_t)a1 willSpeakRangeOfSpeechString:(void *)a2 utterance:.cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 lastUtterance];
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)speechSynthesizer:(NSRange)a1 willSpeakRangeOfSpeechString:utterance:.cold.2(NSRange a1)
{
  v1 = NSStringFromRange(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)speechSynthesizer:(NSRange)a1 willSpeakRangeOfSpeechString:(uint64_t)a2 utterance:(NSObject *)a3 .cold.3(NSRange a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromRange(a1);
  OUTLINED_FUNCTION_1_1();
  v7 = 2113;
  v8 = a2;
  _os_log_error_impl(&dword_18B15E000, a3, OS_LOG_TYPE_ERROR, "Synthesizer will speak range %{private}@ of %{private}@, but we did not track the last utterance range.  It could be that we tried to stop speaking before getting this callback.", v6, 0x16u);
}

@end