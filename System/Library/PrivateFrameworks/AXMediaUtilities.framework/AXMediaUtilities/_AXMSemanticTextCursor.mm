@interface _AXMSemanticTextCursor
- (BOOL)isCustomPattern;
- (BOOL)isDataDetector;
- (BOOL)isInLexicon;
- (BOOL)isOtherWord;
- (BOOL)isProperNoun;
- (BOOL)isPunctuation;
- (BOOL)isSentenceTerminator;
- (BOOL)isWhitespace;
- (BOOL)processAttribute:(id)a3 getSubstring:(id *)a4 advanceCursor:(BOOL)a5 markAsSemanticError:(BOOL)a6 error:(id *)a7;
- (NSDictionary)currentAttributes;
- (_AXMSemanticTextCursor)initWithText:(id)a3 semanticText:(id)a4;
- (_NSRange)remainingRange;
- (void)markCurrentIndexAsSemanticErrorAndAdvanceCursor;
@end

@implementation _AXMSemanticTextCursor

- (_AXMSemanticTextCursor)initWithText:(id)a3 semanticText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _AXMSemanticTextCursor;
  v8 = [(_AXMSemanticTextCursor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_text, v6);
    objc_storeWeak(&v9->_semanticText, v7);
    v9->_currentIndex = 0;
    v9->_length = [v6 length];
  }

  return v9;
}

- (_NSRange)remainingRange
{
  if ([(_AXMSemanticTextCursor *)self isFinished])
  {
    v3 = 0;
    currentIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    currentIndex = self->_currentIndex;
    v3 = self->_length - currentIndex;
  }

  result.length = v3;
  result.location = currentIndex;
  return result;
}

- (BOOL)processAttribute:(id)a3 getSubstring:(id *)a4 advanceCursor:(BOOL)a5 markAsSemanticError:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v45[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v42 = 0;
  v43 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_text);
  currentIndex = self->_currentIndex;
  v15 = [(_AXMSemanticTextCursor *)self remainingRange];
  v17 = [WeakRetained attribute:v12 atIndex:currentIndex longestEffectiveRange:&v42 inRange:{v15, v16}];

  if (!v17)
  {
    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A250];
    v44 = *MEMORY[0x1E696A580];
    v25 = MEMORY[0x1E696AEC0];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_AXMSemanticTextCursor remainingRange](self, "remainingRange")}];
    v27 = MEMORY[0x1E696AD98];
    [(_AXMSemanticTextCursor *)self remainingRange];
    v29 = [v27 numberWithUnsignedInteger:v28];
    v30 = [v25 stringWithFormat:@"Failed to advance cursor. No value for attribute: %@. remaining:[%@ %@]", v12, v26, v29];
    v45[0] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v32 = [v23 errorWithDomain:v24 code:1 userInfo:v31];

    goto LABEL_13;
  }

  if (a4)
  {
    v18 = objc_loadWeakRetained(&self->_text);
    v19 = [v18 string];
    *a4 = [v19 substringWithRange:{v42, v43}];

    if ([v17 isEqual:@"DD:Address"])
    {
      v20 = objc_loadWeakRetained(&self->_semanticText);
      v21 = [v20 locale];
      v22 = [v21 localeIdentifier];
      if ([v22 isEqual:@"en_US"])
      {

LABEL_8:
        [AXMAddressFormatter replaceDirectionalAbbreviations:a4];
        goto LABEL_9;
      }

      v39 = objc_loadWeakRetained(&self->_semanticText);
      [v39 locale];
      v33 = v41 = v20;
      [v33 localeIdentifier];
      v34 = v40 = v21;
      v38 = [v34 isEqual:@"en_CA"];

      if (v38)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  if (v8)
  {
    v35 = objc_loadWeakRetained(&self->_semanticText);
    [v35 addSemanticErrorWithRange:{v42, v43}];
  }

  v32 = 0;
  if (v9)
  {
    self->_currentIndex += v43;
  }

LABEL_13:
  if (a7)
  {
    v36 = v32;
    *a7 = v32;
  }

  return v32 == 0;
}

- (void)markCurrentIndexAsSemanticErrorAndAdvanceCursor
{
  WeakRetained = objc_loadWeakRetained(&self->_semanticText);
  [WeakRetained addSemanticErrorWithRange:{self->_currentIndex, 1}];

  [(_AXMSemanticTextCursor *)self advance];
}

- (NSDictionary)currentAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_text);
  v4 = [WeakRetained attributesAtIndex:self->_currentIndex effectiveRange:0];

  return v4;
}

- (BOOL)isOtherWord
{
  v2 = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [v2 objectForKeyedSubscript:@"NLPToken"];
  v4 = v3 == @"NLP:OtherWord";

  return v4;
}

- (BOOL)isProperNoun
{
  v2 = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [v2 objectForKeyedSubscript:@"NLPToken"];

  v6 = v3 == @"NLP:PlaceName" || v3 == @"NLP:PersonalName" || v3 == @"NLP:OrganizationName";
  return v6;
}

- (BOOL)isWhitespace
{
  v2 = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [v2 objectForKeyedSubscript:@"NLPToken"];
  v4 = v3 == @"NLP:Whitespace";

  return v4;
}

- (BOOL)isPunctuation
{
  v2 = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [v2 objectForKeyedSubscript:@"NLPToken"];
  v4 = v3 == @"NLP:Punctuation";

  return v4;
}

- (BOOL)isSentenceTerminator
{
  v2 = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [v2 objectForKeyedSubscript:@"NLPToken"];
  v4 = v3 == @"NLP:SentenceTerminator";

  return v4;
}

- (BOOL)isInLexicon
{
  v2 = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [v2 objectForKeyedSubscript:@"IsInLexicon"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isCustomPattern
{
  v2 = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [v2 objectForKeyedSubscript:@"CustomPattern"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isDataDetector
{
  v2 = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [v2 objectForKeyedSubscript:@"DataDetector"];
  v4 = v3 != 0;

  return v4;
}

@end