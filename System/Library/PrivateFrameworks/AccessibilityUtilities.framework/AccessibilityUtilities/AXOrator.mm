@interface AXOrator
- (AXOrator)init;
- (AXOratorDelegate)delegate;
- (BOOL)_canSpeakTaggedContent:(id)a3;
- (BOOL)_changeSpeakingSpeed:(double)a3;
- (BOOL)_skipByUnit:(BOOL)a3 boundary:(unint64_t)a4;
- (BOOL)_successWithCode:(int64_t)a3 error:(id *)a4;
- (BOOL)canResumeWithContent:(id)a3;
- (BOOL)isPaused;
- (BOOL)isSpeaking;
- (BOOL)pauseSpeaking:(id *)a3;
- (BOOL)resumeSpeakingAfterDelay:(double)a3 error:(id *)a4;
- (BOOL)speakFaster;
- (BOOL)speakSlower;
- (BOOL)startSpeakingWithPreferredLanguage:(id)a3 delayBeforeStart:(double)a4 error:(id *)a5;
- (BOOL)stopSpeaking:(id *)a3;
- (NSString)content;
- (NSString)currentVoiceIdentifier;
- (_NSRange)lastSpokenSubstringRange;
- (_NSRange)lastUtteranceSubstringRange;
- (double)currentSpeechRateForAdjustment;
- (float)speechRate;
- (id)_getLangCodeForItem:(id)a3;
- (id)_speechSequenceItemsStartingAtContentLocation:(unint64_t)a3;
- (id)currentVoiceSelection;
- (int64_t)_currentTokenIndex:(BOOL)a3;
- (void)_clearAllContentState;
- (void)_processAdditionalContentInPreparationForSpeech;
- (void)_respeakUtteranceIfNeeded;
- (void)_speakNextItemInSequence;
- (void)_speakNextTokenFromCurrentTokenIndex:(int64_t)a3 forward:(BOOL)a4 boundary:(unint64_t)a5;
- (void)_startSpeakingSequence;
- (void)_tokenizeContentIfNeeded;
- (void)_updateAudioSessionCategory;
- (void)_updateSequenceForSpellOutBehavior;
- (void)addAdditionalContentToSpeechQueue:(id)a3;
- (void)setAudioSessionInactiveTimeout:(double)a3;
- (void)setContent:(id)a3;
- (void)speakStatusWithLanguage:(id)a3 rate:(id)a4;
- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didContinueSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didPauseSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 willSpeakRangeOfSpeechString:(_NSRange)a4 utterance:(id)a5;
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
    v4 = [MEMORY[0x1E695DF70] array];
    [(AXOrator *)v3 setAdditionalContentToProcess:v4];

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
  v2 = [(AXOrator *)self selectedContent];
  v3 = [v2 content];

  return v3;
}

- (void)setContent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [AXLanguageManager stringByReplacingFatWidthCharactersWithBasicCharacters:v4];

    v7 = [[AXLanguageTaggedContent alloc] initWithContent:v6];
    [(AXOrator *)self setSelectedContent:v7];
    v8 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Orator did set content. Will tag content now", v11, 2u);
    }

    v9 = [(AXOrator *)self selectedContent];
    [v9 tagContent];

    v10 = [(AXOrator *)self selectedContent];
    self->_contentIsSpeakable = [(AXOrator *)self _canSpeakTaggedContent:v10];

    self->_isProcessingContentForSpeech = 1;
  }

  else
  {
    [(AXOrator *)self setSelectedContent:0];
    self->_contentIsSpeakable = 0;
    self->_isProcessingContentForSpeech = 0;
  }
}

