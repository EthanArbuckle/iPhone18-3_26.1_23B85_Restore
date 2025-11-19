@interface INTypeCodableDescription
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INTypeCodableDescription)initWithCoder:(id)a3;
- (NSString)localizedDisplayName;
- (id)_attributeKey;
- (id)_attributesKey;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedDisplayNameWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INTypeCodableDescription

- (id)_attributesKey
{
  v2 = objc_opt_class();

  return [v2 __PropertiesKey];
}

- (id)_attributeKey
{
  v2 = objc_opt_class();

  return [v2 __PropertyKey];
}

- (INTypeCodableDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = INTypeCodableDescription;
  v5 = [(INCodableDescription *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"displayName"];
    [(INTypeCodableDescription *)v5 setDisplayName:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocID"];
    [(INTypeCodableDescription *)v5 setDisplayNameLocID:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INTypeCodableDescription;
  v4 = a3;
  [(INCodableDescription *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_displayName forKey:{@"displayName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_displayNameLocID forKey:@"displayNameLocID"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = INTypeCodableDescription;
  v15 = 0;
  v7 = [(INCodableDescription *)&v14 widgetPlistableRepresentationWithParameters:v6 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [(NSString *)self->_displayName intents_encodeForPlistRepresentationWithParameters:v6];
    [v7 intents_setPlistSafeObject:v12 forKey:@"displayName"];

    [v7 intents_setPlistSafeObject:self->_displayNameLocID forKey:@"displayNameLocID"];
    v11 = v7;
  }

  return v11;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v23[3] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = INTypeCodableDescription;
  v4 = a3;
  v5 = [(INCodableDescription *)&v21 dictionaryRepresentationWithLocalizer:v4];
  v20 = [objc_opt_class() __ClassNameKey];
  v22[0] = v20;
  v6 = [(INCodableDescription *)self className];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v6;
  v23[0] = v6;
  v8 = [objc_opt_class() __DisplayNameKey];
  v22[1] = v8;
  v9 = [(INTypeCodableDescription *)self localizedDisplayNameWithLocalizer:v4];

  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v10;
  v11 = [objc_opt_class() __DisplayNameIDKey];
  v22[2] = v11;
  v12 = [(INTypeCodableDescription *)self displayNameLocID];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v15 = [v5 if_dictionaryByAddingEntriesFromDictionary:v14];

  if (!v12)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  v16 = [v15 if_dictionaryWithNonEmptyValues];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = INTypeCodableDescription;
  [(INCodableDescription *)&v23 updateWithDictionary:v4];
  v5 = [objc_opt_class() __ClassNameKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [objc_opt_class() __ClassPrefixKey];
    v10 = [v4 objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1F01E0850;
    }

    v13 = [(INCodableDescription *)self typeName];
    v7 = [v8 stringWithFormat:@"%@%@", v12, v13];
  }

  [(INCodableDescription *)self setClassName:v7];
  v14 = [objc_opt_class() __DisplayNameKey];
  v15 = [v4 objectForKeyedSubscript:v14];
  [(INTypeCodableDescription *)self setDisplayName:v15];

  v16 = [objc_opt_class() __DisplayNameIDKey];
  v17 = [v4 objectForKeyedSubscript:v16];
  [(INTypeCodableDescription *)self setDisplayNameLocID:v17];

  v18 = [(INCodableDescription *)self _nullable_schema];
  LOBYTE(v17) = [v18 isSystem];

  if ((v17 & 1) == 0)
  {
    v19 = [(INCodableDescription *)self attributes];
    v20 = [v19 mutableCopy];

    v21 = [[INCodableScalarAttribute alloc] initWithPropertyName:@"subtitleString" type:7];
    [(INCodableAttribute *)v21 _setCodableDescription:self];
    [(INCodableAttribute *)v21 setDisplayPriorityRank:&unk_1F02D7F48];
    [v20 setObject:v21 forKeyedSubscript:&unk_1F02D7F60];

    v22 = objc_alloc_init(INCodableObjectAttribute);
    [(INCodableAttribute *)v22 _setCodableDescription:self];
    [(INCodableAttribute *)v22 setModifier:1];
    [(INCodableAttribute *)v22 setPropertyName:@"displayImage"];
    [(INCodableObjectAttribute *)v22 setTypeName:@"Image"];
    [(INCodableAttribute *)v22 setDisplayPriorityRank:&unk_1F02D7F48];
    [v20 setObject:v22 forKeyedSubscript:&unk_1F02D7F78];

    [(INCodableDescription *)self setAttributes:v20];
  }
}

- (id)localizedDisplayNameWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INTypeCodableDescription *)self displayNameLocID];
  v6 = [(INTypeCodableDescription *)self displayName];
  v7 = [(INCodableDescription *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);

  return v8;
}

- (NSString)localizedDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INTypeCodableDescription *)self localizedDisplayNameWithLocalizer:v3];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___INTypeCodableDescription;
  v16 = 0;
  v7 = objc_msgSendSuper2(&v15, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v16);
  v8 = v16;
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [v6 intents_stringForKey:@"displayName"];
    [v7 setDisplayName:v12];

    v13 = [v6 intents_stringForKey:@"displayNameLocID"];
    [v7 setDisplayNameLocID:v13];

    v11 = v7;
  }

  return v11;
}

@end