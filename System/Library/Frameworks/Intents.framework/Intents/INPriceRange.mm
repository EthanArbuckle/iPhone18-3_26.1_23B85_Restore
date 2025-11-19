@interface INPriceRange
+ (id)_priceWithPriceRangeValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (INPriceRange)initWithCoder:(id)a3;
- (INPriceRange)initWithMaximumPrice:(NSDecimalNumber *)maximumPrice currencyCode:(NSString *)currencyCode;
- (INPriceRange)initWithMinimumPrice:(NSDecimalNumber *)minimumPrice currencyCode:(NSString *)currencyCode;
- (INPriceRange)initWithRangeBetweenPrice:(NSDecimalNumber *)firstPrice andPrice:(NSDecimalNumber *)secondPrice currencyCode:(NSString *)currencyCode;
- (id)_dictionaryRepresentation;
- (id)_formattedStringWithLocale:(id)a3 componentsFormatString:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INPriceRange

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"minimumPrice";
  minimumPrice = self->_minimumPrice;
  v4 = minimumPrice;
  if (!minimumPrice)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"maximumPrice";
  maximumPrice = self->_maximumPrice;
  v6 = maximumPrice;
  if (!maximumPrice)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"currencyCode";
  currencyCode = self->_currencyCode;
  v8 = currencyCode;
  if (!currencyCode)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (currencyCode)
  {
    if (maximumPrice)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (minimumPrice)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!maximumPrice)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (minimumPrice)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPriceRange;
  v6 = [(INPriceRange *)&v11 description];
  v7 = [(INPriceRange *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self == v5)
    {
      v12 = 1;
    }

    else
    {
      v6 = [(INPriceRange *)self minimumPrice];
      v7 = [(INPriceRange *)v5 minimumPrice];
      if ([v6 isEqual:v7])
      {
        v8 = [(INPriceRange *)self maximumPrice];
        v9 = [(INPriceRange *)v5 maximumPrice];
        if ([v8 isEqual:v9])
        {
          v10 = [(INPriceRange *)self currencyCode];
          v11 = [(INPriceRange *)v5 currencyCode];
          v12 = [v10 isEqualToString:v11];
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
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSDecimalNumber *)self->_minimumPrice hash];
  v4 = [(NSDecimalNumber *)self->_maximumPrice hash]^ v3;
  return v4 ^ [(NSString *)self->_currencyCode hash];
}

- (id)_formattedStringWithLocale:(id)a3 componentsFormatString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setLocale:v7];

  v9 = [(INPriceRange *)self currencyCode];
  [v8 setCurrencyCode:v9];

  v10 = [(INPriceRange *)self minimumPrice];
  if (v10)
  {
    v11 = [v8 stringFromNumber:v10];
  }

  else
  {
    v11 = &stru_1F01E0850;
  }

  v12 = [(INPriceRange *)self minimumPrice];
  v13 = [(INPriceRange *)self maximumPrice];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v16 = &stru_1F01E0850;
    [v8 setCurrencySymbol:&stru_1F01E0850];
    [v8 setInternationalCurrencySymbol:&stru_1F01E0850];
    v17 = [(INPriceRange *)self maximumPrice];
    if (v17)
    {
      v16 = [v8 stringFromNumber:v17];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v11, v16];
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INPriceRange *)self minimumPrice];
  [v4 encodeObject:v5 forKey:@"firstPrice"];

  v6 = [(INPriceRange *)self maximumPrice];
  [v4 encodeObject:v6 forKey:@"secondPrice"];

  v7 = [(INPriceRange *)self currencyCode];
  [v4 encodeObject:v7 forKey:@"currencyCode"];
}

- (INPriceRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstPrice"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondPrice"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];

  v8 = [(INPriceRange *)self initWithRangeBetweenPrice:v5 andPrice:v6 currencyCode:v7];
  return v8;
}

- (INPriceRange)initWithMinimumPrice:(NSDecimalNumber *)minimumPrice currencyCode:(NSString *)currencyCode
{
  v6 = minimumPrice;
  v7 = currencyCode;
  v14.receiver = self;
  v14.super_class = INPriceRange;
  v8 = [(INPriceRange *)&v14 init];
  if (v8)
  {
    v9 = [(NSDecimalNumber *)v6 copy];
    v10 = v8->_minimumPrice;
    v8->_minimumPrice = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_currencyCode;
    v8->_currencyCode = v11;
  }

  return v8;
}

- (INPriceRange)initWithMaximumPrice:(NSDecimalNumber *)maximumPrice currencyCode:(NSString *)currencyCode
{
  v6 = maximumPrice;
  v7 = currencyCode;
  v14.receiver = self;
  v14.super_class = INPriceRange;
  v8 = [(INPriceRange *)&v14 init];
  if (v8)
  {
    v9 = [(NSDecimalNumber *)v6 copy];
    v10 = v8->_maximumPrice;
    v8->_maximumPrice = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_currencyCode;
    v8->_currencyCode = v11;
  }

  return v8;
}

- (INPriceRange)initWithRangeBetweenPrice:(NSDecimalNumber *)firstPrice andPrice:(NSDecimalNumber *)secondPrice currencyCode:(NSString *)currencyCode
{
  v8 = firstPrice;
  v9 = secondPrice;
  v10 = currencyCode;
  v23.receiver = self;
  v23.super_class = INPriceRange;
  v11 = [(INPriceRange *)&v23 init];
  if (v11)
  {
    v12 = [(NSDecimalNumber *)v8 compare:v9];
    v13 = v12 == -1;
    if (v12 == -1)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v8;
    }

    v16 = [(NSDecimalNumber *)v14 copy];
    minimumPrice = v11->_minimumPrice;
    v11->_minimumPrice = v16;

    v18 = [(NSDecimalNumber *)v15 copy];
    maximumPrice = v11->_maximumPrice;
    v11->_maximumPrice = v18;

    v20 = [(NSString *)v10 copy];
    v21 = v11->_currencyCode;
    v11->_currencyCode = v20;
  }

  return v11;
}

+ (id)_priceWithPriceRangeValue:(id)a3
{
  v4 = a3;
  v5 = [v4 minimumPrice];
  v6 = INIntentSlotValueTransformFromDecimalNumberValue(v5);

  v7 = [v4 maximumPrice];
  v8 = INIntentSlotValueTransformFromDecimalNumberValue(v7);

  v9 = [v4 currencyCode];

  if (v6 && v8)
  {
    v10 = [[a1 alloc] initWithRangeBetweenPrice:v6 andPrice:v8 currencyCode:v9];
LABEL_8:
    v11 = v10;
    goto LABEL_9;
  }

  if (v6)
  {
    v10 = [[a1 alloc] initWithMinimumPrice:v6 currencyCode:v9];
    goto LABEL_8;
  }

  if (v8)
  {
    v10 = [[a1 alloc] initWithMaximumPrice:v8 currencyCode:v9];
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end