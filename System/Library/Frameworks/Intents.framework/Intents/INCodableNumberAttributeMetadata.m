@interface INCodableNumberAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)supportsNegativeNumbers;
- (INCodableNumberAttributeMetadata)initWithCoder:(id)a3;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionMaximumValueKey;
- (id)__INCodableDescriptionMinimumValueKey;
- (id)__INCodableDescriptionSupportsNegativeNumbersKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionMaximumValueKey;
- (id)__INIntentResponseCodableDescriptionMinimumValueKey;
- (id)__INIntentResponseCodableDescriptionSupportsNegativeNumbersKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionMaximumValueKey;
- (id)__INTypeCodableDescriptionMinimumValueKey;
- (id)__INTypeCodableDescriptionSupportsNegativeNumbersKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)_localizedDialogTokensWithLocalizer:(id)a3;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableNumberAttributeMetadata

- (id)__INCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataTypeKey];

  return v3;
}

- (id)__INCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INCodableDescriptionMinimumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataMinimumValueKey];

  return v3;
}

- (id)__INCodableDescriptionMaximumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataMaximumValueKey];

  return v3;
}

- (INCodableNumberAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INCodableNumberAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    defaultValue = v5->_defaultValue;
    v5->_defaultValue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumValue"];
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumValue"];
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableNumberAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_defaultValue forKey:@"defaultValue"];
  [v4 encodeObject:self->_minimumValue forKey:@"minimumValue"];
  [v4 encodeObject:self->_maximumValue forKey:@"maximumValue"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableNumberAttributeMetadata;
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
    [v6 intents_setIntegerIfNonZero:self->_type forKey:@"type"];
    [v6 intents_setPlistSafeObject:self->_defaultValue forKey:@"defaultValue"];
    [v6 intents_setPlistSafeObject:self->_minimumValue forKey:@"minimumValue"];
    [v6 intents_setPlistSafeObject:self->_maximumValue forKey:@"maximumValue"];
    v10 = v6;
  }

  return v10;
}

- (id)_localizedDialogTokensWithLocalizer:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"minimumValue";
  v4 = [(INCodableNumberAttributeMetadata *)self minimumValue];
  v5 = [v4 stringValue];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F01E0850;
  }

  v15[1] = @"maximumValue";
  v16[0] = v7;
  v8 = [(INCodableNumberAttributeMetadata *)self maximumValue];
  v9 = [v8 stringValue];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F01E0850;
  }

  v16[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)supportsNegativeNumbers
{
  minimumValue = self->_minimumValue;
  if (!minimumValue)
  {
    return 1;
  }

  [(NSNumber *)minimumValue doubleValue];
  return v3 < 0.0;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v30[5] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = INCodableNumberAttributeMetadata;
  v24 = [(INCodableAttributeMetadata *)&v28 dictionaryRepresentationWithLocalizer:a3];
  v27 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v29[0] = v27;
  v4 = [(INCodableNumberAttributeMetadata *)self type];
  v5 = @"Field";
  if (v4 == 1)
  {
    v5 = @"Stepper";
  }

  if (v4 == 2)
  {
    v5 = @"Slider";
  }

  v26 = v5;
  v30[0] = v26;
  v25 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionSupportsNegativeNumbersKey];
  v29[1] = v25;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableNumberAttributeMetadata supportsNegativeNumbers](self, "supportsNegativeNumbers")}];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v6;
  v30[1] = v6;
  v23 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v29[2] = v23;
  v8 = [(INCodableNumberAttributeMetadata *)self defaultValue];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v30[2] = v8;
  v22 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v29[3] = v22;
  v10 = [(INCodableNumberAttributeMetadata *)self minimumValue];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v30[3] = v11;
  v12 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v29[4] = v12;
  v13 = [(INCodableNumberAttributeMetadata *)self maximumValue];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:5];
  v16 = [v24 if_dictionaryByAddingEntriesFromDictionary:v15];

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

  v17 = [v16 if_dictionaryWithNonEmptyValues];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = INCodableNumberAttributeMetadata;
  [(INCodableAttributeMetadata *)&v33 updateWithDictionary:v4];
  v5 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionTypeKey];
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

  v9 = INCodableAttributeMetadataInputTypeWithString(v8);
  self->_type = v9;
  v10 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
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

  defaultValue = self->_defaultValue;
  self->_defaultValue = v13;

  v15 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v16 = [v4 objectForKeyedSubscript:v15];

  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (![v16 length])
    {
      v17 = 0;
      goto LABEL_25;
    }
  }

  else
  {

    v16 = 0;
  }

  v18 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v19 = [v4 objectForKeyedSubscript:v18];

  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = &unk_1F02D8200;
  }

  v17 = v22;

LABEL_25:
  minimumValue = self->_minimumValue;
  self->_minimumValue = v17;

  v24 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v25 = [v4 objectForKeyedSubscript:v24];

  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (![v25 length])
    {
      v26 = 0;
      goto LABEL_39;
    }
  }

  else
  {

    v25 = 0;
  }

  v27 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v28 = [v4 objectForKeyedSubscript:v27];

  if (v28)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = &unk_1F02D8200;
  }

  v26 = v31;

LABEL_39:
  maximumValue = self->_maximumValue;
  self->_maximumValue = v26;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS___INCodableNumberAttributeMetadata;
  v20 = 0;
  v7 = objc_msgSendSuper2(&v19, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v20);
  v8 = v20;
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
    v12 = [v6 intents_numberForKey:@"defaultValue"];
    v13 = v7[6];
    v7[6] = v12;

    v14 = [v6 intents_numberForKey:@"minimumValue"];
    v15 = v7[7];
    v7[7] = v14;

    v16 = [v6 intents_numberForKey:@"maximumValue"];
    v17 = v7[8];
    v7[8] = v16;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataTypeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionSupportsNegativeNumbersKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey];

  return v3;
}

- (id)__INTypeCodableDescriptionMinimumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataMinimumValueKey];

  return v3;
}

- (id)__INTypeCodableDescriptionMaximumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataMaximumValueKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionSupportsNegativeNumbersKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionMinimumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataMinimumValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionMaximumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataMaximumValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INCodableDescriptionSupportsNegativeNumbersKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey];

  return v3;
}

@end