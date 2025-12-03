@interface INCodableTimeIntervalAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableTimeIntervalAttributeMetadata)initWithCoder:(id)coder;
- (NSNumber)defaultValue;
- (id)__INCodableDescriptionDefaultUnitKey;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionMaximumUnitKey;
- (id)__INCodableDescriptionMaximumValueKey;
- (id)__INCodableDescriptionMinimumUnitKey;
- (id)__INCodableDescriptionMinimumValueKey;
- (id)__INCodableDescriptionUnitKey;
- (id)__INIntentResponseCodableDescriptionDefaultUnitKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionMaximumUnitKey;
- (id)__INIntentResponseCodableDescriptionMaximumValueKey;
- (id)__INIntentResponseCodableDescriptionMinimumUnitKey;
- (id)__INIntentResponseCodableDescriptionMinimumValueKey;
- (id)__INIntentResponseCodableDescriptionUnitKey;
- (id)__INTypeCodableDescriptionDefaultUnitKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionMaximumUnitKey;
- (id)__INTypeCodableDescriptionMaximumValueKey;
- (id)__INTypeCodableDescriptionMinimumUnitKey;
- (id)__INTypeCodableDescriptionMinimumValueKey;
- (id)__INTypeCodableDescriptionUnitKey;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableTimeIntervalAttributeMetadata

- (id)__INCodableDescriptionUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataUnitKey];

  return __INCodableTimeIntervalAttributeMetadataUnitKey;
}

- (id)__INCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultValueKey];

  return __INCodableTimeIntervalAttributeMetadataDefaultValueKey;
}

- (id)__INCodableDescriptionMinimumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMinimumValueKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumValueKey];

  return __INCodableTimeIntervalAttributeMetadataMinimumValueKey;
}

- (id)__INCodableDescriptionMaximumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMaximumValueKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumValueKey];

  return __INCodableTimeIntervalAttributeMetadataMaximumValueKey;
}

