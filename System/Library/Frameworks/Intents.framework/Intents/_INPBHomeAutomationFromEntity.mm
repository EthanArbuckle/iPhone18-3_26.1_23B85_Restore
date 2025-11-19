@interface _INPBHomeAutomationFromEntity
- (BOOL)isEqual:(id)a3;
- (_INPBHomeAutomationFromEntity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHomeAutomationFromEntity

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeAutomationFromEntity *)self hasType])
  {
    v4 = [(_INPBHomeAutomationFromEntity *)self type];
    if (v4 >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7288830[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"type"];
  }

  v6 = [(_INPBHomeAutomationFromEntity *)self value];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"value"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBHomeAutomationFromEntity *)self hasType])
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBString *)self->_value hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBHomeAutomationFromEntity *)self hasType];
    if (v5 == [v4 hasType])
    {
      if (!-[_INPBHomeAutomationFromEntity hasType](self, "hasType") || ![v4 hasType] || (type = self->_type, type == objc_msgSend(v4, "type")))
      {
        v7 = [(_INPBHomeAutomationFromEntity *)self value];
        v8 = [v4 value];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_INPBHomeAutomationFromEntity *)self value];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(_INPBHomeAutomationFromEntity *)self value];
          v13 = [v4 value];
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
  v5 = [+[_INPBHomeAutomationFromEntity allocWithZone:](_INPBHomeAutomationFromEntity init];
  if ([(_INPBHomeAutomationFromEntity *)self hasType])
  {
    [(_INPBHomeAutomationFromEntity *)v5 setType:[(_INPBHomeAutomationFromEntity *)self type]];
  }

  v6 = [(_INPBString *)self->_value copyWithZone:a3];
  [(_INPBHomeAutomationFromEntity *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHomeAutomationFromEntity *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHomeAutomationFromEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHomeAutomationFromEntity *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBHomeAutomationFromEntity *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBHomeAutomationFromEntity *)self value];

  v6 = v8;
  if (v5)
  {
    v7 = [(_INPBHomeAutomationFromEntity *)self value];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_HAENTITY_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ACCESSORY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ROOM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ZONE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = a3;
  }
}

@end