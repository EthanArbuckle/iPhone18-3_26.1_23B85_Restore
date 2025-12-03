@interface _INPBLocalDate
- (BOOL)isEqual:(id)equal;
- (_INPBLocalDate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDayOfWeek:(id)week;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDayOfWeek:(int)week;
- (void)setHasDayOfWeek:(BOOL)week;
- (void)setHasMonth:(BOOL)month;
- (void)setHasYear:(BOOL)year;
- (void)writeTo:(id)to;
@end

@implementation _INPBLocalDate

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBLocalDate *)self hasDayOfMonth])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalDate dayOfMonth](self, "dayOfMonth")}];
    [dictionary setObject:v4 forKeyedSubscript:@"dayOfMonth"];
  }

  if ([(_INPBLocalDate *)self hasDayOfWeek])
  {
    dayOfWeek = [(_INPBLocalDate *)self dayOfWeek];
    if (dayOfWeek >= 8)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", dayOfWeek];
    }

    else
    {
      v6 = *(&off_1E7281788 + dayOfWeek);
    }

    [dictionary setObject:v6 forKeyedSubscript:@"dayOfWeek"];
  }

  if ([(_INPBLocalDate *)self hasMonth])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalDate month](self, "month")}];
    [dictionary setObject:v7 forKeyedSubscript:@"month"];
  }

  if ([(_INPBLocalDate *)self hasYear])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalDate year](self, "year")}];
    [dictionary setObject:v8 forKeyedSubscript:@"year"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  hasDayOfMonth = [(_INPBLocalDate *)self hasDayOfMonth];
  if (hasDayOfMonth != [equalCopy hasDayOfMonth])
  {
    goto LABEL_15;
  }

  if ([(_INPBLocalDate *)self hasDayOfMonth])
  {
    if ([equalCopy hasDayOfMonth])
    {
      dayOfMonth = self->_dayOfMonth;
      if (dayOfMonth != [equalCopy dayOfMonth])
      {
        goto LABEL_15;
      }
    }
  }

  if ((v7 = -[_INPBLocalDate hasDayOfWeek](self, "hasDayOfWeek"), v7 == [equalCopy hasDayOfWeek]) && (!-[_INPBLocalDate hasDayOfWeek](self, "hasDayOfWeek") || !objc_msgSend(equalCopy, "hasDayOfWeek") || (dayOfWeek = self->_dayOfWeek, dayOfWeek == objc_msgSend(equalCopy, "dayOfWeek"))) && (v9 = -[_INPBLocalDate hasMonth](self, "hasMonth"), v9 == objc_msgSend(equalCopy, "hasMonth")) && (!-[_INPBLocalDate hasMonth](self, "hasMonth") || !objc_msgSend(equalCopy, "hasMonth") || (month = self->_month, month == objc_msgSend(equalCopy, "month"))) && (v11 = -[_INPBLocalDate hasYear](self, "hasYear"), v11 == objc_msgSend(equalCopy, "hasYear")) && (!-[_INPBLocalDate hasYear](self, "hasYear") || !objc_msgSend(equalCopy, "hasYear") || (year = self->_year, year == objc_msgSend(equalCopy, "year"))))
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBLocalDate *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBLocalDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBLocalDate *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)setHasYear:(BOOL)year
{
  if (year)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMonth:(BOOL)month
{
  if (month)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsDayOfWeek:(id)week
{
  weekCopy = week;
  if ([weekCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([weekCopy isEqualToString:@"MONDAY"])
  {
    v4 = 1;
  }

  else if ([weekCopy isEqualToString:@"TUESDAY"])
  {
    v4 = 2;
  }

  else if ([weekCopy isEqualToString:@"WEDNESDAY"])
  {
    v4 = 3;
  }

  else if ([weekCopy isEqualToString:@"THURSDAY"])
  {
    v4 = 4;
  }

  else if ([weekCopy isEqualToString:@"FRIDAY"])
  {
    v4 = 5;
  }

  else if ([weekCopy isEqualToString:@"SATURDAY"])
  {
    v4 = 6;
  }

  else if ([weekCopy isEqualToString:@"SUNDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDayOfWeek:(BOOL)week
{
  if (week)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setDayOfWeek:(int)week
{
  has = self->_has;
  if (week == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_dayOfWeek = week;
  }
}

@end