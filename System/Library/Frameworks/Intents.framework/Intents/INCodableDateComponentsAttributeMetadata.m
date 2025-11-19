@interface INCodableDateComponentsAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableDateComponentsAttributeMetadata)initWithCoder:(id)a3;
- (id)__INCodableDescriptionDateStyleKey;
- (id)__INCodableDescriptionFormatKey;
- (id)__INCodableDescriptionTemplateIDKey;
- (id)__INCodableDescriptionTemplateKey;
- (id)__INCodableDescriptionTimeStyleKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionDateStyleKey;
- (id)__INIntentResponseCodableDescriptionFormatKey;
- (id)__INIntentResponseCodableDescriptionTemplateIDKey;
- (id)__INIntentResponseCodableDescriptionTemplateKey;
- (id)__INIntentResponseCodableDescriptionTimeStyleKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionDateStyleKey;
- (id)__INTypeCodableDescriptionFormatKey;
- (id)__INTypeCodableDescriptionTemplateIDKey;
- (id)__INTypeCodableDescriptionTemplateKey;
- (id)__INTypeCodableDescriptionTimeStyleKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedFormatString;
- (id)localizedFormatStringWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableDateComponentsAttributeMetadata

- (id)__INCodableDescriptionTemplateKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateKey];

  return v3;
}

- (id)__INCodableDescriptionFormatKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataFormatKey];

  return v3;
}

- (id)__INCodableDescriptionDateStyleKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataDateStyleKey];

  return v3;
}

- (id)__INCodableDescriptionTimeStyleKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTimeStyleKey];

  return v3;
}

- (id)__INCodableDescriptionTemplateIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateIDKey];

  return v3;
}

- (id)__INCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTypeKey];

  return v3;
}

- (INCodableDateComponentsAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = INCodableDateComponentsAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v14 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_format = [v4 decodeIntegerForKey:@"format"];
    v5->_dateStyle = [v4 decodeIntegerForKey:@"dateStyle"];
    v5->_timeStyle = [v4 decodeIntegerForKey:@"timeStyle"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"formatString"];
    formatString = v5->_formatString;
    v5->_formatString = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatStringID"];
    formatStringID = v5->_formatStringID;
    v5->_formatStringID = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableDateComponentsAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_format forKey:@"format"];
  [v4 encodeInteger:self->_dateStyle forKey:@"dateStyle"];
  [v4 encodeInteger:self->_timeStyle forKey:@"timeStyle"];
  [v4 encodeObject:self->_formatString forKey:@"formatString"];
  [v4 encodeObject:self->_formatStringID forKey:@"formatStringID"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableDateComponentsAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:0 error:&v13];
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
    [v6 intents_setIntegerIfNonZero:self->_type forKey:@"type"];
    [v6 intents_setIntegerIfNonZero:self->_format forKey:@"format"];
    [v6 intents_setIntegerIfNonZero:self->_dateStyle forKey:@"dateStyle"];
    [v6 intents_setIntegerIfNonZero:self->_timeStyle forKey:@"timeStyle"];
    [v6 intents_setPlistSafeObject:self->_formatString forKey:@"formatString"];
    [v6 intents_setPlistSafeObject:self->_formatStringID forKey:@"formatStringID"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)localizedFormatStringWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableDateComponentsAttributeMetadata *)self formatStringID];
  v6 = [(INCodableDateComponentsAttributeMetadata *)self formatString];
  v7 = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);

  return v8;
}

