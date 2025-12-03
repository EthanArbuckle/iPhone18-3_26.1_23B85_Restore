@interface _INPBRecurrenceValue
- (BOOL)isEqual:(id)equal;
- (_INPBRecurrenceValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsFrequency:(id)frequency;
- (int)StringAsWeeklyRecurrenceDays:(id)days;
- (unint64_t)hash;
- (void)addWeeklyRecurrenceDays:(int)days;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setFrequency:(int)frequency;
- (void)setHasInterval:(BOOL)interval;
- (void)setHasOrdinal:(BOOL)ordinal;
- (void)writeTo:(id)to;
@end

@implementation _INPBRecurrenceValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBRecurrenceValue *)self hasFrequency])
  {
    frequency = [(_INPBRecurrenceValue *)self frequency];
    if (frequency <= 49)
    {
      switch(frequency)
      {
        case 0:
          v5 = @"UNKNOWN";
          goto LABEL_19;
        case 0x1E:
          v5 = @"MINUTE";
          goto LABEL_19;
        case 0x28:
          v5 = @"HOURLY";
          goto LABEL_19;
      }
    }

    else if (frequency > 79)
    {
      if (frequency == 80)
      {
        v5 = @"MONTHLY";
        goto LABEL_19;
      }

      if (frequency == 110)
      {
        v5 = @"YEARLY";
        goto LABEL_19;
      }
    }

    else
    {
      if (frequency == 50)
      {
        v5 = @"DAILY";
        goto LABEL_19;
      }

      if (frequency == 60)
      {
        v5 = @"WEEKLY";
LABEL_19:
        [dictionary setObject:v5 forKeyedSubscript:@"frequency"];

        goto LABEL_20;
      }
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", frequency];
    goto LABEL_19;
  }

LABEL_20:
  if ([(_INPBRecurrenceValue *)self hasInterval])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBRecurrenceValue interval](self, "interval")}];
    [dictionary setObject:v6 forKeyedSubscript:@"interval"];
  }

  if ([(_INPBRecurrenceValue *)self hasOrdinal])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBRecurrenceValue ordinal](self, "ordinal")}];
    [dictionary setObject:v7 forKeyedSubscript:@"ordinal"];
  }

  if (self->_weeklyRecurrenceDays.count)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBRecurrenceValue weeklyRecurrenceDaysCount](self, "weeklyRecurrenceDaysCount")}];
    if ([(_INPBRecurrenceValue *)self weeklyRecurrenceDaysCount])
    {
      v9 = 0;
      do
      {
        v10 = self->_weeklyRecurrenceDays.list[v9];
        if (v10 >= 8)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_weeklyRecurrenceDays.list[v9]];
        }

        else
        {
          v11 = off_1E7281D18[v10];
        }

        [v8 addObject:v11];

        ++v9;
      }

      while (v9 < [(_INPBRecurrenceValue *)self weeklyRecurrenceDaysCount]);
    }

    [dictionary setObject:v8 forKeyedSubscript:@"weeklyRecurrenceDays"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBRecurrenceValue *)self hasFrequency])
  {
    v3 = 2654435761 * self->_frequency;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBRecurrenceValue *)self hasInterval])
  {
    v4 = 2654435761u * self->_interval;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBRecurrenceValue *)self hasOrdinal])
  {
    v5 = 2654435761 * self->_ordinal;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ PBRepeatedInt32Hash();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v5 = -[_INPBRecurrenceValue hasFrequency](self, "hasFrequency"), v5 == objc_msgSend(equalCopy, "hasFrequency")) && (!-[_INPBRecurrenceValue hasFrequency](self, "hasFrequency") || !objc_msgSend(equalCopy, "hasFrequency") || (frequency = self->_frequency, frequency == objc_msgSend(equalCopy, "frequency"))) && (v7 = -[_INPBRecurrenceValue hasInterval](self, "hasInterval"), v7 == objc_msgSend(equalCopy, "hasInterval")) && (!-[_INPBRecurrenceValue hasInterval](self, "hasInterval") || !objc_msgSend(equalCopy, "hasInterval") || (interval = self->_interval, interval == objc_msgSend(equalCopy, "interval"))) && (v9 = -[_INPBRecurrenceValue hasOrdinal](self, "hasOrdinal"), v9 == objc_msgSend(equalCopy, "hasOrdinal")) && (!-[_INPBRecurrenceValue hasOrdinal](self, "hasOrdinal") || !objc_msgSend(equalCopy, "hasOrdinal") || (ordinal = self->_ordinal, ordinal == objc_msgSend(equalCopy, "ordinal"))))
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBRecurrenceValue allocWithZone:?]];
  if ([(_INPBRecurrenceValue *)self hasFrequency])
  {
    [(_INPBRecurrenceValue *)v4 setFrequency:[(_INPBRecurrenceValue *)self frequency]];
  }

  if ([(_INPBRecurrenceValue *)self hasInterval])
  {
    [(_INPBRecurrenceValue *)v4 setInterval:[(_INPBRecurrenceValue *)self interval]];
  }

  if ([(_INPBRecurrenceValue *)self hasOrdinal])
  {
    [(_INPBRecurrenceValue *)v4 setOrdinal:[(_INPBRecurrenceValue *)self ordinal]];
  }

  PBRepeatedInt32Copy();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRecurrenceValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRecurrenceValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRecurrenceValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBRecurrenceValue *)self clearWeeklyRecurrenceDays];
  v3.receiver = self;
  v3.super_class = _INPBRecurrenceValue;
  [(_INPBRecurrenceValue *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBRecurrenceValue *)self hasFrequency])
  {
    frequency = self->_frequency;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBRecurrenceValue *)self hasInterval])
  {
    interval = self->_interval;
    PBDataWriterWriteUint64Field();
  }

  if ([(_INPBRecurrenceValue *)self hasOrdinal])
  {
    ordinal = self->_ordinal;
    PBDataWriterWriteInt64Field();
  }

  p_weeklyRecurrenceDays = &self->_weeklyRecurrenceDays;
  v8 = toCopy;
  if (p_weeklyRecurrenceDays->count)
  {
    v9 = 0;
    do
    {
      v10 = p_weeklyRecurrenceDays->list[v9];
      PBDataWriterWriteInt32Field();
      v8 = toCopy;
      ++v9;
    }

    while (v9 < p_weeklyRecurrenceDays->count);
  }
}

