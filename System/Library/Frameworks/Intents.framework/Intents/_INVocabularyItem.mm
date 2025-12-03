@interface _INVocabularyItem
- (BOOL)_isSimilarEnoughToNotSync:(id)sync;
- (_INVocabularyItem)init;
- (_INVocabularyItem)initWithCoder:(id)coder;
- (_INVocabularyItem)initWithSpeakable:(id)speakable;
- (_INVocabularyItem)initWithString:(id)string vocabularyIdentifier:(id)identifier requiresUserIdentification:(BOOL)identification;
- (id)_dictionaryForSaving;
- (id)_initWithUncheckedSpeakable:(id)speakable;
- (id)_initWithUncheckedString:(id)string vocabularyIdentifier:(id)identifier requiresUserIdentification:(BOOL)identification;
- (id)_initWithVocabularyItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)validate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _INVocabularyItem

- (_INVocabularyItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_string"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_vocabularyIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_siriID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiresUserIdentification"];

  bOOLValue = [v8 BOOLValue];
  v10 = [(_INVocabularyItem *)self initWithString:v5 vocabularyIdentifier:v6 requiresUserIdentification:bOOLValue];
  [(_INVocabularyItem *)v10 _setSiriID:v7];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  string = self->_string;
  coderCopy = coder;
  [coderCopy encodeObject:string forKey:@"_string"];
  [coderCopy encodeObject:self->_vocabularyIdentifier forKey:@"_vocabularyIdentifier"];
  _siriID = [(_INVocabularyItem *)self _siriID];
  [coderCopy encodeObject:_siriID forKey:@"_siriID"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresUserIdentification];
  [coderCopy encodeObject:v7 forKey:@"requiresUserIdentification"];
}

