@interface _INPBRidePartySizeOption
- (BOOL)isEqual:(id)equal;
- (_INPBRidePartySizeOption)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSizeDescription:(id)description;
- (void)writeTo:(id)to;
@end

@implementation _INPBRidePartySizeOption

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  partySizeRange = [(_INPBRidePartySizeOption *)self partySizeRange];
  dictionaryRepresentation = [partySizeRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"partySizeRange"];

  priceRange = [(_INPBRidePartySizeOption *)self priceRange];
  dictionaryRepresentation2 = [priceRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"priceRange"];

  if (self->_sizeDescription)
  {
    sizeDescription = [(_INPBRidePartySizeOption *)self sizeDescription];
    v9 = [sizeDescription copy];
    [dictionary setObject:v9 forKeyedSubscript:@"sizeDescription"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBRangeValue *)self->_partySizeRange hash];
  v4 = [(_INPBPriceRangeValue *)self->_priceRange hash]^ v3;
  return v4 ^ [(NSString *)self->_sizeDescription hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  partySizeRange = [(_INPBRidePartySizeOption *)self partySizeRange];
  partySizeRange2 = [equalCopy partySizeRange];
  if ((partySizeRange != 0) == (partySizeRange2 == 0))
  {
    goto LABEL_16;
  }

  partySizeRange3 = [(_INPBRidePartySizeOption *)self partySizeRange];
  if (partySizeRange3)
  {
    v8 = partySizeRange3;
    partySizeRange4 = [(_INPBRidePartySizeOption *)self partySizeRange];
    partySizeRange5 = [equalCopy partySizeRange];
    v11 = [partySizeRange4 isEqual:partySizeRange5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  partySizeRange = [(_INPBRidePartySizeOption *)self priceRange];
  partySizeRange2 = [equalCopy priceRange];
  if ((partySizeRange != 0) == (partySizeRange2 == 0))
  {
    goto LABEL_16;
  }

  priceRange = [(_INPBRidePartySizeOption *)self priceRange];
  if (priceRange)
  {
    v13 = priceRange;
    priceRange2 = [(_INPBRidePartySizeOption *)self priceRange];
    priceRange3 = [equalCopy priceRange];
    v16 = [priceRange2 isEqual:priceRange3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  partySizeRange = [(_INPBRidePartySizeOption *)self sizeDescription];
  partySizeRange2 = [equalCopy sizeDescription];
  if ((partySizeRange != 0) != (partySizeRange2 == 0))
  {
    sizeDescription = [(_INPBRidePartySizeOption *)self sizeDescription];
    if (!sizeDescription)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = sizeDescription;
    sizeDescription2 = [(_INPBRidePartySizeOption *)self sizeDescription];
    sizeDescription3 = [equalCopy sizeDescription];
    v21 = [sizeDescription2 isEqual:sizeDescription3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRidePartySizeOption allocWithZone:](_INPBRidePartySizeOption init];
  v6 = [(_INPBRangeValue *)self->_partySizeRange copyWithZone:zone];
  [(_INPBRidePartySizeOption *)v5 setPartySizeRange:v6];

  v7 = [(_INPBPriceRangeValue *)self->_priceRange copyWithZone:zone];
  [(_INPBRidePartySizeOption *)v5 setPriceRange:v7];

  v8 = [(NSString *)self->_sizeDescription copyWithZone:zone];
  [(_INPBRidePartySizeOption *)v5 setSizeDescription:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRidePartySizeOption *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRidePartySizeOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRidePartySizeOption *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  partySizeRange = [(_INPBRidePartySizeOption *)self partySizeRange];

  if (partySizeRange)
  {
    partySizeRange2 = [(_INPBRidePartySizeOption *)self partySizeRange];
    PBDataWriterWriteSubmessage();
  }

  priceRange = [(_INPBRidePartySizeOption *)self priceRange];

  if (priceRange)
  {
    priceRange2 = [(_INPBRidePartySizeOption *)self priceRange];
    PBDataWriterWriteSubmessage();
  }

  sizeDescription = [(_INPBRidePartySizeOption *)self sizeDescription];

  v9 = toCopy;
  if (sizeDescription)
  {
    sizeDescription = self->_sizeDescription;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)setSizeDescription:(id)description
{
  v4 = [description copy];
  sizeDescription = self->_sizeDescription;
  self->_sizeDescription = v4;

  MEMORY[0x1EEE66BB8](v4, sizeDescription);
}

@end