@interface _INPBDoubleValue
- (BOOL)isEqual:(id)a3;
- (_INPBDoubleValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDoubleValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDoubleValue *)self hasValue])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBDoubleValue *)self value];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"value"];
  }

  v6 = [(_INPBDoubleValue *)self valueMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBDoubleValue *)self hasValue])
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v3.i64 = floor(value + 0.5);
    v6 = (value - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v4, v3).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v8 += v6;
      }
    }

    else
    {
      v8 -= fabs(v6);
    }
  }

  else
  {
    v8 = 0;
  }

  return [(_INPBValueMetadata *)self->_valueMetadata hash]^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBDoubleValue *)self hasValue];
    if (v5 == [v4 hasValue])
    {
      if (!-[_INPBDoubleValue hasValue](self, "hasValue") || ![v4 hasValue] || (value = self->_value, objc_msgSend(v4, "value"), value == v7))
      {
        v8 = [(_INPBDoubleValue *)self valueMetadata];
        v9 = [v4 valueMetadata];
        v10 = v9;
        if ((v8 != 0) != (v9 == 0))
        {
          v11 = [(_INPBDoubleValue *)self valueMetadata];
          if (!v11)
          {

LABEL_14:
            v16 = 1;
            goto LABEL_12;
          }

          v12 = v11;
          v13 = [(_INPBDoubleValue *)self valueMetadata];
          v14 = [v4 valueMetadata];
          v15 = [v13 isEqual:v14];

          if (v15)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDoubleValue allocWithZone:](_INPBDoubleValue init];
  if ([(_INPBDoubleValue *)self hasValue])
  {
    [(_INPBDoubleValue *)self value];
    [(_INPBDoubleValue *)v5 setValue:?];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBDoubleValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDoubleValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDoubleValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDoubleValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBDoubleValue *)self hasValue])
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
  }

  v5 = [(_INPBDoubleValue *)self valueMetadata];

  v6 = v8;
  if (v5)
  {
    v7 = [(_INPBDoubleValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

@end