- (unint64_t)validate
{
  string = [(_INVocabularyItem *)self string];
  v4 = [string length];

  if (!v4)
  {
    return 2;
  }

  string2 = [(_INVocabularyItem *)self string];
  v6 = [string2 lengthOfBytesUsingEncoding:10];

  if (v6 > 0x400)
  {
    return 3;
  }

  vocabularyIdentifier = [(_INVocabularyItem *)self vocabularyIdentifier];
  v9 = [vocabularyIdentifier lengthOfBytesUsingEncoding:10];

  if (v9 <= 0x400)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (id)_dictionaryForSaving
{
  _siriID = [(_INVocabularyItem *)self _siriID];
  uUIDString = [_siriID UUIDString];

  string = [(_INVocabularyItem *)self string];
  vocabularyIdentifier = [(_INVocabularyItem *)self vocabularyIdentifier];
  requiresUserIdentification = [(_INVocabularyItem *)self requiresUserIdentification];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  [v8 setObject:string forKey:@"string"];
  if (uUIDString)
  {
    [v8 setObject:uUIDString forKey:@"_siriID"];
  }

  if (vocabularyIdentifier)
  {
    [v8 setObject:vocabularyIdentifier forKey:@"vocabularyIdentifier"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:requiresUserIdentification];
  [v8 setObject:v9 forKey:@"requiresUserIdentification"];

  return v8;
}

- (BOOL)_isSimilarEnoughToNotSync:(id)sync
{
  syncCopy = sync;
  string = [(_INVocabularyItem *)self string];
  string2 = [syncCopy string];
  vocabularyIdentifier = [(_INVocabularyItem *)self vocabularyIdentifier];
  vocabularyIdentifier2 = [syncCopy vocabularyIdentifier];
  requiresUserIdentification = [(_INVocabularyItem *)self requiresUserIdentification];
  requiresUserIdentification2 = [syncCopy requiresUserIdentification];

  if ((string == string2 || [string isEqual:string2]) && (vocabularyIdentifier == vocabularyIdentifier2 || objc_msgSend(vocabularyIdentifier, "isEqual:", vocabularyIdentifier2)))
  {
    v11 = requiresUserIdentification ^ requiresUserIdentification2 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  _siriID = [(_INVocabularyItem *)self _siriID];
  uUIDString = [_siriID UUIDString];

  v5 = &stru_1F01E0850;
  if (uUIDString)
  {
    v5 = uUIDString;
  }

  v6 = v5;

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  string = [(_INVocabularyItem *)self string];
  vocabularyIdentifier = [(_INVocabularyItem *)self vocabularyIdentifier];
  requiresUserIdentification = [(_INVocabularyItem *)self requiresUserIdentification];
  v12 = @"NO";
  if (requiresUserIdentification)
  {
    v12 = @"YES";
  }

  v13 = [v7 stringWithFormat:@"<%p %@:%@>{string='%@', vocabularyIdentifier='%@', requiresUserIdentification='%@'}", self, v8, v6, string, vocabularyIdentifier, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 _initWithVocabularyItem:self];
}

- (_INVocabularyItem)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use -initWithString: userInfo:{with a non-empty string, to create an _INVocabularyItem", MEMORY[0x1E695E0F8]}];
  objc_exception_throw(v2);
}

- (_INVocabularyItem)initWithSpeakable:(id)speakable
{
  speakableCopy = speakable;
  selfCopy = [speakableCopy spokenPhrase];
  if (selfCopy)
  {
    spokenPhrase = [speakableCopy spokenPhrase];
    v7 = [spokenPhrase length];

    if (v7)
    {
      spokenPhrase2 = [speakableCopy spokenPhrase];
      vocabularyIdentifier = [speakableCopy vocabularyIdentifier];
      self = [(_INVocabularyItem *)self initWithString:spokenPhrase2 vocabularyIdentifier:vocabularyIdentifier];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (_INVocabularyItem)initWithString:(id)string vocabularyIdentifier:(id)identifier requiresUserIdentification:(BOOL)identification
{
  stringCopy = string;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = _INVocabularyItem;
  v10 = [(_INVocabularyItem *)&v17 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [stringCopy copy];
  string = v10->_string;
  v10->_string = v11;

  v13 = [identifierCopy copy];
  vocabularyIdentifier = v10->_vocabularyIdentifier;
  v10->_vocabularyIdentifier = v13;

  v10->_requiresUserIdentification = identification;
  if ([(_INVocabularyItem *)v10 validate]== 1)
  {
    v15 = v10;
  }

  else
  {
LABEL_4:
    v15 = 0;
  }

  return v15;
}

- (id)_initWithUncheckedSpeakable:(id)speakable
{
  speakableCopy = speakable;
  spokenPhrase = [speakableCopy spokenPhrase];
  vocabularyIdentifier = [speakableCopy vocabularyIdentifier];

  v7 = [(_INVocabularyItem *)self _initWithUncheckedString:spokenPhrase vocabularyIdentifier:vocabularyIdentifier requiresUserIdentification:0];
  return v7;
}

- (id)_initWithUncheckedString:(id)string vocabularyIdentifier:(id)identifier requiresUserIdentification:(BOOL)identification
{
  stringCopy = string;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = _INVocabularyItem;
  v10 = [(_INVocabularyItem *)&v16 init];
  if (v10)
  {
    v11 = [stringCopy copy];
    string = v10->_string;
    v10->_string = v11;

    v13 = [identifierCopy copy];
    vocabularyIdentifier = v10->_vocabularyIdentifier;
    v10->_vocabularyIdentifier = v13;

    v10->_requiresUserIdentification = identification;
  }

  return v10;
}

- (id)_initWithVocabularyItem:(id)item
{
  itemCopy = item;
  string = [itemCopy string];
  vocabularyIdentifier = [itemCopy vocabularyIdentifier];
  v7 = -[_INVocabularyItem _initWithUncheckedString:vocabularyIdentifier:requiresUserIdentification:](self, "_initWithUncheckedString:vocabularyIdentifier:requiresUserIdentification:", string, vocabularyIdentifier, [itemCopy requiresUserIdentification]);

  if (v7 && [v7 validate] == 1)
  {
    _siriID = [itemCopy _siriID];
    [v7 _setSiriID:_siriID];

    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end