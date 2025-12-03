@interface INCodableNumberAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)supportsNegativeNumbers;
- (INCodableNumberAttributeMetadata)initWithCoder:(id)coder;
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
- (id)_localizedDialogTokensWithLocalizer:(id)localizer;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableNumberAttributeMetadata

- (id)__INCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataTypeKey = [objc_opt_class() __INCodableNumberAttributeMetadataTypeKey];

  return __INCodableNumberAttributeMetadataTypeKey;
}

- (id)__INCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableNumberAttributeMetadataDefaultValueKey];

  return __INCodableNumberAttributeMetadataDefaultValueKey;
}

- (id)__INCodableDescriptionMinimumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataMinimumValueKey = [objc_opt_class() __INCodableNumberAttributeMetadataMinimumValueKey];

  return __INCodableNumberAttributeMetadataMinimumValueKey;
}

- (id)__INCodableDescriptionMaximumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataMaximumValueKey = [objc_opt_class() __INCodableNumberAttributeMetadataMaximumValueKey];

  return __INCodableNumberAttributeMetadataMaximumValueKey;
}

- (INCodableNumberAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = INCodableNumberAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    defaultValue = v5->_defaultValue;
    v5->_defaultValue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumValue"];
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumValue"];
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableNumberAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_defaultValue forKey:@"defaultValue"];
  [coderCopy encodeObject:self->_minimumValue forKey:@"minimumValue"];
  [coderCopy encodeObject:self->_maximumValue forKey:@"maximumValue"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableNumberAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:parameters error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
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

- (id)_localizedDialogTokensWithLocalizer:(id)localizer
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"minimumValue";
  minimumValue = [(INCodableNumberAttributeMetadata *)self minimumValue];
  stringValue = [minimumValue stringValue];
  v6 = stringValue;
  if (stringValue)
  {
    v7 = stringValue;
  }

  else
  {
    v7 = &stru_1F01E0850;
  }

  v15[1] = @"maximumValue";
  v16[0] = v7;
  maximumValue = [(INCodableNumberAttributeMetadata *)self maximumValue];
  stringValue2 = [maximumValue stringValue];
  v10 = stringValue2;
  if (stringValue2)
  {
    v11 = stringValue2;
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

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v30[5] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = INCodableNumberAttributeMetadata;
  v24 = [(INCodableAttributeMetadata *)&v28 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionTypeKey = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v29[0] = __INCodableDescriptionTypeKey;
  type = [(INCodableNumberAttributeMetadata *)self type];
  v5 = @"Field";
  if (type == 1)
  {
    v5 = @"Stepper";
  }

  if (type == 2)
  {
    v5 = @"Slider";
  }

  v26 = v5;
  v30[0] = v26;
  __INCodableDescriptionSupportsNegativeNumbersKey = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionSupportsNegativeNumbersKey];
  v29[1] = __INCodableDescriptionSupportsNegativeNumbersKey;
  null = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableNumberAttributeMetadata supportsNegativeNumbers](self, "supportsNegativeNumbers")}];
  v7 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v30[1] = null;
  __INCodableDescriptionDefaultValueKey = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v29[2] = __INCodableDescriptionDefaultValueKey;
  defaultValue = [(INCodableNumberAttributeMetadata *)self defaultValue];
  v9 = defaultValue;
  if (!defaultValue)
  {
    defaultValue = [MEMORY[0x1E695DFB0] null];
  }

  v30[2] = defaultValue;
  __INCodableDescriptionMinimumValueKey = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v29[3] = __INCodableDescriptionMinimumValueKey;
  minimumValue = [(INCodableNumberAttributeMetadata *)self minimumValue];
  null2 = minimumValue;
  if (!minimumValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v30[3] = null2;
  __INCodableDescriptionMaximumValueKey = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v29[4] = __INCodableDescriptionMaximumValueKey;
  maximumValue = [(INCodableNumberAttributeMetadata *)self maximumValue];
  null3 = maximumValue;
  if (!maximumValue)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = null3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:5];
  v16 = [v24 if_dictionaryByAddingEntriesFromDictionary:v15];

  if (!maximumValue)
  {
  }

  if (!minimumValue)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if_dictionaryWithNonEmptyValues = [v16 if_dictionaryWithNonEmptyValues];

  v18 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = INCodableNumberAttributeMetadata;
  [(INCodableAttributeMetadata *)&v33 updateWithDictionary:dictionaryCopy];
  __INCodableDescriptionTypeKey = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTypeKey];

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
  __INCodableDescriptionDefaultValueKey = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v11 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultValueKey];

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

  __INCodableDescriptionMinimumValueKey = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v16 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMinimumValueKey];

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

  __INCodableDescriptionMinimumValueKey2 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v19 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMinimumValueKey2];

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

  __INCodableDescriptionMaximumValueKey = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v25 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMaximumValueKey];

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

  __INCodableDescriptionMaximumValueKey2 = [(INCodableNumberAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v28 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMaximumValueKey2];

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

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS___INCodableNumberAttributeMetadata;
  v20 = 0;
  v7 = objc_msgSendSuper2(&v19, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v20);
  v8 = v20;
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v7[5] = [representationCopy intents_intForKey:@"type"];
    v12 = [representationCopy intents_numberForKey:@"defaultValue"];
    v13 = v7[6];
    v7[6] = v12;

    v14 = [representationCopy intents_numberForKey:@"minimumValue"];
    v15 = v7[7];
    v7[7] = v14;

    v16 = [representationCopy intents_numberForKey:@"maximumValue"];
    v17 = v7[8];
    v7[8] = v16;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataTypeKey = [objc_opt_class() __INCodableNumberAttributeMetadataTypeKey];

  return __INCodableNumberAttributeMetadataTypeKey;
}

- (id)__INTypeCodableDescriptionSupportsNegativeNumbersKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey = [objc_opt_class() __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey];

  return __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey;
}

- (id)__INTypeCodableDescriptionMinimumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataMinimumValueKey = [objc_opt_class() __INCodableNumberAttributeMetadataMinimumValueKey];

  return __INCodableNumberAttributeMetadataMinimumValueKey;
}

- (id)__INTypeCodableDescriptionMaximumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataMaximumValueKey = [objc_opt_class() __INCodableNumberAttributeMetadataMaximumValueKey];

  return __INCodableNumberAttributeMetadataMaximumValueKey;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableNumberAttributeMetadataDefaultValueKey];

  return __INCodableNumberAttributeMetadataDefaultValueKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataTypeKey = [objc_opt_class() __INCodableNumberAttributeMetadataTypeKey];

  return __INCodableNumberAttributeMetadataTypeKey;
}

- (id)__INIntentResponseCodableDescriptionSupportsNegativeNumbersKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey = [objc_opt_class() __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey];

  return __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey;
}

- (id)__INIntentResponseCodableDescriptionMinimumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataMinimumValueKey = [objc_opt_class() __INCodableNumberAttributeMetadataMinimumValueKey];

  return __INCodableNumberAttributeMetadataMinimumValueKey;
}

- (id)__INIntentResponseCodableDescriptionMaximumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataMaximumValueKey = [objc_opt_class() __INCodableNumberAttributeMetadataMaximumValueKey];

  return __INCodableNumberAttributeMetadataMaximumValueKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableNumberAttributeMetadataDefaultValueKey];

  return __INCodableNumberAttributeMetadataDefaultValueKey;
}

- (id)__INCodableDescriptionSupportsNegativeNumbersKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey = [objc_opt_class() __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey];

  return __INCodableNumberAttributeMetadataSupportsNegativeNumbersKey;
}

@end