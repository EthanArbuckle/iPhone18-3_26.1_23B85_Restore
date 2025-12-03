@interface _AXMSemanticTextCursor
- (BOOL)isCustomPattern;
- (BOOL)isDataDetector;
- (BOOL)isInLexicon;
- (BOOL)isOtherWord;
- (BOOL)isProperNoun;
- (BOOL)isPunctuation;
- (BOOL)isSentenceTerminator;
- (BOOL)isWhitespace;
- (BOOL)processAttribute:(id)attribute getSubstring:(id *)substring advanceCursor:(BOOL)cursor markAsSemanticError:(BOOL)error error:(id *)a7;
- (NSDictionary)currentAttributes;
- (_AXMSemanticTextCursor)initWithText:(id)text semanticText:(id)semanticText;
- (_NSRange)remainingRange;
- (void)markCurrentIndexAsSemanticErrorAndAdvanceCursor;
@end

@implementation _AXMSemanticTextCursor

- (_AXMSemanticTextCursor)initWithText:(id)text semanticText:(id)semanticText
{
  textCopy = text;
  semanticTextCopy = semanticText;
  v11.receiver = self;
  v11.super_class = _AXMSemanticTextCursor;
  v8 = [(_AXMSemanticTextCursor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_text, textCopy);
    objc_storeWeak(&v9->_semanticText, semanticTextCopy);
    v9->_currentIndex = 0;
    v9->_length = [textCopy length];
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

- (BOOL)processAttribute:(id)attribute getSubstring:(id *)substring advanceCursor:(BOOL)cursor markAsSemanticError:(BOOL)error error:(id *)a7
{
  errorCopy = error;
  cursorCopy = cursor;
  v45[1] = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  v42 = 0;
  v43 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_text);
  currentIndex = self->_currentIndex;
  remainingRange = [(_AXMSemanticTextCursor *)self remainingRange];
  v17 = [WeakRetained attribute:attributeCopy atIndex:currentIndex longestEffectiveRange:&v42 inRange:{remainingRange, v16}];

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
    v30 = [v25 stringWithFormat:@"Failed to advance cursor. No value for attribute: %@. remaining:[%@ %@]", attributeCopy, v26, v29];
    v45[0] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v32 = [v23 errorWithDomain:v24 code:1 userInfo:v31];

    goto LABEL_13;
  }

  if (substring)
  {
    v18 = objc_loadWeakRetained(&self->_text);
    string = [v18 string];
    *substring = [string substringWithRange:{v42, v43}];

    if ([v17 isEqual:@"DD:Address"])
    {
      v20 = objc_loadWeakRetained(&self->_semanticText);
      locale = [v20 locale];
      localeIdentifier = [locale localeIdentifier];
      if ([localeIdentifier isEqual:@"en_US"])
      {

LABEL_8:
        [AXMAddressFormatter replaceDirectionalAbbreviations:substring];
        goto LABEL_9;
      }

      v39 = objc_loadWeakRetained(&self->_semanticText);
      [v39 locale];
      v33 = v41 = v20;
      [v33 localeIdentifier];
      v34 = v40 = locale;
      v38 = [v34 isEqual:@"en_CA"];

      if (v38)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  if (errorCopy)
  {
    v35 = objc_loadWeakRetained(&self->_semanticText);
    [v35 addSemanticErrorWithRange:{v42, v43}];
  }

  v32 = 0;
  if (cursorCopy)
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
  currentAttributes = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [currentAttributes objectForKeyedSubscript:@"NLPToken"];
  v4 = v3 == @"NLP:OtherWord";

  return v4;
}

- (BOOL)isProperNoun
{
  currentAttributes = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [currentAttributes objectForKeyedSubscript:@"NLPToken"];

  v6 = v3 == @"NLP:PlaceName" || v3 == @"NLP:PersonalName" || v3 == @"NLP:OrganizationName";
  return v6;
}

- (BOOL)isWhitespace
{
  currentAttributes = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [currentAttributes objectForKeyedSubscript:@"NLPToken"];
  v4 = v3 == @"NLP:Whitespace";

  return v4;
}

- (BOOL)isPunctuation
{
  currentAttributes = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [currentAttributes objectForKeyedSubscript:@"NLPToken"];
  v4 = v3 == @"NLP:Punctuation";

  return v4;
}

- (BOOL)isSentenceTerminator
{
  currentAttributes = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [currentAttributes objectForKeyedSubscript:@"NLPToken"];
  v4 = v3 == @"NLP:SentenceTerminator";

  return v4;
}

- (BOOL)isInLexicon
{
  currentAttributes = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [currentAttributes objectForKeyedSubscript:@"IsInLexicon"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isCustomPattern
{
  currentAttributes = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [currentAttributes objectForKeyedSubscript:@"CustomPattern"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isDataDetector
{
  currentAttributes = [(_AXMSemanticTextCursor *)self currentAttributes];
  v3 = [currentAttributes objectForKeyedSubscript:@"DataDetector"];
  v4 = v3 != 0;

  return v4;
}

@end