- (int)StringAsWeeklyRecurrenceDays:(id)days
{
  daysCopy = days;
  if ([daysCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([daysCopy isEqualToString:@"MONDAY"])
  {
    v4 = 1;
  }

  else if ([daysCopy isEqualToString:@"TUESDAY"])
  {
    v4 = 2;
  }

  else if ([daysCopy isEqualToString:@"WEDNESDAY"])
  {
    v4 = 3;
  }

  else if ([daysCopy isEqualToString:@"THURSDAY"])
  {
    v4 = 4;
  }

  else if ([daysCopy isEqualToString:@"FRIDAY"])
  {
    v4 = 5;
  }

  else if ([daysCopy isEqualToString:@"SATURDAY"])
  {
    v4 = 6;
  }

  else if ([daysCopy isEqualToString:@"SUNDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addWeeklyRecurrenceDays:(int)days
{
  if (days != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)setHasOrdinal:(BOOL)ordinal
{
  if (ordinal)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsFrequency:(id)frequency
{
  frequencyCopy = frequency;
  if ([frequencyCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([frequencyCopy isEqualToString:@"MINUTE"])
  {
    v4 = 30;
  }

  else if ([frequencyCopy isEqualToString:@"HOURLY"])
  {
    v4 = 40;
  }

  else if ([frequencyCopy isEqualToString:@"DAILY"])
  {
    v4 = 50;
  }

  else if ([frequencyCopy isEqualToString:@"WEEKLY"])
  {
    v4 = 60;
  }

  else if ([frequencyCopy isEqualToString:@"MONTHLY"])
  {
    v4 = 80;
  }

  else if ([frequencyCopy isEqualToString:@"YEARLY"])
  {
    v4 = 110;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFrequency:(int)frequency
{
  has = self->_has;
  if (frequency == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_frequency = frequency;
  }
}

@end