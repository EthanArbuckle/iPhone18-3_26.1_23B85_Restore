@interface _INPBCreateAlarmIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBCreateAlarmIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsSuccessCode:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSuccessCode:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCreateAlarmIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"createdAlarm"];

  if ([(_INPBCreateAlarmIntentResponse *)self hasSuccessCode])
  {
    v6 = [(_INPBCreateAlarmIntentResponse *)self successCode];
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E72881E0[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"successCode"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
  v6 = [v4 createdAlarm];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
      v11 = [v4 createdAlarm];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBCreateAlarmIntentResponse *)self hasSuccessCode];
    if (v13 == [v4 hasSuccessCode])
    {
      if (!-[_INPBCreateAlarmIntentResponse hasSuccessCode](self, "hasSuccessCode") || ![v4 hasSuccessCode] || (successCode = self->_successCode, successCode == objc_msgSend(v4, "successCode")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCreateAlarmIntentResponse allocWithZone:](_INPBCreateAlarmIntentResponse init];
  v6 = [(_INPBAlarm *)self->_createdAlarm copyWithZone:a3];
  [(_INPBCreateAlarmIntentResponse *)v5 setCreatedAlarm:v6];

  if ([(_INPBCreateAlarmIntentResponse *)self hasSuccessCode])
  {
    [(_INPBCreateAlarmIntentResponse *)v5 setSuccessCode:[(_INPBCreateAlarmIntentResponse *)self successCode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCreateAlarmIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCreateAlarmIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCreateAlarmIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];

  if (v4)
  {
    v5 = [(_INPBCreateAlarmIntentResponse *)self createdAlarm];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateAlarmIntentResponse *)self hasSuccessCode])
  {
    successCode = self->_successCode;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsSuccessCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ALARM_CREATED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DUPLICATE_ALARM_EXISTS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DUPLICATE_ALARM_ENABLED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSuccessCode:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_successCode = a3;
  }
}

@end