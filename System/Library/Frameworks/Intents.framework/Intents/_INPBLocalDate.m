@interface _INPBLocalDate
- (BOOL)isEqual:(id)a3;
- (_INPBLocalDate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDayOfWeek:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDayOfWeek:(int)a3;
- (void)setHasDayOfWeek:(BOOL)a3;
- (void)setHasMonth:(BOOL)a3;
- (void)setHasYear:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBLocalDate

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBLocalDate *)self hasDayOfMonth])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalDate dayOfMonth](self, "dayOfMonth")}];
    [v3 setObject:v4 forKeyedSubscript:@"dayOfMonth"];
  }

  if ([(_INPBLocalDate *)self hasDayOfWeek])
  {
    v5 = [(_INPBLocalDate *)self dayOfWeek];
    if (v5 >= 8)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v5];
    }

    else
    {
      v6 = *(&off_1E7281788 + v5);
    }

    [v3 setObject:v6 forKeyedSubscript:@"dayOfWeek"];
  }

  if ([(_INPBLocalDate *)self hasMonth])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalDate month](self, "month")}];
    [v3 setObject:v7 forKeyedSubscript:@"month"];
  }

  if ([(_INPBLocalDate *)self hasYear])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalDate year](self, "year")}];
    [v3 setObject:v8 forKeyedSubscript:@"year"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBLocalDate *)self hasDayOfMonth])
  {
    v3 = 2654435761 * self->_dayOfMonth;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBLocalDate *)self hasDayOfWeek])
  {
    v4 = 2654435761 * self->_dayOfWeek;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBLocalDate *)self hasMonth])
  {
    v5 = 2654435761 * self->_month;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBLocalDate *)self hasYear])
  {
    v6 = 2654435761 * self->_year;
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

  v5 = [(_INPBLocalDate *)self hasDayOfMonth];
  if (v5 != [v4 hasDayOfMonth])
  {
    goto LABEL_15;
  }

  if ([(_INPBLocalDate *)self hasDayOfMonth])
  {
    if ([v4 hasDayOfMonth])
    {
      dayOfMonth = self->_dayOfMonth;
      if (dayOfMonth != [v4 dayOfMonth])
      {
        goto LABEL_15;
      }
    }
  }

  if ((v7 = -[_INPBLocalDate hasDayOfWeek](self, "hasDayOfWeek"), v7 == [v4 hasDayOfWeek]) && (!-[_INPBLocalDate hasDayOfWeek](self, "hasDayOfWeek") || !objc_msgSend(v4, "hasDayOfWeek") || (dayOfWeek = self->_dayOfWeek, dayOfWeek == objc_msgSend(v4, "dayOfWeek"))) && (v9 = -[_INPBLocalDate hasMonth](self, "hasMonth"), v9 == objc_msgSend(v4, "hasMonth")) && (!-[_INPBLocalDate hasMonth](self, "hasMonth") || !objc_msgSend(v4, "hasMonth") || (month = self->_month, month == objc_msgSend(v4, "month"))) && (v11 = -[_INPBLocalDate hasYear](self, "hasYear"), v11 == objc_msgSend(v4, "hasYear")) && (!-[_INPBLocalDate hasYear](self, "hasYear") || !objc_msgSend(v4, "hasYear") || (year = self->_year, year == objc_msgSend(v4, "year"))))
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
  v4 = [[_INPBLocalDate allocWithZone:?]];
  if ([(_INPBLocalDate *)self hasDayOfMonth])
  {
    [(_INPBLocalDate *)v4 setDayOfMonth:[(_INPBLocalDate *)self dayOfMonth]];
  }

  if ([(_INPBLocalDate *)self hasDayOfWeek])
  {
    [(_INPBLocalDate *)v4 setDayOfWeek:[(_INPBLocalDate *)self dayOfWeek]];
  }

  if ([(_INPBLocalDate *)self hasMonth])
  {
    [(_INPBLocalDate *)v4 setMonth:[(_INPBLocalDate *)self month]];
  }

  if ([(_INPBLocalDate *)self hasYear])
  {
    [(_INPBLocalDate *)v4 setYear:[(_INPBLocalDate *)self year]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBLocalDate *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBLocalDate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBLocalDate *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBLocalDate *)self hasDayOfMonth])
  {
    dayOfMonth = self->_dayOfMonth;
    PBDataWriterWriteInt64Field();
  }

  if ([(_INPBLocalDate *)self hasDayOfWeek])
  {
    dayOfWeek = self->_dayOfWeek;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBLocalDate *)self hasMonth])
  {
    month = self->_month;
    PBDataWriterWriteInt64Field();
  }

  if ([(_INPBLocalDate *)self hasYear])
  {
    year = self->_year;
    PBDataWriterWriteInt64Field();
  }
}

- (void)setHasYear:(BOOL)a3
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

- (void)setHasMonth:(BOOL)a3
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

- (int)StringAsDayOfWeek:(id)a3
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

- (void)setHasDayOfWeek:(BOOL)a3
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

- (void)setDayOfWeek:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_dayOfWeek = a3;
  }
}

@end