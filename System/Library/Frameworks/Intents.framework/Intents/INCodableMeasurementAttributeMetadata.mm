@interface INCodableMeasurementAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (Class)_unitClass;
- (INCodableMeasurementAttributeMetadata)initWithCoder:(id)coder;
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
- (id)_defaultUnitWithNames:(id)names;
- (id)_unitWithUnitName:(id)name;
- (id)defaultValueForIntentDefaultValueProvider;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableMeasurementAttributeMetadata

- (id)__INCodableDescriptionDefaultUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataDefaultUnitKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultUnitKey];

  return __INCodableMeasurementAttributeMetadataDefaultUnitKey;
}

- (id)__INCodableDescriptionUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataUnitKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataUnitKey];

  return __INCodableMeasurementAttributeMetadataUnitKey;
}

- (id)__INCodableDescriptionSupportsNegativeNumbersKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey];

  return __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey;
}

- (id)__INCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultValueKey];

  return __INCodableMeasurementAttributeMetadataDefaultValueKey;
}

- (INCodableMeasurementAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = INCodableMeasurementAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    -[INCodableMeasurementAttributeMetadata setSupportsNegativeNumbers:](v5, "setSupportsNegativeNumbers:", [coderCopy decodeBoolForKey:@"supportsNegativeNumbers"]);
    [coderCopy decodeDoubleForKey:@"defaultValue"];
    [(INCodableMeasurementAttributeMetadata *)v5 setDefaultValue:?];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unit"];
    [(INCodableMeasurementAttributeMetadata *)v5 setUnit:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"defaultUnits"];
    [(INCodableMeasurementAttributeMetadata *)v5 setDefaultUnits:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableMeasurementAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_supportsNegativeNumbers forKey:{@"supportsNegativeNumbers", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"defaultValue" forKey:self->_defaultValue];
  [coderCopy encodeObject:self->_unit forKey:@"unit"];
  [coderCopy encodeObject:self->_defaultUnits forKey:@"defaultUnits"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v19.receiver = self;
  v19.super_class = INCodableMeasurementAttributeMetadata;
  v20 = 0;
  v6 = [(INCodableAttributeMetadata *)&v19 widgetPlistableRepresentationWithParameters:parameters error:&v20];
  v7 = v20;
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
    [v6 intents_setBoolIfTrue:self->_supportsNegativeNumbers forKey:@"supportsNegativeNumbers"];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_defaultValue];
    [v6 intents_setPlistSafeObject:v11 forKey:@"defaultValue"];

    unit = [(INCodableMeasurementAttributeMetadata *)self unit];
    _intents_stringRepresentation = [unit _intents_stringRepresentation];
    v14 = _intents_stringRepresentation;
    if (_intents_stringRepresentation)
    {
      v15 = _intents_stringRepresentation;
    }

    else
    {
      v15 = @"Any";
    }

    [v6 intents_setPlistSafeObject:v15 forKey:@"unit"];

    v16 = [(NSOrderedSet *)self->_defaultUnits if_map:&__block_literal_global_93];
    array = [v16 array];

    [v6 intents_setPlistSafeObject:array forKey:@"defaultUnits"];
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

- (id)_defaultUnitWithNames:(id)names
{
  v20 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = namesCopy;
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

- (id)_unitWithUnitName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy && ([nameCopy isEqualToString:@"Any"] & 1) == 0)
  {
    _unitClass = [(INCodableMeasurementAttributeMetadata *)self _unitClass];
    if_stringByLowercasingFirstCharacter = [v5 if_stringByLowercasingFirstCharacter];
    v8 = if_stringByLowercasingFirstCharacter;
    if (_unitClass)
    {
      NSSelectorFromString(if_stringByLowercasingFirstCharacter);
      if (objc_opt_respondsToSelector())
      {
        _unitClass = [(objc_class *)_unitClass valueForKey:v8];
      }

      else
      {
        _unitClass = 0;
      }
    }
  }

  else
  {
    _unitClass = 0;
  }

  return _unitClass;
}

- (Class)_unitClass
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(INCodableAttributeMetadata *)self name];
  v6 = [v4 stringByAppendingString:name];
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
  unit = [(INCodableMeasurementAttributeMetadata *)self unit];
  if (unit)
  {
    firstObject = unit;
LABEL_4:
    v6 = objc_alloc(MEMORY[0x1E696AD28]);
    [(INCodableMeasurementAttributeMetadata *)self defaultValue];
    v7 = [v6 initWithDoubleValue:firstObject unit:?];

    goto LABEL_5;
  }

  defaultUnits = [(INCodableMeasurementAttributeMetadata *)self defaultUnits];
  firstObject = [defaultUnits firstObject];

  if (firstObject)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v30[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = INCodableMeasurementAttributeMetadata;
  v22 = [(INCodableAttributeMetadata *)&v28 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionUnitKey = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionUnitKey];
  v29[0] = __INCodableDescriptionUnitKey;
  unit = [(INCodableMeasurementAttributeMetadata *)self unit];
  _intents_stringRepresentation = [unit _intents_stringRepresentation];
  v5 = @"Any";
  v21 = _intents_stringRepresentation;
  if (_intents_stringRepresentation)
  {
    v5 = _intents_stringRepresentation;
  }

  v30[0] = v5;
  __INCodableDescriptionDefaultUnitKey = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionDefaultUnitKey];
  v29[1] = __INCodableDescriptionDefaultUnitKey;
  array = [(NSOrderedSet *)self->_defaultUnits array];
  v23 = [array if_map:&__block_literal_global_77369];
  null = [v23 componentsJoinedByString:@"/"];
  v7 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v30[1] = null;
  __INCodableDescriptionSupportsNegativeNumbersKey = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionSupportsNegativeNumbersKey];
  v29[2] = __INCodableDescriptionSupportsNegativeNumbersKey;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableMeasurementAttributeMetadata supportsNegativeNumbers](self, "supportsNegativeNumbers")}];
  null2 = v9;
  if (!v9)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v30[2] = null2;
  __INCodableDescriptionDefaultValueKey = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v29[3] = __INCodableDescriptionDefaultValueKey;
  v12 = MEMORY[0x1E696AD98];
  [(INCodableMeasurementAttributeMetadata *)self defaultValue];
  v13 = [v12 numberWithDouble:?];
  null3 = v13;
  if (!v13)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30[3] = null3;
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

  if_dictionaryWithNonEmptyValues = [v16 if_dictionaryWithNonEmptyValues];

  v18 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = INCodableMeasurementAttributeMetadata;
  [(INCodableAttributeMetadata *)&v29 updateWithDictionary:dictionaryCopy];
  __INCodableDescriptionUnitKey = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionUnitKey];
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

  v9 = [(INCodableMeasurementAttributeMetadata *)self _unitWithUnitName:v8];

  unit = self->_unit;
  self->_unit = v9;

  if (!self->_unit)
  {
    __INCodableDescriptionDefaultUnitKey = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionDefaultUnitKey];
    v12 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultUnitKey];

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

  __INCodableDescriptionSupportsNegativeNumbersKey = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionSupportsNegativeNumbersKey];
  v19 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionSupportsNegativeNumbersKey];

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

  bOOLValue = [v21 BOOLValue];
  self->_supportsNegativeNumbers = bOOLValue;
  __INCodableDescriptionDefaultValueKey = [(INCodableMeasurementAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v24 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultValueKey];

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

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v26.receiver = self;
  v26.super_class = &OBJC_METACLASS___INCodableMeasurementAttributeMetadata;
  v27 = 0;
  v7 = objc_msgSendSuper2(&v26, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v27);
  v8 = v27;
  if (v8)
  {
    v9 = v8;
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
    [v7 setSupportsNegativeNumbers:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"supportsNegativeNumbers"}];
    [representationCopy intents_doubleForKey:@"defaultValue"];
    [v7 setDefaultValue:?];
    v12 = [representationCopy intents_stringForKey:@"unit"];
    if (v12 || ([MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to decode measurement unit: %@", 0], v22 = objc_claimAutoreleasedReturnValue(), INIntentError(8001, v22, 0), v9 = objc_claimAutoreleasedReturnValue(), v22, !v9))
    {
      v13 = [v7 _unitWithUnitName:v12];
      [v7 setUnit:v13];

      v14 = [representationCopy intents_safeObjectForKey:@"defaultUnits" ofType:objc_opt_class()];
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

      else if (error)
      {
        v19 = v9;
        v11 = 0;
        *error = v9;
      }

      else
      {
        v11 = 0;
      }
    }

    else if (error)
    {
      v23 = v9;
      v11 = 0;
      *error = v9;
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
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataUnitKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataUnitKey];

  return __INCodableMeasurementAttributeMetadataUnitKey;
}

- (id)__INTypeCodableDescriptionSupportsNegativeNumbersKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey];

  return __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultValueKey];

  return __INCodableMeasurementAttributeMetadataDefaultValueKey;
}

- (id)__INTypeCodableDescriptionDefaultUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataDefaultUnitKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultUnitKey];

  return __INCodableMeasurementAttributeMetadataDefaultUnitKey;
}

- (id)__INIntentResponseCodableDescriptionUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataUnitKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataUnitKey];

  return __INCodableMeasurementAttributeMetadataUnitKey;
}

- (id)__INIntentResponseCodableDescriptionSupportsNegativeNumbersKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey];

  return __INCodableMeasurementAttributeMetadataSupportsNegativeNumbersKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultValueKey];

  return __INCodableMeasurementAttributeMetadataDefaultValueKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultUnitKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableMeasurementAttributeMetadataDefaultUnitKey = [objc_opt_class() __INCodableMeasurementAttributeMetadataDefaultUnitKey];

  return __INCodableMeasurementAttributeMetadataDefaultUnitKey;
}

@end