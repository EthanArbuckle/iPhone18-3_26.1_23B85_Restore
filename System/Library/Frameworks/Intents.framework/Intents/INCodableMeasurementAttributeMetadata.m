@interface INCodableMeasurementAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (Class)_unitClass;
- (INCodableMeasurementAttributeMetadata)initWithCoder:(id)a3;
- (id)__INCodableDescriptionDefaultUnitKey;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionSupportsNegativeNumbersKey;
- (id)__INCodableDescriptionUnitKey;
- (id)__INIntentResponseCodableDescriptionDefaultUnitKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionSupportsNegativeNumbersKey;
- (id)__INIntentResponseCodableDescriptionUnitKey;
- (id)__INTypeCodableDescriptionDefaultUnitKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionSupportsNegativeNumbersKey;
- (id)__INTypeCodableDescriptionUnitKey;
- (id)_defaultUnitWithNames:(id)a3;
- (id)_unitWithUnitName:(id)a3;
- (id)defaultValueForIntentDefaultValueProvider;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableMeasurementAttributeMetadata

- (id)__INCodableDescriptionDefaultUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultUnitKey];

  return v3;
}

- (id)__INCodableDescriptionUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataUnitKey];

  return v3;
}

- (id)__INCodableDescriptionSupportsNegativeNumbersKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey];

  return v3;
}

- (id)__INCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultValueKey];

  return v3;
}

- (INCodableMeasurementAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = INCodableMeasurementAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v12 initWithCoder:v4];
  if (v5)
  {
    -[INCodableMeasurementAttributeMetadata setSupportsNegativeNumbers:](v5, "setSupportsNegativeNumbers:", [v4 decodeBoolForKey:@"supportsNegativeNumbers"]);
    [v4 decodeDoubleForKey:@"defaultValue"];
    [(INCodableMeasurementAttributeMetadata *)v5 setDefaultValue:?];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unit"];
    [(INCodableMeasurementAttributeMetadata *)v5 setUnit:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"defaultUnits"];
    [(INCodableMeasurementAttributeMetadata *)v5 setDefaultUnits:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableMeasurementAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_supportsNegativeNumbers forKey:{@"supportsNegativeNumbers", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"defaultValue" forKey:self->_defaultValue];
  [v4 encodeObject:self->_unit forKey:@"unit"];
  [v4 encodeObject:self->_defaultUnits forKey:@"defaultUnits"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v19.receiver = self;
  v19.super_class = INCodableMeasurementAttributeMetadata;
  v20 = 0;
  v6 = [(INCodableAttributeMetadata *)&v19 widgetPlistableRepresentationWithParameters:a3 error:&v20];
  v7 = v20;
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
    [v6 intents_setBoolIfTrue:self->_supportsNegativeNumbers forKey:@"supportsNegativeNumbers"];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_defaultValue];
    [v6 intents_setPlistSafeObject:v11 forKey:@"defaultValue"];

    v12 = [(INCodableMeasurementAttributeMetadata *)self unit];
    v13 = [v12 _intents_stringRepresentation];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = @"Any";
    }

    [v6 intents_setPlistSafeObject:v15 forKey:@"unit"];

    v16 = [(NSOrderedSet *)self->_defaultUnits if_map:&__block_literal_global_93];
    v17 = [v16 array];

    [v6 intents_setPlistSafeObject:v17 forKey:@"defaultUnits"];
    v10 = [v6 copy];
  }

  return v10;
}

__CFString *__91__INCodableMeasurementAttributeMetadata_widgetPlistableRepresentationWithParameters_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _intents_stringRepresentation];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Any";
  }

  v5 = v4;

  return v4;
}

