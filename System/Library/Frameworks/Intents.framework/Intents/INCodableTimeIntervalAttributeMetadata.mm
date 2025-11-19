@interface INCodableTimeIntervalAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableTimeIntervalAttributeMetadata)initWithCoder:(id)a3;
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
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableTimeIntervalAttributeMetadata

- (id)__INCodableDescriptionUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataUnitKey];

  return v3;
}

- (id)__INCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INCodableDescriptionMinimumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumValueKey];

  return v3;
}

- (id)__INCodableDescriptionMaximumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumValueKey];

  return v3;
}

- (INCodableTimeIntervalAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = INCodableTimeIntervalAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v10 initWithCoder:v4];
  if (v5)
  {
    -[INCodableTimeIntervalAttributeMetadata setDefaultUnit:](v5, "setDefaultUnit:", [v4 decodeIntegerForKey:@"defaultUnit"]);
    -[INCodableTimeIntervalAttributeMetadata setMinimumUnit:](v5, "setMinimumUnit:", [v4 decodeIntegerForKey:@"minimumUnit"]);
    -[INCodableTimeIntervalAttributeMetadata setMaximumUnit:](v5, "setMaximumUnit:", [v4 decodeIntegerForKey:@"maximumUnit"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    [(INCodableTimeIntervalAttributeMetadata *)v5 setDefaultValue:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumValue"];
    [(INCodableTimeIntervalAttributeMetadata *)v5 setMinimumValue:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumValue"];
    [(INCodableTimeIntervalAttributeMetadata *)v5 setMaximumValue:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableTimeIntervalAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_defaultUnit forKey:{@"defaultUnit", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_minimumUnit forKey:@"minimumUnit"];
  [v4 encodeInteger:self->_maximumUnit forKey:@"maximumUnit"];
  [v4 encodeObject:self->_defaultValue forKey:@"defaultValue"];
  [v4 encodeObject:self->_minimumValue forKey:@"minimumValue"];
  [v4 encodeObject:self->_maximumValue forKey:@"maximumValue"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableTimeIntervalAttributeMetadata;
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

- (id)dictionaryRepresentationWithLocalizer:(id)a3
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
  v29 = [(INCodableAttributeMetadata *)&v33 dictionaryRepresentationWithLocalizer:a3];
  v32 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionUnitKey];
  v34[0] = v32;
  v35[0] = v6;
  v31 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionDefaultUnitKey];
  v34[1] = v31;
  v7 = [(INCodableTimeIntervalAttributeMetadata *)self defaultUnit];
  if ((v7 - 1) > 2)
  {
    v8 = @"Seconds";
  }

  else
  {
    v8 = *(&off_1E72814B0 + v7 - 1);
  }

  v35[1] = v8;
  v30 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumUnitKey];
  v34[2] = v30;
  v9 = [(INCodableTimeIntervalAttributeMetadata *)self minimumUnit];
  if ((v9 - 1) > 2)
  {
    v10 = @"Seconds";
  }

  else
  {
    v10 = *(&off_1E72814B0 + v9 - 1);
  }

  v35[2] = v10;
  v28 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumUnitKey];
  v34[3] = v28;
  v11 = [(INCodableTimeIntervalAttributeMetadata *)self maximumUnit];
  if ((v11 - 1) > 2)
  {
    v12 = @"Seconds";
  }

  else
  {
    v12 = *(&off_1E72814B0 + v11 - 1);
  }

  v35[3] = v12;
  v27 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v34[4] = v27;
  v13 = [(INCodableTimeIntervalAttributeMetadata *)self defaultValue];
  v14 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v13;
  v35[4] = v13;
  v15 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v34[5] = v15;
  v16 = [(INCodableTimeIntervalAttributeMetadata *)self minimumValue];
  v17 = v16;
  if (!v16)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = v17;
  v18 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v34[6] = v18;
  v19 = [(INCodableTimeIntervalAttributeMetadata *)self maximumValue];
  v20 = v19;
  if (!v19)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:7];
  v22 = [v29 if_dictionaryByAddingEntriesFromDictionary:v21];

  if (!v19)
  {
  }

  if (!v16)
  {
  }

  if (!v14)
  {
  }

  v23 = [v22 if_dictionaryWithNonEmptyValues];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = INCodableTimeIntervalAttributeMetadata;
  [(INCodableAttributeMetadata *)&v48 updateWithDictionary:v4];
  v5 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionUnitKey];
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

  if ([v8 isEqualToString:@"Multiple"])
  {
    v9 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionDefaultUnitKey];
    v10 = [v4 objectForKeyedSubscript:v9];

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
    v16 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumUnitKey];
    v17 = [v4 objectForKeyedSubscript:v16];

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
    v21 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumUnitKey];
    v22 = [v4 objectForKeyedSubscript:v21];

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
  v25 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
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

  v30 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v31 = [v4 objectForKeyedSubscript:v30];

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

  v33 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMinimumValueKey];
  v34 = [v4 objectForKeyedSubscript:v33];

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

  v39 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v40 = [v4 objectForKeyedSubscript:v39];

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

  v42 = [(INCodableTimeIntervalAttributeMetadata *)self __INCodableDescriptionMaximumValueKey];
  v43 = [v4 objectForKeyedSubscript:v42];

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

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___INCodableTimeIntervalAttributeMetadata;
  v17 = 0;
  v7 = objc_msgSendSuper2(&v16, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v17);
  v8 = v17;
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
    [v7 setDefaultUnit:{objc_msgSend(v6, "intents_intForKey:", @"defaultUnit"}];
    [v7 setMinimumUnit:{objc_msgSend(v6, "intents_intForKey:", @"minimumUnit"}];
    [v7 setMaximumUnit:{objc_msgSend(v6, "intents_intForKey:", @"maximumUnit"}];
    v12 = [v6 intents_numberForKey:@"defaultValue"];
    [v7 setDefaultValue:v12];

    v13 = [v6 intents_numberForKey:@"minimumValue"];
    [v7 setMinimumValue:v13];

    v14 = [v6 intents_numberForKey:@"maximumValue"];
    [v7 setMaximumValue:v14];

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataUnitKey];

  return v3;
}

- (id)__INTypeCodableDescriptionMinimumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumValueKey];

  return v3;
}

- (id)__INTypeCodableDescriptionMinimumUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumUnitKey];

  return v3;
}

- (id)__INTypeCodableDescriptionMaximumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumValueKey];

  return v3;
}

- (id)__INTypeCodableDescriptionMaximumUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumUnitKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDefaultUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultUnitKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataUnitKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionMinimumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionMinimumUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumUnitKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionMaximumValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionMaximumUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumUnitKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultUnitKey];

  return v3;
}

- (id)__INCodableDescriptionMinimumUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMinimumUnitKey];

  return v3;
}

- (id)__INCodableDescriptionMaximumUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataMaximumUnitKey];

  return v3;
}

- (id)__INCodableDescriptionDefaultUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableTimeIntervalAttributeMetadataDefaultUnitKey];

  return v3;
}

@end