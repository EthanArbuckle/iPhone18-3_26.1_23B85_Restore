@interface _INPBBoolValue
- (BOOL)isEqual:(id)a3;
- (_INPBBoolValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBBoolValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBBoolValue *)self hasValue])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBBoolValue value](self, "value")}];
    [v3 setObject:v4 forKeyedSubscript:@"value"];
  }

  v5 = [(_INPBBoolValue *)self valueMetadata];
  v6 = [v5 dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBBoolValue *)self hasValue])
  {
    v3 = 2654435761 * self->_value;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBValueMetadata *)self->_valueMetadata hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBBoolValue *)self hasValue];
    if (v5 == [v4 hasValue])
    {
      if (!-[_INPBBoolValue hasValue](self, "hasValue") || ![v4 hasValue] || (value = self->_value, value == objc_msgSend(v4, "value")))
      {
        v7 = [(_INPBBoolValue *)self valueMetadata];
        v8 = [v4 valueMetadata];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_INPBBoolValue *)self valueMetadata];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(_INPBBoolValue *)self valueMetadata];
          v13 = [v4 valueMetadata];
          v14 = [v12 isEqual:v13];

          if (v14)
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

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBBoolValue allocWithZone:](_INPBBoolValue init];
  if ([(_INPBBoolValue *)self hasValue])
  {
    [(_INPBBoolValue *)v5 setValue:[(_INPBBoolValue *)self value]];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBBoolValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBBoolValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBBoolValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBBoolValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBBoolValue *)self hasValue])
  {
    value = self->_value;
    PBDataWriterWriteBOOLField();
  }

  v5 = [(_INPBBoolValue *)self valueMetadata];

  v6 = v8;
  if (v5)
  {
    v7 = [(_INPBBoolValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

@end