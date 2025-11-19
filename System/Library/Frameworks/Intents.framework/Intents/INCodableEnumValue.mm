@interface INCodableEnumValue
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)_intents_compareValue:(id)a3 relation:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableEnum)_codableEnum;
- (INCodableEnumValue)initWithCoder:(id)a3;
- (NSString)localizedDisplayName;
- (id)__INCodableEnumDisplayNameIDKey;
- (id)__INCodableEnumDisplayNameKey;
- (id)__INCodableEnumIndexKey;
- (id)__INCodableEnumNameKey;
- (id)__INCodableEnumSynonymsKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedDisplayNameForLanguage:(id)a3;
- (id)localizedDisplayNameWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableEnumValue

- (INCodableEnum)_codableEnum
{
  WeakRetained = objc_loadWeakRetained(&self->_codableEnum);

  return WeakRetained;
}

- (id)__INCodableEnumIndexKey
{
  v2 = [(INCodableEnumValue *)self _codableEnum];
  v3 = [objc_opt_class() __INCodableEnumValueIndexKey];

  return v3;
}

- (id)__INCodableEnumNameKey
{
  v2 = [(INCodableEnumValue *)self _codableEnum];
  v3 = [objc_opt_class() __INCodableEnumValueNameKey];

  return v3;
}

- (id)__INCodableEnumDisplayNameKey
{
  v2 = [(INCodableEnumValue *)self _codableEnum];
  v3 = [objc_opt_class() __INCodableEnumValueDisplayNameKey];

  return v3;
}

- (id)__INCodableEnumDisplayNameIDKey
{
  v2 = [(INCodableEnumValue *)self _codableEnum];
  v3 = [objc_opt_class() __INCodableEnumValueDisplayNameIDKey];

  return v3;
}

- (id)__INCodableEnumSynonymsKey
{
  v2 = [(INCodableEnumValue *)self _codableEnum];
  v3 = [objc_opt_class() __INCodableEnumValueSynonymsKey];

  return v3;
}

- (BOOL)_intents_compareValue:(id)a3 relation:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableEnumValue index](self, "index")}];
  v8 = v6;
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
    v12 = [v7 _intents_compareValue:v11 relation:a4];
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

    v17 = [v16 index];
    v18 = [v13 numberWithInteger:v17];
    v12 = [v7 _intents_compareValue:v18 relation:a4];
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

- (INCodableEnumValue)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = INCodableEnumValue;
  v5 = [(INCodableEnumValue *)&v18 init];
  if (v5)
  {
    -[INCodableEnumValue setIndex:](v5, "setIndex:", [v4 decodeIntegerForKey:@"index"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(INCodableEnumValue *)v5 setName:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"displayName"];
    [(INCodableEnumValue *)v5 setDisplayName:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocID"];
    [(INCodableEnumValue *)v5 setDisplayNameLocID:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_codableEnum"];
    [(INCodableEnumValue *)v5 _setCodableEnum:v12];

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"synonyms"];
    [(INCodableEnumValue *)v5 setSynonyms:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[INCodableEnumValue index](self forKey:{"index"), @"index"}];
  v5 = [(INCodableEnumValue *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(INCodableEnumValue *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(INCodableEnumValue *)self displayNameLocID];
  [v4 encodeObject:v7 forKey:@"displayNameLocID"];

  v8 = [(INCodableEnumValue *)self synonyms];
  [v4 encodeObject:v8 forKey:@"synonyms"];

  v9 = [(INCodableEnumValue *)self _codableEnum];
  [v4 encodeConditionalObject:v9 forKey:@"_codableEnum"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 intents_setIntegerIfNonZero:-[INCodableEnumValue index](self forKey:{"index"), @"index"}];
  v8 = [(INCodableEnumValue *)self name];
  [v7 intents_setPlistSafeObject:v8 forKey:@"name"];

  v9 = [v6 languageCode];
  if (v9)
  {
    v10 = [INStringLocalizer localizerForLanguage:v9];
    v11 = [(INCodableEnumValue *)self localizedDisplayNameWithLocalizer:v10];

    [v7 intents_setPlistSafeObject:v11 forKey:@"localizedName"];
  }

  v12 = [(INCodableEnumValue *)self displayName];
  v13 = [v12 intents_encodeForPlistRepresentationWithParameters:v6];
  [v7 intents_setPlistSafeObject:v13 forKey:@"displayName"];

  v14 = [(INCodableEnumValue *)self displayNameLocID];
  [v7 intents_setPlistSafeObject:v14 forKey:@"displayNameLocID"];

  v15 = [(INCodableEnumValue *)self synonyms];
  v20 = 0;
  [v7 intents_setArrayOfWidgetPlistRepresentable:v15 forKey:@"synonyms" error:&v20];
  v16 = v20;

  if (v16)
  {
    if (a4)
    {
      v17 = v16;
      v18 = 0;
      *a4 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = [v7 copy];
  }

  return v18;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v45[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INCodableEnumValue *)self __INCodableEnumIndexKey];
  v44[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableEnumValue index](self, "index")}];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v6;
  v45[0] = v6;
  v38 = [(INCodableEnumValue *)self __INCodableEnumNameKey];
  v44[1] = v38;
  v8 = [(INCodableEnumValue *)self name];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v8;
  v45[1] = v8;
  v37 = [(INCodableEnumValue *)self __INCodableEnumDisplayNameKey];
  v44[2] = v37;
  v10 = [(INCodableEnumValue *)self localizedDisplayNameWithLocalizer:v4];
  v11 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v10;
  v45[2] = v10;
  v36 = [(INCodableEnumValue *)self __INCodableEnumDisplayNameIDKey];
  v44[3] = v36;
  v12 = [(INCodableEnumValue *)self displayNameLocID];
  v13 = v12;
  if (!v12)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v12;
  v45[3] = v12;
  v35 = [(INCodableEnumValue *)self __INCodableEnumSynonymsKey];
  v44[4] = v35;
  v14 = [(INCodableEnumValue *)self synonyms];
  v15 = [v14 count];

  if (!v15)
  {
    goto LABEL_19;
  }

  v29 = v7;
  v30 = v5;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = [(INCodableEnumValue *)self synonyms];
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:{v4, v29, v30}];
        [v16 if_addObjectIfNonNil:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v19);
  }

  v7 = v29;
  v5 = v30;
  if (v16)
  {
    v23 = 0;
    v24 = v16;
  }

  else
  {
LABEL_19:
    v24 = [MEMORY[0x1E695DFB0] null];
    v16 = 0;
    v23 = 1;
  }

  v45[4] = v24;
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

  v26 = [v25 if_dictionaryWithNonEmptyValues];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValue *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INCodableEnumValue *)self __INCodableEnumIndexKey];
  v6 = [v4 objectForKey:v5];
  -[INCodableEnumValue setIndex:](self, "setIndex:", [v6 integerValue]);

  v7 = [(INCodableEnumValue *)self __INCodableEnumNameKey];
  v8 = [v4 objectForKey:v7];
  [(INCodableEnumValue *)self setName:v8];

  v9 = [(INCodableEnumValue *)self __INCodableEnumDisplayNameKey];
  v10 = [v4 objectForKey:v9];
  [(INCodableEnumValue *)self setDisplayName:v10];

  v11 = [(INCodableEnumValue *)self __INCodableEnumDisplayNameIDKey];
  v12 = [v4 objectForKey:v11];
  [(INCodableEnumValue *)self setDisplayNameLocID:v12];

  v13 = [(INCodableEnumValue *)self __INCodableEnumSynonymsKey];
  v14 = [v4 objectForKey:v13];

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
    v26 = v4;
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
    v4 = v26;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)localizedDisplayNameWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableEnumValue *)self _codableEnum];
  v6 = [(INCodableEnumValue *)self displayNameLocID];
  v7 = [(INCodableEnumValue *)self displayName];
  v8 = [v5 _localizationTable];
  v9 = INLocalizedStringFromCodable(v6, v7, v8, v4, 0);

  return v9;
}

