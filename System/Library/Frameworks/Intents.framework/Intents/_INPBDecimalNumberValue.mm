@interface _INPBDecimalNumberValue
- (BOOL)isEqual:(id)equal;
- (_INPBDecimalNumberValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasIsNegative:(BOOL)negative;
- (void)setHasMantissa:(BOOL)mantissa;
- (void)writeTo:(id)to;
@end

@implementation _INPBDecimalNumberValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDecimalNumberValue *)self hasExponent])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBDecimalNumberValue exponent](self, "exponent")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exponent"];
  }

  if ([(_INPBDecimalNumberValue *)self hasIsNegative])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDecimalNumberValue isNegative](self, "isNegative")}];
    [dictionary setObject:v5 forKeyedSubscript:@"is_negative"];
  }

  if ([(_INPBDecimalNumberValue *)self hasMantissa])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBDecimalNumberValue mantissa](self, "mantissa")}];
    [dictionary setObject:v6 forKeyedSubscript:@"mantissa"];
  }

  valueMetadata = [(_INPBDecimalNumberValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDecimalNumberValue *)self hasExponent])
  {
    v3 = 2654435761 * self->_exponent;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBDecimalNumberValue *)self hasIsNegative])
  {
    v4 = 2654435761 * self->_isNegative;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBDecimalNumberValue *)self hasMantissa])
  {
    v5 = 2654435761u * self->_mantissa;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasExponent = [(_INPBDecimalNumberValue *)self hasExponent];
    if (hasExponent == [equalCopy hasExponent])
    {
      if (!-[_INPBDecimalNumberValue hasExponent](self, "hasExponent") || ![equalCopy hasExponent] || (exponent = self->_exponent, exponent == objc_msgSend(equalCopy, "exponent")))
      {
        hasIsNegative = [(_INPBDecimalNumberValue *)self hasIsNegative];
        if (hasIsNegative == [equalCopy hasIsNegative])
        {
          if (!-[_INPBDecimalNumberValue hasIsNegative](self, "hasIsNegative") || ![equalCopy hasIsNegative] || (isNegative = self->_isNegative, isNegative == objc_msgSend(equalCopy, "isNegative")))
          {
            hasMantissa = [(_INPBDecimalNumberValue *)self hasMantissa];
            if (hasMantissa == [equalCopy hasMantissa])
            {
              if (!-[_INPBDecimalNumberValue hasMantissa](self, "hasMantissa") || ![equalCopy hasMantissa] || (mantissa = self->_mantissa, mantissa == objc_msgSend(equalCopy, "mantissa")))
              {
                valueMetadata = [(_INPBDecimalNumberValue *)self valueMetadata];
                valueMetadata2 = [equalCopy valueMetadata];
                v13 = valueMetadata2;
                if ((valueMetadata != 0) != (valueMetadata2 == 0))
                {
                  valueMetadata3 = [(_INPBDecimalNumberValue *)self valueMetadata];
                  if (!valueMetadata3)
                  {

LABEL_22:
                    v19 = 1;
                    goto LABEL_20;
                  }

                  v15 = valueMetadata3;
                  valueMetadata4 = [(_INPBDecimalNumberValue *)self valueMetadata];
                  valueMetadata5 = [equalCopy valueMetadata];
                  v18 = [valueMetadata4 isEqual:valueMetadata5];

                  if (v18)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v19 = 0;
LABEL_20:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDecimalNumberValue allocWithZone:](_INPBDecimalNumberValue init];
  if ([(_INPBDecimalNumberValue *)self hasExponent])
  {
    [(_INPBDecimalNumberValue *)v5 setExponent:[(_INPBDecimalNumberValue *)self exponent]];
  }

  if ([(_INPBDecimalNumberValue *)self hasIsNegative])
  {
    [(_INPBDecimalNumberValue *)v5 setIsNegative:[(_INPBDecimalNumberValue *)self isNegative]];
  }

  if ([(_INPBDecimalNumberValue *)self hasMantissa])
  {
    [(_INPBDecimalNumberValue *)v5 setMantissa:[(_INPBDecimalNumberValue *)self mantissa]];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBDecimalNumberValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDecimalNumberValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDecimalNumberValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDecimalNumberValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDecimalNumberValue *)self hasExponent])
  {
    exponent = self->_exponent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBDecimalNumberValue *)self hasIsNegative])
  {
    isNegative = self->_isNegative;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBDecimalNumberValue *)self hasMantissa])
  {
    mantissa = self->_mantissa;
    PBDataWriterWriteUint64Field();
  }

  valueMetadata = [(_INPBDecimalNumberValue *)self valueMetadata];

  v8 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBDecimalNumberValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setHasMantissa:(BOOL)mantissa
{
  if (mantissa)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsNegative:(BOOL)negative
{
  if (negative)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end