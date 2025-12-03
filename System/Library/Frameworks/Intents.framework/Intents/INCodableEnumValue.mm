@interface INCodableEnumValue
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)_intents_compareValue:(id)value relation:(unint64_t)relation;
- (BOOL)isEqual:(id)equal;
- (INCodableEnum)_codableEnum;
- (INCodableEnumValue)initWithCoder:(id)coder;
- (NSString)localizedDisplayName;
- (id)__INCodableEnumDisplayNameIDKey;
- (id)__INCodableEnumDisplayNameKey;
- (id)__INCodableEnumIndexKey;
- (id)__INCodableEnumNameKey;
- (id)__INCodableEnumSynonymsKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedDisplayNameForLanguage:(id)language;
- (id)localizedDisplayNameWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableEnumValue

- (INCodableEnum)_codableEnum
{
  WeakRetained = objc_loadWeakRetained(&self->_codableEnum);

  return WeakRetained;
}

- (id)__INCodableEnumIndexKey
{
  _codableEnum = [(INCodableEnumValue *)self _codableEnum];
  __INCodableEnumValueIndexKey = [objc_opt_class() __INCodableEnumValueIndexKey];

  return __INCodableEnumValueIndexKey;
}

- (id)__INCodableEnumNameKey
{
  _codableEnum = [(INCodableEnumValue *)self _codableEnum];
  __INCodableEnumValueNameKey = [objc_opt_class() __INCodableEnumValueNameKey];

  return __INCodableEnumValueNameKey;
}

- (id)__INCodableEnumDisplayNameKey
{
  _codableEnum = [(INCodableEnumValue *)self _codableEnum];
  __INCodableEnumValueDisplayNameKey = [objc_opt_class() __INCodableEnumValueDisplayNameKey];

  return __INCodableEnumValueDisplayNameKey;
}

- (id)__INCodableEnumDisplayNameIDKey
{
  _codableEnum = [(INCodableEnumValue *)self _codableEnum];
  __INCodableEnumValueDisplayNameIDKey = [objc_opt_class() __INCodableEnumValueDisplayNameIDKey];

  return __INCodableEnumValueDisplayNameIDKey;
}

- (id)__INCodableEnumSynonymsKey
{
  _codableEnum = [(INCodableEnumValue *)self _codableEnum];
  __INCodableEnumValueSynonymsKey = [objc_opt_class() __INCodableEnumValueSynonymsKey];

  return __INCodableEnumValueSynonymsKey;
}

- (BOOL)_intents_compareValue:(id)value relation:(unint64_t)relation
{
  valueCopy = value;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableEnumValue index](self, "index")}];
  v8 = valueCopy;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 if_flatMap:&__block_literal_global_71237];
  if (v11)
  {
    v12 = [v7 _intents_compareValue:v11 relation:relation];
  }

  else
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = v8;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    index = [v16 index];
    v18 = [v13 numberWithInteger:index];
    v12 = [v7 _intents_compareValue:v18 relation:relation];
  }

  return v12;
}

id __90__INCodableEnumValue_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "index")}];
  v4 = [v2 if_arrayWithObjectIfNonNil:v3];

  return v4;
}