- (INCodableTimeIntervalAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = INCodableTimeIntervalAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    -[INCodableTimeIntervalAttributeMetadata setDefaultUnit:](v5, "setDefaultUnit:", [coderCopy decodeIntegerForKey:@"defaultUnit"]);
    -[INCodableTimeIntervalAttributeMetadata setMinimumUnit:](v5, "setMinimumUnit:", [coderCopy decodeIntegerForKey:@"minimumUnit"]);
    -[INCodableTimeIntervalAttributeMetadata setMaximumUnit:](v5, "setMaximumUnit:", [coderCopy decodeIntegerForKey:@"maximumUnit"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    [(INCodableTimeIntervalAttributeMetadata *)v5 setDefaultValue:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumValue"];
    [(INCodableTimeIntervalAttributeMetadata *)v5 setMinimumValue:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumValue"];
    [(INCodableTimeIntervalAttributeMetadata *)v5 setMaximumValue:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableTimeIntervalAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_defaultUnit forKey:{@"defaultUnit", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_minimumUnit forKey:@"minimumUnit"];
  [coderCopy encodeInteger:self->_maximumUnit forKey:@"maximumUnit"];
  [coderCopy encodeObject:self->_defaultValue forKey:@"defaultValue"];
  [coderCopy encodeObject:self->_minimumValue forKey:@"minimumValue"];
  [coderCopy encodeObject:self->_maximumValue forKey:@"maximumValue"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableTimeIntervalAttributeMetadata;
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
    [v6 intents_setIntegerIfNonZero:self->_defaultUnit forKey:@"defaultUnit"];
    [v6 intents_setIntegerIfNonZero:self->_minimumUnit forKey:@"minimumUnit"];
    [v6 intents_setIntegerIfNonZero:self->_maximumUnit forKey:@"maximumUnit"];
    [v6 intents_setPlistSafeObject:self->_defaultValue forKey:@"defaultValue"];
    [v6 intents_setPlistSafeObject:self->_minimumValue forKey:@"minimumValue"];
    [v6 intents_setPlistSafeObject:self->_maximumValue forKey:@"maximumValue"];
    v10 = [v6 copy];
  }

  return v10;
}

- (NSNumber)defaultValue
{
  if (self->_defaultValue)
  {
    return self->_defaultValue;
  }

  else
  {
    return &unk_1F02D7FF0;
  }
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v35[7] = *MEMORY[0x1E69E9840];
  minimumUnit = self->_minimumUnit;
  if (minimumUnit == self->_maximumUnit)
  {
    v5 = minimumUnit - 1;
    if (v5 > 2)
    {
      v6 = @"Seconds";
    }

    else
    {
      v6 = *(&off_1E72814B0 + v5);
    }
  }

  else
  {
    v6 = @"Multiple";
  }

  v33.receiver = self;
  v33.super_class = INCodableTimeIntervalAttributeMetadata;
  v29 = [(INCodableAttributeMetadata *)&v33 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionUnitKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionUnitKey];
  v34[0] = __INCodableDescriptionUnitKey;
  v35[0] = v6;
  __INCodableDescriptionDefaultUnitKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionDefaultUnitKey];
  v34[1] = __INCodableDescriptionDefaultUnitKey;
  defaultUnit = [(INCodableTimeIntervalAttributeMetadata *)self defaultUnit];
  if ((defaultUnit - 1) > 2)
  {
    v8 = @"Seconds";
  }

  else
  {
    v8 = *(&off_1E72814B0 + defaultUnit - 1);
  }

  v35[1] = v8;
  __INCodableDescriptionMinimumUnitKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumUnitKey];
  v34[2] = __INCodableDescriptionMinimumUnitKey;
  minimumUnit = [(INCodableTimeIntervalAttributeMetadata *)self minimumUnit];
  if ((minimumUnit - 1) > 2)
  {
    v10 = @"Seconds";
  }

  else
  {
    v10 = *(&off_1E72814B0 + minimumUnit - 1);
  }

  v35[2] = v10;
  __INCodableDescriptionMaximumUnitKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumUnitKey];
  v34[3] = __INCodableDescriptionMaximumUnitKey;
  maximumUnit = [(INCodableTimeIntervalAttributeMetadata *)self maximumUnit];
  if ((maximumUnit - 1) > 2)
  {
    v12 = @"Seconds";
  }

  else
  {
    v12 = *(&off_1E72814B0 + maximumUnit - 1);
  }

  v35[3] = v12;
  __INCodableDescriptionDefaultValueKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v34[4] = __INCodableDescriptionDefaultValueKey;
  defaultValue = [(INCodableTimeIntervalAttributeMetadata *)self defaultValue];
  v14 = defaultValue;
  if (!defaultValue)
  {
    defaultValue = [MEMORY[0x1E695DFB0] null];
  }

  v26 = defaultValue;
  v35[4] = defaultValue;
  __INCodableDescriptionMinimumValueKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v34[5] = __INCodableDescriptionMinimumValueKey;
  minimumValue = [(INCodableTimeIntervalAttributeMetadata *)self minimumValue];
  null = minimumValue;
  if (!minimumValue)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = null;
  __INCodableDescriptionMaximumValueKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v34[6] = __INCodableDescriptionMaximumValueKey;
  maximumValue = [(INCodableTimeIntervalAttributeMetadata *)self maximumValue];
  null2 = maximumValue;
  if (!maximumValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = null2;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:7];
  v22 = [v29 if_dictionaryByAddingEntriesFromDictionary:v21];

  if (!maximumValue)
  {
  }

  if (!minimumValue)
  {
  }

  if (!v14)
  {
  }

  if_dictionaryWithNonEmptyValues = [v22 if_dictionaryWithNonEmptyValues];

  v24 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = INCodableTimeIntervalAttributeMetadata;
  [(INCodableAttributeMetadata *)&v48 updateWithDictionary:dictionaryCopy];
  __INCodableDescriptionUnitKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionUnitKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionUnitKey];

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

  if ([v8 isEqualToString:@"Multiple"])
  {
    __INCodableDescriptionDefaultUnitKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionDefaultUnitKey];
    v10 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultUnitKey];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v14 = v11;

    v15 = INCodableTimeIntervalAttributeMetadataUnitWithString(v14);
    self->_defaultUnit = v15;
    __INCodableDescriptionMinimumUnitKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumUnitKey];
    v17 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMinimumUnitKey];

    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = INCodableTimeIntervalAttributeMetadataUnitWithString(v19);
    self->_minimumUnit = v20;
    __INCodableDescriptionMaximumUnitKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumUnitKey];
    v22 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMaximumUnitKey];

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

    v12 = INCodableTimeIntervalAttributeMetadataUnitWithString(v24);
    v13 = &OBJC_IVAR___INCodableTimeIntervalAttributeMetadata__maximumUnit;
  }

  else
  {
    v12 = INCodableTimeIntervalAttributeMetadataUnitWithString(v8);
    self->_defaultUnit = v12;
    self->_maximumUnit = v12;
    v13 = &OBJC_IVAR___INCodableTimeIntervalAttributeMetadata__minimumUnit;
  }

  *(&self->super.super.isa + *v13) = v12;
  __INCodableDescriptionDefaultValueKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v26 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultValueKey];

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

  __INCodableDescriptionMinimumValueKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v31 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMinimumValueKey];

  if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (![v31 length])
    {
      v32 = 0;
      goto LABEL_43;
    }
  }

  else
  {

    v31 = 0;
  }

  __INCodableDescriptionMinimumValueKey2 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v34 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMinimumValueKey2];

  if (v34)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = &unk_1F02D7FF0;
  }

  v32 = v37;

