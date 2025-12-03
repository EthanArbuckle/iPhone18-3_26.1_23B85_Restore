@interface INRidePartySizeOption
- (BOOL)isEqual:(id)equal;
- (INRidePartySizeOption)initWithCoder:(id)coder;
- (INRidePartySizeOption)initWithPartySizeRange:(NSRange)partySizeRange sizeDescription:(NSString *)sizeDescription priceRange:(INPriceRange *)priceRange;
- (NSRange)partySizeRange;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRidePartySizeOption

- (NSRange)partySizeRange
{
  length = self->_partySizeRange.length;
  location = self->_partySizeRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"partySizeRange";
  v15.location = [(INRidePartySizeOption *)self partySizeRange];
  v3 = NSStringFromRange(v15);
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"sizeDescription";
  sizeDescription = self->_sizeDescription;
  null2 = sizeDescription;
  if (!sizeDescription)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"priceRange";
  priceRange = self->_priceRange;
  null3 = priceRange;
  if (!priceRange)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (priceRange)
  {
    if (sizeDescription)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!sizeDescription)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v3)
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
  v11.super_class = INRidePartySizeOption;
  v6 = [(INRidePartySizeOption *)&v11 description];
  _dictionaryRepresentation = [(INRidePartySizeOption *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696B098];
  coderCopy = coder;
  partySizeRange = [(INRidePartySizeOption *)self partySizeRange];
  v8 = [v4 valueWithRange:{partySizeRange, v7}];
  [coderCopy encodeObject:v8 forKey:@"partySizeRange"];

  sizeDescription = [(INRidePartySizeOption *)self sizeDescription];
  [coderCopy encodeObject:sizeDescription forKey:@"sizeDescription"];

  priceRange = [(INRidePartySizeOption *)self priceRange];
  [coderCopy encodeObject:priceRange forKey:@"priceRange"];
}

- (INRidePartySizeOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partySizeRange"];
  rangeValue = [v5 rangeValue];
  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sizeDescription"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priceRange"];

  v11 = [(INRidePartySizeOption *)self initWithPartySizeRange:rangeValue sizeDescription:v8 priceRange:v9, v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v9 = 0;
    if (self->_partySizeRange.length == v5[4] && self->_partySizeRange.location == v5[3])
    {
      sizeDescription = self->_sizeDescription;
      if (sizeDescription == v6[1] || [(NSString *)sizeDescription isEqual:?])
      {
        priceRange = self->_priceRange;
        if (priceRange == v6[2] || [(INPriceRange *)priceRange isEqual:?])
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
  v3 = self->_partySizeRange.location ^ self->_partySizeRange.length;
  v4 = v3 ^ [(NSString *)self->_sizeDescription hash];
  return v4 ^ [(INPriceRange *)self->_priceRange hash];
}

- (INRidePartySizeOption)initWithPartySizeRange:(NSRange)partySizeRange sizeDescription:(NSString *)sizeDescription priceRange:(INPriceRange *)priceRange
{
  length = partySizeRange.length;
  location = partySizeRange.location;
  v9 = sizeDescription;
  v10 = priceRange;
  v18.receiver = self;
  v18.super_class = INRidePartySizeOption;
  v11 = [(INRidePartySizeOption *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_partySizeRange.location = location;
    v11->_partySizeRange.length = length;
    v13 = [(NSString *)v9 copy];
    v14 = v12->_sizeDescription;
    v12->_sizeDescription = v13;

    v15 = [(INPriceRange *)v10 copy];
    v16 = v12->_priceRange;
    v12->_priceRange = v15;
  }

  return v12;
}

@end