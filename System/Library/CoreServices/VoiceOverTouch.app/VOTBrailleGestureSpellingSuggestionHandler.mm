@interface VOTBrailleGestureSpellingSuggestionHandler
- (id)_generateSpellingSuggestionsForResponder:(id)responder languageCode:(id)code;
- (id)_spellingSuggestionsForWord:(id)word languageCode:(id)code;
- (id)_updateRangeToReplaceInContext:(id)context selectedRange:(_NSRange)range;
- (id)applySpellingSuggestionForResponder:(id)responder languageCode:(id)code;
- (id)currentSpellingSuggestion;
- (void)clearSpellingSuggestions;
- (void)selectNextSpellingSuggestionInDirection:(int64_t)direction responder:(id)responder languageCode:(id)code;
@end

@implementation VOTBrailleGestureSpellingSuggestionHandler

- (id)_updateRangeToReplaceInContext:(id)context selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10003DAA8;
  v15 = sub_10003DAB8;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003DAC0;
  v10[3] = &unk_1001C8348;
  v10[6] = location;
  v10[7] = length;
  v10[4] = self;
  v10[5] = &v11;
  [contextCopy enumerateSubstringsInRange:0 options:objc_msgSend(contextCopy usingBlock:{"length"), 1027, v10}];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)_spellingSuggestionsForWord:(id)word languageCode:(id)code
{
  wordCopy = word;
  codeCopy = code;
  if (wordCopy)
  {
    textChecker = self->_textChecker;
    if (!textChecker)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v9 = qword_1001FEBF0;
      v19 = qword_1001FEBF0;
      if (!qword_1001FEBF0)
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10003E1A8;
        v15[3] = &unk_1001C8370;
        v15[4] = &v16;
        sub_10003E1A8(v15);
        v9 = v17[3];
      }

      v10 = v9;
      _Block_object_dispose(&v16, 8);
      v11 = objc_alloc_init(v9);
      v12 = self->_textChecker;
      self->_textChecker = v11;

      textChecker = self->_textChecker;
    }

    v13 = -[UITextChecker guessesForWordRange:inString:language:](textChecker, "guessesForWordRange:inString:language:", 0, [wordCopy length], wordCopy, codeCopy);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_generateSpellingSuggestionsForResponder:(id)responder languageCode:(id)code
{
  responderCopy = responder;
  codeCopy = code;
  value = [responderCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [value string];

    value = string;
  }

  selectedTextRange = [responderCopy selectedTextRange];
  v12 = [(VOTBrailleGestureSpellingSuggestionHandler *)self _updateRangeToReplaceInContext:value selectedRange:selectedTextRange, v11];
  v13 = [(VOTBrailleGestureSpellingSuggestionHandler *)self _spellingSuggestionsForWord:v12 languageCode:codeCopy];

  if (v12)
  {
    if (v13)
    {
      v17 = v12;
      v14 = [NSArray arrayWithObjects:&v17 count:1];
      v15 = [v14 arrayByAddingObjectsFromArray:v13];
    }

    else
    {
      v18 = v12;
      v15 = [NSArray arrayWithObjects:&v18 count:1];
    }
  }

  else
  {

    v15 = &__NSArray0__struct;
  }

  return v15;
}

- (void)selectNextSpellingSuggestionInDirection:(int64_t)direction responder:(id)responder languageCode:(id)code
{
  responderCopy = responder;
  codeCopy = code;
  spellingSuggestions = self->_spellingSuggestions;
  if (!spellingSuggestions)
  {
    v10 = [(VOTBrailleGestureSpellingSuggestionHandler *)self _generateSpellingSuggestionsForResponder:responderCopy languageCode:codeCopy];
    v11 = self->_spellingSuggestions;
    self->_spellingSuggestions = v10;

    self->_spellingSuggestionIndex = 0;
    spellingSuggestions = self->_spellingSuggestions;
  }

  if ([(NSArray *)spellingSuggestions count])
  {
    if (direction == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v13 = self->_spellingSuggestionIndex + v12;
    self->_spellingSuggestionIndex = v13;
    v14 = [(NSArray *)self->_spellingSuggestions count];
    if ((v13 & 0x8000000000000000) != 0)
    {
      v15 = v14 - 1;
    }

    else
    {
      if (v13 < v14)
      {
        goto LABEL_12;
      }

      v15 = 0;
    }

    self->_spellingSuggestionIndex = v15;
  }

LABEL_12:
}

- (id)currentSpellingSuggestion
{
  spellingSuggestionIndex = self->_spellingSuggestionIndex;
  if ((spellingSuggestionIndex & 0x8000000000000000) != 0 || spellingSuggestionIndex >= [(NSArray *)self->_spellingSuggestions count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_spellingSuggestions objectAtIndexedSubscript:self->_spellingSuggestionIndex];
  }

  return v4;
}

- (id)applySpellingSuggestionForResponder:(id)responder languageCode:(id)code
{
  responderCopy = responder;
  currentSpellingSuggestion = [(VOTBrailleGestureSpellingSuggestionHandler *)self currentSpellingSuggestion];
  if (currentSpellingSuggestion)
  {
    [responderCopy setSelectedTextRange:self->_rangeToReplace.location refreshBraille:{self->_rangeToReplace.length, 1}];
    [responderCopy performTextOperation:kAXTextOperationActionDelete];
    v7 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromRange(self->_rangeToReplace);
      v12 = 138478083;
      v13 = v11;
      v14 = 2113;
      v15 = currentSpellingSuggestion;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Replaced word at range %{private}@ with %{private}@", &v12, 0x16u);
    }

    [responderCopy insertText:currentSpellingSuggestion source:3];
    v8 = [(NSArray *)self->_spellingSuggestions objectAtIndexedSubscript:self->_spellingSuggestionIndex];
    self->_rangeToReplace.length = [v8 length];

    v9 = currentSpellingSuggestion;
  }

  return currentSpellingSuggestion;
}

- (void)clearSpellingSuggestions
{
  spellingSuggestions = self->_spellingSuggestions;
  self->_spellingSuggestions = 0;

  self->_spellingSuggestionIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_rangeToReplace = xmmword_10017E1D0;
}

@end