- (void)addAdditionalContentToSpeechQueue:(id)a3
{
  v4 = a3;
  v5 = [(AXOrator *)self isProcessingContentForSpeech];
  if (v4 && v5)
  {
    v6 = [AXLanguageManager stringByReplacingFatWidthCharactersWithBasicCharacters:v4];

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
      v9 = [(AXLanguageTaggedContent *)v7 tags];

      if (v9)
      {
        v10 = [(AXOrator *)self additionalContentToProcess];
        v11 = [(AXLanguageTaggedContent *)v7 tags];
        [v10 addObjectsFromArray:v11];

        v12 = [(AXOrator *)self selectedContent];
        [v12 appendLanguageTaggedContent:v7];
      }
    }

    [ModifySpeechJobsLock unlock];

    v4 = v6;
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
  v3 = [(AXOrator *)self speechSequenceItems];
  if ([v3 count])
  {
    v4 = [(AXOrator *)self speechSequenceItems];
    v5 = [v4 objectAtIndex:0];
    [(AXOrator *)self _getLangCodeForItem:v5];
  }

  else
  {
    v4 = +[AXLanguageManager sharedInstance];
    v5 = [v4 dialectForSystemLanguage];
    [v5 specificLanguageID];
  }
  v6 = ;

  v7 = [(AXOrator *)self lastUtteranceLanguageCode];

  if (v7)
  {
    v8 = [(AXOrator *)self lastUtteranceLanguageCode];

    v6 = v8;
  }

  v9 = +[AXSettings sharedInstance];
  v10 = AXLanguageCanonicalFormToGeneralLanguage(v6);
  v11 = [v9 speechVoiceIdentifierForLanguage:v10 sourceKey:*MEMORY[0x1E6988648] exists:0];

  return v11;
}

- (BOOL)startSpeakingWithPreferredLanguage:(id)a3 delayBeforeStart:(double)a4 error:(id *)a5
{
  v8 = a3;
  [(AXOrator *)self setCurrentLanguageCode:0];
  [(AXOrator *)self setPreferredLanguageWasSpecified:1];
  contentIsSpeakable = self->_contentIsSpeakable;
  if (contentIsSpeakable)
  {
    if (!v8)
    {
      [(AXOrator *)self setPreferredLanguageWasSpecified:0];
      v10 = [(AXOrator *)self selectedContent];
      v11 = [v10 primaryUnambiguousDialect];

      if (!v11)
      {
        v12 = [(AXOrator *)self selectedContent];
        v11 = [v12 primaryAmbiguousDialect];
      }

      v8 = [v11 specificLanguageID];
    }

    v13 = [(AXOrator *)self speechSynthesizer];

    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x1E6958508]);
      [(AXOrator *)self setSpeechSynthesizer:v14];

      v15 = [(AXOrator *)self speechSynthesizer];
      [v15 setIsInternalSynth:1];

      v16 = *MEMORY[0x1E6988648];
      v17 = [(AXOrator *)self speechSynthesizer];
      [v17 setSpeechSource:v16];

      v18 = [(AXOrator *)self speechSynthesizer];
      [v18 setDelegate:self];

      v19 = [(AXOrator *)self speechSynthesizer];
      [v19 setUsesApplicationAudioSession:0];

      [(AXOrator *)self _updateAudioSessionCategory];
    }

    v20 = [(AXOrator *)self speakingContext];
    if (a5 && v20 == 1)
    {
      self->_contentIsSpeakable = 0;
    }

    v21 = [(AXOrator *)self selectedContent];
    [v21 setUserPreferredLangID:v8];

    if (a4 == 0.0)
    {
      [(AXOrator *)self _startSpeakingSequence];
    }

    else
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }

  else if (a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXOratorErrorDomain" code:1 userInfo:0];
  }

  return contentIsSpeakable;
}

