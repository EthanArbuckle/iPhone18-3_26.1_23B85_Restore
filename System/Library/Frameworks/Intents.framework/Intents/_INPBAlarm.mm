@interface _INPBAlarm
- (BOOL)isEqual:(id)equal;
- (_INPBAlarm)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAlarmRepeatScheduleOptions:(id)options;
- (unint64_t)hash;
- (void)addAlarmRepeatScheduleOptions:(int)options;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setHasFiring:(BOOL)firing;
- (void)setIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBAlarm

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v4 forKeyedSubscript:@"alarmRepeatScheduleOptions"];
  }

  dateTime = [(_INPBAlarm *)self dateTime];
  dictionaryRepresentation = [dateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dateTime"];

  if ([(_INPBAlarm *)self hasEnabled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBAlarm enabled](self, "enabled")}];
    [dictionary setObject:v10 forKeyedSubscript:@"enabled"];
  }

  if ([(_INPBAlarm *)self hasFiring])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBAlarm firing](self, "firing")}];
    [dictionary setObject:v11 forKeyedSubscript:@"firing"];
  }

  if (self->_identifier)
  {
    identifier = [(_INPBAlarm *)self identifier];
    v13 = [identifier copy];
    [dictionary setObject:v13 forKeyedSubscript:@"identifier"];
  }

  label = [(_INPBAlarm *)self label];
  dictionaryRepresentation2 = [label dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"label"];

  sleepAlarmAttribute = [(_INPBAlarm *)self sleepAlarmAttribute];
  dictionaryRepresentation3 = [sleepAlarmAttribute dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"sleepAlarmAttribute"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_31;
  }

  dateTime = [(_INPBAlarm *)self dateTime];
  dateTime2 = [equalCopy dateTime];
  if ((dateTime != 0) == (dateTime2 == 0))
  {
    goto LABEL_30;
  }

  dateTime3 = [(_INPBAlarm *)self dateTime];
  if (dateTime3)
  {
    v8 = dateTime3;
    dateTime4 = [(_INPBAlarm *)self dateTime];
    dateTime5 = [equalCopy dateTime];
    v11 = [dateTime4 isEqual:dateTime5];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  hasEnabled = [(_INPBAlarm *)self hasEnabled];
  if (hasEnabled != [equalCopy hasEnabled])
  {
    goto LABEL_31;
  }

  if ([(_INPBAlarm *)self hasEnabled])
  {
    if ([equalCopy hasEnabled])
    {
      enabled = self->_enabled;
      if (enabled != [equalCopy enabled])
      {
        goto LABEL_31;
      }
    }
  }

  hasFiring = [(_INPBAlarm *)self hasFiring];
  if (hasFiring != [equalCopy hasFiring])
  {
    goto LABEL_31;
  }

  if ([(_INPBAlarm *)self hasFiring])
  {
    if ([equalCopy hasFiring])
    {
      firing = self->_firing;
      if (firing != [equalCopy firing])
      {
        goto LABEL_31;
      }
    }
  }

  dateTime = [(_INPBAlarm *)self identifier];
  dateTime2 = [equalCopy identifier];
  if ((dateTime != 0) == (dateTime2 == 0))
  {
    goto LABEL_30;
  }

  identifier = [(_INPBAlarm *)self identifier];
  if (identifier)
  {
    v17 = identifier;
    identifier2 = [(_INPBAlarm *)self identifier];
    identifier3 = [equalCopy identifier];
    v20 = [identifier2 isEqual:identifier3];

    if (!v20)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  dateTime = [(_INPBAlarm *)self label];
  dateTime2 = [equalCopy label];
  if ((dateTime != 0) == (dateTime2 == 0))
  {
    goto LABEL_30;
  }

  label = [(_INPBAlarm *)self label];
  if (label)
  {
    v22 = label;
    label2 = [(_INPBAlarm *)self label];
    label3 = [equalCopy label];
    v25 = [label2 isEqual:label3];

    if (!v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  dateTime = [(_INPBAlarm *)self sleepAlarmAttribute];
  dateTime2 = [equalCopy sleepAlarmAttribute];
  if ((dateTime != 0) != (dateTime2 == 0))
  {
    sleepAlarmAttribute = [(_INPBAlarm *)self sleepAlarmAttribute];
    if (!sleepAlarmAttribute)
    {

LABEL_34:
      v31 = 1;
      goto LABEL_32;
    }

    v27 = sleepAlarmAttribute;
    sleepAlarmAttribute2 = [(_INPBAlarm *)self sleepAlarmAttribute];
    sleepAlarmAttribute3 = [equalCopy sleepAlarmAttribute];
    v30 = [sleepAlarmAttribute2 isEqual:sleepAlarmAttribute3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAlarm allocWithZone:](_INPBAlarm init];
  PBRepeatedInt32Copy();
  v6 = [(_INPBDateTime *)self->_dateTime copyWithZone:zone];
  [(_INPBAlarm *)v5 setDateTime:v6];

  if ([(_INPBAlarm *)self hasEnabled])
  {
    [(_INPBAlarm *)v5 setEnabled:[(_INPBAlarm *)self enabled]];
  }

  if ([(_INPBAlarm *)self hasFiring])
  {
    [(_INPBAlarm *)v5 setFiring:[(_INPBAlarm *)self firing]];
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBAlarm *)v5 setIdentifier:v7];

  v8 = [(_INPBDataString *)self->_label copyWithZone:zone];
  [(_INPBAlarm *)v5 setLabel:v8];

  v9 = [(_INPBSleepAlarmAttribute *)self->_sleepAlarmAttribute copyWithZone:zone];
  [(_INPBAlarm *)v5 setSleepAlarmAttribute:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAlarm *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAlarm)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAlarm *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBAlarm *)self clearAlarmRepeatScheduleOptions];
  v3.receiver = self;
  v3.super_class = _INPBAlarm;
  [(_INPBAlarm *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  p_alarmRepeatScheduleOptions = &self->_alarmRepeatScheduleOptions;
  toCopy = to;
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

  dateTime = [(_INPBAlarm *)self dateTime];

  if (dateTime)
  {
    dateTime2 = [(_INPBAlarm *)self dateTime];
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

  identifier = [(_INPBAlarm *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  label = [(_INPBAlarm *)self label];

  if (label)
  {
    label2 = [(_INPBAlarm *)self label];
    PBDataWriterWriteSubmessage();
  }

  sleepAlarmAttribute = [(_INPBAlarm *)self sleepAlarmAttribute];

  v16 = toCopy;
  if (sleepAlarmAttribute)
  {
    sleepAlarmAttribute2 = [(_INPBAlarm *)self sleepAlarmAttribute];
    PBDataWriterWriteSubmessage();

    v16 = toCopy;
  }
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setHasFiring:(BOOL)firing
{
  if (firing)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsAlarmRepeatScheduleOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([optionsCopy isEqualToString:@"MONDAY"])
  {
    v4 = 1;
  }

  else if ([optionsCopy isEqualToString:@"TUESDAY"])
  {
    v4 = 2;
  }

  else if ([optionsCopy isEqualToString:@"WEDNESDAY"])
  {
    v4 = 3;
  }

  else if ([optionsCopy isEqualToString:@"THURSDAY"])
  {
    v4 = 4;
  }

  else if ([optionsCopy isEqualToString:@"FRIDAY"])
  {
    v4 = 5;
  }

  else if ([optionsCopy isEqualToString:@"SATURDAY"])
  {
    v4 = 6;
  }

  else if ([optionsCopy isEqualToString:@"SUNDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAlarmRepeatScheduleOptions:(int)options
{
  if (options != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end