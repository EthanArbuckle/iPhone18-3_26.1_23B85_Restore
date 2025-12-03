@interface _INPBAlarmSearch
- (BOOL)isEqual:(id)equal;
- (_INPBAlarmSearch)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAlarmReferenceType:(id)type;
- (int)StringAsAlarmSearchStatus:(id)status;
- (int)StringAsPeriod:(id)period;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAlarmReferenceType:(int)type;
- (void)setAlarmSearchStatus:(int)status;
- (void)setHasAlarmSearchStatus:(BOOL)status;
- (void)setHasIncludeSleepAlarm:(BOOL)alarm;
- (void)setHasIsMeridianInferred:(BOOL)inferred;
- (void)setHasPeriod:(BOOL)period;
- (void)setIdentifier:(id)identifier;
- (void)setPeriod:(int)period;
- (void)writeTo:(id)to;
@end

@implementation _INPBAlarmSearch

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBAlarmSearch *)self hasAlarmReferenceType])
  {
    alarmReferenceType = [(_INPBAlarmSearch *)self alarmReferenceType];
    if (alarmReferenceType >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", alarmReferenceType];
    }

    else
    {
      v5 = off_1E7287FF8[alarmReferenceType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"alarmReferenceType"];
  }

  if ([(_INPBAlarmSearch *)self hasAlarmSearchStatus])
  {
    alarmSearchStatus = [(_INPBAlarmSearch *)self alarmSearchStatus];
    if ((alarmSearchStatus - 1) >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", alarmSearchStatus];
    }

    else
    {
      v7 = off_1E7288018[(alarmSearchStatus - 1)];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"alarmSearchStatus"];
  }

  if (self->_identifier)
  {
    identifier = [(_INPBAlarmSearch *)self identifier];
    v9 = [identifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"identifier"];
  }

  if ([(_INPBAlarmSearch *)self hasIncludeSleepAlarm])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBAlarmSearch includeSleepAlarm](self, "includeSleepAlarm")}];
    [dictionary setObject:v10 forKeyedSubscript:@"includeSleepAlarm"];
  }

  if ([(_INPBAlarmSearch *)self hasIsMeridianInferred])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBAlarmSearch isMeridianInferred](self, "isMeridianInferred")}];
    [dictionary setObject:v11 forKeyedSubscript:@"isMeridianInferred"];
  }

  label = [(_INPBAlarmSearch *)self label];
  dictionaryRepresentation = [label dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"label"];

  if ([(_INPBAlarmSearch *)self hasPeriod])
  {
    period = [(_INPBAlarmSearch *)self period];
    if (period >= 9)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", period];
    }

    else
    {
      v15 = off_1E7288038[period];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"period"];
  }

  time = [(_INPBAlarmSearch *)self time];
  dictionaryRepresentation2 = [time dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"time"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  hasAlarmReferenceType = [(_INPBAlarmSearch *)self hasAlarmReferenceType];
  if (hasAlarmReferenceType != [equalCopy hasAlarmReferenceType])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasAlarmReferenceType])
  {
    if ([equalCopy hasAlarmReferenceType])
    {
      alarmReferenceType = self->_alarmReferenceType;
      if (alarmReferenceType != [equalCopy alarmReferenceType])
      {
        goto LABEL_37;
      }
    }
  }

  hasAlarmSearchStatus = [(_INPBAlarmSearch *)self hasAlarmSearchStatus];
  if (hasAlarmSearchStatus != [equalCopy hasAlarmSearchStatus])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasAlarmSearchStatus])
  {
    if ([equalCopy hasAlarmSearchStatus])
    {
      alarmSearchStatus = self->_alarmSearchStatus;
      if (alarmSearchStatus != [equalCopy alarmSearchStatus])
      {
        goto LABEL_37;
      }
    }
  }

  identifier = [(_INPBAlarmSearch *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_36;
  }

  identifier3 = [(_INPBAlarmSearch *)self identifier];
  if (identifier3)
  {
    v12 = identifier3;
    identifier4 = [(_INPBAlarmSearch *)self identifier];
    identifier5 = [equalCopy identifier];
    v15 = [identifier4 isEqual:identifier5];

    if (!v15)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  hasIncludeSleepAlarm = [(_INPBAlarmSearch *)self hasIncludeSleepAlarm];
  if (hasIncludeSleepAlarm != [equalCopy hasIncludeSleepAlarm])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasIncludeSleepAlarm])
  {
    if ([equalCopy hasIncludeSleepAlarm])
    {
      includeSleepAlarm = self->_includeSleepAlarm;
      if (includeSleepAlarm != [equalCopy includeSleepAlarm])
      {
        goto LABEL_37;
      }
    }
  }

  hasIsMeridianInferred = [(_INPBAlarmSearch *)self hasIsMeridianInferred];
  if (hasIsMeridianInferred != [equalCopy hasIsMeridianInferred])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasIsMeridianInferred])
  {
    if ([equalCopy hasIsMeridianInferred])
    {
      isMeridianInferred = self->_isMeridianInferred;
      if (isMeridianInferred != [equalCopy isMeridianInferred])
      {
        goto LABEL_37;
      }
    }
  }

  identifier = [(_INPBAlarmSearch *)self label];
  identifier2 = [equalCopy label];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_36;
  }

  label = [(_INPBAlarmSearch *)self label];
  if (label)
  {
    v21 = label;
    label2 = [(_INPBAlarmSearch *)self label];
    label3 = [equalCopy label];
    v24 = [label2 isEqual:label3];

    if (!v24)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  hasPeriod = [(_INPBAlarmSearch *)self hasPeriod];
  if (hasPeriod != [equalCopy hasPeriod])
  {
    goto LABEL_37;
  }

  if ([(_INPBAlarmSearch *)self hasPeriod])
  {
    if ([equalCopy hasPeriod])
    {
      period = self->_period;
      if (period != [equalCopy period])
      {
        goto LABEL_37;
      }
    }
  }

  identifier = [(_INPBAlarmSearch *)self time];
  identifier2 = [equalCopy time];
  if ((identifier != 0) != (identifier2 == 0))
  {
    time = [(_INPBAlarmSearch *)self time];
    if (!time)
    {

LABEL_40:
      v32 = 1;
      goto LABEL_38;
    }

    v28 = time;
    time2 = [(_INPBAlarmSearch *)self time];
    time3 = [equalCopy time];
    v31 = [time2 isEqual:time3];

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

- (id)copyWithZone:(_NSZone *)zone
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

  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBAlarmSearch *)v5 setIdentifier:v6];

  if ([(_INPBAlarmSearch *)self hasIncludeSleepAlarm])
  {
    [(_INPBAlarmSearch *)v5 setIncludeSleepAlarm:[(_INPBAlarmSearch *)self includeSleepAlarm]];
  }

  if ([(_INPBAlarmSearch *)self hasIsMeridianInferred])
  {
    [(_INPBAlarmSearch *)v5 setIsMeridianInferred:[(_INPBAlarmSearch *)self isMeridianInferred]];
  }

  v7 = [(_INPBDataString *)self->_label copyWithZone:zone];
  [(_INPBAlarmSearch *)v5 setLabel:v7];

  if ([(_INPBAlarmSearch *)self hasPeriod])
  {
    [(_INPBAlarmSearch *)v5 setPeriod:[(_INPBAlarmSearch *)self period]];
  }

  v8 = [(_INPBDateTimeRangeValue *)self->_time copyWithZone:zone];
  [(_INPBAlarmSearch *)v5 setTime:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAlarmSearch *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAlarmSearch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAlarmSearch *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  identifier = [(_INPBAlarmSearch *)self identifier];

  if (identifier)
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

  label = [(_INPBAlarmSearch *)self label];

  if (label)
  {
    label2 = [(_INPBAlarmSearch *)self label];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBAlarmSearch *)self hasPeriod])
  {
    period = self->_period;
    PBDataWriterWriteInt32Field();
  }

  time = [(_INPBAlarmSearch *)self time];

  v14 = toCopy;
  if (time)
  {
    time2 = [(_INPBAlarmSearch *)self time];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (int)StringAsPeriod:(id)period
{
  periodCopy = period;
  if ([periodCopy isEqualToString:@"UNKNOWN_PERIOD"])
  {
    v4 = 0;
  }

  else if ([periodCopy isEqualToString:@"MORNING"])
  {
    v4 = 1;
  }

  else if ([periodCopy isEqualToString:@"AFTERNOON"])
  {
    v4 = 2;
  }

  else if ([periodCopy isEqualToString:@"EVENING"])
  {
    v4 = 3;
  }

  else if ([periodCopy isEqualToString:@"NIGHT"])
  {
    v4 = 4;
  }

  else if ([periodCopy isEqualToString:@"NOON"])
  {
    v4 = 5;
  }

  else if ([periodCopy isEqualToString:@"MIDNIGHT"])
  {
    v4 = 6;
  }

  else if ([periodCopy isEqualToString:@"TODAY"])
  {
    v4 = 7;
  }

  else if ([periodCopy isEqualToString:@"TOMORROW"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPeriod:(BOOL)period
{
  if (period)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setPeriod:(int)period
{
  has = self->_has;
  if (period == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_period = period;
  }
}

- (void)setHasIsMeridianInferred:(BOOL)inferred
{
  if (inferred)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIncludeSleepAlarm:(BOOL)alarm
{
  if (alarm)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (int)StringAsAlarmSearchStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"ENABLED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"DISABLED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"FIRING"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"SNOOZED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasAlarmSearchStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setAlarmSearchStatus:(int)status
{
  has = self->_has;
  if (status == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_alarmSearchStatus = status;
  }
}

- (int)StringAsAlarmReferenceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"DEFAULT"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"THIS"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"NEXT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ALL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlarmReferenceType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_alarmReferenceType = type;
  }
}

@end