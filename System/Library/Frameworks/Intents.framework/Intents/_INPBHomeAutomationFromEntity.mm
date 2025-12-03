@interface _INPBHomeAutomationFromEntity
- (BOOL)isEqual:(id)equal;
- (_INPBHomeAutomationFromEntity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeAutomationFromEntity

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeAutomationFromEntity *)self hasType])
  {
    type = [(_INPBHomeAutomationFromEntity *)self type];
    if (type >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v5 = off_1E7288830[type];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"type"];
  }

  value = [(_INPBHomeAutomationFromEntity *)self value];
  dictionaryRepresentation = [value dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"value"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasType = [(_INPBHomeAutomationFromEntity *)self hasType];
    if (hasType == [equalCopy hasType])
    {
      if (!-[_INPBHomeAutomationFromEntity hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
      {
        value = [(_INPBHomeAutomationFromEntity *)self value];
        value2 = [equalCopy value];
        v9 = value2;
        if ((value != 0) != (value2 == 0))
        {
          value3 = [(_INPBHomeAutomationFromEntity *)self value];
          if (!value3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = value3;
          value4 = [(_INPBHomeAutomationFromEntity *)self value];
          value5 = [equalCopy value];
          v14 = [value4 isEqual:value5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBHomeAutomationFromEntity allocWithZone:](_INPBHomeAutomationFromEntity init];
  if ([(_INPBHomeAutomationFromEntity *)self hasType])
  {
    [(_INPBHomeAutomationFromEntity *)v5 setType:[(_INPBHomeAutomationFromEntity *)self type]];
  }

  v6 = [(_INPBString *)self->_value copyWithZone:zone];
  [(_INPBHomeAutomationFromEntity *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeAutomationFromEntity *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeAutomationFromEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeAutomationFromEntity *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBHomeAutomationFromEntity *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  value = [(_INPBHomeAutomationFromEntity *)self value];

  v6 = toCopy;
  if (value)
  {
    value2 = [(_INPBHomeAutomationFromEntity *)self value];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_HAENTITY_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ACCESSORY"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ROOM"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ZONE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = type;
  }
}

@end