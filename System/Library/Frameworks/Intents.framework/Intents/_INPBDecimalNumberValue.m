@interface _INPBDecimalNumberValue
- (BOOL)isEqual:(id)a3;
- (_INPBDecimalNumberValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasIsNegative:(BOOL)a3;
- (void)setHasMantissa:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDecimalNumberValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDecimalNumberValue *)self hasExponent])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBDecimalNumberValue exponent](self, "exponent")}];
    [v3 setObject:v4 forKeyedSubscript:@"exponent"];
  }

  if ([(_INPBDecimalNumberValue *)self hasIsNegative])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDecimalNumberValue isNegative](self, "isNegative")}];
    [v3 setObject:v5 forKeyedSubscript:@"is_negative"];
  }

  if ([(_INPBDecimalNumberValue *)self hasMantissa])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBDecimalNumberValue mantissa](self, "mantissa")}];
    [v3 setObject:v6 forKeyedSubscript:@"mantissa"];
  }

  v7 = [(_INPBDecimalNumberValue *)self valueMetadata];
  v8 = [v7 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"valueMetadata"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBDecimalNumberValue *)self hasExponent];
    if (v5 == [v4 hasExponent])
    {
      if (!-[_INPBDecimalNumberValue hasExponent](self, "hasExponent") || ![v4 hasExponent] || (exponent = self->_exponent, exponent == objc_msgSend(v4, "exponent")))
      {
        v7 = [(_INPBDecimalNumberValue *)self hasIsNegative];
        if (v7 == [v4 hasIsNegative])
        {
          if (!-[_INPBDecimalNumberValue hasIsNegative](self, "hasIsNegative") || ![v4 hasIsNegative] || (isNegative = self->_isNegative, isNegative == objc_msgSend(v4, "isNegative")))
          {
            v9 = [(_INPBDecimalNumberValue *)self hasMantissa];
            if (v9 == [v4 hasMantissa])
            {
              if (!-[_INPBDecimalNumberValue hasMantissa](self, "hasMantissa") || ![v4 hasMantissa] || (mantissa = self->_mantissa, mantissa == objc_msgSend(v4, "mantissa")))
              {
                v11 = [(_INPBDecimalNumberValue *)self valueMetadata];
                v12 = [v4 valueMetadata];
                v13 = v12;
                if ((v11 != 0) != (v12 == 0))
                {
                  v14 = [(_INPBDecimalNumberValue *)self valueMetadata];
                  if (!v14)
                  {

LABEL_22:
                    v19 = 1;
                    goto LABEL_20;
                  }

                  v15 = v14;
                  v16 = [(_INPBDecimalNumberValue *)self valueMetadata];
                  v17 = [v4 valueMetadata];
                  v18 = [v16 isEqual:v17];

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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBDecimalNumberValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDecimalNumberValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDecimalNumberValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDecimalNumberValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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

  v7 = [(_INPBDecimalNumberValue *)self valueMetadata];

  v8 = v10;
  if (v7)
  {
    v9 = [(_INPBDecimalNumberValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasMantissa:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsNegative:(BOOL)a3
{
  if (a3)
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