@interface INRidePartySizeOption
- (BOOL)isEqual:(id)a3;
- (INRidePartySizeOption)initWithCoder:(id)a3;
- (INRidePartySizeOption)initWithPartySizeRange:(NSRange)partySizeRange sizeDescription:(NSString *)sizeDescription priceRange:(INPriceRange *)priceRange;
- (NSRange)partySizeRange;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"sizeDescription";
  sizeDescription = self->_sizeDescription;
  v6 = sizeDescription;
  if (!sizeDescription)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"priceRange";
  priceRange = self->_priceRange;
  v8 = priceRange;
  if (!priceRange)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRidePartySizeOption;
  v6 = [(INRidePartySizeOption *)&v11 description];
  v7 = [(INRidePartySizeOption *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696B098];
  v5 = a3;
  v6 = [(INRidePartySizeOption *)self partySizeRange];
  v8 = [v4 valueWithRange:{v6, v7}];
  [v5 encodeObject:v8 forKey:@"partySizeRange"];

  v9 = [(INRidePartySizeOption *)self sizeDescription];
  [v5 encodeObject:v9 forKey:@"sizeDescription"];

  v10 = [(INRidePartySizeOption *)self priceRange];
  [v5 encodeObject:v10 forKey:@"priceRange"];
}

- (INRidePartySizeOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partySizeRange"];
  v6 = [v5 rangeValue];
  v8 = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sizeDescription"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priceRange"];

  v11 = [(INRidePartySizeOption *)self initWithPartySizeRange:v6 sizeDescription:v8 priceRange:v9, v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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