- (id)_defaultUnitWithNames:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(INCodableMeasurementAttributeMetadata *)self _unitWithUnitName:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [v5 copy];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_unitWithUnitName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:@"Any"] & 1) == 0)
  {
    v6 = [(INCodableMeasurementAttributeMetadata *)self _unitClass];
    v7 = [v5 if_stringByLowercasingFirstCharacter];
    v8 = v7;
    if (v6)
    {
      NSSelectorFromString(v7);
      if (objc_opt_respondsToSelector())
      {
        v6 = [(objc_class *)v6 valueForKey:v8];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (Class)_unitClass
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(INCodableAttributeMetadata *)self name];
  v6 = [v4 stringByAppendingString:v5];
  v7 = objc_opt_class();
  v8 = NSClassFromString(v6);
  v9 = v8;
  if (v8 && ![(objc_class *)v8 isSubclassOfClass:v7])
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (id)defaultValueForIntentDefaultValueProvider
{
  v3 = [(INCodableMeasurementAttributeMetadata *)self unit];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v6 = objc_alloc(MEMORY[0x1E696AD28]);
    [(INCodableMeasurementAttributeMetadata *)self defaultValue];
    v7 = [v6 initWithDoubleValue:v4 unit:?];

    goto LABEL_5;
  }

  v5 = [(INCodableMeasurementAttributeMetadata *)self defaultUnits];
  v4 = [v5 firstObject];

  if (v4)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v30[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = INCodableMeasurementAttributeMetadata;
  v22 = [(INCodableAttributeMetadata *)&v28 dictionaryRepresentationWithLocalizer:a3];
  v27 = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionUnitKey];
  v29[0] = v27;
  v26 = [(INCodableMeasurementAttributeMetadata *)self unit];
  v4 = [v26 _intents_stringRepresentation];
  v5 = @"Any";
  v21 = v4;
  if (v4)
  {
    v5 = v4;
  }

  v30[0] = v5;
  v25 = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionDefaultUnitKey];
  v29[1] = v25;
  v24 = [(NSOrderedSet *)self->_defaultUnits array];
  v23 = [v24 if_map:&__block_literal_global_77369];
  v6 = [v23 componentsJoinedByString:@"/"];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v30[1] = v6;
  v8 = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionSupportsNegativeNumbersKey];
  v29[2] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableMeasurementAttributeMetadata supportsNegativeNumbers](self, "supportsNegativeNumbers")}];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v30[2] = v10;
  v11 = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v29[3] = v11;
  v12 = MEMORY[0x1E696AD98];
  [(INCodableMeasurementAttributeMetadata *)self defaultValue];
  v13 = [v12 numberWithDouble:?];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v30[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];
  v16 = [v22 if_dictionaryByAddingEntriesFromDictionary:v15];

  if (!v13)
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
  v29.receiver = self;
  v29.super_class = INCodableMeasurementAttributeMetadata;
  [(INCodableAttributeMetadata *)&v29 updateWithDictionary:v4];
  v5 = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionUnitKey];
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

  v9 = [(INCodableMeasurementAttributeMetadata *)self _unitWithUnitName:v8];

  unit = self->_unit;
  self->_unit = v9;

  if (!self->_unit)
  {
    v11 = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionDefaultUnitKey];
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

    v15 = [v14 componentsSeparatedByString:@"/"];

    v16 = [(INCodableMeasurementAttributeMetadata *)self _defaultUnitWithNames:v15];
    defaultUnits = self->_defaultUnits;
    self->_defaultUnits = v16;
  }

  v18 = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionSupportsNegativeNumbersKey];
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

  v22 = [v21 BOOLValue];
  self->_supportsNegativeNumbers = v22;
  v23 = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
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

  [v26 doubleValue];
  v28 = v27;

  self->_defaultValue = v28;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26.receiver = a1;
  v26.super_class = &OBJC_METACLASS___INCodableMeasurementAttributeMetadata;
  v27 = 0;
  v7 = objc_msgSendSuper2(&v26, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v27);
  v8 = v27;
  if (v8)
  {
    v9 = v8;
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
    [v7 setSupportsNegativeNumbers:{objc_msgSend(v6, "intents_BOOLForKey:", @"supportsNegativeNumbers"}];
    [v6 intents_doubleForKey:@"defaultValue"];
    [v7 setDefaultValue:?];
    v12 = [v6 intents_stringForKey:@"unit"];
    if (v12 || ([MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to decode measurement unit: %@", 0], v22 = objc_claimAutoreleasedReturnValue(), INIntentError(8001, v22, 0), v9 = objc_claimAutoreleasedReturnValue(), v22, !v9))
    {
      v13 = [v7 _unitWithUnitName:v12];
      [v7 setUnit:v13];

      v14 = [v6 intents_safeObjectForKey:@"defaultUnits" ofType:objc_opt_class()];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __85__INCodableMeasurementAttributeMetadata_makeFromWidgetPlistableRepresentation_error___block_invoke;
      v24[3] = &unk_1E72832D0;
      v15 = v7;
      v25 = v15;
      v16 = [v14 if_compactMap:v24];
      v17 = [v16 count];
      if (v17 == [v14 count] || (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to decode measurement units: %@", v14), v18 = objc_claimAutoreleasedReturnValue(), INIntentError(8001, v18, 0), v9 = objc_claimAutoreleasedReturnValue(), v18, !v9))
      {
        v20 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v16];
        [v15 setDefaultUnits:v20];

        v11 = v15;
        v9 = 0;
      }

      else if (a4)
      {
        v19 = v9;
        v11 = 0;
        *a4 = v9;
      }

      else
      {
        v11 = 0;
      }
    }

    else if (a4)
    {
      v23 = v9;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

id __85__INCodableMeasurementAttributeMetadata_makeFromWidgetPlistableRepresentation_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) _unitWithUnitName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)__INTypeCodableDescriptionUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataUnitKey];

  return v3;
}

- (id)__INTypeCodableDescriptionSupportsNegativeNumbersKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDefaultUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultUnitKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataUnitKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionSupportsNegativeNumbersKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultUnitKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultUnitKey];

  return v3;
}

@end