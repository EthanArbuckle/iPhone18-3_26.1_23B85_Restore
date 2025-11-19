@interface _INPBAlarm
- (BOOL)isEqual:(id)a3;
- (_INPBAlarm)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAlarmRepeatScheduleOptions:(id)a3;
- (unint64_t)hash;
- (void)addAlarmRepeatScheduleOptions:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setHasFiring:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAlarm

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alarmRepeatScheduleOptions.count)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBAlarm alarmRepeatScheduleOptionsCount](self, "alarmRepeatScheduleOptionsCount")}];
    if ([(_INPBAlarm *)self alarmRepeatScheduleOptionsCount])
    {
      v5 = 0;
      do
      {
        v6 = self->_alarmRepeatScheduleOptions.list[v5];
        if (v6 >= 8)
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_alarmRepeatScheduleOptions.list[v5]];
        }

        else
        {
          v7 = off_1E72881F8[v6];
        }

        [v4 addObject:v7];

        ++v5;
      }

      while (v5 < [(_INPBAlarm *)self alarmRepeatScheduleOptionsCount]);
    }

    [v3 setObject:v4 forKeyedSubscript:@"alarmRepeatScheduleOptions"];
  }

  v8 = [(_INPBAlarm *)self dateTime];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"dateTime"];

  if ([(_INPBAlarm *)self hasEnabled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBAlarm enabled](self, "enabled")}];
    [v3 setObject:v10 forKeyedSubscript:@"enabled"];
  }

  if ([(_INPBAlarm *)self hasFiring])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBAlarm firing](self, "firing")}];
    [v3 setObject:v11 forKeyedSubscript:@"firing"];
  }

  if (self->_identifier)
  {
    v12 = [(_INPBAlarm *)self identifier];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"identifier"];
  }

  v14 = [(_INPBAlarm *)self label];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"label"];

  v16 = [(_INPBAlarm *)self sleepAlarmAttribute];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"sleepAlarmAttribute"];

  return v3;
}

- (unint64_t)hash
{
  v3 = PBRepeatedInt32Hash();
  v4 = [(_INPBDateTime *)self->_dateTime hash];
  if ([(_INPBAlarm *)self hasEnabled])
  {
    v5 = 2654435761 * self->_enabled;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBAlarm *)self hasFiring])
  {
    v6 = 2654435761 * self->_firing;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_identifier hash];
  v8 = [(_INPBDataString *)self->_label hash];
  return v7 ^ v8 ^ [(_INPBSleepAlarmAttribute *)self->_sleepAlarmAttribute hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_31;
  }

  v5 = [(_INPBAlarm *)self dateTime];
  v6 = [v4 dateTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v7 = [(_INPBAlarm *)self dateTime];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAlarm *)self dateTime];
    v10 = [v4 dateTime];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v12 = [(_INPBAlarm *)self hasEnabled];
  if (v12 != [v4 hasEnabled])
  {
    goto LABEL_31;
  }

  if ([(_INPBAlarm *)self hasEnabled])
  {
    if ([v4 hasEnabled])
    {
      enabled = self->_enabled;
      if (enabled != [v4 enabled])
      {
        goto LABEL_31;
      }
    }
  }

  v14 = [(_INPBAlarm *)self hasFiring];
  if (v14 != [v4 hasFiring])
  {
    goto LABEL_31;
  }

  if ([(_INPBAlarm *)self hasFiring])
  {
    if ([v4 hasFiring])
    {
      firing = self->_firing;
      if (firing != [v4 firing])
      {
        goto LABEL_31;
      }
    }
  }

  v5 = [(_INPBAlarm *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v16 = [(_INPBAlarm *)self identifier];
  if (v16)
  {
    v17 = v16;
    v18 = [(_INPBAlarm *)self identifier];
    v19 = [v4 identifier];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBAlarm *)self label];
  v6 = [v4 label];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v21 = [(_INPBAlarm *)self label];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBAlarm *)self label];
    v24 = [v4 label];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBAlarm *)self sleepAlarmAttribute];
  v6 = [v4 sleepAlarmAttribute];
  if ((v5 != 0) != (v6 == 0))
  {
    v26 = [(_INPBAlarm *)self sleepAlarmAttribute];
    if (!v26)
    {

LABEL_34:
      v31 = 1;
      goto LABEL_32;
    }

    v27 = v26;
    v28 = [(_INPBAlarm *)self sleepAlarmAttribute];
    v29 = [v4 sleepAlarmAttribute];
    v30 = [v28 isEqual:v29];

    if (v30)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v31 = 0;
LABEL_32:

  return v31;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAlarm allocWithZone:](_INPBAlarm init];
  PBRepeatedInt32Copy();
  v6 = [(_INPBDateTime *)self->_dateTime copyWithZone:a3];
  [(_INPBAlarm *)v5 setDateTime:v6];

  if ([(_INPBAlarm *)self hasEnabled])
  {
    [(_INPBAlarm *)v5 setEnabled:[(_INPBAlarm *)self enabled]];
  }

  if ([(_INPBAlarm *)self hasFiring])
  {
    [(_INPBAlarm *)v5 setFiring:[(_INPBAlarm *)self firing]];
  }

  v7 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBAlarm *)v5 setIdentifier:v7];

  v8 = [(_INPBDataString *)self->_label copyWithZone:a3];
  [(_INPBAlarm *)v5 setLabel:v8];

  v9 = [(_INPBSleepAlarmAttribute *)self->_sleepAlarmAttribute copyWithZone:a3];
  [(_INPBAlarm *)v5 setSleepAlarmAttribute:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAlarm *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAlarm)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAlarm *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBAlarm *)self clearAlarmRepeatScheduleOptions];
  v3.receiver = self;
  v3.super_class = _INPBAlarm;
  [(_INPBAlarm *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  p_alarmRepeatScheduleOptions = &self->_alarmRepeatScheduleOptions;
  v18 = a3;
  if (self->_alarmRepeatScheduleOptions.count)
  {
    v5 = 0;
    do
    {
      v6 = p_alarmRepeatScheduleOptions->list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_alarmRepeatScheduleOptions.count);
  }

  v7 = [(_INPBAlarm *)self dateTime];

  if (v7)
  {
    v8 = [(_INPBAlarm *)self dateTime];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBAlarm *)self hasEnabled])
  {
    enabled = self->_enabled;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBAlarm *)self hasFiring])
  {
    firing = self->_firing;
    PBDataWriterWriteBOOLField();
  }

  v11 = [(_INPBAlarm *)self identifier];

  if (v11)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v13 = [(_INPBAlarm *)self label];

  if (v13)
  {
    v14 = [(_INPBAlarm *)self label];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBAlarm *)self sleepAlarmAttribute];

  v16 = v18;
  if (v15)
  {
    v17 = [(_INPBAlarm *)self sleepAlarmAttribute];
    PBDataWriterWriteSubmessage();

    v16 = v18;
  }
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setHasFiring:(BOOL)a3
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

- (int)StringAsAlarmRepeatScheduleOptions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MONDAY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TUESDAY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WEDNESDAY"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"THURSDAY"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"FRIDAY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SATURDAY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SUNDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAlarmRepeatScheduleOptions:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end