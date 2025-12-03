@interface _INPBDateTime
- (BOOL)isEqual:(id)equal;
- (_INPBDateTime)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsCalendarSystem:(id)system;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCalendarSystem:(int)system;
- (void)setTimeZoneID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation _INPBDateTime

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDateTime *)self hasCalendarSystem])
  {
    calendarSystem = [(_INPBDateTime *)self calendarSystem];
    if ((calendarSystem - 1) >= 0xC)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", calendarSystem];
    }

    else
    {
      v5 = off_1E72812F0[(calendarSystem - 1)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"calendarSystem"];
  }

  date = [(_INPBDateTime *)self date];
  dictionaryRepresentation = [date dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"date"];

  time = [(_INPBDateTime *)self time];
  dictionaryRepresentation2 = [time dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"time"];

  if (self->_timeZoneID)
  {
    timeZoneID = [(_INPBDateTime *)self timeZoneID];
    v11 = [timeZoneID copy];
    [dictionary setObject:v11 forKeyedSubscript:@"timeZoneID"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDateTime *)self hasCalendarSystem])
  {
    v3 = 2654435761 * self->_calendarSystem;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBLocalDate *)self->_date hash]^ v3;
  v5 = [(_INPBLocalTime *)self->_time hash];
  return v4 ^ v5 ^ [(NSString *)self->_timeZoneID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  hasCalendarSystem = [(_INPBDateTime *)self hasCalendarSystem];
  if (hasCalendarSystem != [equalCopy hasCalendarSystem])
  {
    goto LABEL_21;
  }

  if ([(_INPBDateTime *)self hasCalendarSystem])
  {
    if ([equalCopy hasCalendarSystem])
    {
      calendarSystem = self->_calendarSystem;
      if (calendarSystem != [equalCopy calendarSystem])
      {
        goto LABEL_21;
      }
    }
  }

  date = [(_INPBDateTime *)self date];
  date2 = [equalCopy date];
  if ((date != 0) == (date2 == 0))
  {
    goto LABEL_20;
  }

  date3 = [(_INPBDateTime *)self date];
  if (date3)
  {
    v10 = date3;
    date4 = [(_INPBDateTime *)self date];
    date5 = [equalCopy date];
    v13 = [date4 isEqual:date5];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  date = [(_INPBDateTime *)self time];
  date2 = [equalCopy time];
  if ((date != 0) == (date2 == 0))
  {
    goto LABEL_20;
  }

  time = [(_INPBDateTime *)self time];
  if (time)
  {
    v15 = time;
    time2 = [(_INPBDateTime *)self time];
    time3 = [equalCopy time];
    v18 = [time2 isEqual:time3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  date = [(_INPBDateTime *)self timeZoneID];
  date2 = [equalCopy timeZoneID];
  if ((date != 0) != (date2 == 0))
  {
    timeZoneID = [(_INPBDateTime *)self timeZoneID];
    if (!timeZoneID)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = timeZoneID;
    timeZoneID2 = [(_INPBDateTime *)self timeZoneID];
    timeZoneID3 = [equalCopy timeZoneID];
    v23 = [timeZoneID2 isEqual:timeZoneID3];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDateTime allocWithZone:](_INPBDateTime init];
  if ([(_INPBDateTime *)self hasCalendarSystem])
  {
    [(_INPBDateTime *)v5 setCalendarSystem:[(_INPBDateTime *)self calendarSystem]];
  }

  v6 = [(_INPBLocalDate *)self->_date copyWithZone:zone];
  [(_INPBDateTime *)v5 setDate:v6];

  v7 = [(_INPBLocalTime *)self->_time copyWithZone:zone];
  [(_INPBDateTime *)v5 setTime:v7];

  v8 = [(NSString *)self->_timeZoneID copyWithZone:zone];
  [(_INPBDateTime *)v5 setTimeZoneID:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDateTime *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDateTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDateTime *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDateTime *)self hasCalendarSystem])
  {
    calendarSystem = self->_calendarSystem;
    PBDataWriterWriteInt32Field();
  }

  date = [(_INPBDateTime *)self date];

  if (date)
  {
    date2 = [(_INPBDateTime *)self date];
    PBDataWriterWriteSubmessage();
  }

  time = [(_INPBDateTime *)self time];

  if (time)
  {
    time2 = [(_INPBDateTime *)self time];
    PBDataWriterWriteSubmessage();
  }

  timeZoneID = [(_INPBDateTime *)self timeZoneID];

  v10 = toCopy;
  if (timeZoneID)
  {
    timeZoneID = self->_timeZoneID;
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (void)setTimeZoneID:(id)d
{
  v4 = [d copy];
  timeZoneID = self->_timeZoneID;
  self->_timeZoneID = v4;

  MEMORY[0x1EEE66BB8](v4, timeZoneID);
}

- (int)StringAsCalendarSystem:(id)system
{
  systemCopy = system;
  if ([systemCopy isEqualToString:@"BUDDHIST"])
  {
    v4 = 1;
  }

  else if ([systemCopy isEqualToString:@"CHINESE"])
  {
    v4 = 2;
  }

  else if ([systemCopy isEqualToString:@"HEBREW"])
  {
    v4 = 3;
  }

  else if ([systemCopy isEqualToString:@"HIJRI"])
  {
    v4 = 4;
  }

  else if ([systemCopy isEqualToString:@"HINDU"])
  {
    v4 = 5;
  }

  else if ([systemCopy isEqualToString:@"ISLAMIC_UMALQURA"])
  {
    v4 = 6;
  }

  else if ([systemCopy isEqualToString:@"ISLAMIC"])
  {
    v4 = 7;
  }

  else if ([systemCopy isEqualToString:@"GREGORIAN"])
  {
    v4 = 8;
  }

  else if ([systemCopy isEqualToString:@"JAPANESE"])
  {
    v4 = 9;
  }

  else if ([systemCopy isEqualToString:@"JULIAN"])
  {
    v4 = 10;
  }

  else if ([systemCopy isEqualToString:@"PERSIAN"])
  {
    v4 = 11;
  }

  else if ([systemCopy isEqualToString:@"REPUBLIC_OF_CHINA"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setCalendarSystem:(int)system
{
  has = self->_has;
  if (system == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_calendarSystem = system;
  }
}

@end