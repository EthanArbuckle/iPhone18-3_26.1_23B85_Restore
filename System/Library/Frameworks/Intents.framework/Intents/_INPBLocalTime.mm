@interface _INPBLocalTime
- (BOOL)isEqual:(id)a3;
- (_INPBLocalTime)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasMillisOfSecond:(BOOL)a3;
- (void)setHasMinuteOfHour:(BOOL)a3;
- (void)setHasSecondOfMinute:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBLocalTime

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBLocalTime *)self hasHourOfDay])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalTime hourOfDay](self, "hourOfDay")}];
    [v3 setObject:v4 forKeyedSubscript:@"hourOfDay"];
  }

  if ([(_INPBLocalTime *)self hasMillisOfSecond])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalTime millisOfSecond](self, "millisOfSecond")}];
    [v3 setObject:v5 forKeyedSubscript:@"millisOfSecond"];
  }

  if ([(_INPBLocalTime *)self hasMinuteOfHour])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalTime minuteOfHour](self, "minuteOfHour")}];
    [v3 setObject:v6 forKeyedSubscript:@"minuteOfHour"];
  }

  if ([(_INPBLocalTime *)self hasSecondOfMinute])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalTime secondOfMinute](self, "secondOfMinute")}];
    [v3 setObject:v7 forKeyedSubscript:@"secondOfMinute"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBLocalTime *)self hasHourOfDay])
  {
    v3 = 2654435761 * self->_hourOfDay;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBLocalTime *)self hasMillisOfSecond])
  {
    v4 = 2654435761 * self->_millisOfSecond;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBLocalTime *)self hasMinuteOfHour])
  {
    v5 = 2654435761 * self->_minuteOfHour;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBLocalTime *)self hasSecondOfMinute])
  {
    v6 = 2654435761 * self->_secondOfMinute;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(_INPBLocalTime *)self hasHourOfDay];
  if (v5 != [v4 hasHourOfDay])
  {
    goto LABEL_15;
  }

  if ([(_INPBLocalTime *)self hasHourOfDay])
  {
    if ([v4 hasHourOfDay])
    {
      hourOfDay = self->_hourOfDay;
      if (hourOfDay != [v4 hourOfDay])
      {
        goto LABEL_15;
      }
    }
  }

  if ((v7 = -[_INPBLocalTime hasMillisOfSecond](self, "hasMillisOfSecond"), v7 == [v4 hasMillisOfSecond]) && (!-[_INPBLocalTime hasMillisOfSecond](self, "hasMillisOfSecond") || !objc_msgSend(v4, "hasMillisOfSecond") || (millisOfSecond = self->_millisOfSecond, millisOfSecond == objc_msgSend(v4, "millisOfSecond"))) && (v9 = -[_INPBLocalTime hasMinuteOfHour](self, "hasMinuteOfHour"), v9 == objc_msgSend(v4, "hasMinuteOfHour")) && (!-[_INPBLocalTime hasMinuteOfHour](self, "hasMinuteOfHour") || !objc_msgSend(v4, "hasMinuteOfHour") || (minuteOfHour = self->_minuteOfHour, minuteOfHour == objc_msgSend(v4, "minuteOfHour"))) && (v11 = -[_INPBLocalTime hasSecondOfMinute](self, "hasSecondOfMinute"), v11 == objc_msgSend(v4, "hasSecondOfMinute")) && (!-[_INPBLocalTime hasSecondOfMinute](self, "hasSecondOfMinute") || !objc_msgSend(v4, "hasSecondOfMinute") || (secondOfMinute = self->_secondOfMinute, secondOfMinute == objc_msgSend(v4, "secondOfMinute"))))
  {
    v12 = 1;
  }

  else
  {
LABEL_15:
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBLocalTime allocWithZone:?]];
  if ([(_INPBLocalTime *)self hasHourOfDay])
  {
    [(_INPBLocalTime *)v4 setHourOfDay:[(_INPBLocalTime *)self hourOfDay]];
  }

  if ([(_INPBLocalTime *)self hasMillisOfSecond])
  {
    [(_INPBLocalTime *)v4 setMillisOfSecond:[(_INPBLocalTime *)self millisOfSecond]];
  }

  if ([(_INPBLocalTime *)self hasMinuteOfHour])
  {
    [(_INPBLocalTime *)v4 setMinuteOfHour:[(_INPBLocalTime *)self minuteOfHour]];
  }

  if ([(_INPBLocalTime *)self hasSecondOfMinute])
  {
    [(_INPBLocalTime *)v4 setSecondOfMinute:[(_INPBLocalTime *)self secondOfMinute]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBLocalTime *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBLocalTime)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBLocalTime *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBLocalTime *)self hasHourOfDay])
  {
    hourOfDay = self->_hourOfDay;
    PBDataWriterWriteInt64Field();
  }

  if ([(_INPBLocalTime *)self hasMillisOfSecond])
  {
    millisOfSecond = self->_millisOfSecond;
    PBDataWriterWriteInt64Field();
  }

  if ([(_INPBLocalTime *)self hasMinuteOfHour])
  {
    minuteOfHour = self->_minuteOfHour;
    PBDataWriterWriteInt64Field();
  }

  if ([(_INPBLocalTime *)self hasSecondOfMinute])
  {
    secondOfMinute = self->_secondOfMinute;
    PBDataWriterWriteInt64Field();
  }
}

- (void)setHasSecondOfMinute:(BOOL)a3
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

- (void)setHasMinuteOfHour:(BOOL)a3
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

- (void)setHasMillisOfSecond:(BOOL)a3
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

@end