- (id)localizedDisplayNameForLanguage:(id)a3
{
  v4 = [INStringLocalizer localizerForLanguage:a3];
  v5 = [(INCodableEnumValue *)self localizedDisplayNameWithLocalizer:v4];

  return v5;
}

- (NSString)localizedDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValue *)self localizedDisplayNameWithLocalizer:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(INCodableEnumValue *)self index];
    if (v5 == [v4 index])
    {
      v6 = [(INCodableEnumValue *)self name];
      v7 = [v4 name];
      v8 = v6;
      v9 = v7;
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

      v15 = [(INCodableEnumValue *)self displayName];
      v16 = [v4 displayName];
      v13 = v15;
      v17 = v16;
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

      v20 = [(INCodableEnumValue *)self displayNameLocID];
      v21 = [v4 displayNameLocID];
      v19 = v20;
      v22 = v21;
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
  v5 = [(INCodableEnumValue *)self name];
  v6 = [v5 hash];
  v7 = [(INCodableEnumValue *)self displayName];
  v8 = v6 ^ [v7 hash];
  v9 = [(INCodableEnumValue *)self displayNameLocID];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[INCodableEnumValue allocWithZone:?]];
  [(INCodableEnumValue *)v4 setIndex:[(INCodableEnumValue *)self index]];
  v5 = [(INCodableEnumValue *)self name];
  [(INCodableEnumValue *)v4 setName:v5];

  v6 = [(INCodableEnumValue *)self displayName];
  [(INCodableEnumValue *)v4 setDisplayName:v6];

  v7 = [(INCodableEnumValue *)self displayNameLocID];
  [(INCodableEnumValue *)v4 setDisplayNameLocID:v7];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(INCodableEnumValue);
  -[INCodableEnumValue setIndex:](v6, "setIndex:", [v5 intents_intForKey:@"index"]);
  v7 = [v5 intents_stringForKey:@"name"];
  [(INCodableEnumValue *)v6 setName:v7];

  v8 = [v5 intents_stringForKey:@"localizedName"];
  [(INCodableEnumValue *)v6 setLocalizedName:v8];

  v9 = [v5 intents_stringForKey:@"displayName"];
  [(INCodableEnumValue *)v6 setDisplayName:v9];

  v10 = [v5 intents_stringForKey:@"displayNameLocID"];
  [(INCodableEnumValue *)v6 setDisplayNameLocID:v10];

  v23 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __66__INCodableEnumValue_makeFromWidgetPlistableRepresentation_error___block_invoke;
  v21 = &unk_1E7285B78;
  v11 = v6;
  v22 = v11;
  v12 = [INCodableEnumValueSynonym intents_arrayOfWidgetPlistRepresentableInDict:v5 key:@"synonyms" error:&v23 resultTransformer:&v18];

  v13 = v23;
  v14 = v13;
  if (v13)
  {
    if (a4)
    {
      v15 = v13;
      v16 = 0;
      *a4 = v14;
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