LABEL_43:
  minimumValue = self->_minimumValue;
  self->_minimumValue = v32;

  __INCodableDescriptionMaximumValueKey = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v40 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMaximumValueKey];

  if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (![v40 length])
    {
      v41 = 0;
      goto LABEL_57;
    }
  }

  else
  {

    v40 = 0;
  }

  __INCodableDescriptionMaximumValueKey2 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v43 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMaximumValueKey2];

  if (v43)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;

  if (v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = &unk_1F02D7FF0;
  }

  v41 = v46;

LABEL_57:
  maximumValue = self->_maximumValue;
  self->_maximumValue = v41;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___INCodableTimeIntervalAttributeMetadata;
  v17 = 0;
  v7 = objc_msgSendSuper2(&v16, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v17);
  v8 = v17;
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
    [v7 setDefaultUnit:{objc_msgSend(representationCopy, "intents_intForKey:", @"defaultUnit"}];
    [v7 setMinimumUnit:{objc_msgSend(representationCopy, "intents_intForKey:", @"minimumUnit"}];
    [v7 setMaximumUnit:{objc_msgSend(representationCopy, "intents_intForKey:", @"maximumUnit"}];
    v12 = [representationCopy intents_numberForKey:@"defaultValue"];
    [v7 setDefaultValue:v12];

    v13 = [representationCopy intents_numberForKey:@"minimumValue"];
    [v7 setMinimumValue:v13];

    v14 = [representationCopy intents_numberForKey:@"maximumValue"];
    [v7 setMaximumValue:v14];

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataUnitKey];

  return __INCodableTimeIntervalAttributeMetadataUnitKey;
}

- (id)__INTypeCodableDescriptionMinimumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMinimumValueKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumValueKey];

  return __INCodableTimeIntervalAttributeMetadataMinimumValueKey;
}

- (id)__INTypeCodableDescriptionMinimumUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMinimumUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumUnitKey];

  return __INCodableTimeIntervalAttributeMetadataMinimumUnitKey;
}

- (id)__INTypeCodableDescriptionMaximumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMaximumValueKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumValueKey];

  return __INCodableTimeIntervalAttributeMetadataMaximumValueKey;
}

- (id)__INTypeCodableDescriptionMaximumUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMaximumUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumUnitKey];

  return __INCodableTimeIntervalAttributeMetadataMaximumUnitKey;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultValueKey];

  return __INCodableTimeIntervalAttributeMetadataDefaultValueKey;
}

- (id)__INTypeCodableDescriptionDefaultUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataDefaultUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultUnitKey];

  return __INCodableTimeIntervalAttributeMetadataDefaultUnitKey;
}

- (id)__INIntentResponseCodableDescriptionUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataUnitKey];

  return __INCodableTimeIntervalAttributeMetadataUnitKey;
}

- (id)__INIntentResponseCodableDescriptionMinimumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMinimumValueKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumValueKey];

  return __INCodableTimeIntervalAttributeMetadataMinimumValueKey;
}

- (id)__INIntentResponseCodableDescriptionMinimumUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMinimumUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumUnitKey];

  return __INCodableTimeIntervalAttributeMetadataMinimumUnitKey;
}

- (id)__INIntentResponseCodableDescriptionMaximumValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMaximumValueKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumValueKey];

  return __INCodableTimeIntervalAttributeMetadataMaximumValueKey;
}

- (id)__INIntentResponseCodableDescriptionMaximumUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMaximumUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumUnitKey];

  return __INCodableTimeIntervalAttributeMetadataMaximumUnitKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultValueKey];

  return __INCodableTimeIntervalAttributeMetadataDefaultValueKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataDefaultUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultUnitKey];

  return __INCodableTimeIntervalAttributeMetadataDefaultUnitKey;
}

- (id)__INCodableDescriptionMinimumUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMinimumUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumUnitKey];

  return __INCodableTimeIntervalAttributeMetadataMinimumUnitKey;
}

- (id)__INCodableDescriptionMaximumUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataMaximumUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumUnitKey];

  return __INCodableTimeIntervalAttributeMetadataMaximumUnitKey;
}

- (id)__INCodableDescriptionDefaultUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableTimeIntervalAttributeMetadataDefaultUnitKey = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultUnitKey];

  return __INCodableTimeIntervalAttributeMetadataDefaultUnitKey;
}

@end