@interface INRideFareLineItem
- (BOOL)isEqual:(id)equal;
- (INRideFareLineItem)initWithCoder:(id)coder;
- (INRideFareLineItem)initWithTitle:(NSString *)title price:(NSDecimalNumber *)price currencyCode:(NSString *)currencyCode;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRideFareLineItem

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"title";
  title = self->_title;
  null = title;
  if (!title)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"price";
  price = self->_price;
  null2 = price;
  if (!price)
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRideFareLineItem;
  v6 = [(INRideFareLineItem *)&v11 description];
  _dictionaryRepresentation = [(INRideFareLineItem *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_price forKey:@"price"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
}

- (INRideFareLineItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"price"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];

  v8 = [(INRideFareLineItem *)self initWithTitle:v5 price:v6 currencyCode:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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