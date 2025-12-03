@interface INCodableCurrencyAmountAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableCurrencyAmountAttributeMetadata)initWithCoder:(id)coder;
- (id)__INCodableDescriptionCurrencyCodeKey;
- (id)__INCodableDescriptionCurrencyCodesKey;
- (id)__INIntentResponseCodableDescriptionCurrencyCodeKey;
- (id)__INIntentResponseCodableDescriptionCurrencyCodesKey;
- (id)__INTypeCodableDescriptionCurrencyCodeKey;
- (id)__INTypeCodableDescriptionCurrencyCodesKey;
- (id)defaultValueForIntentDefaultValueProvider;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableCurrencyAmountAttributeMetadata

- (id)__INCodableDescriptionCurrencyCodesKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey];

  return __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey;
}

- (INCodableCurrencyAmountAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = INCodableCurrencyAmountAttributeMetadata;
  v5 = [(INCodableNumberAttributeMetadata *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"currencyCodes"];
    currencyCodes = v5->_currencyCodes;
    v5->_currencyCodes = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableCurrencyAmountAttributeMetadata;
  coderCopy = coder;
  [(INCodableNumberAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_currencyCodes forKey:{@"currencyCodes", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableCurrencyAmountAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableNumberAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:parameters error:&v13];
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
    [v6 intents_setPlistSafeObject:self->_currencyCodes forKey:@"currencyCodes"];
    [v6 intents_setPlistSafeObject:self->_currencyCode forKey:@"currencyCode"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)defaultValueForIntentDefaultValueProvider
{
  defaultValue = [(INCodableNumberAttributeMetadata *)self defaultValue];
  currencyCode = [(INCodableCurrencyAmountAttributeMetadata *)self currencyCode];
  v5 = currencyCode;
  if (currencyCode)
  {
    firstObject = currencyCode;
  }

  else
  {
    currencyCodes = [(INCodableCurrencyAmountAttributeMetadata *)self currencyCodes];
    firstObject = [currencyCodes firstObject];
  }

  v8 = 0;
  if (defaultValue && firstObject)
  {
    v9 = objc_alloc(MEMORY[0x1E696AB90]);
    [defaultValue decimalValue];
    v10 = [v9 initWithDecimal:v12];
    v8 = [[INCurrencyAmount alloc] initWithAmount:v10 currencyCode:firstObject];
  }

  return v8;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v18[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = INCodableCurrencyAmountAttributeMetadata;
  v4 = [(INCodableNumberAttributeMetadata *)&v16 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionCurrencyCodesKey = [(INCodableCurrencyAmountAttributeMetadata *)self __INCodableDescriptionCurrencyCodesKey];
  v17[0] = __INCodableDescriptionCurrencyCodesKey;
  currencyCodes = [(INCodableCurrencyAmountAttributeMetadata *)self currencyCodes];
  null = currencyCodes;
  if (!currencyCodes)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  __INCodableDescriptionCurrencyCodeKey = [(INCodableCurrencyAmountAttributeMetadata *)self __INCodableDescriptionCurrencyCodeKey];
  v17[1] = __INCodableDescriptionCurrencyCodeKey;
  currencyCode = [(INCodableCurrencyAmountAttributeMetadata *)self currencyCode];
  null2 = currencyCode;
  if (!currencyCode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = [v4 if_dictionaryByAddingEntriesFromDictionary:v11];

  if (!currencyCode)
  {
  }

  if (!currencyCodes)
  {
  }

  if_dictionaryWithNonEmptyValues = [v12 if_dictionaryWithNonEmptyValues];

  v14 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = INCodableCurrencyAmountAttributeMetadata;
  [(INCodableNumberAttributeMetadata *)&v27 updateWithDictionary:dictionaryCopy];
  selfCopy = self;
  __INCodableDescriptionCurrencyCodesKey = [(INCodableCurrencyAmountAttributeMetadata *)self __INCodableDescriptionCurrencyCodesKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionCurrencyCodesKey];

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

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        v18 = [v17 objectForKey:@"CurrencyCode"];

        if (v18)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 addObject:v18];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);
  }

  v19 = [v9 copy];
  currencyCodes = selfCopy->_currencyCodes;
  selfCopy->_currencyCodes = v19;

  v21 = *MEMORY[0x1E69E9840];
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___INCodableCurrencyAmountAttributeMetadata;
  v18 = 0;
  v7 = objc_msgSendSuper2(&v17, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v18);
  v8 = v18;
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
    v12 = [representationCopy intents_safeObjectForKey:@"currencyCodes" ofType:objc_opt_class()];
    v13 = v7[10];
    v7[10] = v12;

    v14 = [representationCopy intents_stringForKey:@"currencyCode"];
    v15 = v7[9];
    v7[9] = v14;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionCurrencyCodesKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey];

  return __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey;
}

- (id)__INTypeCodableDescriptionCurrencyCodeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey];

  return __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey;
}

- (id)__INIntentResponseCodableDescriptionCurrencyCodesKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey];

  return __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey;
}

- (id)__INIntentResponseCodableDescriptionCurrencyCodeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey];

  return __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey;
}

- (id)__INCodableDescriptionCurrencyCodeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey];

  return __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey;
}

@end