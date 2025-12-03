@interface AXLanguageTag
+ (AXLanguageTag)tagWithDialects:(id)dialects range:(_NSRange)range content:(id)content predictedByTagger:(BOOL)tagger;
- (AXDialectMap)dialect;
- (AXDialectMap)preferredAmbiguousDialect;
- (AXDialectMap)preferredUnambiguousDialect;
- (BOOL)canBeSpokenByDialect:(id)dialect;
- (BOOL)canBeSpokenByLanguage:(id)language;
- (BOOL)hasAmbigiousDialects;
- (NSString)content;
- (NSString)contentSubstring;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addAmbiguousDialect:(id)dialect;
- (void)addAmbiguousDialects:(id)dialects;
- (void)addPredictedSecondaryDialects:(id)dialects;
- (void)addUnambiguousDialect:(id)dialect;
- (void)contentSubstring;
@end

@implementation AXLanguageTag

+ (AXLanguageTag)tagWithDialects:(id)dialects range:(_NSRange)range content:(id)content predictedByTagger:(BOOL)tagger
{
  taggerCopy = tagger;
  length = range.length;
  location = range.location;
  v27 = *MEMORY[0x1E69E9840];
  dialectsCopy = dialects;
  contentCopy = content;
  v12 = objc_alloc_init(AXLanguageTag);
  [(AXLanguageTag *)v12 setContent:contentCopy];
  [(AXLanguageTag *)v12 setRange:location, length];
  [(AXLanguageTag *)v12 setWasPredicted:taggerCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = dialectsCopy;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        langMap = [v18 langMap];
        isAmbiguous = [langMap isAmbiguous];

        if (isAmbiguous)
        {
          [(AXLanguageTag *)v12 addAmbiguousDialect:v18];
        }

        else
        {
          [(AXLanguageTag *)v12 addUnambiguousDialect:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  return v12;
}

- (BOOL)hasAmbigiousDialects
{
  ambiguousDialects = [(AXLanguageTag *)self ambiguousDialects];
  v3 = [ambiguousDialects count] != 0;

  return v3;
}

- (AXDialectMap)preferredAmbiguousDialect
{
  ambiguousDialects = [(AXLanguageTag *)self ambiguousDialects];
  v4 = [ambiguousDialects count];

  if (v4)
  {
    ambiguousDialects2 = [(AXLanguageTag *)self ambiguousDialects];
    v6 = [ambiguousDialects2 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AXDialectMap)preferredUnambiguousDialect
{
  unambiguousDialects = [(AXLanguageTag *)self unambiguousDialects];
  v4 = [unambiguousDialects count];

  if (v4)
  {
    unambiguousDialects2 = [(AXLanguageTag *)self unambiguousDialects];
    v6 = [unambiguousDialects2 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)contentSubstring
{
  range = [(AXLanguageTag *)self range];
  v5 = range + v4;
  content = [(AXLanguageTag *)self content];
  v7 = [content length];

  if (v5 > v7)
  {
    v8 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(AXLanguageTag *)self contentSubstring];
    }
  }

  range2 = [(AXLanguageTag *)self range];
  v11 = range2 + v10;
  content2 = [(AXLanguageTag *)self content];
  v13 = [content2 length];

  if (v11 <= v13)
  {
    content3 = [(AXLanguageTag *)self content];
    range3 = [(AXLanguageTag *)self range];
    v14 = [content3 substringWithRange:{range3, v17}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (AXDialectMap)dialect
{
  unambiguousDialects = [(AXLanguageTag *)self unambiguousDialects];

  if (unambiguousDialects)
  {
    preferredUnambiguousDialect = [(AXLanguageTag *)self preferredUnambiguousDialect];
  }

  else
  {
    preferredAmbiguousDialect = [(AXLanguageTag *)self preferredAmbiguousDialect];

    if (preferredAmbiguousDialect)
    {
      preferredUnambiguousDialect = [(AXLanguageTag *)self preferredAmbiguousDialect];
    }

    else
    {
      preferredUnambiguousDialect = 0;
    }
  }

  return preferredUnambiguousDialect;
}

- (void)addUnambiguousDialect:(id)dialect
{
  dialectCopy = dialect;
  unambiguousDialects = [(AXLanguageTag *)self unambiguousDialects];

  if (!unambiguousDialects)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(AXLanguageTag *)self setUnambiguousDialects:v6];
  }

  unambiguousDialects2 = [(AXLanguageTag *)self unambiguousDialects];
  [unambiguousDialects2 addObject:dialectCopy];
}

- (void)addAmbiguousDialect:(id)dialect
{
  dialectCopy = dialect;
  ambiguousDialects = [(AXLanguageTag *)self ambiguousDialects];

  if (!ambiguousDialects)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(AXLanguageTag *)self setAmbiguousDialects:v6];
  }

  ambiguousDialects2 = [(AXLanguageTag *)self ambiguousDialects];
  [ambiguousDialects2 addObject:dialectCopy];
}

- (void)addAmbiguousDialects:(id)dialects
{
  v14 = *MEMORY[0x1E69E9840];
  dialectsCopy = dialects;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [dialectsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(dialectsCopy);
        }

        [(AXLanguageTag *)self addAmbiguousDialect:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [dialectsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addPredictedSecondaryDialects:(id)dialects
{
  dialectsCopy = dialects;
  predictedSecondaryDialects = [(AXLanguageTag *)self predictedSecondaryDialects];

  if (!predictedSecondaryDialects)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(AXLanguageTag *)self setPredictedSecondaryDialects:v6];
  }

  predictedSecondaryDialects2 = [(AXLanguageTag *)self predictedSecondaryDialects];
  [predictedSecondaryDialects2 unionOrderedSet:dialectsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  dialect = [(AXLanguageTag *)self dialect];
  specificLanguageID = [dialect specificLanguageID];
  contentSubstring = [(AXLanguageTag *)self contentSubstring];
  v7 = [contentSubstring stringByReplacingOccurrencesOfString:@"\n" withString:@"$"];
  v8 = [v3 stringWithFormat:@"%@ - %@", specificLanguageID, v7];

  return v8;
}

- (BOOL)canBeSpokenByDialect:(id)dialect
{
  if (!dialect)
  {
    return 0;
  }

  dialectCopy = dialect;
  contentSubstring = [(AXLanguageTag *)self contentSubstring];
  v6 = [dialectCopy canSpeakString:contentSubstring allowsTransliteration:0];

  return v6;
}

- (BOOL)canBeSpokenByLanguage:(id)language
{
  if (!language)
  {
    return 0;
  }

  languageCopy = language;
  v5 = +[AXLanguageManager sharedInstance];
  v6 = [v5 dialectForLanguageID:languageCopy];

  LOBYTE(self) = [(AXLanguageTag *)self canBeSpokenByDialect:v6];
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 48) = self->_range;
  WeakRetained = objc_loadWeakRetained(&self->_content);
  objc_storeWeak((v5 + 16), WeakRetained);

  v7 = [(NSMutableOrderedSet *)self->_unambiguousDialects mutableCopyWithZone:zone];
  v8 = *(v5 + 24);
  *(v5 + 24) = v7;

  v9 = [(NSMutableOrderedSet *)self->_ambiguousDialects mutableCopyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  *(v5 + 8) = self->_wasPredicted;
  return v5;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSString)content
{
  WeakRetained = objc_loadWeakRetained(&self->_content);

  return WeakRetained;
}

- (void)contentSubstring
{
  v6 = *MEMORY[0x1E69E9840];
  content = [self content];
  v4 = 138412290;
  v5 = content;
  _os_log_fault_impl(&dword_18B15E000, a2, OS_LOG_TYPE_FAULT, "The range of the tagged chunk is greater than the content. Something went awry %@", &v4, 0xCu);
}

@end