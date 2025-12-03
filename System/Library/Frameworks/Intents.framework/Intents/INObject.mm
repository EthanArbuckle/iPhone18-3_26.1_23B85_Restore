@interface INObject
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (INObject)initWithCoder:(id)coder;
- (INObject)initWithIdentifier:(NSString *)identifier displayString:(NSString *)displayString pronunciationHint:(NSString *)pronunciationHint;
- (INObject)initWithIdentifier:(NSString *)identifier displayString:(NSString *)displayString pronunciationHint:(NSString *)pronunciationHint subtitleString:(NSString *)subtitleString displayImage:(INImage *)displayImage;
- (INObject)initWithIdentifier:(NSString *)identifier displayString:(NSString *)displayString subtitleString:(NSString *)subtitleString displayImage:(INImage *)displayImage;
- (NSMutableDictionary)_valueForKeyDictionary;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_localizedCopyWithLocalizer:(id)localizer;
- (id)_intents_readableSubtitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)valueForProperty:(id)property;
- (unint64_t)hash;
- (void)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)setAlternativeSpeakableMatches:(NSArray *)alternativeSpeakableMatches;
@end

@implementation INObject

- (NSMutableDictionary)_valueForKeyDictionary
{
  valueForKeyDictionary = self->_valueForKeyDictionary;
  if (!valueForKeyDictionary)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_valueForKeyDictionary;
    self->_valueForKeyDictionary = v4;

    valueForKeyDictionary = self->_valueForKeyDictionary;
  }

  return valueForKeyDictionary;
}

