@interface _INPBDateTime
- (BOOL)isEqual:(id)a3;
- (_INPBDateTime)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsCalendarSystem:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCalendarSystem:(int)a3;
- (void)setTimeZoneID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDateTime

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDateTime *)self hasCalendarSystem])
  {
    v4 = [(_INPBDateTime *)self calendarSystem];
    if ((v4 - 1) >= 0xC)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E72812F0[(v4 - 1)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"calendarSystem"];
  }

  v6 = [(_INPBDateTime *)self date];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"date"];

  v8 = [(_INPBDateTime *)self time];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"time"];

  if (self->_timeZoneID)
  {
    v10 = [(_INPBDateTime *)self timeZoneID];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"timeZoneID"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBDateTime *)self hasCalendarSystem];
  if (v5 != [v4 hasCalendarSystem])
  {
    goto LABEL_21;
  }

  if ([(_INPBDateTime *)self hasCalendarSystem])
  {
    if ([v4 hasCalendarSystem])
    {
      calendarSystem = self->_calendarSystem;
      if (calendarSystem != [v4 calendarSystem])
      {
        goto LABEL_21;
      }
    }
  }

  v7 = [(_INPBDateTime *)self date];
  v8 = [v4 date];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v9 = [(_INPBDateTime *)self date];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBDateTime *)self date];
    v12 = [v4 date];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBDateTime *)self time];
  v8 = [v4 time];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBDateTime *)self time];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBDateTime *)self time];
    v17 = [v4 time];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBDateTime *)self timeZoneID];
  v8 = [v4 timeZoneID];
  if ((v7 != 0) != (v8 == 0))
  {
    v19 = [(_INPBDateTime *)self timeZoneID];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBDateTime *)self timeZoneID];
    v22 = [v4 timeZoneID];
    v23 = [v21 isEqual:v22];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDateTime allocWithZone:](_INPBDateTime init];
  if ([(_INPBDateTime *)self hasCalendarSystem])
  {
    [(_INPBDateTime *)v5 setCalendarSystem:[(_INPBDateTime *)self calendarSystem]];
  }

  v6 = [(_INPBLocalDate *)self->_date copyWithZone:a3];
  [(_INPBDateTime *)v5 setDate:v6];

  v7 = [(_INPBLocalTime *)self->_time copyWithZone:a3];
  [(_INPBDateTime *)v5 setTime:v7];

  v8 = [(NSString *)self->_timeZoneID copyWithZone:a3];
  [(_INPBDateTime *)v5 setTimeZoneID:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDateTime *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDateTime)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDateTime *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if ([(_INPBDateTime *)self hasCalendarSystem])
  {
    calendarSystem = self->_calendarSystem;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBDateTime *)self date];

  if (v5)
  {
    v6 = [(_INPBDateTime *)self date];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBDateTime *)self time];

  if (v7)
  {
    v8 = [(_INPBDateTime *)self time];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBDateTime *)self timeZoneID];

  v10 = v12;
  if (v9)
  {
    timeZoneID = self->_timeZoneID;
    PBDataWriterWriteStringField();
    v10 = v12;
  }
}

- (void)setTimeZoneID:(id)a3
{
  v4 = [a3 copy];
  timeZoneID = self->_timeZoneID;
  self->_timeZoneID = v4;

  MEMORY[0x1EEE66BB8](v4, timeZoneID);
}

- (int)StringAsCalendarSystem:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BUDDHIST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CHINESE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HEBREW"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HIJRI"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HINDU"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ISLAMIC_UMALQURA"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ISLAMIC"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"GREGORIAN"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"JAPANESE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"JULIAN"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"PERSIAN"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"REPUBLIC_OF_CHINA"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setCalendarSystem:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_calendarSystem = a3;
  }
}

@end