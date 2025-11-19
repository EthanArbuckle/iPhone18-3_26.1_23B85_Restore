@interface _INPBAlarmSearch
- (BOOL)isEqual:(id)a3;
- (_INPBAlarmSearch)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAlarmReferenceType:(id)a3;
- (int)StringAsAlarmSearchStatus:(id)a3;
- (int)StringAsPeriod:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAlarmReferenceType:(int)a3;
- (void)setAlarmSearchStatus:(int)a3;
- (void)setHasAlarmSearchStatus:(BOOL)a3;
- (void)setHasIncludeSleepAlarm:(BOOL)a3;
- (void)setHasIsMeridianInferred:(BOOL)a3;
- (void)setHasPeriod:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setPeriod:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAlarmSearch

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBAlarmSearch *)self hasAlarmReferenceType])
  {
    v4 = [(_INPBAlarmSearch *)self alarmReferenceType];
    if (v4 >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7287FF8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"alarmReferenceType"];
  }

  if ([(_INPBAlarmSearch *)self hasAlarmSearchStatus])
  {
    v6 = [(_INPBAlarmSearch *)self alarmSearchStatus];
    if ((v6 - 1) >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7288018[(v6 - 1)];
    }

    [v3 setObject:v7 forKeyedSubscript:@"alarmSearchStatus"];
  }

  if (self->_identifier)
  {
    v8 = [(_INPBAlarmSearch *)self identifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"identifier"];
  }

  if ([(_INPBAlarmSearch *)self hasIncludeSleepAlarm])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBAlarmSearch includeSleepAlarm](self, "includeSleepAlarm")}];
    [v3 setObject:v10 forKeyedSubscript:@"includeSleepAlarm"];
  }

  if ([(_INPBAlarmSearch *)self hasIsMeridianInferred])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBAlarmSearch isMeridianInferred](self, "isMeridianInferred")}];
    [v3 setObject:v11 forKeyedSubscript:@"isMeridianInferred"];
  }

  v12 = [(_INPBAlarmSearch *)self label];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"label"];

  if ([(_INPBAlarmSearch *)self hasPeriod])
  {
    v14 = [(_INPBAlarmSearch *)self period];
    if (v14 >= 9)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E7288038[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"period"];
  }

  v16 = [(_INPBAlarmSearch *)self time];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"time"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBAlarmSearch *)self hasAlarmReferenceType])
  {
    v3 = 2654435761 * self->_alarmReferenceType;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBAlarmSearch *)self hasAlarmSearchStatus])
  {
    v4 = 2654435761 * self->_alarmSearchStatus;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_identifier hash];
  if ([(_INPBAlarmSearch *)self hasIncludeSleepAlarm])
  {
    v6 = 2654435761 * self->_includeSleepAlarm;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBAlarmSearch *)self hasIsMeridianInferred])
  {
    v7 = 2654435761 * self->_isMeridianInferred;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_INPBDataString *)self->_label hash];
  if ([(_INPBAlarmSearch *)self hasPeriod])
  {
    v9 = 2654435761 * self->_period;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v7 ^ v5 ^ v8 ^ v9 ^ [(_INPBDateTimeRangeValue *)self->_time hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(_INPBAlarmSearch *)self hasAlarmReferenceType];
  if (v5 != [v4 hasAlarmReferenceType])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasAlarmReferenceType])
  {
    if ([v4 hasAlarmReferenceType])
    {
      alarmReferenceType = self->_alarmReferenceType;
      if (alarmReferenceType != [v4 alarmReferenceType])
      {
        goto LABEL_37;
      }
    }
  }

  v7 = [(_INPBAlarmSearch *)self hasAlarmSearchStatus];
  if (v7 != [v4 hasAlarmSearchStatus])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasAlarmSearchStatus])
  {
    if ([v4 hasAlarmSearchStatus])
    {
      alarmSearchStatus = self->_alarmSearchStatus;
      if (alarmSearchStatus != [v4 alarmSearchStatus])
      {
        goto LABEL_37;
      }
    }
  }

  v9 = [(_INPBAlarmSearch *)self identifier];
  v10 = [v4 identifier];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_36;
  }

  v11 = [(_INPBAlarmSearch *)self identifier];
  if (v11)
  {
    v12 = v11;
    v13 = [(_INPBAlarmSearch *)self identifier];
    v14 = [v4 identifier];
    v15 = [v13 isEqual:v14];

    if (!v15)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v16 = [(_INPBAlarmSearch *)self hasIncludeSleepAlarm];
  if (v16 != [v4 hasIncludeSleepAlarm])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasIncludeSleepAlarm])
  {
    if ([v4 hasIncludeSleepAlarm])
    {
      includeSleepAlarm = self->_includeSleepAlarm;
      if (includeSleepAlarm != [v4 includeSleepAlarm])
      {
        goto LABEL_37;
      }
    }
  }

  v18 = [(_INPBAlarmSearch *)self hasIsMeridianInferred];
  if (v18 != [v4 hasIsMeridianInferred])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasIsMeridianInferred])
  {
    if ([v4 hasIsMeridianInferred])
    {
      isMeridianInferred = self->_isMeridianInferred;
      if (isMeridianInferred != [v4 isMeridianInferred])
      {
        goto LABEL_37;
      }
    }
  }

  v9 = [(_INPBAlarmSearch *)self label];
  v10 = [v4 label];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_36;
  }

  v20 = [(_INPBAlarmSearch *)self label];
  if (v20)
  {
    v21 = v20;
    v22 = [(_INPBAlarmSearch *)self label];
    v23 = [v4 label];
    v24 = [v22 isEqual:v23];

    if (!v24)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v25 = [(_INPBAlarmSearch *)self hasPeriod];
  if (v25 != [v4 hasPeriod])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasPeriod])
  {
    if ([v4 hasPeriod])
    {
      period = self->_period;
      if (period != [v4 period])
      {
        goto LABEL_37;
      }
    }
  }

  v9 = [(_INPBAlarmSearch *)self time];
  v10 = [v4 time];
  if ((v9 != 0) != (v10 == 0))
  {
    v27 = [(_INPBAlarmSearch *)self time];
    if (!v27)
    {

LABEL_40:
      v32 = 1;
      goto LABEL_38;
    }

    v28 = v27;
    v29 = [(_INPBAlarmSearch *)self time];
    v30 = [v4 time];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v32 = 0;
LABEL_38:

  return v32;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAlarmSearch allocWithZone:](_INPBAlarmSearch init];
  if ([(_INPBAlarmSearch *)self hasAlarmReferenceType])
  {
    [(_INPBAlarmSearch *)v5 setAlarmReferenceType:[(_INPBAlarmSearch *)self alarmReferenceType]];
  }

  if ([(_INPBAlarmSearch *)self hasAlarmSearchStatus])
  {
    [(_INPBAlarmSearch *)v5 setAlarmSearchStatus:[(_INPBAlarmSearch *)self alarmSearchStatus]];
  }

  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBAlarmSearch *)v5 setIdentifier:v6];

  if ([(_INPBAlarmSearch *)self hasIncludeSleepAlarm])
  {
    [(_INPBAlarmSearch *)v5 setIncludeSleepAlarm:[(_INPBAlarmSearch *)self includeSleepAlarm]];
  }

  if ([(_INPBAlarmSearch *)self hasIsMeridianInferred])
  {
    [(_INPBAlarmSearch *)v5 setIsMeridianInferred:[(_INPBAlarmSearch *)self isMeridianInferred]];
  }

  v7 = [(_INPBDataString *)self->_label copyWithZone:a3];
  [(_INPBAlarmSearch *)v5 setLabel:v7];

  if ([(_INPBAlarmSearch *)self hasPeriod])
  {
    [(_INPBAlarmSearch *)v5 setPeriod:[(_INPBAlarmSearch *)self period]];
  }

  v8 = [(_INPBDateTimeRangeValue *)self->_time copyWithZone:a3];
  [(_INPBAlarmSearch *)v5 setTime:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAlarmSearch *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAlarmSearch)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAlarmSearch *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  if ([(_INPBAlarmSearch *)self hasAlarmReferenceType])
  {
    alarmReferenceType = self->_alarmReferenceType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBAlarmSearch *)self hasAlarmSearchStatus])
  {
    alarmSearchStatus = self->_alarmSearchStatus;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_INPBAlarmSearch *)self identifier];

  if (v6)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBAlarmSearch *)self hasIncludeSleepAlarm])
  {
    includeSleepAlarm = self->_includeSleepAlarm;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBAlarmSearch *)self hasIsMeridianInferred])
  {
    isMeridianInferred = self->_isMeridianInferred;
    PBDataWriterWriteBOOLField();
  }

  v10 = [(_INPBAlarmSearch *)self label];

  if (v10)
  {
    v11 = [(_INPBAlarmSearch *)self label];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBAlarmSearch *)self hasPeriod])
  {
    period = self->_period;
    PBDataWriterWriteInt32Field();
  }

  v13 = [(_INPBAlarmSearch *)self time];

  v14 = v16;
  if (v13)
  {
    v15 = [(_INPBAlarmSearch *)self time];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (int)StringAsPeriod:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_PERIOD"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MORNING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AFTERNOON"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"EVENING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NIGHT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NOON"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MIDNIGHT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"TODAY"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"TOMORROW"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPeriod:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setPeriod:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_period = a3;
  }
}

- (void)setHasIsMeridianInferred:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIncludeSleepAlarm:(BOOL)a3
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

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (int)StringAsAlarmSearchStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ENABLED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DISABLED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FIRING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SNOOZED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasAlarmSearchStatus:(BOOL)a3
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

- (void)setAlarmSearchStatus:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_alarmSearchStatus = a3;
  }
}

- (int)StringAsAlarmReferenceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DEFAULT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"THIS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NEXT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ALL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlarmReferenceType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_alarmReferenceType = a3;
  }
}

@end