@interface AXLanguageTag
+ (AXLanguageTag)tagWithDialects:(id)a3 range:(_NSRange)a4 content:(id)a5 predictedByTagger:(BOOL)a6;
- (AXDialectMap)dialect;
- (AXDialectMap)preferredAmbiguousDialect;
- (AXDialectMap)preferredUnambiguousDialect;
- (BOOL)canBeSpokenByDialect:(id)a3;
- (BOOL)canBeSpokenByLanguage:(id)a3;
- (BOOL)hasAmbigiousDialects;
- (NSString)content;
- (NSString)contentSubstring;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addAmbiguousDialect:(id)a3;
- (void)addAmbiguousDialects:(id)a3;
- (void)addPredictedSecondaryDialects:(id)a3;
- (void)addUnambiguousDialect:(id)a3;
- (void)contentSubstring;
@end

@implementation AXLanguageTag

+ (AXLanguageTag)tagWithDialects:(id)a3 range:(_NSRange)a4 content:(id)a5 predictedByTagger:(BOOL)a6
{
  v6 = a6;
  length = a4.length;
  location = a4.location;
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = objc_alloc_init(AXLanguageTag);
  [(AXLanguageTag *)v12 setContent:v11];
  [(AXLanguageTag *)v12 setRange:location, length];
  [(AXLanguageTag *)v12 setWasPredicted:v6];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v10;
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
        v19 = [v18 langMap];
        v20 = [v19 isAmbiguous];

        if (v20)
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
  v2 = [(AXLanguageTag *)self ambiguousDialects];
  v3 = [v2 count] != 0;

  return v3;
}

- (AXDialectMap)preferredAmbiguousDialect
{
  v3 = [(AXLanguageTag *)self ambiguousDialects];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AXLanguageTag *)self ambiguousDialects];
    v6 = [v5 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AXDialectMap)preferredUnambiguousDialect
{
  v3 = [(AXLanguageTag *)self unambiguousDialects];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AXLanguageTag *)self unambiguousDialects];
    v6 = [v5 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)contentSubstring
{
  v3 = [(AXLanguageTag *)self range];
  v5 = v3 + v4;
  v6 = [(AXLanguageTag *)self content];
  v7 = [v6 length];

  if (v5 > v7)
  {
    v8 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(AXLanguageTag *)self contentSubstring];
    }
  }

  v9 = [(AXLanguageTag *)self range];
  v11 = v9 + v10;
  v12 = [(AXLanguageTag *)self content];
  v13 = [v12 length];

  if (v11 <= v13)
  {
    v15 = [(AXLanguageTag *)self content];
    v16 = [(AXLanguageTag *)self range];
    v14 = [v15 substringWithRange:{v16, v17}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (AXDialectMap)dialect
{
  v3 = [(AXLanguageTag *)self unambiguousDialects];

  if (v3)
  {
    v4 = [(AXLanguageTag *)self preferredUnambiguousDialect];
  }

  else
  {
    v5 = [(AXLanguageTag *)self preferredAmbiguousDialect];

    if (v5)
    {
      v4 = [(AXLanguageTag *)self preferredAmbiguousDialect];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)addUnambiguousDialect:(id)a3
{
  v4 = a3;
  v5 = [(AXLanguageTag *)self unambiguousDialects];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(AXLanguageTag *)self setUnambiguousDialects:v6];
  }

  v7 = [(AXLanguageTag *)self unambiguousDialects];
  [v7 addObject:v4];
}

- (void)addAmbiguousDialect:(id)a3
{
  v4 = a3;
  v5 = [(AXLanguageTag *)self ambiguousDialects];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(AXLanguageTag *)self setAmbiguousDialects:v6];
  }

  v7 = [(AXLanguageTag *)self ambiguousDialects];
  [v7 addObject:v4];
}

- (void)addAmbiguousDialects:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(AXLanguageTag *)self addAmbiguousDialect:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addPredictedSecondaryDialects:(id)a3
{
  v4 = a3;
  v5 = [(AXLanguageTag *)self predictedSecondaryDialects];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(AXLanguageTag *)self setPredictedSecondaryDialects:v6];
  }

  v7 = [(AXLanguageTag *)self predictedSecondaryDialects];
  [v7 unionOrderedSet:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXLanguageTag *)self dialect];
  v5 = [v4 specificLanguageID];
  v6 = [(AXLanguageTag *)self contentSubstring];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"$"];
  v8 = [v3 stringWithFormat:@"%@ - %@", v5, v7];

  return v8;
}

- (BOOL)canBeSpokenByDialect:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(AXLanguageTag *)self contentSubstring];
  v6 = [v4 canSpeakString:v5 allowsTransliteration:0];

  return v6;
}

- (BOOL)canBeSpokenByLanguage:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = +[AXLanguageManager sharedInstance];
  v6 = [v5 dialectForLanguageID:v4];

  LOBYTE(self) = [(AXLanguageTag *)self canBeSpokenByDialect:v6];
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 48) = self->_range;
  WeakRetained = objc_loadWeakRetained(&self->_content);
  objc_storeWeak((v5 + 16), WeakRetained);

  v7 = [(NSMutableOrderedSet *)self->_unambiguousDialects mutableCopyWithZone:a3];
  v8 = *(v5 + 24);
  *(v5 + 24) = v7;

  v9 = [(NSMutableOrderedSet *)self->_ambiguousDialects mutableCopyWithZone:a3];
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
  v3 = [a1 content];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_18B15E000, a2, OS_LOG_TYPE_FAULT, "The range of the tagged chunk is greater than the content. Something went awry %@", &v4, 0xCu);
}

@end