- (BOOL)pauseSpeaking:(id *)a3
{
  v5 = [(AXOrator *)self speakingContent];

  if (v5)
  {
    if ([(AXOrator *)self isSpeaking])
    {
      v6 = [(AXOrator *)self speechSynthesizer];
      v7 = [v6 pauseSpeakingAtBoundary:0];

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

  return [(AXOrator *)self _successWithCode:v8 error:a3];
}

- (BOOL)stopSpeaking:(id *)a3
{
  v4 = [(AXOrator *)self lastUtterance];
  [(AXOrator *)self _clearAllContentState];
  [(AXOrator *)self setLastUtterance:v4];
  v5 = [(AXOrator *)self speechSynthesizer];
  v6 = [v5 stopSpeakingAtBoundary:0];

  return v6;
}

- (BOOL)resumeSpeakingAfterDelay:(double)a3 error:(id *)a4
{
  v7 = [(AXOrator *)self speakingContent];

  if (v7)
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
      if (a3 == 0.0)
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

  return [(AXOrator *)self _successWithCode:v8 error:a4];
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
  v2 = [(AXOrator *)self speechSynthesizer];
  v3 = [v2 isPaused];

  return v3;
}

- (BOOL)isSpeaking
{
  v3 = [(AXOrator *)self speechSynthesizer];
  if ([v3 isSpeaking])
  {
    v4 = [(AXOrator *)self speechSynthesizer];
    v5 = [v4 isPaused] ^ 1;
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
  v4 = [(AXOrator *)self lastUtteranceLanguageCode];
  v5 = [v3 spokenContentVoiceSelectionForLanguage:v4];

  return v5;
}

- (double)currentSpeechRateForAdjustment
{
  v2 = [(AXOrator *)self currentVoiceSelection];
  v3 = [v2 rate];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_1EFE97610;
  }

  [v3 floatValue];
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

- (void)speakStatusWithLanguage:(id)a3 rate:(id)a4
{
  v5 = speakStatusWithLanguage_rate__onceToken;
  v6 = a3;
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
  v14 = [v13 spokenContentVoiceSelectionForLanguage:v6];

  [(AVSpeechUtterance *)self->_statusUtterance setVoiceSelection:v14];
  v15 = [speakStatusWithLanguage_rate__QuickManager audioSession];
  [v15 setCategory:*MEMORY[0x1E69580A0] withOptions:2 error:0];

  [speakStatusWithLanguage_rate__QuickManager stopSpeakingAtBoundary:0];
  [speakStatusWithLanguage_rate__QuickManager speakUtterance:self->_statusUtterance];
}

uint64_t __41__AXOrator_speakStatusWithLanguage_rate___block_invoke()
{
  speakStatusWithLanguage_rate__QuickManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)canResumeWithContent:(id)a3
{
  v4 = a3;
  v5 = [(AXOrator *)self speechSynthesizer];
  if ([v5 isSpeaking])
  {
    v6 = [(AXOrator *)self speechSynthesizer];
    if ([v6 isPaused])
    {
      v7 = [(AXOrator *)self speakingContent];
      v8 = [v7 content];
      v9 = [v8 isEqualToString:v4];
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
  v3 = [(AXOrator *)self selectedContent];
  [(AXOrator *)self setSpeakingContent:v3];

  [(AXOrator *)self setSpeakingContentTokenRanges:0];
  v4 = [(AXOrator *)self speakingContent];
  v5 = [v4 tags];
  v6 = [v5 mutableCopy];
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
    v3 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = self;
    v4 = [(AXOrator *)self speechSequenceItems];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          for (j = [v9 range]; ; j += v16)
          {
            v11 = [v9 range];
            if (j >= v11 + v12)
            {
              break;
            }

            v13 = [v9 content];
            v14 = [v13 rangeOfComposedCharacterSequenceAtIndex:j];
            v16 = v15;

            v17 = [v9 copy];
            [v17 setRange:{v14, v16}];
            [v3 addObject:v17];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    [(AXOrator *)v18 setSpeechSequenceItems:v3];
  }
}

- (id)_getLangCodeForItem:(id)a3
{
  v4 = a3;
  if (-[AXOrator preferredLanguageWasSpecified](self, "preferredLanguageWasSpecified") && (-[AXOrator speakingContent](self, "speakingContent"), v5 = objc_claimAutoreleasedReturnValue(), [v5 userPreferredLangID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "canBeSpokenByLanguage:", v6), v6, v5, v7))
  {
    v8 = [(AXOrator *)self speakingContent];
    v9 = [v8 userPreferredLangID];
  }

  else
  {
    v10 = [v4 dialect];
    v11 = [v10 specificLanguageID];

    if ([v4 wasPredicted])
    {
      goto LABEL_10;
    }

    v12 = [(AXOrator *)self speakingContent];
    v13 = [v12 userPreferredLangID];
    if ([v4 canBeSpokenByLanguage:v13])
    {
    }

    else
    {
      v14 = [v4 canBeSpokenByLanguage:v11];

      if (v14)
      {
        goto LABEL_10;
      }
    }

    v8 = [(AXOrator *)self speakingContent];
    v9 = [v8 userPreferredLangID];
  }

  v11 = v9;
LABEL_10:

  return v11;
}

- (void)_processAdditionalContentInPreparationForSpeech
{
  [ModifySpeechJobsLock lock];
  v3 = [(AXOrator *)self additionalContentToProcess];
  if ([v3 count])
  {
    v4 = [(AXOrator *)self speechSequenceItems];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = [(AXOrator *)self speechSequenceItems];
    v6 = [(AXOrator *)self additionalContentToProcess];
    [v5 addObjectsFromArray:v6];

    v3 = [(AXOrator *)self additionalContentToProcess];
    [v3 removeAllObjects];
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
    v3 = [(AXOrator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(AXOrator *)self speechSequenceItems];
      v5 = [v4 count];

      if (v5 > 4)
      {
        goto LABEL_6;
      }

      [(AXOrator *)self setIsFetchingAdditionalContent:1];
      v3 = [(AXOrator *)self delegate];
      [v3 oratorShouldFetchNextElements:self shouldScrollOpaqueProviderIfNecessary:0];
    }
  }

LABEL_6:
  v6 = [(AXOrator *)self speechSequenceItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(AXOrator *)self speechSequenceItems];
    v9 = [v8 objectAtIndex:0];

    v10 = [(AXOrator *)self speechSequenceItems];
    [v10 removeObjectAtIndex:0];

    v11 = [(AXOrator *)self _getLangCodeForItem:v9];
    v12 = [v9 range];
    v14 = v13;
    v15 = [(AXOrator *)self currentLanguageCode];

    if (!v15)
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
      v19 = [(AXOrator *)self currentLanguageCode];
      if ([v19 isEqualToString:v11])
      {
        v20 = [(AXOrator *)self spellOutContent];

        if (!v20)
        {
          do
          {
            v21 = [(AXOrator *)self speechSequenceItems];
            v22 = [v21 count];

            if (!v22)
            {
              break;
            }

            v23 = [(AXOrator *)self speechSequenceItems];
            v19 = [v23 objectAtIndex:0];

            v24 = [(AXOrator *)self currentLanguageCode];
            v25 = [v19 canBeSpokenByLanguage:v24];

            v66 = v25;
            if (v25)
            {
              v26 = [(AXOrator *)self speechSequenceItems];
              [v26 removeObjectAtIndex:0];

              [v19 range];
              v14 += v27;
            }

            v28 = [v19 contentSubstring];
            if ([v28 length])
            {
              v29 = [MEMORY[0x1E696AB08] newlineCharacterSet];
              [v19 contentSubstring];
              v30 = v11;
              v31 = v14;
              v33 = v32 = v12;
              v34 = [v19 contentSubstring];
              v35 = [v29 characterIsMember:{objc_msgSend(v33, "characterAtIndex:", objc_msgSend(v34, "length") - 1)}];

              v12 = v32;
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

    v40 = [(AXOrator *)self speakingContent];
    v41 = [v40 content];
    v42 = [v41 length];

    if (v14 + v12 > v42)
    {
      v43 = AXLogOrator();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [(AXOrator *)self speakingContent];
        *buf = 134218498;
        v69 = v12;
        v70 = 2048;
        v71 = v14;
        v72 = 2112;
        v73 = v44;
        _os_log_impl(&dword_18B15E000, v43, OS_LOG_TYPE_INFO, "Our substring range was greater than speaking content! (%lu,%lu) %@", buf, 0x20u);
      }

      goto LABEL_39;
    }

    v45 = AXLanguageCanonicalFormToGeneralLanguage(v11);

    v46 = +[AXSettings sharedInstance];
    v47 = [v46 spokenContentVoiceSelectionForLanguage:v45];

    v48 = [(AXOrator *)self speakingContent];
    v49 = [v48 content];
    v67 = v12;
    v50 = [v49 substringWithRange:{v12, v14}];

    v51 = MEMORY[0x1E6958500];
    v52 = [v47 voiceId];
    v53 = [v51 voiceWithIdentifier:v52];

    v54 = [v53 synthesisProviderVoice];
    LODWORD(v52) = [v54 isPersonalVoice];

    if (v52)
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
    v57 = [(AXOrator *)self speechSynthesizer];
    [v57 stopSpeakingAtBoundary:0];

    [(AXOrator *)self _updateAudioSessionCategory];
    v58 = [(AXOrator *)self speechSynthesizer];
    [v58 speakUtterance:v56];

    [(AXOrator *)self setLastUtteranceLanguageCode:v45];
    [(AXOrator *)self setLastUtteranceSubstringRange:v67, v14];
    [(AXOrator *)self setLastUtteranceLanguageTag:v64];
    v59 = [(AXOrator *)self lastUtterance];
    [v59 rate];
    if (v60 != v39)
    {
      v61 = [(AXOrator *)self delegate];
      v62 = objc_opt_respondsToSelector();

      if ((v62 & 1) == 0)
      {
LABEL_38:
        [(AXOrator *)self setLastUtterance:v56];

        v11 = v45;
LABEL_39:

        return;
      }

      v59 = [(AXOrator *)self delegate];
      [v59 oratorDidChangeSpeakingRate:self];
    }

    goto LABEL_38;
  }

  v16 = [(AXOrator *)self speechSynthesizer];
  [v16 stopSpeakingAtBoundary:0];

  v17 = [(AXOrator *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v65 = [(AXOrator *)self delegate];
    [v65 oratorDidFinishSpeaking:self];
  }
}

- (BOOL)_changeSpeakingSpeed:(double)a3
{
  v5 = AXLogOrator();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _changeSpeakingSpeed:];
  }

  v6 = +[AXSettings sharedInstance];
  if (*MEMORY[0x1E6958370] >= a3 && *MEMORY[0x1E6958378] <= a3)
  {
    v9 = [(AXOrator *)self lastUtteranceLanguageCode];
    v8 = a3;
    *&v10 = v8;
    [v6 setQuickSpeakSpeakingRate:v9 forLanguage:v10];

    [(AXOrator *)self _respeakUtteranceIfNeeded];
    v11 = [(AXOrator *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(AXOrator *)self delegate];
      [v13 oratorDidChangeSpeakingRate:self];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_speechSequenceItemsStartingAtContentLocation:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(AXOrator *)self speakingContent];
  v7 = [v6 tags];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 range];
        if (a3 < v13 || a3 - v13 >= v14)
        {
          if ([v12 range] > a3)
          {
            [v5 addObject:v12];
          }
        }

        else
        {
          v16 = [v12 copy];
          v17 = [v16 range];
          [v16 setRange:{a3, v18 - a3 + v17}];
          [v5 addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v5;
}

- (void)_respeakUtteranceIfNeeded
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (int64_t)_currentTokenIndex:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(AXOrator *)self speechSynthesizer];
  v6 = [v5 isSpeaking];

  if (v6)
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

    v10 = [(AXOrator *)self speakingContentTokenRanges];
    v11 = v10;
    if (v3)
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
    v19 = v3;
    v18[4] = self;
    v18[5] = &v20;
    [v10 enumerateObjectsWithOptions:v12 usingBlock:v18];
  }

  else
  {
    if (v3)
    {
      v13 = [(AXOrator *)self speakingContentTokenRanges];
      v14 = [v13 count];
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

- (void)_speakNextTokenFromCurrentTokenIndex:(int64_t)a3 forward:(BOOL)a4 boundary:(unint64_t)a5
{
  v6 = a4;
  v9 = [(AXOrator *)self numberOfTokensToSkip];
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  v11 = v10 + a3;
  v12 = [(AXOrator *)self speakingContentTokenRanges];
  v13 = [v12 count];

  if (v11 < v13)
  {
    if (v11 <= 0)
    {
      v24 = [(AXOrator *)self delegate];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        [(AXOrator *)self setIsFetchingAdditionalContent:1];
        v26 = [(AXOrator *)self delegate];
        [v26 oratorShouldFetchNextElements:self shouldScrollOpaqueProviderIfNecessary:1];
      }

      if (a5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [ModifySpeechJobsLock lock];
        v27 = [(AXOrator *)self speakingContent];
        v28 = [v27 tags];
        v29 = [v28 mutableCopy];

        [(AXOrator *)self setSpeechSequenceItems:v29];
        v30 = [(AXOrator *)self additionalContentToProcess];
        [v30 removeAllObjects];

        [ModifySpeechJobsLock unlock];
        goto LABEL_21;
      }
    }

    else
    {
      v14 = [(AXOrator *)self speakingContentTokenRanges];
      v15 = [v14 objectAtIndex:v11];
      v16 = [v15 rangeValue];

      v17 = v16 <= a5;
      if (!v6)
      {
        v17 = v16 >= a5;
      }

      if (v17)
      {
        [ModifySpeechJobsLock lock];
        v18 = self;
        v19 = v16;
LABEL_20:
        v32 = [(AXOrator *)v18 _speechSequenceItemsStartingAtContentLocation:v19];
        [(AXOrator *)self setSpeechSequenceItems:v32];

        v33 = [(AXOrator *)self additionalContentToProcess];
        [v33 removeAllObjects];

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
    v18 = self;
    v19 = a5;
    goto LABEL_20;
  }

  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  v20 = [MEMORY[0x1E695DF70] array];
  [(AXOrator *)self setSpeechSequenceItems:v20];

  v21 = [(AXOrator *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    [(AXOrator *)self setIsFetchingAdditionalContent:1];
    v23 = [(AXOrator *)self delegate];
    [v23 oratorShouldFetchNextElements:self shouldScrollOpaqueProviderIfNecessary:1];
  }

LABEL_21:
  v34 = AXLogOrator();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _speakNextTokenFromCurrentTokenIndex:? forward:? boundary:?];
  }

  v35 = [(AXOrator *)self speechSynthesizer];
  v36 = [v35 isPaused];

  if (v36)
  {
    [(AXOrator *)self setShouldSpeakNextItemOnResume:1];
  }

  else
  {
    [(AXOrator *)self _speakNextItemInSequence];
  }
}

- (BOOL)_skipByUnit:(BOOL)a3 boundary:(unint64_t)a4
{
  v5 = a3;
  v7 = AXLogOrator();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _skipByUnit:boundary:];
  }

  v8 = [(AXOrator *)self speakingContent];

  if (!v8)
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

  v10 = [(AXOrator *)self speakingContentTokenRanges];
  v11 = [v10 count];

  if (!v11)
  {
    _AXAssert();
  }

  v12 = [(AXOrator *)self speakingContentTokenRanges];
  v13 = [v12 count];

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [(AXOrator *)self _currentTokenIndex:v5];
  v15 = AXLogOrator();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [AXOrator _skipByUnit:boundary:];
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21.location = [(AXOrator *)self lastSpokenSubstringRange];
    v16 = NSStringFromRange(v21);
    v20 = [(AXOrator *)self speakingContentTokenRanges];
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

  [(AXOrator *)self _speakNextTokenFromCurrentTokenIndex:v14 forward:v5 boundary:a4];
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
  v3 = [(AXOrator *)self speakingContentTokenRanges];

  if (v3)
  {
    v4 = [(AXOrator *)self speakingContentTokenRanges];
    v5 = [v4 lastObject];
    v6 = [v5 rangeValue];
    v8 = v7;

    v9 = v6 + v8;
    v10 = [(AXOrator *)self speakingContent];
    v11 = [v10 content];
    v12 = [v11 length];

    if (v9 > v12)
    {
      goto LABEL_10;
    }

    v13 = [(AXOrator *)self content];
    v14 = [v13 length] - v9;
  }

  else
  {
    v13 = [(AXOrator *)self speakingContent];
    v15 = [v13 content];
    v14 = [v15 length];

    v9 = 0;
  }

  v16 = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__AXOrator__tokenizeContentIfNeeded__block_invoke;
  aBlock[3] = &unk_1E71EB630;
  v17 = v16;
  v28 = v17;
  v18 = _Block_copy(aBlock);
  v19 = [(AXOrator *)self speakingContent];
  v20 = [v19 content];
  v21 = [(AXOrator *)self speakingContent];
  v22 = [v21 content];
  v23 = 1;
  [v20 enumerateSubstringsInRange:0 options:objc_msgSend(v22 usingBlock:{"length"), 1, v18}];

  if ([v17 count] <= 4)
  {
    [v17 removeAllObjects];
    v24 = [(AXOrator *)self speakingContent];
    v25 = [v24 content];
    [v25 enumerateSubstringsInRange:v9 options:v14 usingBlock:{1028, v18}];

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

- (void)setAudioSessionInactiveTimeout:(double)a3
{
  v4 = [(AXOrator *)self speechSynthesizer];
  [v4 setAudioSessionInactiveTimeout:a3];
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
  v3 = [(AXOrator *)self additionalContentToProcess];
  [v3 removeAllObjects];

  v4 = ModifySpeechJobsLock;

  [v4 unlock];
}

- (void)_updateAudioSessionCategory
{
  v3 = *MEMORY[0x1E6958068];
  v4 = 2 * (([(AXOrator *)self speakingContext]& 0xFFFFFFFFFFFFFFFELL) == 2);
  v5 = [(AXOrator *)self speechSynthesizer];
  [v5 setSetActiveOptions:1];

  v6 = [(AXOrator *)self speechSynthesizer];
  [v6 setAudioSessionCategory:v3];

  v7 = [(AXOrator *)self speechSynthesizer];
  [v7 setAudioSessionCategoryOptions:v4];
}

- (BOOL)_canSpeakTaggedContent:(id)a3
{
  v3 = a3;
  v4 = [v3 content];
  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v3 ambiguousLangMaps];
    if ([v8 count])
    {
      v9 = 1;
    }

    else
    {
      v10 = [v3 unambiguousLangMaps];
      v9 = [v10 count] != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_successWithCode:(int64_t)a3 error:(id *)a4
{
  if (a4)
  {
    if (a3)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXOratorErrorDomain" code:a3 userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    *a4 = v7;
  }

  return a3 == 0;
}

- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4
{
  v5 = a4;
  AXAssertMainThreadCallback();
  v18 = [(AXOrator *)self lastUtterance];
  v6 = [(AXOrator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  v8 = v18;
  if ((v7 & 1) != 0 && v18 == v5)
  {
    v9 = [(AXOrator *)self speechSequenceItems];
    if ([v9 count])
    {

LABEL_5:
      v8 = v18;
      goto LABEL_7;
    }

    v10 = [(AXOrator *)self additionalContentToProcess];
    v11 = [v10 count];

    v8 = v18;
    if (!v11)
    {
      [(AXOrator *)self setIsFetchingAdditionalContent:1];
      v16 = [(AXOrator *)self delegate];
      [v16 oratorShouldFetchNextElements:self shouldScrollOpaqueProviderIfNecessary:1];

      [(AXOrator *)self _processAdditionalContentInPreparationForSpeech];
      goto LABEL_5;
    }
  }

LABEL_7:
  if (v8 == v5)
  {
    v14 = [(AXOrator *)self speechSequenceItems];
    if (![v14 count])
    {
      v15 = [(AXOrator *)self additionalContentToProcess];
      if (![v15 count])
      {
        v17 = [(AXOrator *)self isFetchingAdditionalContent];

        if (!v17)
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
    v12 = [(AXOrator *)self speechSequenceItems];
    v13 = [v12 count];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  [(AXOrator *)self _updateAudioSessionCategory];
}

- (void)speechSynthesizer:(id)a3 didPauseSpeechUtterance:(id)a4
{
  AXAssertMainThreadCallback();
  v5 = [(AXOrator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AXOrator *)self delegate];
    [v7 oratorDidPauseSpeaking:self];
  }

  [(AXOrator *)self _updateAudioSessionCategory];
}

- (void)speechSynthesizer:(id)a3 didContinueSpeechUtterance:(id)a4
{
  AXAssertMainThreadCallback();
  v5 = [(AXOrator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AXOrator *)self delegate];
    [v7 oratorDidResumeSpeaking:self];
  }

  [(AXOrator *)self _updateAudioSessionCategory];
}

- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4
{
  AXAssertMainThreadCallback();
  v5 = [(AXOrator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AXOrator *)self delegate];
    [v7 oratorDidStartSpeaking:self];
  }
}

- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4
{
  v5 = a4;
  AXAssertMainThreadCallback();
  [(AXOrator *)self _updateAudioSessionCategory];
  v10 = [(AXOrator *)self lastUtterance];

  v6 = v10;
  if (v10 == v5)
  {
    v7 = [(AXOrator *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(AXOrator *)self delegate];
      [v9 oratorDidCancelSpeaking:self];
    }

    [(AXOrator *)self _clearAllContentState];
    v6 = v10;
  }
}

- (void)speechSynthesizer:(id)a3 willSpeakRangeOfSpeechString:(_NSRange)a4 utterance:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = dispatch_get_current_queue();
  v10 = MEMORY[0x1E69E96A0];

  if (v9 != v10)
  {
    _AXAssert();
  }

  v11 = [(AXOrator *)self lastUtterance];

  if (v11 != v8)
  {
    v12 = AXLogOrator();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [AXOrator speechSynthesizer:v8 willSpeakRangeOfSpeechString:self utterance:?];
    }

    goto LABEL_15;
  }

  if ([(AXOrator *)self lastUtteranceSubstringRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = AXLogOrator();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v24.location = location;
      v24.length = length;
      [AXOrator speechSynthesizer:v24 willSpeakRangeOfSpeechString:v8 utterance:v12];
    }

    goto LABEL_15;
  }

  v13 = [(AXOrator *)self lastUtteranceSubstringRange]+ location;
  v14 = [(AXOrator *)self lastUtteranceSubstringRange];
  if (v13 + length > v14 + v15)
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

  v18 = [(AXOrator *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v12 = [(AXOrator *)self delegate];
    v20 = [(AXOrator *)self speakingContent];
    v21 = [v20 content];
    [v12 orator:self willSpeakRange:v13 ofContent:length, v21];

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