- (INCodableEnumValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = INCodableEnumValue;
  v5 = [(INCodableEnumValue *)&v18 init];
  if (v5)
  {
    -[INCodableEnumValue setIndex:](v5, "setIndex:", [coderCopy decodeIntegerForKey:@"index"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(INCodableEnumValue *)v5 setName:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"displayName"];
    [(INCodableEnumValue *)v5 setDisplayName:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocID"];
    [(INCodableEnumValue *)v5 setDisplayNameLocID:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_codableEnum"];
    [(INCodableEnumValue *)v5 _setCodableEnum:v12];

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"synonyms"];
    [(INCodableEnumValue *)v5 setSynonyms:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[INCodableEnumValue index](self forKey:{"index"), @"index"}];
  name = [(INCodableEnumValue *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  displayName = [(INCodableEnumValue *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  displayNameLocID = [(INCodableEnumValue *)self displayNameLocID];
  [coderCopy encodeObject:displayNameLocID forKey:@"displayNameLocID"];

  synonyms = [(INCodableEnumValue *)self synonyms];
  [coderCopy encodeObject:synonyms forKey:@"synonyms"];

  _codableEnum = [(INCodableEnumValue *)self _codableEnum];
  [coderCopy encodeConditionalObject:_codableEnum forKey:@"_codableEnum"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary intents_setIntegerIfNonZero:-[INCodableEnumValue index](self forKey:{"index"), @"index"}];
  name = [(INCodableEnumValue *)self name];
  [dictionary intents_setPlistSafeObject:name forKey:@"name"];

  languageCode = [parametersCopy languageCode];
  if (languageCode)
  {
    v10 = [INStringLocalizer localizerForLanguage:languageCode];
    v11 = [(INCodableEnumValue *)self localizedDisplayNameWithLocalizer:v10];

    [dictionary intents_setPlistSafeObject:v11 forKey:@"localizedName"];
  }

  displayName = [(INCodableEnumValue *)self displayName];
  v13 = [displayName intents_encodeForPlistRepresentationWithParameters:parametersCopy];
  [dictionary intents_setPlistSafeObject:v13 forKey:@"displayName"];

  displayNameLocID = [(INCodableEnumValue *)self displayNameLocID];
  [dictionary intents_setPlistSafeObject:displayNameLocID forKey:@"displayNameLocID"];

  synonyms = [(INCodableEnumValue *)self synonyms];
  v20 = 0;
  [dictionary intents_setArrayOfWidgetPlistRepresentable:synonyms forKey:@"synonyms" error:&v20];
  v16 = v20;

  if (v16)
  {
    if (error)
    {
      v17 = v16;
      v18 = 0;
      *error = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = [dictionary copy];
  }

  return v18;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v45[5] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  __INCodableEnumIndexKey = [(INCodableEnumValue *)self __INCodableEnumIndexKey];
  v44[0] = __INCodableEnumIndexKey;
  null = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableEnumValue index](self, "index")}];
  v7 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v45[0] = null;
  __INCodableEnumNameKey = [(INCodableEnumValue *)self __INCodableEnumNameKey];
  v44[1] = __INCodableEnumNameKey;
  name = [(INCodableEnumValue *)self name];
  v9 = name;
  if (!name)
  {
    name = [MEMORY[0x1E695DFB0] null];
  }

  v33 = name;
  v45[1] = name;
  __INCodableEnumDisplayNameKey = [(INCodableEnumValue *)self __INCodableEnumDisplayNameKey];
  v44[2] = __INCodableEnumDisplayNameKey;
  null2 = [(INCodableEnumValue *)self localizedDisplayNameWithLocalizer:localizerCopy];
  v11 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null2;
  v45[2] = null2;
  __INCodableEnumDisplayNameIDKey = [(INCodableEnumValue *)self __INCodableEnumDisplayNameIDKey];
  v44[3] = __INCodableEnumDisplayNameIDKey;
  displayNameLocID = [(INCodableEnumValue *)self displayNameLocID];
  v13 = displayNameLocID;
  if (!displayNameLocID)
  {
    displayNameLocID = [MEMORY[0x1E695DFB0] null];
  }

  v31 = displayNameLocID;
  v45[3] = displayNameLocID;
  __INCodableEnumSynonymsKey = [(INCodableEnumValue *)self __INCodableEnumSynonymsKey];
  v44[4] = __INCodableEnumSynonymsKey;
  synonyms = [(INCodableEnumValue *)self synonyms];
  v15 = [synonyms count];

  if (!v15)
  {
    goto LABEL_19;
  }

  v29 = v7;
  v30 = __INCodableEnumIndexKey;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  synonyms2 = [(INCodableEnumValue *)self synonyms];
  v18 = [synonyms2 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(synonyms2);
        }

        v22 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:{localizerCopy, v29, v30}];
        [v16 if_addObjectIfNonNil:v22];
      }

      v19 = [synonyms2 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v19);
  }

  v7 = v29;
  __INCodableEnumIndexKey = v30;
  if (v16)
  {
    v23 = 0;
    null3 = v16;
  }

  else
  {
LABEL_19:
    null3 = [MEMORY[0x1E695DFB0] null];
    v16 = 0;
    v23 = 1;
  }

  v45[4] = null3;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:{5, v29, v30}];
  if (v23)
  {
  }

  if (!v13)
  {
  }

  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if_dictionaryWithNonEmptyValues = [v25 if_dictionaryWithNonEmptyValues];

  v27 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValue *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  __INCodableEnumIndexKey = [(INCodableEnumValue *)self __INCodableEnumIndexKey];
  v6 = [dictionaryCopy objectForKey:__INCodableEnumIndexKey];
  -[INCodableEnumValue setIndex:](self, "setIndex:", [v6 integerValue]);

  __INCodableEnumNameKey = [(INCodableEnumValue *)self __INCodableEnumNameKey];
  v8 = [dictionaryCopy objectForKey:__INCodableEnumNameKey];
  [(INCodableEnumValue *)self setName:v8];

  __INCodableEnumDisplayNameKey = [(INCodableEnumValue *)self __INCodableEnumDisplayNameKey];
  v10 = [dictionaryCopy objectForKey:__INCodableEnumDisplayNameKey];
  [(INCodableEnumValue *)self setDisplayName:v10];

  __INCodableEnumDisplayNameIDKey = [(INCodableEnumValue *)self __INCodableEnumDisplayNameIDKey];
  v12 = [dictionaryCopy objectForKey:__INCodableEnumDisplayNameIDKey];
  [(INCodableEnumValue *)self setDisplayNameLocID:v12];

  __INCodableEnumSynonymsKey = [(INCodableEnumValue *)self __INCodableEnumSynonymsKey];
  v14 = [dictionaryCopy objectForKey:__INCodableEnumSynonymsKey];

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if ([v16 count])
  {
    v26 = dictionaryCopy;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = objc_alloc_init(INCodableEnumValueSynonym);
            [(INCodableEnumValueSynonym *)v24 _setCodableEnumValue:self];
            [(INCodableEnumValueSynonym *)v24 updateWithDictionary:v23];
            [v17 if_addObjectIfNonNil:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }

    [(INCodableEnumValue *)self setSynonyms:v17];
    dictionaryCopy = v26;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)localizedDisplayNameWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  _codableEnum = [(INCodableEnumValue *)self _codableEnum];
  displayNameLocID = [(INCodableEnumValue *)self displayNameLocID];
  displayName = [(INCodableEnumValue *)self displayName];
  _localizationTable = [_codableEnum _localizationTable];
  v9 = INLocalizedStringFromCodable(displayNameLocID, displayName, _localizationTable, localizerCopy, 0);

  return v9;
}

- (id)localizedDisplayNameForLanguage:(id)language
{
  v4 = [INStringLocalizer localizerForLanguage:language];
  v5 = [(INCodableEnumValue *)self localizedDisplayNameWithLocalizer:v4];

  return v5;
}

- (NSString)localizedDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValue *)self localizedDisplayNameWithLocalizer:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    index = [(INCodableEnumValue *)self index];
    if (index == [equalCopy index])
    {
      name = [(INCodableEnumValue *)self name];
      name2 = [equalCopy name];
      v8 = name;
      v9 = name2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v12 = v9;
        v13 = v8;
        if (!v8 || !v9)
        {
          goto LABEL_23;
        }

        v14 = [v8 isEqualToString:v9];

        if (!v14)
        {
          LOBYTE(v11) = 0;
LABEL_24:

          goto LABEL_25;
        }
      }

      displayName = [(INCodableEnumValue *)self displayName];
      displayName2 = [equalCopy displayName];
      v13 = displayName;
      v17 = displayName2;
      v12 = v17;
      if (v13 == v17)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v18 = v17;
        v19 = v13;
        if (!v13 || !v17)
        {
LABEL_22:

LABEL_23:
          goto LABEL_24;
        }

        v11 = [v13 isEqualToString:v17];

        if (!v11)
        {
          goto LABEL_23;
        }
      }

      displayNameLocID = [(INCodableEnumValue *)self displayNameLocID];
      displayNameLocID2 = [equalCopy displayNameLocID];
      v19 = displayNameLocID;
      v22 = displayNameLocID2;
      v18 = v22;
      if (v19 == v22)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = 0;
        if (v19 && v22)
        {
          LOBYTE(v11) = [v19 isEqualToString:v22];
        }
      }

      goto LABEL_22;
    }
  }

  LOBYTE(v11) = 0;
