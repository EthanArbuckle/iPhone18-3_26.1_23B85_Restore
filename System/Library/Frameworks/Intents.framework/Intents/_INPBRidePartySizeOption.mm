@interface _INPBRidePartySizeOption
- (BOOL)isEqual:(id)a3;
- (_INPBRidePartySizeOption)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSizeDescription:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRidePartySizeOption

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBRidePartySizeOption *)self partySizeRange];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"partySizeRange"];

  v6 = [(_INPBRidePartySizeOption *)self priceRange];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"priceRange"];

  if (self->_sizeDescription)
  {
    v8 = [(_INPBRidePartySizeOption *)self sizeDescription];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"sizeDescription"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBRangeValue *)self->_partySizeRange hash];
  v4 = [(_INPBPriceRangeValue *)self->_priceRange hash]^ v3;
  return v4 ^ [(NSString *)self->_sizeDescription hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBRidePartySizeOption *)self partySizeRange];
  v6 = [v4 partySizeRange];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBRidePartySizeOption *)self partySizeRange];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRidePartySizeOption *)self partySizeRange];
    v10 = [v4 partySizeRange];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBRidePartySizeOption *)self priceRange];
  v6 = [v4 priceRange];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBRidePartySizeOption *)self priceRange];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRidePartySizeOption *)self priceRange];
    v15 = [v4 priceRange];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBRidePartySizeOption *)self sizeDescription];
  v6 = [v4 sizeDescription];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBRidePartySizeOption *)self sizeDescription];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBRidePartySizeOption *)self sizeDescription];
    v20 = [v4 sizeDescription];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRidePartySizeOption allocWithZone:](_INPBRidePartySizeOption init];
  v6 = [(_INPBRangeValue *)self->_partySizeRange copyWithZone:a3];
  [(_INPBRidePartySizeOption *)v5 setPartySizeRange:v6];

  v7 = [(_INPBPriceRangeValue *)self->_priceRange copyWithZone:a3];
  [(_INPBRidePartySizeOption *)v5 setPriceRange:v7];

  v8 = [(NSString *)self->_sizeDescription copyWithZone:a3];
  [(_INPBRidePartySizeOption *)v5 setSizeDescription:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRidePartySizeOption *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRidePartySizeOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRidePartySizeOption *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBRidePartySizeOption *)self partySizeRange];

  if (v4)
  {
    v5 = [(_INPBRidePartySizeOption *)self partySizeRange];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBRidePartySizeOption *)self priceRange];

  if (v6)
  {
    v7 = [(_INPBRidePartySizeOption *)self priceRange];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBRidePartySizeOption *)self sizeDescription];

  v9 = v11;
  if (v8)
  {
    sizeDescription = self->_sizeDescription;
    PBDataWriterWriteStringField();
    v9 = v11;
  }
}

- (void)setSizeDescription:(id)a3
{
  v4 = [a3 copy];
  sizeDescription = self->_sizeDescription;
  self->_sizeDescription = v4;

  MEMORY[0x1EEE66BB8](v4, sizeDescription);
}

@end