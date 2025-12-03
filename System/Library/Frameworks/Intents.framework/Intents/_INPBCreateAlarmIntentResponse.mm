@interface _INPBCreateAlarmIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBCreateAlarmIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsSuccessCode:(id)code;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSuccessCode:(int)code;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateAlarmIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  createdAlarm = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
  dictionaryRepresentation = [createdAlarm dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"createdAlarm"];

  if ([(_INPBCreateAlarmIntentResponse *)self hasSuccessCode])
  {
    successCode = [(_INPBCreateAlarmIntentResponse *)self successCode];
    if (successCode >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", successCode];
    }

    else
    {
      v7 = off_1E72881E0[successCode];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"successCode"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAlarm *)self->_createdAlarm hash];
  if ([(_INPBCreateAlarmIntentResponse *)self hasSuccessCode])
  {
    v4 = 2654435761 * self->_successCode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  createdAlarm = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
  createdAlarm2 = [equalCopy createdAlarm];
  v7 = createdAlarm2;
  if ((createdAlarm != 0) != (createdAlarm2 == 0))
  {
    createdAlarm3 = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
    if (createdAlarm3)
    {
      v9 = createdAlarm3;
      createdAlarm4 = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
      createdAlarm5 = [equalCopy createdAlarm];
      v12 = [createdAlarm4 isEqual:createdAlarm5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasSuccessCode = [(_INPBCreateAlarmIntentResponse *)self hasSuccessCode];
    if (hasSuccessCode == [equalCopy hasSuccessCode])
    {
      if (!-[_INPBCreateAlarmIntentResponse hasSuccessCode](self, "hasSuccessCode") || ![equalCopy hasSuccessCode] || (successCode = self->_successCode, successCode == objc_msgSend(equalCopy, "successCode")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCreateAlarmIntentResponse allocWithZone:](_INPBCreateAlarmIntentResponse init];
  v6 = [(_INPBAlarm *)self->_createdAlarm copyWithZone:zone];
  [(_INPBCreateAlarmIntentResponse *)v5 setCreatedAlarm:v6];

  if ([(_INPBCreateAlarmIntentResponse *)self hasSuccessCode])
  {
    [(_INPBCreateAlarmIntentResponse *)v5 setSuccessCode:[(_INPBCreateAlarmIntentResponse *)self successCode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateAlarmIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateAlarmIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateAlarmIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  createdAlarm = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];

  if (createdAlarm)
  {
    createdAlarm2 = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateAlarmIntentResponse *)self hasSuccessCode])
  {
    successCode = self->_successCode;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsSuccessCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"ALARM_CREATED"])
  {
    v4 = 0;
  }

  else if ([codeCopy isEqualToString:@"DUPLICATE_ALARM_EXISTS"])
  {
    v4 = 1;
  }

  else if ([codeCopy isEqualToString:@"DUPLICATE_ALARM_ENABLED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSuccessCode:(int)code
{
  has = self->_has;
  if (code == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_successCode = code;
  }
}

@end