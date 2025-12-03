@interface INCodableEnumValueSynonym
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INCodableEnum)_codableEnum;
- (INCodableEnumValue)_codableEnumValue;
- (INCodableEnumValueSynonym)initWithCoder:(id)coder;
- (NSString)localizedPronunciationHint;
- (NSString)localizedSynonym;
- (id)__INCodableEnumPronunciationHintIDKey;
- (id)__INCodableEnumPronunciationHintKey;
- (id)__INCodableEnumSynonymIDKey;
- (id)__INCodableEnumSynonymKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedPronunciationHintForLanguage:(id)language;
- (id)localizedPronunciationHintWithLocalizer:(id)localizer;
- (id)localizedSynonymForLanguage:(id)language;
- (id)localizedSynonymWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableEnumValueSynonym

- (INCodableEnumValue)_codableEnumValue
{
  WeakRetained = objc_loadWeakRetained(&self->_codableEnumValue);

  return WeakRetained;
}

- (INCodableEnumValueSynonym)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = INCodableEnumValueSynonym;
  v5 = [(INCodableEnumValueSynonym *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"synonym"];
    [(INCodableEnumValueSynonym *)v5 setSynonym:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"synonymLocID"];
    [(INCodableEnumValueSynonym *)v5 setSynonymLocID:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"pronunciationHint"];
    [(INCodableEnumValueSynonym *)v5 setPronunciationHint:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pronunciationHintLocID"];
    [(INCodableEnumValueSynonym *)v5 setPronunciationHintLocID:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_codableEnumValue"];
    [(INCodableEnumValueSynonym *)v5 _setCodableEnumValue:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  synonym = [(INCodableEnumValueSynonym *)self synonym];
  [coderCopy encodeObject:synonym forKey:@"synonym"];

  synonymLocID = [(INCodableEnumValueSynonym *)self synonymLocID];
  [coderCopy encodeObject:synonymLocID forKey:@"synonymLocID"];

  pronunciationHint = [(INCodableEnumValueSynonym *)self pronunciationHint];
  [coderCopy encodeObject:pronunciationHint forKey:@"pronunciationHint"];

  pronunciationHintLocID = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  [coderCopy encodeObject:pronunciationHintLocID forKey:@"pronunciationHintLocID"];

  _codableEnumValue = [(INCodableEnumValueSynonym *)self _codableEnumValue];
  [coderCopy encodeConditionalObject:_codableEnumValue forKey:@"_codableEnumValue"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v5 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  dictionary = [v5 dictionary];
  synonym = [(INCodableEnumValueSynonym *)self synonym];
  v9 = [synonym intents_encodeForPlistRepresentationWithParameters:parametersCopy];
  [dictionary intents_setPlistSafeObject:v9 forKey:@"synonym"];

  synonymLocID = [(INCodableEnumValueSynonym *)self synonymLocID];
  [dictionary intents_setPlistSafeObject:synonymLocID forKey:@"synonymLocID"];

  pronunciationHint = [(INCodableEnumValueSynonym *)self pronunciationHint];
  v12 = [pronunciationHint intents_encodeForPlistRepresentationWithParameters:parametersCopy];

  [dictionary intents_setPlistSafeObject:v12 forKey:@"pronunciationHint"];
  pronunciationHintLocID = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  [dictionary intents_setPlistSafeObject:pronunciationHintLocID forKey:@"pronunciationHintLocID"];

  v14 = [dictionary copy];

  return v14;
}

- (INCodableEnum)_codableEnum
{
  _codableEnumValue = [(INCodableEnumValueSynonym *)self _codableEnumValue];
  _codableEnum = [_codableEnumValue _codableEnum];

  return _codableEnum;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v24[4] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  __INCodableEnumSynonymKey = [(INCodableEnumValueSynonym *)self __INCodableEnumSynonymKey];
  v23[0] = __INCodableEnumSynonymKey;
  null = [(INCodableEnumValueSynonym *)self localizedSynonymWithLocalizer:localizerCopy];
  v6 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v24[0] = null;
  __INCodableEnumSynonymIDKey = [(INCodableEnumValueSynonym *)self __INCodableEnumSynonymIDKey];
  v23[1] = __INCodableEnumSynonymIDKey;
  synonymLocID = [(INCodableEnumValueSynonym *)self synonymLocID];
  null2 = synonymLocID;
  if (!synonymLocID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  __INCodableEnumPronunciationHintKey = [(INCodableEnumValueSynonym *)self __INCodableEnumPronunciationHintKey];
  v23[2] = __INCodableEnumPronunciationHintKey;
  v22 = localizerCopy;
  v10 = [(INCodableEnumValueSynonym *)self localizedPronunciationHintWithLocalizer:localizerCopy];
  null3 = v10;
  if (!v10)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  __INCodableEnumPronunciationHintIDKey = [(INCodableEnumValueSynonym *)self __INCodableEnumPronunciationHintIDKey];
  v23[3] = __INCodableEnumPronunciationHintIDKey;
  pronunciationHintLocID = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  null4 = pronunciationHintLocID;
  if (!pronunciationHintLocID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  if (!pronunciationHintLocID)
  {
  }

  if (!v10)
  {
  }

  if (!synonymLocID)
  {
  }

  if (!v6)
  {
  }

  if_dictionaryWithNonEmptyValues = [v15 if_dictionaryWithNonEmptyValues];

  v17 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValueSynonym *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __INCodableEnumSynonymKey = [(INCodableEnumValueSynonym *)self __INCodableEnumSynonymKey];
  v6 = [dictionaryCopy objectForKey:__INCodableEnumSynonymKey];
  [(INCodableEnumValueSynonym *)self setSynonym:v6];

  __INCodableEnumSynonymIDKey = [(INCodableEnumValueSynonym *)self __INCodableEnumSynonymIDKey];
  v8 = [dictionaryCopy objectForKey:__INCodableEnumSynonymIDKey];
  [(INCodableEnumValueSynonym *)self setSynonymLocID:v8];

  __INCodableEnumPronunciationHintKey = [(INCodableEnumValueSynonym *)self __INCodableEnumPronunciationHintKey];
  v10 = [dictionaryCopy objectForKey:__INCodableEnumPronunciationHintKey];
  [(INCodableEnumValueSynonym *)self setPronunciationHint:v10];

  __INCodableEnumPronunciationHintIDKey = [(INCodableEnumValueSynonym *)self __INCodableEnumPronunciationHintIDKey];
  v11 = [dictionaryCopy objectForKey:__INCodableEnumPronunciationHintIDKey];

  [(INCodableEnumValueSynonym *)self setPronunciationHintLocID:v11];
}

- (id)localizedPronunciationHintWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  _codableEnumValue = [(INCodableEnumValueSynonym *)self _codableEnumValue];
  _codableEnum = [_codableEnumValue _codableEnum];
  pronunciationHintLocID = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  pronunciationHint = [(INCodableEnumValueSynonym *)self pronunciationHint];
  _localizationTable = [_codableEnum _localizationTable];
  v10 = INLocalizedStringFromCodable(pronunciationHintLocID, pronunciationHint, _localizationTable, localizerCopy, 0);

  return v10;
}

- (id)localizedPronunciationHintForLanguage:(id)language
{
  v4 = [INStringLocalizer localizerForLanguage:language];
  v5 = [(INCodableEnumValueSynonym *)self localizedPronunciationHintWithLocalizer:v4];

  return v5;
}

- (NSString)localizedPronunciationHint
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValueSynonym *)self localizedPronunciationHintWithLocalizer:v3];

  return v4;
}

- (id)localizedSynonymWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  _codableEnumValue = [(INCodableEnumValueSynonym *)self _codableEnumValue];
  _codableEnum = [_codableEnumValue _codableEnum];
  synonymLocID = [(INCodableEnumValueSynonym *)self synonymLocID];
  synonym = [(INCodableEnumValueSynonym *)self synonym];
  _localizationTable = [_codableEnum _localizationTable];
  v10 = INLocalizedStringFromCodable(synonymLocID, synonym, _localizationTable, localizerCopy, 0);

  return v10;
}

- (id)localizedSynonymForLanguage:(id)language
{
  v4 = [INStringLocalizer localizerForLanguage:language];
  v5 = [(INCodableEnumValueSynonym *)self localizedSynonymWithLocalizer:v4];

  return v5;
}

- (NSString)localizedSynonym
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValueSynonym *)self localizedSynonymWithLocalizer:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    synonym = [(INCodableEnumValueSynonym *)self synonym];
    synonym2 = [equalCopy synonym];
    v7 = synonym;
    v8 = synonym2;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = 0;
      v11 = v8;
      v12 = v7;
      if (!v7 || !v8)
      {
        goto LABEL_29;
      }

      v13 = [v7 isEqualToString:v8];

      if (!v13)
      {
        v10 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    pronunciationHint = [(INCodableEnumValueSynonym *)self pronunciationHint];
    pronunciationHint2 = [equalCopy pronunciationHint];
    v12 = pronunciationHint;
    v16 = pronunciationHint2;
    v11 = v16;
    if (v12 == v16)
    {
    }

    else
    {
      v10 = 0;
      v17 = v16;
      v18 = v12;
      if (!v12 || !v16)
      {
        goto LABEL_28;
      }

      v19 = [v12 isEqualToString:v16];

      if (!v19)
      {
        v10 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    synonymLocID = [(INCodableEnumValueSynonym *)self synonymLocID];
    synonymLocID2 = [equalCopy synonymLocID];
    v18 = synonymLocID;
    v22 = synonymLocID2;
    v17 = v22;
    v29 = v18;
    if (v18 == v22)
    {
    }

    else
    {
      v10 = 0;
      v23 = v22;
      if (!v18 || !v22)
      {
LABEL_27:

        v18 = v29;
        goto LABEL_28;
      }

      v24 = [v18 isEqualToString:v22];

      if (!v24)
      {
        v10 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    pronunciationHintLocID = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
    pronunciationHintLocID2 = [equalCopy pronunciationHintLocID];
    v18 = pronunciationHintLocID;
    v27 = pronunciationHintLocID2;
    v23 = v27;
    if (v18 == v27)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v18 && v27)
      {
        v10 = [v18 isEqualToString:v27];
      }
    }

    goto LABEL_27;
  }

  v10 = 0;
LABEL_31:

  return v10;
}

- (unint64_t)hash
{
  synonym = [(INCodableEnumValueSynonym *)self synonym];
  v4 = [synonym hash];
  synonymLocID = [(INCodableEnumValueSynonym *)self synonymLocID];
  v6 = [synonymLocID hash] ^ v4;
  pronunciationHint = [(INCodableEnumValueSynonym *)self pronunciationHint];
  v8 = [pronunciationHint hash];
  pronunciationHintLocID = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  v10 = v8 ^ [pronunciationHintLocID hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[INCodableEnumValueSynonym allocWithZone:?]];
  pronunciationHint = [(INCodableEnumValueSynonym *)self pronunciationHint];
  [(INCodableEnumValueSynonym *)v4 setPronunciationHint:pronunciationHint];

  pronunciationHintLocID = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  [(INCodableEnumValueSynonym *)v4 setPronunciationHintLocID:pronunciationHintLocID];

  synonym = [(INCodableEnumValueSynonym *)self synonym];
  [(INCodableEnumValueSynonym *)v4 setSynonym:synonym];

  synonymLocID = [(INCodableEnumValueSynonym *)self synonymLocID];
  [(INCodableEnumValueSynonym *)v4 setSynonymLocID:synonymLocID];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v5 = objc_alloc_init(INCodableEnumValueSynonym);
  v6 = [representationCopy intents_stringForKey:@"synonymLocID"];
  [(INCodableEnumValueSynonym *)v5 setSynonymLocID:v6];

  v7 = [representationCopy intents_stringForKey:@"pronunciationHintLocID"];
  [(INCodableEnumValueSynonym *)v5 setPronunciationHintLocID:v7];

  v8 = [representationCopy intents_stringForKey:@"synonym"];
  [(INCodableEnumValueSynonym *)v5 setSynonym:v8];

  v9 = [representationCopy intents_stringForKey:@"pronunciationHint"];

  [(INCodableEnumValueSynonym *)v5 setPronunciationHint:v9];

  return v5;
}

- (id)__INCodableEnumSynonymIDKey
{
  _codableEnum = [(INCodableEnumValueSynonym *)self _codableEnum];
  __INCodableEnumValueSynonymSynonymIDKey = [objc_opt_class() __INCodableEnumValueSynonymSynonymIDKey];

  return __INCodableEnumValueSynonymSynonymIDKey;
}

- (id)__INCodableEnumSynonymKey
{
  _codableEnum = [(INCodableEnumValueSynonym *)self _codableEnum];
  __INCodableEnumValueSynonymSynonymKey = [objc_opt_class() __INCodableEnumValueSynonymSynonymKey];

  return __INCodableEnumValueSynonymSynonymKey;
}

- (id)__INCodableEnumPronunciationHintIDKey
{
  _codableEnum = [(INCodableEnumValueSynonym *)self _codableEnum];
  __INCodableEnumValueSynonymPronunciationHintIDKey = [objc_opt_class() __INCodableEnumValueSynonymPronunciationHintIDKey];

  return __INCodableEnumValueSynonymPronunciationHintIDKey;
}

- (id)__INCodableEnumPronunciationHintKey
{
  _codableEnum = [(INCodableEnumValueSynonym *)self _codableEnum];
  __INCodableEnumValueSynonymPronunciationHintKey = [objc_opt_class() __INCodableEnumValueSynonymPronunciationHintKey];

  return __INCodableEnumValueSynonymPronunciationHintKey;
}

@end