LABEL_25:

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableEnumValue index](self, "index")}];
  v4 = [v3 hash];
  name = [(INCodableEnumValue *)self name];
  v6 = [name hash];
  displayName = [(INCodableEnumValue *)self displayName];
  v8 = v6 ^ [displayName hash];
  displayNameLocID = [(INCodableEnumValue *)self displayNameLocID];
  v10 = v8 ^ [displayNameLocID hash];

  return v10 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[INCodableEnumValue allocWithZone:?]];
  [(INCodableEnumValue *)v4 setIndex:[(INCodableEnumValue *)self index]];
  name = [(INCodableEnumValue *)self name];
  [(INCodableEnumValue *)v4 setName:name];

  displayName = [(INCodableEnumValue *)self displayName];
  [(INCodableEnumValue *)v4 setDisplayName:displayName];

  displayNameLocID = [(INCodableEnumValue *)self displayNameLocID];
  [(INCodableEnumValue *)v4 setDisplayNameLocID:displayNameLocID];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = objc_alloc_init(INCodableEnumValue);
  -[INCodableEnumValue setIndex:](v6, "setIndex:", [representationCopy intents_intForKey:@"index"]);
  v7 = [representationCopy intents_stringForKey:@"name"];
  [(INCodableEnumValue *)v6 setName:v7];

  v8 = [representationCopy intents_stringForKey:@"localizedName"];
  [(INCodableEnumValue *)v6 setLocalizedName:v8];

  v9 = [representationCopy intents_stringForKey:@"displayName"];
  [(INCodableEnumValue *)v6 setDisplayName:v9];

  v10 = [representationCopy intents_stringForKey:@"displayNameLocID"];
  [(INCodableEnumValue *)v6 setDisplayNameLocID:v10];

  v23 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __66__INCodableEnumValue_makeFromWidgetPlistableRepresentation_error___block_invoke;
  v21 = &unk_1E7285B78;
  v11 = v6;
  v22 = v11;
  v12 = [INCodableEnumValueSynonym intents_arrayOfWidgetPlistRepresentableInDict:representationCopy key:@"synonyms" error:&v23 resultTransformer:&v18];

  v13 = v23;
  v14 = v13;
  if (v13)
  {
    if (error)
    {
      v15 = v13;
      v16 = 0;
      *error = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    [(INCodableEnumValue *)v11 setSynonyms:v12, v18, v19, v20, v21];
    v16 = v11;
  }

  return v16;
}

@end