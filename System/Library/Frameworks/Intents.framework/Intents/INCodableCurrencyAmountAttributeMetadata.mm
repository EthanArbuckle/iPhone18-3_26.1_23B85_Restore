@interface INCodableCurrencyAmountAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableCurrencyAmountAttributeMetadata)initWithCoder:(id)a3;
- (id)__INCodableDescriptionCurrencyCodeKey;
- (id)__INCodableDescriptionCurrencyCodesKey;
- (id)__INIntentResponseCodableDescriptionCurrencyCodeKey;
- (id)__INIntentResponseCodableDescriptionCurrencyCodesKey;
- (id)__INTypeCodableDescriptionCurrencyCodeKey;
- (id)__INTypeCodableDescriptionCurrencyCodesKey;
- (id)defaultValueForIntentDefaultValueProvider;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableCurrencyAmountAttributeMetadata

- (id)__INCodableDescriptionCurrencyCodesKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey];

  return v3;
}

- (INCodableCurrencyAmountAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INCodableCurrencyAmountAttributeMetadata;
  v5 = [(INCodableNumberAttributeMetadata *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"currencyCodes"];
    currencyCodes = v5->_currencyCodes;
    v5->_currencyCodes = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableCurrencyAmountAttributeMetadata;
  v4 = a3;
  [(INCodableNumberAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_currencyCodes forKey:{@"currencyCodes", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_currencyCode forKey:@"currencyCode"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableCurrencyAmountAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableNumberAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:a3 error:&v13];
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
    [v6 intents_setPlistSafeObject:self->_currencyCodes forKey:@"currencyCodes"];
    [v6 intents_setPlistSafeObject:self->_currencyCode forKey:@"currencyCode"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)defaultValueForIntentDefaultValueProvider
{
  v3 = [(INCodableNumberAttributeMetadata *)self defaultValue];
  v4 = [(INCodableCurrencyAmountAttributeMetadata *)self currencyCode];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(INCodableCurrencyAmountAttributeMetadata *)self currencyCodes];
    v6 = [v7 firstObject];
  }

  v8 = 0;
  if (v3 && v6)
  {
    v9 = objc_alloc(MEMORY[0x1E696AB90]);
    [v3 decimalValue];
    v10 = [v9 initWithDecimal:v12];
    v8 = [[INCurrencyAmount alloc] initWithAmount:v10 currencyCode:v6];
  }

  return v8;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = INCodableCurrencyAmountAttributeMetadata;
  v4 = [(INCodableNumberAttributeMetadata *)&v16 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableCurrencyAmountAttributeMetadata *)self __INCodableDescriptionCurrencyCodesKey];
  v17[0] = v5;
  v6 = [(INCodableCurrencyAmountAttributeMetadata *)self currencyCodes];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v7;
  v8 = [(INCodableCurrencyAmountAttributeMetadata *)self __INCodableDescriptionCurrencyCodeKey];
  v17[1] = v8;
  v9 = [(INCodableCurrencyAmountAttributeMetadata *)self currencyCode];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = [v4 if_dictionaryByAddingEntriesFromDictionary:v11];

  if (!v9)
  {
  }

  if (!v6)
  {
  }

  v13 = [v12 if_dictionaryWithNonEmptyValues];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)updateWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = INCodableCurrencyAmountAttributeMetadata;
  [(INCodableNumberAttributeMetadata *)&v27 updateWithDictionary:v4];
  v22 = self;
  v5 = [(INCodableCurrencyAmountAttributeMetadata *)self __INCodableDescriptionCurrencyCodesKey];
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
  currencyCodes = v22->_currencyCodes;
  v22->_currencyCodes = v19;

  v21 = *MEMORY[0x1E69E9840];
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___INCodableCurrencyAmountAttributeMetadata;
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
    v12 = [v6 intents_safeObjectForKey:@"currencyCodes" ofType:objc_opt_class()];
    v13 = v7[10];
    v7[10] = v12;

    v14 = [v6 intents_stringForKey:@"currencyCode"];
    v15 = v7[9];
    v7[9] = v14;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionCurrencyCodesKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey];

  return v3;
}

- (id)__INTypeCodableDescriptionCurrencyCodeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionCurrencyCodesKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodesKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionCurrencyCodeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey];

  return v3;
}

- (id)__INCodableDescriptionCurrencyCodeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCurrencyAmountAttributeMetadataCurrencyCodeKey];

  return v3;
}

@end