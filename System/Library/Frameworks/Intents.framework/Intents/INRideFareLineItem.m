@interface INRideFareLineItem
- (BOOL)isEqual:(id)a3;
- (INRideFareLineItem)initWithCoder:(id)a3;
- (INRideFareLineItem)initWithTitle:(NSString *)title price:(NSDecimalNumber *)price currencyCode:(NSString *)currencyCode;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRideFareLineItem

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"title";
  title = self->_title;
  v4 = title;
  if (!title)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"price";
  price = self->_price;
  v6 = price;
  if (!price)
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
    if (price)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (title)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!price)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (title)
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
  v11.super_class = INRideFareLineItem;
  v6 = [(INRideFareLineItem *)&v11 description];
  v7 = [(INRideFareLineItem *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_price forKey:@"price"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
}

- (INRideFareLineItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"price"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];

  v8 = [(INRideFareLineItem *)self initWithTitle:v5 price:v6 currencyCode:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    title = self->_title;
    v9 = 0;
    if (title == v5[1] || [(NSString *)title isEqual:?])
    {
      price = self->_price;
      if (price == v5[2] || [(NSDecimalNumber *)price isEqual:?])
      {
        currencyCode = self->_currencyCode;
        if (currencyCode == v5[3] || [(NSString *)currencyCode isEqual:?])
        {
          v9 = 1;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSDecimalNumber *)self->_price hash]^ v3;
  return v4 ^ [(NSString *)self->_currencyCode hash];
}

- (INRideFareLineItem)initWithTitle:(NSString *)title price:(NSDecimalNumber *)price currencyCode:(NSString *)currencyCode
{
  v8 = title;
  v9 = price;
  v10 = currencyCode;
  v19.receiver = self;
  v19.super_class = INRideFareLineItem;
  v11 = [(INRideFareLineItem *)&v19 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_title;
    v11->_title = v12;

    v14 = [(NSDecimalNumber *)v9 copy];
    v15 = v11->_price;
    v11->_price = v14;

    v16 = [(NSString *)v10 copy];
    v17 = v11->_currencyCode;
    v11->_currencyCode = v16;
  }

  return v11;
}

@end