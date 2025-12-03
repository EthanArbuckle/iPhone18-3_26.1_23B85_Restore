@interface CLKTextProvider
+ (CLKTextProvider)localizableTextProviderWithStringsFileFormatKey:(NSString *)formatKey textProviders:(NSArray *)textProviders;
+ (CLKTextProvider)localizableTextProviderWithStringsFileTextKey:(NSString *)textKey shortTextKey:(NSString *)shortTextKey;
+ (CLKTextProvider)new;
+ (CLKTextProvider)providerWithJSONObjectRepresentation:(id)representation;
+ (CLKTextProvider)textProviderWithFormat:(NSString *)format;
+ (CLKTextProvider)textProviderWithFormat:(id)format arguments:(char *)arguments;
- (BOOL)isEqual:(id)equal;
- (CGSize)minimumSizeWithStyle:(id)style now:(id)now;
- (CLKTextProvider)initWithCoder:(id)coder;
- (id)JSONObjectRepresentation;
- (id)_addTrackingAttribute:(id)attribute tracking:(id)tracking;
- (id)_cacheForKey:(id)key;
- (id)_defaultCache;
- (id)_description;
- (id)_initWithJSONObjectRepresentation:(id)representation;
- (id)_italicize:(id)_italicize;
- (id)_monospacedNumbers:(id)numbers;
- (id)_timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:(id)format andRemovingDesignator:(BOOL)designator designatorExists:(BOOL *)exists;
- (id)attributedString;
- (id)attributedTextAndSize:(CGSize *)size forMaxWidth:(double)width withStyle:(id)style now:(id)now;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)finalizedCopy;
- (id)initPrivate;
- (id)sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style;
- (id)startUpdatesWithHandler:(id)handler;
- (unint64_t)hash;
- (void)_commonInit;
- (void)_localeChanged;
- (void)_maybeStartOrStopUpdates;
- (void)_pruneCacheKeysIfNecessary;
- (void)_update;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setPaused:(BOOL)paused;
- (void)stopUpdatesForToken:(id)token;
@end

@implementation CLKTextProvider

+ (CLKTextProvider)localizableTextProviderWithStringsFileTextKey:(NSString *)textKey shortTextKey:(NSString *)shortTextKey
{
  v5 = shortTextKey;
  v6 = textKey;
  v7 = [[CLKLocalizableSimpleTextProvider alloc] initWithTextKey:v6 shortTextKey:v5];

  return v7;
}

+ (CLKTextProvider)localizableTextProviderWithStringsFileFormatKey:(NSString *)formatKey textProviders:(NSArray *)textProviders
{
  v5 = textProviders;
  v6 = formatKey;
  v7 = [[CLKLocalizableCompoundTextProvider alloc] initWithFormatKey:v6 textProviders:v5];

  return v7;
}

+ (CLKTextProvider)textProviderWithFormat:(NSString *)format
{
  va_start(va, format);
  v3 = [self textProviderWithFormat:format arguments:va];

  return v3;
}

+ (CLKTextProvider)textProviderWithFormat:(id)format arguments:(char *)arguments
{
  formatCopy = format;
  v6 = [[CLKCompoundTextProvider alloc] initWithFormat:formatCopy arguments:arguments];

  return v6;
}

- (id)initPrivate
{
  v5.receiver = self;
  v5.super_class = CLKTextProvider;
  v2 = [(CLKTextProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CLKTextProvider *)v2 _commonInit];
  }

  return v3;
}

+ (CLKTextProvider)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CLKTextProvider;
  return objc_msgSendSuper2(&v3, "new");
}

- (void)_commonInit
{
  self->_paused = 1;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  updateHandlersByToken = self->_updateHandlersByToken;
  self->_updateHandlersByToken = v3;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__localeChanged name:*MEMORY[0x277CBE620] object:0];
}

- (void)dealloc
{
  __26__CLKTextProvider_dealloc__block_invoke(self, self->_secondTimerToken);
  __26__CLKTextProvider_dealloc__block_invoke(v3, self->_minuteTimerToken);
  __26__CLKTextProvider_dealloc__block_invoke(v4, self->_30fpsTimerToken);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v6.receiver = self;
  v6.super_class = CLKTextProvider;
  [(CLKTextProvider *)&v6 dealloc];
}

void __26__CLKTextProvider_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __26__CLKTextProvider_dealloc__block_invoke_2;
    v5[3] = &unk_278A1F1B8;
    v6 = v2;
    v4 = MEMORY[0x2383C4AF0](v5);
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v4[2](v4);
    }

    else
    {
      dispatch_async(MEMORY[0x277D85CD0], v4);
    }
  }
}

