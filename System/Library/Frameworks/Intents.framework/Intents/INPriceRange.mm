@interface INPriceRange
+ (id)_priceWithPriceRangeValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (INPriceRange)initWithCoder:(id)coder;
- (INPriceRange)initWithMaximumPrice:(NSDecimalNumber *)maximumPrice currencyCode:(NSString *)currencyCode;
- (INPriceRange)initWithMinimumPrice:(NSDecimalNumber *)minimumPrice currencyCode:(NSString *)currencyCode;
- (INPriceRange)initWithRangeBetweenPrice:(NSDecimalNumber *)firstPrice andPrice:(NSDecimalNumber *)secondPrice currencyCode:(NSString *)currencyCode;
- (id)_dictionaryRepresentation;
- (id)_formattedStringWithLocale:(id)locale componentsFormatString:(id)string;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPriceRange

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"minimumPrice";
  minimumPrice = self->_minimumPrice;
  null = minimumPrice;
  if (!minimumPrice)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"maximumPrice";
  maximumPrice = self->_maximumPrice;
  null2 = maximumPrice;
  if (!maximumPrice)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"currencyCode";
  currencyCode = self->_currencyCode;
  null3 = currencyCode;
  if (!currencyCode)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPriceRange;
  v6 = [(INPriceRange *)&v11 description];
  _dictionaryRepresentation = [(INPriceRange *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v12 = 1;
    }

    else
    {
      minimumPrice = [(INPriceRange *)self minimumPrice];
      minimumPrice2 = [(INPriceRange *)v5 minimumPrice];
      if ([minimumPrice isEqual:minimumPrice2])
      {
        maximumPrice = [(INPriceRange *)self maximumPrice];
        maximumPrice2 = [(INPriceRange *)v5 maximumPrice];
        if ([maximumPrice isEqual:maximumPrice2])
        {
          currencyCode = [(INPriceRange *)self currencyCode];
          currencyCode2 = [(INPriceRange *)v5 currencyCode];
          v12 = [currencyCode isEqualToString:currencyCode2];
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

- (id)_formattedStringWithLocale:(id)locale componentsFormatString:(id)string
{
  stringCopy = string;
  localeCopy = locale;
  v8 = objc_opt_new();
  [v8 setLocale:localeCopy];

  currencyCode = [(INPriceRange *)self currencyCode];
  [v8 setCurrencyCode:currencyCode];

  minimumPrice = [(INPriceRange *)self minimumPrice];
  if (minimumPrice)
  {
    v11 = [v8 stringFromNumber:minimumPrice];
  }

  else
  {
    v11 = &stru_1F01E0850;
  }

  minimumPrice2 = [(INPriceRange *)self minimumPrice];
  maximumPrice = [(INPriceRange *)self maximumPrice];
  v14 = [minimumPrice2 isEqual:maximumPrice];

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v16 = &stru_1F01E0850;
    [v8 setCurrencySymbol:&stru_1F01E0850];
    [v8 setInternationalCurrencySymbol:&stru_1F01E0850];
    maximumPrice2 = [(INPriceRange *)self maximumPrice];
    if (maximumPrice2)
    {
      v16 = [v8 stringFromNumber:maximumPrice2];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:stringCopy, v11, v16];
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  minimumPrice = [(INPriceRange *)self minimumPrice];
  [coderCopy encodeObject:minimumPrice forKey:@"firstPrice"];

  maximumPrice = [(INPriceRange *)self maximumPrice];
  [coderCopy encodeObject:maximumPrice forKey:@"secondPrice"];

  currencyCode = [(INPriceRange *)self currencyCode];
  [coderCopy encodeObject:currencyCode forKey:@"currencyCode"];
}

- (INPriceRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstPrice"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondPrice"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];

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

+ (id)_priceWithPriceRangeValue:(id)value
{
  valueCopy = value;
  minimumPrice = [valueCopy minimumPrice];
  v6 = INIntentSlotValueTransformFromDecimalNumberValue(minimumPrice);

  maximumPrice = [valueCopy maximumPrice];
  v8 = INIntentSlotValueTransformFromDecimalNumberValue(maximumPrice);

  currencyCode = [valueCopy currencyCode];

  if (v6 && v8)
  {
    v10 = [[self alloc] initWithRangeBetweenPrice:v6 andPrice:v8 currencyCode:currencyCode];
LABEL_8:
    v11 = v10;
    goto LABEL_9;
  }

  if (v6)
  {
    v10 = [[self alloc] initWithMinimumPrice:v6 currencyCode:currencyCode];
    goto LABEL_8;
  }

  if (v8)
  {
    v10 = [[self alloc] initWithMaximumPrice:v8 currencyCode:currencyCode];
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end