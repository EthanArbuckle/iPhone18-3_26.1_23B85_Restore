@interface _INPBSetBinarySettingIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSetBinarySettingIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsOldValue:(id)value;
- (int)StringAsUpdatedValue:(id)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setErrorDetail:(id)detail;
- (void)setHasUpdatedValue:(BOOL)value;
- (void)setOldValue:(int)value;
- (void)setUpdatedValue:(int)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetBinarySettingIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    errorDetail = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];
    v5 = [errorDetail copy];
    [dictionary setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasOldValue])
  {
    oldValue = [(_INPBSetBinarySettingIntentResponse *)self oldValue];
    if ((oldValue - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", oldValue];
    }

    else
    {
      v7 = *(&off_1E7287BE0 + (oldValue - 1));
    }

    [dictionary setObject:v7 forKeyedSubscript:@"oldValue"];
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue])
  {
    updatedValue = [(_INPBSetBinarySettingIntentResponse *)self updatedValue];
    if ((updatedValue - 1) >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", updatedValue];
    }

    else
    {
      v9 = *(&off_1E7287BE0 + (updatedValue - 1));
    }

    [dictionary setObject:v9 forKeyedSubscript:@"updatedValue"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDetail hash];
  if ([(_INPBSetBinarySettingIntentResponse *)self hasOldValue])
  {
    v4 = 2654435761 * self->_oldValue;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue])
  {
    v5 = 2654435761 * self->_updatedValue;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  errorDetail = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];
  errorDetail2 = [equalCopy errorDetail];
  v7 = errorDetail2;
  if ((errorDetail != 0) != (errorDetail2 == 0))
  {
    errorDetail3 = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];
    if (errorDetail3)
    {
      v9 = errorDetail3;
      errorDetail4 = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];
      errorDetail5 = [equalCopy errorDetail];
      v12 = [errorDetail4 isEqual:errorDetail5];

      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    hasOldValue = [(_INPBSetBinarySettingIntentResponse *)self hasOldValue];
    if (hasOldValue == [equalCopy hasOldValue])
    {
      if (!-[_INPBSetBinarySettingIntentResponse hasOldValue](self, "hasOldValue") || ![equalCopy hasOldValue] || (oldValue = self->_oldValue, oldValue == objc_msgSend(equalCopy, "oldValue")))
      {
        hasUpdatedValue = [(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue];
        if (hasUpdatedValue == [equalCopy hasUpdatedValue])
        {
          if (!-[_INPBSetBinarySettingIntentResponse hasUpdatedValue](self, "hasUpdatedValue") || ![equalCopy hasUpdatedValue] || (updatedValue = self->_updatedValue, updatedValue == objc_msgSend(equalCopy, "updatedValue")))
          {
            v16 = 1;
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
  }

LABEL_13:
  v16 = 0;
LABEL_14:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetBinarySettingIntentResponse allocWithZone:](_INPBSetBinarySettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:zone];
  [(_INPBSetBinarySettingIntentResponse *)v5 setErrorDetail:v6];

  if ([(_INPBSetBinarySettingIntentResponse *)self hasOldValue])
  {
    [(_INPBSetBinarySettingIntentResponse *)v5 setOldValue:[(_INPBSetBinarySettingIntentResponse *)self oldValue]];
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue])
  {
    [(_INPBSetBinarySettingIntentResponse *)v5 setUpdatedValue:[(_INPBSetBinarySettingIntentResponse *)self updatedValue]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetBinarySettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetBinarySettingIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetBinarySettingIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  errorDetail = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];

  if (errorDetail)
  {
    errorDetail = self->_errorDetail;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasOldValue])
  {
    oldValue = self->_oldValue;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue])
  {
    updatedValue = self->_updatedValue;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsUpdatedValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"ON"])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:@"OFF"])
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:@"TOGGLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasUpdatedValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setUpdatedValue:(int)value
{
  has = self->_has;
  if (value == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_updatedValue = value;
  }
}

- (int)StringAsOldValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"ON"])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:@"OFF"])
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:@"TOGGLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setOldValue:(int)value
{
  has = self->_has;
  if (value == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_oldValue = value;
  }
}

- (void)setErrorDetail:(id)detail
{
  v4 = [detail copy];
  errorDetail = self->_errorDetail;
  self->_errorDetail = v4;

  MEMORY[0x1EEE66BB8](v4, errorDetail);
}

@end