void __26__CLKTextProvider_dealloc__block_invoke_2(uint64_t a1)
{
  v2 = +[CLKClockTimer sharedInstance];
  [v2 stopUpdatesForToken:*(a1 + 32)];
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(CLKTextProvider *)self _maybeStartOrStopUpdates];
  }
}

- (id)attributedString
{
  v2 = objc_opt_new();

  return v2;
}

- (id)attributedTextAndSize:(CGSize *)size forMaxWidth:(double)width withStyle:(id)style now:(id)now
{
  styleCopy = style;
  if (width >= 0.00000011920929)
  {
    [(CLKTextProvider *)self _startSessionWithDate:now];
    _sessionCacheKey = [(CLKTextProvider *)self _sessionCacheKey];
    v13 = [(CLKTextProvider *)self _cacheForKey:_sessionCacheKey];

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __67__CLKTextProvider_attributedTextAndSize_forMaxWidth_withStyle_now___block_invoke;
    v18 = &unk_278A1F920;
    selfCopy = self;
    v20 = styleCopy;
    v11 = [v13 attributedStringAndSize:size forMaxWidth:v20 withStyle:&v15 generator:width];
    [(CLKTextProvider *)self _endSession:v15];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __67__CLKTextProvider_attributedTextAndSize_forMaxWidth_withStyle_now___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _sessionAttributedTextForIndex:a2 withStyle:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (*(v4 + 75) == 1)
  {
    v5 = [v4 _italicize:v3];
  }

  else if (*(v4 + 76) == 1)
  {
    v5 = [v4 _monospacedNumbers:v3];
  }

  else
  {
    if (!*(v4 + 96))
    {
      goto LABEL_8;
    }

    v5 = [v4 _addTrackingAttribute:v3 tracking:?];
  }

  v6 = v5;

  v3 = v6;
LABEL_8:

  return v3;
}

- (CGSize)minimumSizeWithStyle:(id)style now:(id)now
{
  v7 = 0.0;
  v8 = 0.0;
  v4 = [(CLKTextProvider *)self attributedTextAndSize:&v7 forMaxWidth:style withStyle:now now:0.00000011920929];
  v5 = v7;
  v6 = v8;
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style
{
  styleCopy = style;
  _sessionCacheKey = [(CLKTextProvider *)self _sessionCacheKey];
  v8 = [(CLKTextProvider *)self _cacheForKey:_sessionCacheKey];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__CLKTextProvider_sessionAttributedTextForIndex_withStyle___block_invoke;
  v12[3] = &unk_278A1F920;
  v12[4] = self;
  v13 = styleCopy;
  v9 = styleCopy;
  v10 = [v8 attributedStringForIndex:index withStyle:v9 generator:v12];

  return v10;
}

- (id)finalizedCopy
{
  if (self->_finalized)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(CLKTextProvider *)self copy];
    [(CLKTextProvider *)selfCopy finalize];
  }

  return selfCopy;
}

- (id)startUpdatesWithHandler:(id)handler
{
  v4 = MEMORY[0x277CCABB0];
  nextUpdateToken = self->_nextUpdateToken;
  handlerCopy = handler;
  v7 = [v4 numberWithUnsignedInteger:nextUpdateToken];
  updateHandlersByToken = self->_updateHandlersByToken;
  ++self->_nextUpdateToken;
  v9 = [handlerCopy copy];

  [(NSMutableDictionary *)updateHandlersByToken setObject:v9 forKey:v7];
  [(CLKTextProvider *)self _maybeStartOrStopUpdates];

  return v7;
}

- (void)stopUpdatesForToken:(id)token
{
  [(NSMutableDictionary *)self->_updateHandlersByToken removeObjectForKey:token];

  [(CLKTextProvider *)self _maybeStartOrStopUpdates];
}

- (id)description
{
  v3 = +[CLKCompoundTextProvider compoundTextProviderCurrentlyFormattingOnThisThread];
  v4 = v3;
  if (v3)
  {
    v8 = 0;
    [v3 addTextProvider:self andGetPlaceholderString:&v8];
    _description = v8;
  }

  else
  {
    _description = [(CLKTextProvider *)self _description];
  }

  v6 = _description;

  return v6;
}

