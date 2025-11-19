@interface _INVocabularyItem
- (BOOL)_isSimilarEnoughToNotSync:(id)a3;
- (_INVocabularyItem)init;
- (_INVocabularyItem)initWithCoder:(id)a3;
- (_INVocabularyItem)initWithSpeakable:(id)a3;
- (_INVocabularyItem)initWithString:(id)a3 vocabularyIdentifier:(id)a4 requiresUserIdentification:(BOOL)a5;
- (id)_dictionaryForSaving;
- (id)_initWithUncheckedSpeakable:(id)a3;
- (id)_initWithUncheckedString:(id)a3 vocabularyIdentifier:(id)a4 requiresUserIdentification:(BOOL)a5;
- (id)_initWithVocabularyItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)validate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _INVocabularyItem

- (_INVocabularyItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_string"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_vocabularyIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_siriID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiresUserIdentification"];

  v9 = [v8 BOOLValue];
  v10 = [(_INVocabularyItem *)self initWithString:v5 vocabularyIdentifier:v6 requiresUserIdentification:v9];
  [(_INVocabularyItem *)v10 _setSiriID:v7];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  string = self->_string;
  v5 = a3;
  [v5 encodeObject:string forKey:@"_string"];
  [v5 encodeObject:self->_vocabularyIdentifier forKey:@"_vocabularyIdentifier"];
  v6 = [(_INVocabularyItem *)self _siriID];
  [v5 encodeObject:v6 forKey:@"_siriID"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresUserIdentification];
  [v5 encodeObject:v7 forKey:@"requiresUserIdentification"];
}

- (unint64_t)validate
{
  v3 = [(_INVocabularyItem *)self string];
  v4 = [v3 length];

  if (!v4)
  {
    return 2;
  }

  v5 = [(_INVocabularyItem *)self string];
  v6 = [v5 lengthOfBytesUsingEncoding:10];

  if (v6 > 0x400)
  {
    return 3;
  }

  v8 = [(_INVocabularyItem *)self vocabularyIdentifier];
  v9 = [v8 lengthOfBytesUsingEncoding:10];

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
  v3 = [(_INVocabularyItem *)self _siriID];
  v4 = [v3 UUIDString];

  v5 = [(_INVocabularyItem *)self string];
  v6 = [(_INVocabularyItem *)self vocabularyIdentifier];
  v7 = [(_INVocabularyItem *)self requiresUserIdentification];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  [v8 setObject:v5 forKey:@"string"];
  if (v4)
  {
    [v8 setObject:v4 forKey:@"_siriID"];
  }

  if (v6)
  {
    [v8 setObject:v6 forKey:@"vocabularyIdentifier"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v8 setObject:v9 forKey:@"requiresUserIdentification"];

  return v8;
}

- (BOOL)_isSimilarEnoughToNotSync:(id)a3
{
  v4 = a3;
  v5 = [(_INVocabularyItem *)self string];
  v6 = [v4 string];
  v7 = [(_INVocabularyItem *)self vocabularyIdentifier];
  v8 = [v4 vocabularyIdentifier];
  v9 = [(_INVocabularyItem *)self requiresUserIdentification];
  v10 = [v4 requiresUserIdentification];

  if ((v5 == v6 || [v5 isEqual:v6]) && (v7 == v8 || objc_msgSend(v7, "isEqual:", v8)))
  {
    v11 = v9 ^ v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [(_INVocabularyItem *)self _siriID];
  v4 = [v3 UUIDString];

  v5 = &stru_1F01E0850;
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = [(_INVocabularyItem *)self string];
  v10 = [(_INVocabularyItem *)self vocabularyIdentifier];
  v11 = [(_INVocabularyItem *)self requiresUserIdentification];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  v13 = [v7 stringWithFormat:@"<%p %@:%@>{string='%@', vocabularyIdentifier='%@', requiresUserIdentification='%@'}", self, v8, v6, v9, v10, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 _initWithVocabularyItem:self];
}

- (_INVocabularyItem)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use -initWithString: userInfo:{with a non-empty string, to create an _INVocabularyItem", MEMORY[0x1E695E0F8]}];
  objc_exception_throw(v2);
}

- (_INVocabularyItem)initWithSpeakable:(id)a3
{
  v4 = a3;
  v5 = [v4 spokenPhrase];
  if (v5)
  {
    v6 = [v4 spokenPhrase];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [v4 spokenPhrase];
      v9 = [v4 vocabularyIdentifier];
      self = [(_INVocabularyItem *)self initWithString:v8 vocabularyIdentifier:v9];

      v5 = self;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (_INVocabularyItem)initWithString:(id)a3 vocabularyIdentifier:(id)a4 requiresUserIdentification:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = _INVocabularyItem;
  v10 = [(_INVocabularyItem *)&v17 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [v8 copy];
  string = v10->_string;
  v10->_string = v11;

  v13 = [v9 copy];
  vocabularyIdentifier = v10->_vocabularyIdentifier;
  v10->_vocabularyIdentifier = v13;

  v10->_requiresUserIdentification = a5;
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

- (id)_initWithUncheckedSpeakable:(id)a3
{
  v4 = a3;
  v5 = [v4 spokenPhrase];
  v6 = [v4 vocabularyIdentifier];

  v7 = [(_INVocabularyItem *)self _initWithUncheckedString:v5 vocabularyIdentifier:v6 requiresUserIdentification:0];
  return v7;
}

- (id)_initWithUncheckedString:(id)a3 vocabularyIdentifier:(id)a4 requiresUserIdentification:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _INVocabularyItem;
  v10 = [(_INVocabularyItem *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    string = v10->_string;
    v10->_string = v11;

    v13 = [v9 copy];
    vocabularyIdentifier = v10->_vocabularyIdentifier;
    v10->_vocabularyIdentifier = v13;

    v10->_requiresUserIdentification = a5;
  }

  return v10;
}

- (id)_initWithVocabularyItem:(id)a3
{
  v4 = a3;
  v5 = [v4 string];
  v6 = [v4 vocabularyIdentifier];
  v7 = -[_INVocabularyItem _initWithUncheckedString:vocabularyIdentifier:requiresUserIdentification:](self, "_initWithUncheckedString:vocabularyIdentifier:requiresUserIdentification:", v5, v6, [v4 requiresUserIdentification]);

  if (v7 && [v7 validate] == 1)
  {
    v8 = [v4 _siriID];
    [v7 _setSiriID:v8];

    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end