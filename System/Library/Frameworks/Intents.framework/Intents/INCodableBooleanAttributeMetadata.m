@interface INCodableBooleanAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableBooleanAttributeMetadata)initWithCoder:(id)a3;
- (NSString)localizedFalseDisplayName;
- (NSString)localizedTrueDisplayName;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionFalseDisplayNameIDKey;
- (id)__INCodableDescriptionFalseDisplayNameKey;
- (id)__INCodableDescriptionTrueDisplayNameIDKey;
- (id)__INCodableDescriptionTrueDisplayNameKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionFalseDisplayNameIDKey;
- (id)__INIntentResponseCodableDescriptionFalseDisplayNameKey;
- (id)__INIntentResponseCodableDescriptionTrueDisplayNameIDKey;
- (id)__INIntentResponseCodableDescriptionTrueDisplayNameKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionFalseDisplayNameIDKey;
- (id)__INTypeCodableDescriptionFalseDisplayNameKey;
- (id)__INTypeCodableDescriptionTrueDisplayNameIDKey;
- (id)__INTypeCodableDescriptionTrueDisplayNameKey;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedFalseDisplayNameWithLocalizer:(id)a3;
- (id)localizedTrueDisplayNameWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableBooleanAttributeMetadata

- (id)__INCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INCodableDescriptionFalseDisplayNameKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameKey];

  return v3;
}

- (id)__INCodableDescriptionFalseDisplayNameIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey];

  return v3;
}

- (id)__INCodableDescriptionTrueDisplayNameKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameKey];

  return v3;
}

- (id)__INCodableDescriptionTrueDisplayNameIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey];

  return v3;
}

- (INCodableBooleanAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = INCodableBooleanAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    [(INCodableBooleanAttributeMetadata *)v5 setDefaultValue:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"falseDisplayName"];
    [(INCodableBooleanAttributeMetadata *)v5 setFalseDisplayName:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"falseDisplayNameID"];
    [(INCodableBooleanAttributeMetadata *)v5 setFalseDisplayNameID:v11];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"trueDisplayName"];
    [(INCodableBooleanAttributeMetadata *)v5 setTrueDisplayName:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trueDisplayNameID"];
    [(INCodableBooleanAttributeMetadata *)v5 setTrueDisplayNameID:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableBooleanAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_defaultValue forKey:{@"defaultValue", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_falseDisplayName forKey:@"falseDisplayName"];
  [v4 encodeObject:self->_falseDisplayNameID forKey:@"falseDisplayNameID"];
  [v4 encodeObject:self->_trueDisplayName forKey:@"trueDisplayName"];
  [v4 encodeObject:self->_trueDisplayNameID forKey:@"trueDisplayNameID"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableBooleanAttributeMetadata;
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
    [v6 intents_setPlistSafeObject:self->_defaultValue forKey:@"defaultValue"];
    [v6 intents_setPlistSafeObject:self->_falseDisplayName forKey:@"falseDisplayName"];
    [v6 intents_setPlistSafeObject:self->_falseDisplayNameID forKey:@"falseDisplayNameID"];
    [v6 intents_setPlistSafeObject:self->_trueDisplayName forKey:@"trueDisplayName"];
    [v6 intents_setPlistSafeObject:self->_trueDisplayNameID forKey:@"trueDisplayNameID"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)localizedFalseDisplayNameWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableBooleanAttributeMetadata *)self falseDisplayNameID];
  v6 = [(INCodableBooleanAttributeMetadata *)self falseDisplayName];
  v7 = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);

  return v8;
}

- (NSString)localizedFalseDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableBooleanAttributeMetadata *)self localizedFalseDisplayNameWithLocalizer:v3];

  return v4;
}

- (id)localizedTrueDisplayNameWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableBooleanAttributeMetadata *)self trueDisplayNameID];
  v6 = [(INCodableBooleanAttributeMetadata *)self trueDisplayName];
  v7 = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);

  return v8;
}