- (id)_timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:(id)format andRemovingDesignator:(BOOL)designator designatorExists:(BOOL *)exists
{
  designatorCopy = designator;
  v49 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v8 = 0x277CCA000uLL;
  [MEMORY[0x277CCA968] _componentsFromFormatString:formatCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = v47 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    existsCopy = exists;
    v41 = formatCopy;
    v12 = *v45;
    v13 = *MEMORY[0x277CBE630];
    v14 = *MEMORY[0x277CBE638];
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:v13];
        if (([v17 BOOLValue] & 1) == 0)
        {
          v18 = [v16 objectForKeyedSubscript:v14];
          if ([v18 hasPrefix:@"a"])
          {
            v19 = [v9 indexOfObject:v16];

            goto LABEL_13;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
    exists = existsCopy;
    formatCopy = v41;
    v8 = 0x277CCA000;
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (exists)
  {
    *exists = v19 != 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (!CLKDesignatorRequiresWhitespace() || designatorCopy)
  {
    if (v19)
    {
      v21 = [v9 objectAtIndexedSubscript:v19 - 1];
      v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277CBE630]];
      if ([v22 BOOLValue])
      {
        v23 = [v21 objectForKeyedSubscript:*MEMORY[0x277CBE638]];
        [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v25 = v24 = formatCopy;
        [v23 stringByTrimmingCharactersInSet:v25];
        v26 = v42 = designatorCopy;

        formatCopy = v24;
        v20 = [v26 length] == 0;

        designatorCopy = v42;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    if (v19 < [v9 count] - 1)
    {
      v27 = [v9 objectAtIndexedSubscript:v19 + 1];
      v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277CBE630]];
      if ([v28 BOOLValue])
      {
        v29 = [v27 objectForKeyedSubscript:*MEMORY[0x277CBE638]];
        [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v31 = v30 = formatCopy;
        [v29 stringByTrimmingCharactersInSet:v31];
        v32 = v43 = designatorCopy;

        formatCopy = v30;
        v33 = [v32 length] == 0;

        designatorCopy = v43;
      }

      else
      {
        v33 = 0;
      }

      if (v20)
      {
LABEL_36:
        v34 = [v9 mutableCopy];
        v35 = v34;
        if (v33)
        {
          [v34 removeObjectAtIndex:v19 + 1];
          if (!designatorCopy)
          {
LABEL_38:
            if (!v20)
            {
LABEL_40:
              v36 = v35;

              v37 = [*(v8 + 2408) _formatStringFromComponents:v36];

              formatCopy = v37;
              v9 = v36;
              goto LABEL_41;
            }

LABEL_39:
            [v35 removeObjectAtIndex:v19 - 1];
            goto LABEL_40;
          }
        }

        else if (!designatorCopy)
        {
          goto LABEL_38;
        }

        [v35 removeObjectAtIndex:v19];
        if (!v20)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v20 = 0;
  }

  v33 = 0;
  if (v20)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (v33 || designatorCopy)
  {
    goto LABEL_36;
  }

LABEL_41:
  v38 = formatCopy;

  return formatCopy;
}

- (id)_description
{
  v4.receiver = self;
  v4.super_class = CLKTextProvider;
  v2 = [(CLKTextProvider *)&v4 description];

  return v2;
}

- (id)_italicize:(id)_italicize
{
  v3 = [_italicize mutableCopy];
  v4 = *MEMORY[0x277D740A8];
  v5 = [v3 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
  fontDescriptor = [v5 fontDescriptor];
  v7 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];
  [v5 pointSize];
  v8 = [CLKFont fontWithDescriptor:v7 size:?];

  [v3 addAttribute:v4 value:v8 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

- (id)_monospacedNumbers:(id)numbers
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [numbers mutableCopy];
  v4 = *MEMORY[0x277D740A8];
  v5 = [v3 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
  fontDescriptor = [v5 fontDescriptor];
  v17 = *MEMORY[0x277D74338];
  v7 = *MEMORY[0x277D74388];
  v14[0] = *MEMORY[0x277D74398];
  v14[1] = v7;
  v15[0] = &unk_284A34C08;
  v15[1] = &unk_284A34C20;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v16 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v18[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v11 = [fontDescriptor fontDescriptorByAddingAttributes:v10];

  [v5 pointSize];
  v12 = [CLKFont fontWithDescriptor:v11 size:?];
  [v3 addAttribute:v4 value:v12 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

- (id)_addTrackingAttribute:(id)attribute tracking:(id)tracking
{
  trackingCopy = tracking;
  v6 = [attribute mutableCopy];
  v7 = [v6 length];
  [v6 addAttribute:*MEMORY[0x277D741E0] value:trackingCopy range:{0, v7}];

  v8 = [v6 copy];

  return v8;
}

- (id)_defaultCache
{
  defaultCache = self->_defaultCache;
  if (!defaultCache)
  {
    v4 = objc_alloc_init(CLKTextProviderCache);
    v5 = self->_defaultCache;
    self->_defaultCache = v4;

    defaultCache = self->_defaultCache;
  }

  return defaultCache;
}

- (id)_cacheForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_cachesByKey)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      cachesByKey = self->_cachesByKey;
      self->_cachesByKey = v5;
    }

    recentCacheKeys = self->_recentCacheKeys;
    if (!recentCacheKeys)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->_recentCacheKeys;
      self->_recentCacheKeys = v8;

      recentCacheKeys = self->_recentCacheKeys;
    }

    [(NSMutableArray *)recentCacheKeys removeObject:keyCopy];
    [(NSMutableArray *)self->_recentCacheKeys insertObject:keyCopy atIndex:0];
    [(CLKTextProvider *)self _pruneCacheKeysIfNecessary];
    _defaultCache = [(NSMutableDictionary *)self->_cachesByKey objectForKey:keyCopy];
    if (!_defaultCache)
    {
      _defaultCache = objc_alloc_init(CLKTextProviderCache);
      [(NSMutableDictionary *)self->_cachesByKey setObject:_defaultCache forKey:keyCopy];
    }
  }

  else
  {
    _defaultCache = [(CLKTextProvider *)self _defaultCache];
  }

  return _defaultCache;
}

- (void)_pruneCacheKeysIfNecessary
{
  v3 = [(NSMutableArray *)self->_recentCacheKeys count];
  if (v3 >= 0xB)
  {
    v4 = v3;
    for (i = 10; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)self->_recentCacheKeys objectAtIndex:i];
      [(NSMutableDictionary *)self->_cachesByKey removeObjectForKey:v6];
    }

    recentCacheKeys = self->_recentCacheKeys;

    [(NSMutableArray *)recentCacheKeys removeObjectsInRange:10, v4 - 10];
  }
}

- (void)_localeChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CLKTextProvider__localeChanged__block_invoke;
  block[3] = &unk_278A1F1B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__CLKTextProvider__localeChanged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

- (void)_maybeStartOrStopUpdates
{
  if (![(NSMutableDictionary *)self->_updateHandlersByToken count]|| self->_paused)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_4;
  }

  _updateFrequency = [(CLKTextProvider *)self _updateFrequency];
  v4 = _updateFrequency == 2;
  v3 = _updateFrequency == 3;
  if (_updateFrequency != 1)
  {
LABEL_4:
    if (self->_minuteTimerToken)
    {
      v5 = +[CLKClockTimer sharedInstance];
      [v5 stopUpdatesForToken:self->_minuteTimerToken];

      minuteTimerToken = self->_minuteTimerToken;
      self->_minuteTimerToken = 0;

      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else if (!v4)
    {
      goto LABEL_16;
    }

    if (self->_secondTimerToken)
    {
      if (!v3)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    objc_initWeak(&location, self);
    v18 = +[CLKClockTimer sharedInstance];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_2;
    v27[3] = &unk_278A1EFF8;
    objc_copyWeak(&v28, &location);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_3;
    v25[3] = &unk_278A1F020;
    objc_copyWeak(&v26, &location);
    v19 = [v18 startUpdatesWithUpdateFrequency:1 withHandler:v27 identificationLog:v25];
    secondTimerToken = self->_secondTimerToken;
    self->_secondTimerToken = v19;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    if (v3)
    {
      goto LABEL_10;
    }

LABEL_18:
    if (self->_30fpsTimerToken)
    {
      v16 = +[CLKClockTimer sharedInstance];
      [v16 stopUpdatesForToken:self->_30fpsTimerToken];

      _30fpsTimerToken = self->_30fpsTimerToken;
      self->_30fpsTimerToken = 0;
    }

    return;
  }

  if (!self->_minuteTimerToken)
  {
    objc_initWeak(&location, self);
    v11 = +[CLKClockTimer sharedInstance];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke;
    v31[3] = &unk_278A1EFF8;
    objc_copyWeak(&v32, &location);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_36;
    v29[3] = &unk_278A1F020;
    objc_copyWeak(&v30, &location);
    v12 = [v11 startUpdatesWithUpdateFrequency:0 withHandler:v31 identificationLog:v29];
    v13 = self->_minuteTimerToken;
    self->_minuteTimerToken = v12;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  v3 = 0;
LABEL_16:
  if (!self->_secondTimerToken)
  {
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v14 = +[CLKClockTimer sharedInstance];
  [v14 stopUpdatesForToken:self->_secondTimerToken];

  v15 = self->_secondTimerToken;
  self->_secondTimerToken = 0;

  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (!self->_30fpsTimerToken)
  {
    objc_initWeak(&location, self);
    v7 = +[CLKClockTimer sharedInstance];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_4;
    v23[3] = &unk_278A1EFF8;
    objc_copyWeak(&v24, &location);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_5;
    v21[3] = &unk_278A1F020;
    objc_copyWeak(&v22, &location);
    v8 = [v7 startUpdatesWithUpdateFrequency:3 withHandler:v23 identificationLog:v21];
    v9 = self->_30fpsTimerToken;
    self->_30fpsTimerToken = v8;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

id __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

void __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_2(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

id __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

void __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_4(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

id __43__CLKTextProvider__maybeStartOrStopUpdates__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)_update
{
  [(NSMutableDictionary *)self->_updateHandlersByToken enumerateKeysAndObjectsUsingBlock:&__block_literal_global_40_0];

  [(CLKTextProvider *)self _maybeStartOrStopUpdates];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_finalized)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
    *(v5 + 120) = self->_timeTravelUpdateFrequency;
    objc_storeStrong((v5 + 80), self->_tintColor);
    *(v5 + 104) = self->_shrinkTextPreference;
    *(v5 + 75) = self->_italicized;
    *(v5 + 76) = self->_monospacedNumbers;
    objc_storeStrong((v5 + 96), self->_trackingAttribute);
    *(v5 + 73) = self->_ignoreUppercaseStyle;
    objc_storeStrong((v5 + 88), self->_accessibilityLabel);
    objc_storeStrong((v5 + 112), self->_fontFeatures);
    return v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  timeTravelUpdateFrequency = self->_timeTravelUpdateFrequency;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __27__CLKTextProvider_isEqual___block_invoke;
  v50[3] = &unk_278A1F948;
  v7 = equalCopy;
  v51 = v7;
  v8 = [v5 appendInteger:timeTravelUpdateFrequency counterpart:v50];
  tintColor = self->_tintColor;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __27__CLKTextProvider_isEqual___block_invoke_2;
  v48[3] = &unk_278A1F140;
  v10 = v7;
  v49 = v10;
  v11 = [v5 appendObject:tintColor counterpart:v48];
  shrinkTextPreference = self->_shrinkTextPreference;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __27__CLKTextProvider_isEqual___block_invoke_3;
  v46[3] = &unk_278A1F948;
  v13 = v10;
  v47 = v13;
  v14 = [v5 appendInteger:shrinkTextPreference counterpart:v46];
  italicized = self->_italicized;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __27__CLKTextProvider_isEqual___block_invoke_4;
  v44[3] = &unk_278A1F970;
  v16 = v13;
  v45 = v16;
  v17 = [v5 appendBool:italicized counterpart:v44];
  ignoreUppercaseStyle = self->_ignoreUppercaseStyle;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __27__CLKTextProvider_isEqual___block_invoke_5;
  v42[3] = &unk_278A1F970;
  v19 = v16;
  v43 = v19;
  v20 = [v5 appendBool:ignoreUppercaseStyle counterpart:v42];
  accessibilityLabel = self->_accessibilityLabel;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __27__CLKTextProvider_isEqual___block_invoke_6;
  v40[3] = &unk_278A1F118;
  v22 = v19;
  v41 = v22;
  v23 = [v5 appendString:accessibilityLabel counterpart:v40];
  monospacedNumbers = self->_monospacedNumbers;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __27__CLKTextProvider_isEqual___block_invoke_7;
  v38[3] = &unk_278A1F970;
  v25 = v22;
  v39 = v25;
  v26 = [v5 appendBool:monospacedNumbers counterpart:v38];
  fontFeatures = self->_fontFeatures;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __27__CLKTextProvider_isEqual___block_invoke_8;
  v36[3] = &unk_278A1F140;
  v28 = v25;
  v37 = v28;
  v29 = [v5 appendObject:fontFeatures counterpart:v36];
  trackingAttribute = self->_trackingAttribute;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __27__CLKTextProvider_isEqual___block_invoke_9;
  v34[3] = &unk_278A1F140;
  v35 = v28;
  v31 = v28;
  v32 = [v5 appendObject:trackingAttribute counterpart:v34];
  LOBYTE(v28) = [v5 isEqual];

  return v28;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_timeTravelUpdateFrequency];
  v5 = [builder appendObject:self->_tintColor];
  v6 = [builder appendInteger:self->_shrinkTextPreference];
  v7 = [builder appendBool:self->_italicized];
  v8 = [builder appendBool:self->_ignoreUppercaseStyle];
  v9 = [builder appendString:self->_accessibilityLabel];
  v10 = [builder appendBool:self->_monospacedNumbers];
  v11 = [builder appendObject:self->_fontFeatures];
  v12 = [builder appendObject:self->_trackingAttribute];
  v13 = [builder hash];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  timeTravelUpdateFrequency = self->_timeTravelUpdateFrequency;
  coderCopy = coder;
  [coderCopy encodeInteger:timeTravelUpdateFrequency forKey:@"updateFrequency"];
  [coderCopy encodeObject:self->_tintColor forKey:@"tintColor"];
  [coderCopy encodeBool:self->_shrinkTextPreference != 0 forKey:@"shrinkTextPreference"];
  [coderCopy encodeBool:self->_finalized forKey:@"finalized"];
  [coderCopy encodeBool:self->_italicized forKey:@"italicized"];
  [coderCopy encodeBool:self->_monospacedNumbers forKey:@"monospacedNumbers"];
  [coderCopy encodeBool:self->_ignoreUppercaseStyle forKey:@"ignoreUppercaseStyle"];
  [coderCopy encodeObject:self->_accessibilityLabel forKey:@"_accessibility"];
  [coderCopy encodeObject:self->_fontFeatures forKey:@"fontFeatures"];
  [coderCopy encodeObject:self->_trackingAttribute forKey:@"trackingAttribute"];
}

- (CLKTextProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CLKTextProvider;
  v5 = [(CLKTextProvider *)&v21 init];
  v6 = v5;
  if (v5)
  {
    [(CLKTextProvider *)v5 _commonInit];
    v6->_timeTravelUpdateFrequency = [coderCopy decodeIntegerForKey:@"updateFrequency"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v6->_tintColor;
    v6->_tintColor = v7;

    v6->_shrinkTextPreference = [coderCopy decodeBoolForKey:@"shrinkTextPreference"];
    v6->_finalized = [coderCopy decodeBoolForKey:@"finalized"];
    v6->_italicized = [coderCopy decodeBoolForKey:@"italicized"];
    v6->_monospacedNumbers = [coderCopy decodeBoolForKey:@"monospacedNumbers"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingAttribute"];
    trackingAttribute = v6->_trackingAttribute;
    v6->_trackingAttribute = v9;

    v6->_ignoreUppercaseStyle = [coderCopy decodeBoolForKey:@"ignoreUppercaseStyle"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accessibility"];
    accessibilityLabel = v6->_accessibilityLabel;
    v6->_accessibilityLabel = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"fontFeatures"];
    fontFeatures = v6->_fontFeatures;
    v6->_fontFeatures = v18;
  }

  return v6;
}

+ (CLKTextProvider)providerWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", representationCopy}];
  }

  v4 = [representationCopy objectForKeyedSubscript:@"class"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"class", v4}];
  }

  v5 = NSClassFromString(v4);
  if (([(objc_class *)v5 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"class: %@ must be a CLKTextProvider class", v4}];
  }

  v6 = [[v5 alloc] _initWithJSONObjectRepresentation:representationCopy];
  if (v6)
  {
    v7 = [representationCopy objectForKeyedSubscript:@"tintColor"];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277D75348]) initWithJSONObjectRepresentation:v7];
      [v6 setTintColor:v8];
    }
  }

  return v6;
}

- (id)_initWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  initPrivate = [(CLKTextProvider *)self initPrivate];
  v6 = [representationCopy objectForKeyedSubscript:@"accessibilityLabel"];

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"accessibilityLabel", v6}];
    }

    objc_storeStrong(initPrivate + 11, v6);
  }

  return initPrivate;
}

- (id)JSONObjectRepresentation
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:@"class"];

  jSONObjectRepresentation = [(UIColor *)self->_tintColor JSONObjectRepresentation];
  [v4 setObject:jSONObjectRepresentation forKeyedSubscript:@"tintColor"];

  [v4 setObject:self->_accessibilityLabel forKeyedSubscript:@"accessibilityLabel"];

  return v4;
}

@end