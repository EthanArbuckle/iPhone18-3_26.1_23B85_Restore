@interface INCodableStringAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableStringAttributeMetadata)initWithCoder:(id)a3;
- (NSString)localizedDefaultValue;
- (id)__INCodableDescriptionCapitalizationKey;
- (id)__INCodableDescriptionDefaultValueIDKey;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionDisableAutocorrectKey;
- (id)__INCodableDescriptionDisableSmartDashesKey;
- (id)__INCodableDescriptionDisableSmartQuotesKey;
- (id)__INCodableDescriptionMultilineKey;
- (id)__INIntentResponseCodableDescriptionCapitalizationKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueIDKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionDisableAutocorrectKey;
- (id)__INIntentResponseCodableDescriptionDisableSmartDashesKey;
- (id)__INIntentResponseCodableDescriptionDisableSmartQuotesKey;
- (id)__INIntentResponseCodableDescriptionMultilineKey;
- (id)__INTypeCodableDescriptionCapitalizationKey;
- (id)__INTypeCodableDescriptionDefaultValueIDKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionDisableAutocorrectKey;
- (id)__INTypeCodableDescriptionDisableSmartDashesKey;
- (id)__INTypeCodableDescriptionDisableSmartQuotesKey;
- (id)__INTypeCodableDescriptionMultilineKey;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedDefaultValueWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableStringAttributeMetadata

- (id)__INCodableDescriptionMultilineKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataMultilineKey];

  return v3;
}

- (id)__INCodableDescriptionDisableAutocorrectKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDisableAutocorrectKey];

  return v3;
}

- (id)__INCodableDescriptionDisableSmartDashesKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartDashesKey];

  return v3;
}

- (id)__INCodableDescriptionDisableSmartQuotesKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartQuotesKey];

  return v3;
}

- (id)__INCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INCodableDescriptionDefaultValueIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueIDKey];

  return v3;
}

- (id)__INCodableDescriptionCapitalizationKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataCapitalizationKey];

  return v3;
}

- (INCodableStringAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = INCodableStringAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v12 initWithCoder:v4];
  if (v5)
  {
    -[INCodableStringAttributeMetadata setMultiline:](v5, "setMultiline:", [v4 decodeBoolForKey:@"multiline"]);
    -[INCodableStringAttributeMetadata setDisableAutocorrect:](v5, "setDisableAutocorrect:", [v4 decodeBoolForKey:@"disableAutocorrect"]);
    -[INCodableStringAttributeMetadata setDisableSmartDashes:](v5, "setDisableSmartDashes:", [v4 decodeBoolForKey:@"disableSmartDashes"]);
    -[INCodableStringAttributeMetadata setDisableSmartQuotes:](v5, "setDisableSmartQuotes:", [v4 decodeBoolForKey:@"disableSmartQuotes"]);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"defaultValue"];
    [(INCodableStringAttributeMetadata *)v5 setDefaultValue:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValueID"];
    [(INCodableStringAttributeMetadata *)v5 setDefaultValueID:v10];

    -[INCodableStringAttributeMetadata setCapitalization:](v5, "setCapitalization:", [v4 decodeIntegerForKey:@"capitalization"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableStringAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_multiline forKey:{@"multiline", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_disableAutocorrect forKey:@"disableAutocorrect"];
  [v4 encodeBool:self->_disableSmartDashes forKey:@"disableSmartDashes"];
  [v4 encodeBool:self->_disableSmartQuotes forKey:@"disableSmartQuotes"];
  [v4 encodeObject:self->_defaultValue forKey:@"defaultValue"];
  [v4 encodeObject:self->_defaultValueID forKey:@"defaultValueID"];
  [v4 encodeInteger:self->_capitalization forKey:@"capitalization"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableStringAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:a3 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = v7;
      v10 = 0;
      *a4 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [v6 intents_setBoolIfTrue:self->_multiline forKey:@"multiline"];
    [v6 intents_setBoolIfTrue:self->_disableAutocorrect forKey:@"disableAutocorrect"];
    [v6 intents_setBoolIfTrue:self->_disableSmartDashes forKey:@"disableSmartDashes"];
    [v6 intents_setBoolIfTrue:self->_disableSmartQuotes forKey:@"disableSmartQuotes"];
    [v6 intents_setPlistSafeObject:self->_defaultValue forKey:@"defaultValue"];
    [v6 intents_setPlistSafeObject:self->_defaultValueID forKey:@"defaultValueID"];
    [v6 intents_setIntegerIfNonZero:self->_capitalization forKey:@"capitalization"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)localizedDefaultValueWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableStringAttributeMetadata *)self defaultValueID];
  v6 = [(INCodableStringAttributeMetadata *)self defaultValue];
  v7 = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);

  return v8;
}

