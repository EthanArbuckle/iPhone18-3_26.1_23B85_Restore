@interface _INPBDateTimeRangeValue
- (BOOL)isEqual:(id)equal;
- (_INPBDateTimeRangeValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasEndCalendar:(BOOL)calendar;
- (void)setHasStartCalendar:(BOOL)calendar;
- (void)setName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBDateTimeRangeValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDateTimeRangeValue *)self hasAllDay])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDateTimeRangeValue allDay](self, "allDay")}];
    [dictionary setObject:v4 forKeyedSubscript:@"allDay"];
  }

  if ([(_INPBDateTimeRangeValue *)self hasEndCalendar])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBDateTimeRangeValue endCalendar](self, "endCalendar")}];
    [dictionary setObject:v5 forKeyedSubscript:@"endCalendar"];
  }

  endDateTime = [(_INPBDateTimeRangeValue *)self endDateTime];
  dictionaryRepresentation = [endDateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"endDateTime"];

  if (self->_name)
  {
    name = [(_INPBDateTimeRangeValue *)self name];
    v9 = [name copy];
    [dictionary setObject:v9 forKeyedSubscript:@"name"];
  }

  recurrence = [(_INPBDateTimeRangeValue *)self recurrence];
  dictionaryRepresentation2 = [recurrence dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"recurrence"];

  if ([(_INPBDateTimeRangeValue *)self hasStartCalendar])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBDateTimeRangeValue startCalendar](self, "startCalendar")}];
    [dictionary setObject:v12 forKeyedSubscript:@"startCalendar"];
  }

  startDateTime = [(_INPBDateTimeRangeValue *)self startDateTime];
  dictionaryRepresentation3 = [startDateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"startDateTime"];

  valueMetadata = [(_INPBDateTimeRangeValue *)self valueMetadata];
  dictionaryRepresentation4 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDateTimeRangeValue *)self hasAllDay])
  {
    v3 = 2654435761 * self->_allDay;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBDateTimeRangeValue *)self hasEndCalendar])
  {
    v4 = 2654435761 * self->_endCalendar;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBDateTime *)self->_endDateTime hash];
  v6 = [(NSString *)self->_name hash];
  v7 = [(_INPBRecurrenceValue *)self->_recurrence hash];
  if ([(_INPBDateTimeRangeValue *)self hasStartCalendar])
  {
    v8 = 2654435761 * self->_startCalendar;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7;
  v10 = v8 ^ [(_INPBDateTime *)self->_startDateTime hash];
  return v9 ^ v10 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  hasAllDay = [(_INPBDateTimeRangeValue *)self hasAllDay];
  if (hasAllDay != [equalCopy hasAllDay])
  {
    goto LABEL_39;
  }

  if ([(_INPBDateTimeRangeValue *)self hasAllDay])
  {
    if ([equalCopy hasAllDay])
    {
      allDay = self->_allDay;
      if (allDay != [equalCopy allDay])
      {
        goto LABEL_39;
      }
    }
  }

  hasEndCalendar = [(_INPBDateTimeRangeValue *)self hasEndCalendar];
  if (hasEndCalendar != [equalCopy hasEndCalendar])
  {
    goto LABEL_39;
  }

  if ([(_INPBDateTimeRangeValue *)self hasEndCalendar])
  {
    if ([equalCopy hasEndCalendar])
    {
      endCalendar = self->_endCalendar;
      if (endCalendar != [equalCopy endCalendar])
      {
        goto LABEL_39;
      }
    }
  }

  endDateTime = [(_INPBDateTimeRangeValue *)self endDateTime];
  endDateTime2 = [equalCopy endDateTime];
  if ((endDateTime != 0) == (endDateTime2 == 0))
  {
    goto LABEL_38;
  }

  endDateTime3 = [(_INPBDateTimeRangeValue *)self endDateTime];
  if (endDateTime3)
  {
    v12 = endDateTime3;
    endDateTime4 = [(_INPBDateTimeRangeValue *)self endDateTime];
    endDateTime5 = [equalCopy endDateTime];
    v15 = [endDateTime4 isEqual:endDateTime5];

    if (!v15)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  endDateTime = [(_INPBDateTimeRangeValue *)self name];
  endDateTime2 = [equalCopy name];
  if ((endDateTime != 0) == (endDateTime2 == 0))
  {
    goto LABEL_38;
  }

  name = [(_INPBDateTimeRangeValue *)self name];
  if (name)
  {
    v17 = name;
    name2 = [(_INPBDateTimeRangeValue *)self name];
    name3 = [equalCopy name];
    v20 = [name2 isEqual:name3];

    if (!v20)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  endDateTime = [(_INPBDateTimeRangeValue *)self recurrence];
  endDateTime2 = [equalCopy recurrence];
  if ((endDateTime != 0) == (endDateTime2 == 0))
  {
    goto LABEL_38;
  }

  recurrence = [(_INPBDateTimeRangeValue *)self recurrence];
  if (recurrence)
  {
    v22 = recurrence;
    recurrence2 = [(_INPBDateTimeRangeValue *)self recurrence];
    recurrence3 = [equalCopy recurrence];
    v25 = [recurrence2 isEqual:recurrence3];

    if (!v25)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  hasStartCalendar = [(_INPBDateTimeRangeValue *)self hasStartCalendar];
  if (hasStartCalendar != [equalCopy hasStartCalendar])
  {
    goto LABEL_39;
  }

  if ([(_INPBDateTimeRangeValue *)self hasStartCalendar])
  {
    if ([equalCopy hasStartCalendar])
    {
      startCalendar = self->_startCalendar;
      if (startCalendar != [equalCopy startCalendar])
      {
        goto LABEL_39;
      }
    }
  }

  endDateTime = [(_INPBDateTimeRangeValue *)self startDateTime];
  endDateTime2 = [equalCopy startDateTime];
  if ((endDateTime != 0) == (endDateTime2 == 0))
  {
    goto LABEL_38;
  }

  startDateTime = [(_INPBDateTimeRangeValue *)self startDateTime];
  if (startDateTime)
  {
    v29 = startDateTime;
    startDateTime2 = [(_INPBDateTimeRangeValue *)self startDateTime];
    startDateTime3 = [equalCopy startDateTime];
    v32 = [startDateTime2 isEqual:startDateTime3];

    if (!v32)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  endDateTime = [(_INPBDateTimeRangeValue *)self valueMetadata];
  endDateTime2 = [equalCopy valueMetadata];
  if ((endDateTime != 0) != (endDateTime2 == 0))
  {
    valueMetadata = [(_INPBDateTimeRangeValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_42:
      v38 = 1;
      goto LABEL_40;
    }

    v34 = valueMetadata;
    valueMetadata2 = [(_INPBDateTimeRangeValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v37 = [valueMetadata2 isEqual:valueMetadata3];

    if (v37)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_38:
  }

LABEL_39:
  v38 = 0;
LABEL_40:

  return v38;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDateTimeRangeValue allocWithZone:](_INPBDateTimeRangeValue init];
  if ([(_INPBDateTimeRangeValue *)self hasAllDay])
  {
    [(_INPBDateTimeRangeValue *)v5 setAllDay:[(_INPBDateTimeRangeValue *)self allDay]];
  }

  if ([(_INPBDateTimeRangeValue *)self hasEndCalendar])
  {
    [(_INPBDateTimeRangeValue *)v5 setEndCalendar:[(_INPBDateTimeRangeValue *)self endCalendar]];
  }

  v6 = [(_INPBDateTime *)self->_endDateTime copyWithZone:zone];
  [(_INPBDateTimeRangeValue *)v5 setEndDateTime:v6];

  v7 = [(NSString *)self->_name copyWithZone:zone];
  [(_INPBDateTimeRangeValue *)v5 setName:v7];

  v8 = [(_INPBRecurrenceValue *)self->_recurrence copyWithZone:zone];
  [(_INPBDateTimeRangeValue *)v5 setRecurrence:v8];

  if ([(_INPBDateTimeRangeValue *)self hasStartCalendar])
  {
    [(_INPBDateTimeRangeValue *)v5 setStartCalendar:[(_INPBDateTimeRangeValue *)self startCalendar]];
  }

  v9 = [(_INPBDateTime *)self->_startDateTime copyWithZone:zone];
  [(_INPBDateTimeRangeValue *)v5 setStartDateTime:v9];

  v10 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBDateTimeRangeValue *)v5 setValueMetadata:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDateTimeRangeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDateTimeRangeValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDateTimeRangeValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDateTimeRangeValue *)self hasAllDay])
  {
    allDay = self->_allDay;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBDateTimeRangeValue *)self hasEndCalendar])
  {
    endCalendar = self->_endCalendar;
    PBDataWriterWriteInt64Field();
  }

  endDateTime = [(_INPBDateTimeRangeValue *)self endDateTime];

  if (endDateTime)
  {
    endDateTime2 = [(_INPBDateTimeRangeValue *)self endDateTime];
    PBDataWriterWriteSubmessage();
  }

  name = [(_INPBDateTimeRangeValue *)self name];

  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  recurrence = [(_INPBDateTimeRangeValue *)self recurrence];

  if (recurrence)
  {
    recurrence2 = [(_INPBDateTimeRangeValue *)self recurrence];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBDateTimeRangeValue *)self hasStartCalendar])
  {
    startCalendar = self->_startCalendar;
    PBDataWriterWriteInt64Field();
  }

  startDateTime = [(_INPBDateTimeRangeValue *)self startDateTime];

  if (startDateTime)
  {
    startDateTime2 = [(_INPBDateTimeRangeValue *)self startDateTime];
    PBDataWriterWriteSubmessage();
  }

  valueMetadata = [(_INPBDateTimeRangeValue *)self valueMetadata];

  v16 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBDateTimeRangeValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v16 = toCopy;
  }
}

- (void)setHasStartCalendar:(BOOL)calendar
{
  if (calendar)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (void)setHasEndCalendar:(BOOL)calendar
{
  if (calendar)
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