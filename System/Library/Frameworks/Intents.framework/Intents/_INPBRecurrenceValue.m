@interface _INPBRecurrenceValue
- (BOOL)isEqual:(id)a3;
- (_INPBRecurrenceValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsFrequency:(id)a3;
- (int)StringAsWeeklyRecurrenceDays:(id)a3;
- (unint64_t)hash;
- (void)addWeeklyRecurrenceDays:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setFrequency:(int)a3;
- (void)setHasInterval:(BOOL)a3;
- (void)setHasOrdinal:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRecurrenceValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBRecurrenceValue *)self hasFrequency])
  {
    v4 = [(_INPBRecurrenceValue *)self frequency];
    if (v4 <= 49)
    {
      switch(v4)
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

    else if (v4 > 79)
    {
      if (v4 == 80)
      {
        v5 = @"MONTHLY";
        goto LABEL_19;
      }

      if (v4 == 110)
      {
        v5 = @"YEARLY";
        goto LABEL_19;
      }
    }

    else
    {
      if (v4 == 50)
      {
        v5 = @"DAILY";
        goto LABEL_19;
      }

      if (v4 == 60)
      {
        v5 = @"WEEKLY";
LABEL_19:
        [v3 setObject:v5 forKeyedSubscript:@"frequency"];

        goto LABEL_20;
      }
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    goto LABEL_19;
  }

LABEL_20:
  if ([(_INPBRecurrenceValue *)self hasInterval])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBRecurrenceValue interval](self, "interval")}];
    [v3 setObject:v6 forKeyedSubscript:@"interval"];
  }

  if ([(_INPBRecurrenceValue *)self hasOrdinal])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBRecurrenceValue ordinal](self, "ordinal")}];
    [v3 setObject:v7 forKeyedSubscript:@"ordinal"];
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

    [v3 setObject:v8 forKeyedSubscript:@"weeklyRecurrenceDays"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v5 = -[_INPBRecurrenceValue hasFrequency](self, "hasFrequency"), v5 == objc_msgSend(v4, "hasFrequency")) && (!-[_INPBRecurrenceValue hasFrequency](self, "hasFrequency") || !objc_msgSend(v4, "hasFrequency") || (frequency = self->_frequency, frequency == objc_msgSend(v4, "frequency"))) && (v7 = -[_INPBRecurrenceValue hasInterval](self, "hasInterval"), v7 == objc_msgSend(v4, "hasInterval")) && (!-[_INPBRecurrenceValue hasInterval](self, "hasInterval") || !objc_msgSend(v4, "hasInterval") || (interval = self->_interval, interval == objc_msgSend(v4, "interval"))) && (v9 = -[_INPBRecurrenceValue hasOrdinal](self, "hasOrdinal"), v9 == objc_msgSend(v4, "hasOrdinal")) && (!-[_INPBRecurrenceValue hasOrdinal](self, "hasOrdinal") || !objc_msgSend(v4, "hasOrdinal") || (ordinal = self->_ordinal, ordinal == objc_msgSend(v4, "ordinal"))))
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRecurrenceValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRecurrenceValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRecurrenceValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBRecurrenceValue *)self clearWeeklyRecurrenceDays];
  v3.receiver = self;
  v3.super_class = _INPBRecurrenceValue;
  [(_INPBRecurrenceValue *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v11 = a3;
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
  v8 = v11;
  if (p_weeklyRecurrenceDays->count)
  {
    v9 = 0;
    do
    {
      v10 = p_weeklyRecurrenceDays->list[v9];
      PBDataWriterWriteInt32Field();
      v8 = v11;
      ++v9;
    }

    while (v9 < p_weeklyRecurrenceDays->count);
  }
}

- (int)StringAsWeeklyRecurrenceDays:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
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

- (void)addWeeklyRecurrenceDays:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)setHasOrdinal:(BOOL)a3
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

- (void)setHasInterval:(BOOL)a3
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

- (int)StringAsFrequency:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MINUTE"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"HOURLY"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"DAILY"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"WEEKLY"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"MONTHLY"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"YEARLY"])
  {
    v4 = 110;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFrequency:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_frequency = a3;
  }
}

@end