- (NSString)localizedDefaultValue
{
  v3 = objc_opt_new();
  v4 = [(INCodableStringAttributeMetadata *)self localizedDefaultValueWithLocalizer:v3];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v39[7] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = INCodableStringAttributeMetadata;
  v4 = a3;
  v32 = [(INCodableAttributeMetadata *)&v37 dictionaryRepresentationWithLocalizer:v4];
  v36 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionMultilineKey];
  v38[0] = v36;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableStringAttributeMetadata isMultiline](self, "isMultiline")}];
  v35 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v5;
  v39[0] = v5;
  v34 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableAutocorrectKey];
  v38[1] = v34;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableStringAttributeMetadata disableAutocorrect](self, "disableAutocorrect")}];
  v33 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v6;
  v39[1] = v6;
  v31 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableSmartDashesKey];
  v38[2] = v31;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableStringAttributeMetadata disableSmartDashes](self, "disableSmartDashes")}];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v8;
  v25 = v7;
  v39[2] = v7;
  v29 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableSmartQuotesKey];
  v38[3] = v29;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableStringAttributeMetadata disableSmartQuotes](self, "disableSmartQuotes")}];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v9;
  v39[3] = v9;
  v28 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v38[4] = v28;
  v11 = [(INCodableStringAttributeMetadata *)self localizedDefaultValueWithLocalizer:v4];

  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v39[4] = v12;
  v13 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDefaultValueIDKey];
  v38[5] = v13;
  v14 = [(INCodableStringAttributeMetadata *)self defaultValueID];
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v39[5] = v15;
  v16 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionCapitalizationKey];
  v38[6] = v16;
  v17 = [(INCodableStringAttributeMetadata *)self capitalization];
  if ((v17 - 1) > 2)
  {
    v18 = @"None";
  }

  else
  {
    v18 = off_1E72811E8[v17 - 1];
  }

  v39[6] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:7];
  v20 = [v32 if_dictionaryByAddingEntriesFromDictionary:v19];

  if (!v14)
  {
  }

  if (!v11)
  {
  }

  if (!v10)
  {
  }

  if (!v30)
  {
  }

  if (!v33)
  {
  }

  if (!v35)
  {
  }

  v21 = [v20 if_dictionaryWithNonEmptyValues];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = INCodableStringAttributeMetadata;
  [(INCodableAttributeMetadata *)&v40 updateWithDictionary:v4];
  v5 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionMultilineKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 BOOLValue];
  self->_multiline = v9;
  v10 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableAutocorrectKey];
  v11 = [v4 objectForKeyedSubscript:v10];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 BOOLValue];
  self->_disableAutocorrect = v14;
  v15 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableSmartDashesKey];
  v16 = [v4 objectForKeyedSubscript:v15];

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v18 BOOLValue];
  self->_disableSmartDashes = v19;
  v20 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableSmartQuotesKey];
  v21 = [v4 objectForKeyedSubscript:v20];

  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = [v23 BOOLValue];
  self->_disableSmartQuotes = v24;
  v25 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v26 = [v4 objectForKeyedSubscript:v25];

  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  defaultValue = self->_defaultValue;
  self->_defaultValue = v28;

  v30 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDefaultValueIDKey];
  v31 = [v4 objectForKeyedSubscript:v30];

  if (v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  defaultValueID = self->_defaultValueID;
  self->_defaultValueID = v33;

  v35 = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionCapitalizationKey];
  v36 = [v4 objectForKeyedSubscript:v35];

  if (v36)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;

  v39 = INCodableStringAttributeMetadataCapitalizationWithString(v38);
  self->_capitalization = v39;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___INCodableStringAttributeMetadata;
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
    [v7 setMultiline:{objc_msgSend(v6, "intents_BOOLForKey:", @"multiline"}];
    [v7 setDisableAutocorrect:{objc_msgSend(v6, "intents_BOOLForKey:", @"disableAutocorrect"}];
    [v7 setDisableSmartDashes:{objc_msgSend(v6, "intents_BOOLForKey:", @"disableSmartDashes"}];
    [v7 setDisableSmartQuotes:{objc_msgSend(v6, "intents_BOOLForKey:", @"disableSmartQuotes"}];
    v12 = [v6 intents_stringForKey:@"defaultValue"];
    [v7 setDefaultValue:v12];

    v13 = [v6 intents_stringForKey:@"defaultValueID"];
    [v7 setDefaultValueID:v13];

    [v7 setCapitalization:{objc_msgSend(v6, "intents_intForKey:", @"capitalization"}];
    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionMultilineKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataMultilineKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDisableSmartQuotesKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartQuotesKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDisableSmartDashesKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartDashesKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDisableAutocorrectKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDisableAutocorrectKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDefaultValueIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueIDKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INTypeCodableDescriptionCapitalizationKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataCapitalizationKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionMultilineKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataMultilineKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDisableSmartQuotesKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartQuotesKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDisableSmartDashesKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartDashesKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDisableAutocorrectKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDisableAutocorrectKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueIDKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionCapitalizationKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableStringAttributeMetadataCapitalizationKey];

  return v3;
}

@end