- (NSString)localizedTrueDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableBooleanAttributeMetadata *)self localizedTrueDisplayNameWithLocalizer:v3];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v32[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = INCodableBooleanAttributeMetadata;
  v25 = [(INCodableAttributeMetadata *)&v30 dictionaryRepresentationWithLocalizer:v4];
  v28 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v31[0] = v28;
  v5 = [(INCodableBooleanAttributeMetadata *)self defaultValue];
  v27 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v5;
  v32[0] = v5;
  v26 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionTrueDisplayNameKey];
  v31[1] = v26;
  v6 = [(INCodableBooleanAttributeMetadata *)self localizedTrueDisplayNameWithLocalizer:v4];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v6;
  v32[1] = v6;
  v24 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionTrueDisplayNameIDKey];
  v31[2] = v24;
  v8 = [(INCodableBooleanAttributeMetadata *)self trueDisplayNameID];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v32[2] = v8;
  v23 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionFalseDisplayNameKey];
  v31[3] = v23;
  v29 = v4;
  v10 = [(INCodableBooleanAttributeMetadata *)self localizedFalseDisplayNameWithLocalizer:v4];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v32[3] = v11;
  v12 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionFalseDisplayNameIDKey];
  v31[4] = v12;
  v13 = [(INCodableBooleanAttributeMetadata *)self falseDisplayNameID];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v32[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:5];
  v16 = [v25 if_dictionaryByAddingEntriesFromDictionary:v15];

  if (!v13)
  {
  }

  if (!v10)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v27)
  {
  }

  v17 = [v16 if_dictionaryWithNonEmptyValues];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = INCodableBooleanAttributeMetadata;
  [(INCodableAttributeMetadata *)&v35 updateWithDictionary:v4];
  v5 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
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

  v9 = [v8 copy];
  defaultValue = self->_defaultValue;
  self->_defaultValue = v9;

  v11 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionFalseDisplayNameKey];
  v12 = [v4 objectForKeyedSubscript:v11];

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 copy];
  falseDisplayName = self->_falseDisplayName;
  self->_falseDisplayName = v15;

  v17 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionFalseDisplayNameIDKey];
  v18 = [v4 objectForKeyedSubscript:v17];

  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = [v20 copy];
  falseDisplayNameID = self->_falseDisplayNameID;
  self->_falseDisplayNameID = v21;

  v23 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionTrueDisplayNameKey];
  v24 = [v4 objectForKeyedSubscript:v23];

  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v27 = [v26 copy];
  trueDisplayName = self->_trueDisplayName;
  self->_trueDisplayName = v27;

  v29 = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionTrueDisplayNameIDKey];
  v30 = [v4 objectForKeyedSubscript:v29];

  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  v33 = [v32 copy];
  trueDisplayNameID = self->_trueDisplayNameID;
  self->_trueDisplayNameID = v33;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___INCodableBooleanAttributeMetadata;
  v19 = 0;
  v7 = objc_msgSendSuper2(&v18, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v19);
  v8 = v19;
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
    v12 = [v6 intents_numberForKey:@"defaultValue"];
    [v7 setDefaultValue:v12];

    v13 = [v6 intents_stringForKey:@"falseDisplayName"];
    [v7 setFalseDisplayName:v13];

    v14 = [v6 intents_stringForKey:@"falseDisplayNameID"];
    [v7 setFalseDisplayNameID:v14];

    v15 = [v6 intents_stringForKey:@"trueDisplayName"];
    [v7 setTrueDisplayName:v15];

    v16 = [v6 intents_stringForKey:@"trueDisplayNameID"];
    [v7 setTrueDisplayNameID:v16];

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTrueDisplayNameIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey];

  return v3;
}

- (id)__INTypeCodableDescriptionTrueDisplayNameKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameKey];

  return v3;
}

- (id)__INTypeCodableDescriptionFalseDisplayNameIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey];

  return v3;
}

- (id)__INTypeCodableDescriptionFalseDisplayNameKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTrueDisplayNameIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTrueDisplayNameKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionFalseDisplayNameIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionFalseDisplayNameKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableBooleanAttributeMetadataDefaultValueKey];

  return v3;
}

@end