- (id)localizedFormatString
{
  v3 = objc_opt_new();
  v4 = [(INCodableDateComponentsAttributeMetadata *)self localizedFormatStringWithLocalizer:v3];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v33[6] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = INCodableDateComponentsAttributeMetadata;
  v4 = a3;
  v26 = [(INCodableAttributeMetadata *)&v31 dictionaryRepresentationWithLocalizer:v4];
  v30 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v32[0] = v30;
  v5 = [(INCodableDateComponentsAttributeMetadata *)self type];
  v6 = @"DateTime";
  if (v5 == 1)
  {
    v6 = @"Date";
  }

  if (v5 == 2)
  {
    v6 = @"Time";
  }

  v29 = v6;
  v33[0] = v29;
  v28 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionFormatKey];
  v32[1] = v28;
  v7 = [(INCodableDateComponentsAttributeMetadata *)self format];
  v8 = @"Style";
  if (v7 == 1)
  {
    v8 = @"Relative";
  }

  if (v7 == 2)
  {
    v8 = @"Template";
  }

  v27 = v8;
  v33[1] = v27;
  v25 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionDateStyleKey];
  v32[2] = v25;
  v9 = [(INCodableDateComponentsAttributeMetadata *)self dateStyle];
  if (v9 > 3)
  {
    v10 = @"Full";
  }

  else
  {
    v10 = off_1E72833B8[v9];
  }

  v33[2] = v10;
  v11 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTimeStyleKey];
  v32[3] = v11;
  v12 = [(INCodableDateComponentsAttributeMetadata *)self timeStyle];
  if (v12 > 3)
  {
    v13 = @"Full";
  }

  else
  {
    v13 = off_1E72833B8[v12];
  }

  v33[3] = v13;
  v14 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTemplateKey];
  v32[4] = v14;
  v15 = [(INCodableDateComponentsAttributeMetadata *)self localizedFormatStringWithLocalizer:v4];

  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v33[4] = v16;
  v17 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTemplateIDKey];
  v32[5] = v17;
  v18 = [(INCodableDateComponentsAttributeMetadata *)self formatStringID];
  v19 = v18;
  if (!v18)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v33[5] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
  v21 = [v26 if_dictionaryByAddingEntriesFromDictionary:v20];

  if (!v18)
  {
  }

  if (!v15)
  {
  }

  v22 = [v21 if_dictionaryWithNonEmptyValues];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = INCodableDateComponentsAttributeMetadata;
  [(INCodableAttributeMetadata *)&v31 updateWithDictionary:v4];
  v5 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTypeKey];
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

  v9 = INCodableDateComponentsAttributeMetadataTypeFromString(v8);
  self->_type = v9;
  v10 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionFormatKey];
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

  v14 = INCodableDateComponentsAttributeMetadataFormatFromString(v13);
  self->_format = v14;
  v15 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionDateStyleKey];
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

  v19 = INCodableDateComponentsAttributeMetadataStyleFromString(v18);
  self->_dateStyle = v19;
  v20 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTimeStyleKey];
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

  v24 = INCodableDateComponentsAttributeMetadataStyleFromString(v23);
  self->_timeStyle = v24;
  v25 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTemplateKey];
  v26 = [v4 objectForKeyedSubscript:v25];
  formatString = self->_formatString;
  self->_formatString = v26;

  v28 = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTemplateIDKey];
  v29 = [v4 objectForKeyedSubscript:v28];
  formatStringID = self->_formatStringID;
  self->_formatStringID = v29;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___INCodableDateComponentsAttributeMetadata;
  v18 = 0;
  v7 = objc_msgSendSuper2(&v17, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v18);
  v8 = v18;
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
    v7[5] = [v6 intents_intForKey:@"type"];
    v7[6] = [v6 intents_intForKey:@"format"];
    v7[7] = [v6 intents_intForKey:@"dateStyle"];
    v7[8] = [v6 intents_intForKey:@"timeStyle"];
    v12 = [v6 intents_stringForKey:@"formatString"];
    v13 = v7[9];
    v7[9] = v12;

    v14 = [v6 intents_stringForKey:@"formatStringID"];
    v15 = v7[10];
    v7[10] = v14;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTypeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionTimeStyleKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTimeStyleKey];

  return v3;
}

- (id)__INTypeCodableDescriptionTemplateIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateIDKey];

  return v3;
}

- (id)__INTypeCodableDescriptionTemplateKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateKey];

  return v3;
}

- (id)__INTypeCodableDescriptionFormatKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataFormatKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDateStyleKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataDateStyleKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTimeStyleKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTimeStyleKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTemplateIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateIDKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTemplateKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionFormatKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataFormatKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDateStyleKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableDateComponentsAttributeMetadataDateStyleKey];

  return v3;
}

@end