- (id)_dictionaryRepresentation
{
  v32[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    outCount = 0;
    v5 = objc_opt_class();
    v6 = class_copyPropertyList(v5, &outCount);
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        Name = property_getName(v6[i]);
        if (Name)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithCString:Name encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
          v10 = v9;
          if (v9 && ([v9 hasPrefix:@"_"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"codableDescription") & 1) == 0)
          {
            v11 = [(INObject *)self valueForProperty:v10];
            if (v11)
            {
              [v3 setObject:v11 forKeyedSubscript:v10];
            }

            else
            {
              null = [MEMORY[0x1E695DFB0] null];
              [v3 setObject:null forKeyedSubscript:v10];
            }
          }
        }
      }
    }

    free(v6);
  }

  v31[0] = @"identifier";
  identifier = self->_identifier;
  null2 = identifier;
  if (!identifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null2;
  v32[0] = null2;
  v31[1] = @"displayString";
  displayString = self->_displayString;
  null3 = displayString;
  if (!displayString)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v3;
  v27 = null3;
  v32[1] = null3;
  v31[2] = @"pronunciationHint";
  pronunciationHint = self->_pronunciationHint;
  null4 = pronunciationHint;
  if (!pronunciationHint)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v32[2] = null4;
  v31[3] = @"alternativeSpeakableMatches";
  alternativeSpeakableMatches = self->_alternativeSpeakableMatches;
  null5 = alternativeSpeakableMatches;
  if (!alternativeSpeakableMatches)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32[3] = null5;
  v31[4] = @"subtitleString";
  subtitleString = self->_subtitleString;
  null6 = subtitleString;
  if (!subtitleString)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v32[4] = null6;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:{5, v27}];
  [v17 addEntriesFromDictionary:v24];

  if (subtitleString)
  {
    if (alternativeSpeakableMatches)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (alternativeSpeakableMatches)
    {
LABEL_27:
      if (pronunciationHint)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  if (pronunciationHint)
  {
LABEL_28:
    if (displayString)
    {
      goto LABEL_29;
    }

LABEL_36:

    if (identifier)
    {
      goto LABEL_30;
    }

    goto LABEL_37;
  }

LABEL_35:

  if (!displayString)
  {
    goto LABEL_36;
  }

LABEL_29:
  if (identifier)
  {
    goto LABEL_30;
  }

LABEL_37:

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_intents_localizedCopyWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  v5 = objc_alloc(objc_opt_class());
  identifier = [(INObject *)self identifier];
  displayString = [(INObject *)self displayString];
  languageCode = [localizerCopy languageCode];
  v9 = [displayString localizeForLanguage:languageCode];
  pronunciationHint = [(INObject *)self pronunciationHint];
  languageCode2 = [localizerCopy languageCode];

  v12 = [pronunciationHint localizeForLanguage:languageCode2];
  v13 = [v5 initWithIdentifier:identifier displayString:v9 pronunciationHint:v12];

  return v13;
}

- (id)_intents_readableSubtitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  subtitleString = [(INObject *)self subtitleString];
  languageCode = [localizerCopy languageCode];

  v8 = [subtitleString localizeForLanguage:languageCode];

  return v8;
}

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  displayString = [(INObject *)self displayString];
  languageCode = [localizerCopy languageCode];

  v8 = [displayString localizeForLanguage:languageCode];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INObject;
  v6 = [(INObject *)&v11 description];
  _dictionaryRepresentation = [(INObject *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v40 = *MEMORY[0x1E69E9840];
  encoderCopy = encoder;
  descriptionCopy = description;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = [encoderCopy encodeObject:self->_identifier];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"identifier"];

  v10 = [encoderCopy encodeObject:self->_displayString];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"displayString"];

  v11 = [encoderCopy encodeObject:self->_pronunciationHint];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"pronunciationHint"];

  v12 = [encoderCopy encodeObject:self->_alternativeSpeakableMatches];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"alternativeSpeakableMatches"];

  v13 = [encoderCopy encodeObject:self->_subtitleString];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"subtitleString"];

  v14 = [encoderCopy encodeObject:self->_subtitleString];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"descriptionString"];

  selfCopy = self;
  v16 = encoderCopy;
  v17 = [encoderCopy encodeObject:self->_displayImage];
  v18 = dictionary;
  [dictionary if_setObjectIfNonNil:v17 forKey:@"displayImage"];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = descriptionCopy;
  attributes = [descriptionCopy attributes];
  allValues = [attributes allValues];

  obj = allValues;
  v21 = [allValues countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v35 + 1) + 8 * i);
        propertyName = [v25 propertyName];
        v27 = [(INObject *)selfCopy valueForUndefinedKey:propertyName];
        v28 = [v16 encodeObject:v27 withCodableAttribute:v25];
        propertyName2 = [v25 propertyName];
        [v18 if_setObjectIfNonNil:v28 forKey:propertyName2];
      }

      v22 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v22);
  }

  semanticRoot = [v33 semanticRoot];
  [v18 if_setObjectIfNonNil:semanticRoot forKey:@"_type"];

  v31 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  v48 = *MEMORY[0x1E69E9840];
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"identifier"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];
    identifier = self->_identifier;
    self->_identifier = v11;

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"displayString"];
    v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];
    displayString = self->_displayString;
    self->_displayString = v15;

    v17 = objc_opt_class();
    v18 = [fromCopy objectForKeyedSubscript:@"pronunciationHint"];
    v19 = [decoderCopy decodeObjectOfClass:v17 from:v18];
    pronunciationHint = self->_pronunciationHint;
    self->_pronunciationHint = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = [fromCopy objectForKeyedSubscript:@"alternativeSpeakableMatches"];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v44;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [decoderCopy decodeObjectOfClass:objc_opt_class() from:{*(*(&v43 + 1) + 8 * i), v43}];
          [v21 if_addObjectIfNonNil:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v27);
    }

    v31 = [v21 copy];
    alternativeSpeakableMatches = self->_alternativeSpeakableMatches;
    self->_alternativeSpeakableMatches = v31;

    v33 = objc_opt_class();
    v34 = [fromCopy objectForKeyedSubscript:@"subtitleString"];
    v35 = v34;
    if (!v34)
    {
      v35 = [fromCopy objectForKeyedSubscript:@"descriptionString"];
    }

    v36 = [decoderCopy decodeObjectOfClass:v33 from:{v35, v43}];
    subtitleString = self->_subtitleString;
    self->_subtitleString = v36;

    if (!v34)
    {
    }

    v38 = objc_opt_class();
    v39 = [fromCopy objectForKeyedSubscript:@"displayImage"];
    v40 = [decoderCopy decodeObjectOfClass:v38 from:v39];
    displayImage = self->_displayImage;
    self->_displayImage = v40;
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (BOOL)setValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  os_unfair_lock_lock(&self->_lock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__INObject_setValue_forProperty___block_invoke;
  v13[3] = &unk_1E72882F8;
  v13[4] = self;
  v8 = MEMORY[0x193AD7780](v13);
  if (propertyCopy)
  {
    if_stringByLowercasingFirstCharacter = [propertyCopy if_stringByLowercasingFirstCharacter];

    _valueForKeyDictionary = [(INObject *)self _valueForKeyDictionary];
    v11 = _valueForKeyDictionary;
    if (valueCopy)
    {
      [_valueForKeyDictionary setObject:valueCopy forKeyedSubscript:if_stringByLowercasingFirstCharacter];
    }

    else
    {
      [_valueForKeyDictionary removeObjectForKey:if_stringByLowercasingFirstCharacter];
    }
  }

  v8[2](v8);

  return propertyCopy != 0;
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  os_unfair_lock_lock(&self->_lock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__INObject_valueForProperty___block_invoke;
  v10[3] = &unk_1E72882F8;
  v10[4] = self;
  v5 = MEMORY[0x193AD7780](v10);
  _valueForKeyDictionary = [(INObject *)self _valueForKeyDictionary];
  if (propertyCopy)
  {
    if_stringByLowercasingFirstCharacter = [propertyCopy if_stringByLowercasingFirstCharacter];
    v8 = [_valueForKeyDictionary objectForKeyedSubscript:if_stringByLowercasingFirstCharacter];
  }

  else
  {
    v8 = 0;
  }

  v5[2](v5);

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_displayString forKey:@"displayString"];
  [coderCopy encodeObject:self->_pronunciationHint forKey:@"pronunciationHint"];
  [coderCopy encodeObject:self->_alternativeSpeakableMatches forKey:@"alternativeSpeakableMatches"];
  [coderCopy encodeObject:self->_subtitleString forKey:@"subtitleString"];
  [coderCopy encodeObject:self->_displayImage forKey:@"displayImage"];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [INSchema _defaultSchemaForBundle:v5];

  v7 = [v6 _objectDescriptionForTypeOfClass:objc_opt_class()];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  attributes = [v7 attributes];
  allValues = [attributes allValues];

  v10 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        propertyName = [*(*(&v17 + 1) + 8 * v13) propertyName];
        v15 = [(INObject *)self valueForProperty:propertyName];
        if (v15)
        {
          [coderCopy encodeObject:v15 forKey:propertyName];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (INObject)initWithCoder:(id)coder
{
  v51 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"displayString"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"pronunciationHint"];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"alternativeSpeakableMatches"];

  v18 = [(INObject *)self initWithIdentifier:v5 displayString:v9 pronunciationHint:v13];
  v19 = v18;
  if (v18)
  {
    v43 = v13;
    v44 = v9;
    v45 = v5;
    objc_storeStrong(&v18->_alternativeSpeakableMatches, v17);
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"subtitleString"];
    subtitleString = v19->_subtitleString;
    v19->_subtitleString = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayImage"];
    displayImage = v19->_displayImage;
    v19->_displayImage = v25;

    v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v28 = [INSchema _defaultSchemaForBundle:v27];

    v42 = v28;
    [v28 _objectDescriptionForTypeOfClass:objc_opt_class()];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = v49 = 0u;
    attributes = [v41 attributes];
    allValues = [attributes allValues];

    v31 = [allValues countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v47;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(allValues);
          }

          v35 = *(*(&v46 + 1) + 8 * i);
          propertyName = [v35 propertyName];
          v37 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), objc_msgSend(v35, "_unsafeObjectClass"), 0}];
          v38 = [coderCopy decodeObjectOfClasses:v37 forKey:propertyName];

          [(INObject *)v19 setValue:v38 forProperty:propertyName];
        }

        v32 = [allValues countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v32);
    }

    v9 = v44;
    v5 = v45;
    v13 = v43;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      v11 = 0;
      if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
      {
        displayString = self->_displayString;
        if (displayString == v5->_displayString || [(NSString *)displayString isEqual:?])
        {
          pronunciationHint = self->_pronunciationHint;
          if (pronunciationHint == v5->_pronunciationHint || [(NSString *)pronunciationHint isEqual:?])
          {
            subtitleString = self->_subtitleString;
            if (subtitleString == v5->_subtitleString || [(NSString *)subtitleString isEqual:?])
            {
              displayImage = self->_displayImage;
              if (displayImage == v5->_displayImage || [(INImage *)displayImage isEqual:?])
              {
                v11 = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_displayString hash]^ v3;
  return v4 ^ [(NSString *)self->_pronunciationHint hash];
}

- (void)setAlternativeSpeakableMatches:(NSArray *)alternativeSpeakableMatches
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = alternativeSpeakableMatches;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v4;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          spokenPhrase = [v11 spokenPhrase];

          if (spokenPhrase)
          {
            v13 = [INSpeakableString alloc];
            identifier = [(INObject *)self identifier];
            spokenPhrase2 = [v11 spokenPhrase];
            pronunciationHint = [v11 pronunciationHint];
            v17 = [(INSpeakableString *)v13 initWithVocabularyIdentifier:identifier spokenPhrase:spokenPhrase2 pronunciationHint:pronunciationHint];

            [v5 addObject:v17];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v18 = [v5 copy];
    v19 = self->_alternativeSpeakableMatches;
    self->_alternativeSpeakableMatches = v18;

    v4 = v22;
  }

  else
  {
    v20 = self->_alternativeSpeakableMatches;
    self->_alternativeSpeakableMatches = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (INObject)initWithIdentifier:(NSString *)identifier displayString:(NSString *)displayString pronunciationHint:(NSString *)pronunciationHint subtitleString:(NSString *)subtitleString displayImage:(INImage *)displayImage
{
  v12 = subtitleString;
  v13 = displayImage;
  v14 = [(INObject *)self initWithIdentifier:identifier displayString:displayString pronunciationHint:pronunciationHint];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_displayImage, displayImage);
    v16 = [(NSString *)v12 copy];
    v17 = v15->_subtitleString;
    v15->_subtitleString = v16;
  }

  return v15;
}

- (INObject)initWithIdentifier:(NSString *)identifier displayString:(NSString *)displayString subtitleString:(NSString *)subtitleString displayImage:(INImage *)displayImage
{
  v10 = subtitleString;
  v11 = displayImage;
  v12 = [(INObject *)self initWithIdentifier:identifier displayString:displayString pronunciationHint:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayImage, displayImage);
    v14 = [(NSString *)v10 copy];
    v15 = v13->_subtitleString;
    v13->_subtitleString = v14;
  }

  return v13;
}

- (INObject)initWithIdentifier:(NSString *)identifier displayString:(NSString *)displayString pronunciationHint:(NSString *)pronunciationHint
{
  v8 = identifier;
  v9 = displayString;
  v10 = pronunciationHint;
  v19.receiver = self;
  v19.super_class = INObject;
  v11 = [(INObject *)&v19 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_identifier;
    v11->_identifier = v12;

    v14 = [(NSString *)v9 copy];
    v15 = v11->_displayString;
    v11->_displayString = v14;

    v16 = [(NSString *)v10 copy];
    v17 = v11->_pronunciationHint;
    v11->_pronunciationHint = v16;

    v11->_lock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  descriptionCopy = description;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [[self alloc] initWithIdentifier:0 displayString:&stru_1F01E0850];
    [v11 _intents_decodeWithJSONDecoder:decoderCopy codableDescription:descriptionCopy from:fromCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end