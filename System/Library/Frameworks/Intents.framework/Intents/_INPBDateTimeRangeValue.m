@interface _INPBDateTimeRangeValue
- (BOOL)isEqual:(id)a3;
- (_INPBDateTimeRangeValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasEndCalendar:(BOOL)a3;
- (void)setHasStartCalendar:(BOOL)a3;
- (void)setName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDateTimeRangeValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDateTimeRangeValue *)self hasAllDay])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDateTimeRangeValue allDay](self, "allDay")}];
    [v3 setObject:v4 forKeyedSubscript:@"allDay"];
  }

  if ([(_INPBDateTimeRangeValue *)self hasEndCalendar])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBDateTimeRangeValue endCalendar](self, "endCalendar")}];
    [v3 setObject:v5 forKeyedSubscript:@"endCalendar"];
  }

  v6 = [(_INPBDateTimeRangeValue *)self endDateTime];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"endDateTime"];

  if (self->_name)
  {
    v8 = [(_INPBDateTimeRangeValue *)self name];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"name"];
  }

  v10 = [(_INPBDateTimeRangeValue *)self recurrence];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"recurrence"];

  if ([(_INPBDateTimeRangeValue *)self hasStartCalendar])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBDateTimeRangeValue startCalendar](self, "startCalendar")}];
    [v3 setObject:v12 forKeyedSubscript:@"startCalendar"];
  }

  v13 = [(_INPBDateTimeRangeValue *)self startDateTime];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"startDateTime"];

  v15 = [(_INPBDateTimeRangeValue *)self valueMetadata];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"valueMetadata"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  v5 = [(_INPBDateTimeRangeValue *)self hasAllDay];
  if (v5 != [v4 hasAllDay])
  {
    goto LABEL_39;
  }

  if ([(_INPBDateTimeRangeValue *)self hasAllDay])
  {
    if ([v4 hasAllDay])
    {
      allDay = self->_allDay;
      if (allDay != [v4 allDay])
      {
        goto LABEL_39;
      }
    }
  }

  v7 = [(_INPBDateTimeRangeValue *)self hasEndCalendar];
  if (v7 != [v4 hasEndCalendar])
  {
    goto LABEL_39;
  }

  if ([(_INPBDateTimeRangeValue *)self hasEndCalendar])
  {
    if ([v4 hasEndCalendar])
    {
      endCalendar = self->_endCalendar;
      if (endCalendar != [v4 endCalendar])
      {
        goto LABEL_39;
      }
    }
  }

  v9 = [(_INPBDateTimeRangeValue *)self endDateTime];
  v10 = [v4 endDateTime];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_38;
  }

  v11 = [(_INPBDateTimeRangeValue *)self endDateTime];
  if (v11)
  {
    v12 = v11;
    v13 = [(_INPBDateTimeRangeValue *)self endDateTime];
    v14 = [v4 endDateTime];
    v15 = [v13 isEqual:v14];

    if (!v15)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v9 = [(_INPBDateTimeRangeValue *)self name];
  v10 = [v4 name];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_38;
  }

  v16 = [(_INPBDateTimeRangeValue *)self name];
  if (v16)
  {
    v17 = v16;
    v18 = [(_INPBDateTimeRangeValue *)self name];
    v19 = [v4 name];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v9 = [(_INPBDateTimeRangeValue *)self recurrence];
  v10 = [v4 recurrence];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_38;
  }

  v21 = [(_INPBDateTimeRangeValue *)self recurrence];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBDateTimeRangeValue *)self recurrence];
    v24 = [v4 recurrence];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v26 = [(_INPBDateTimeRangeValue *)self hasStartCalendar];
  if (v26 != [v4 hasStartCalendar])
  {
    goto LABEL_39;
  }

  if ([(_INPBDateTimeRangeValue *)self hasStartCalendar])
  {
    if ([v4 hasStartCalendar])
    {
      startCalendar = self->_startCalendar;
      if (startCalendar != [v4 startCalendar])
      {
        goto LABEL_39;
      }
    }
  }

  v9 = [(_INPBDateTimeRangeValue *)self startDateTime];
  v10 = [v4 startDateTime];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_38;
  }

  v28 = [(_INPBDateTimeRangeValue *)self startDateTime];
  if (v28)
  {
    v29 = v28;
    v30 = [(_INPBDateTimeRangeValue *)self startDateTime];
    v31 = [v4 startDateTime];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v9 = [(_INPBDateTimeRangeValue *)self valueMetadata];
  v10 = [v4 valueMetadata];
  if ((v9 != 0) != (v10 == 0))
  {
    v33 = [(_INPBDateTimeRangeValue *)self valueMetadata];
    if (!v33)
    {

LABEL_42:
      v38 = 1;
      goto LABEL_40;
    }

    v34 = v33;
    v35 = [(_INPBDateTimeRangeValue *)self valueMetadata];
    v36 = [v4 valueMetadata];
    v37 = [v35 isEqual:v36];

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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(_INPBDateTime *)self->_endDateTime copyWithZone:a3];
  [(_INPBDateTimeRangeValue *)v5 setEndDateTime:v6];

  v7 = [(NSString *)self->_name copyWithZone:a3];
  [(_INPBDateTimeRangeValue *)v5 setName:v7];

  v8 = [(_INPBRecurrenceValue *)self->_recurrence copyWithZone:a3];
  [(_INPBDateTimeRangeValue *)v5 setRecurrence:v8];

  if ([(_INPBDateTimeRangeValue *)self hasStartCalendar])
  {
    [(_INPBDateTimeRangeValue *)v5 setStartCalendar:[(_INPBDateTimeRangeValue *)self startCalendar]];
  }

  v9 = [(_INPBDateTime *)self->_startDateTime copyWithZone:a3];
  [(_INPBDateTimeRangeValue *)v5 setStartDateTime:v9];

  v10 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBDateTimeRangeValue *)v5 setValueMetadata:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDateTimeRangeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDateTimeRangeValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDateTimeRangeValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v18 = a3;
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

  v6 = [(_INPBDateTimeRangeValue *)self endDateTime];

  if (v6)
  {
    v7 = [(_INPBDateTimeRangeValue *)self endDateTime];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBDateTimeRangeValue *)self name];

  if (v8)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBDateTimeRangeValue *)self recurrence];

  if (v10)
  {
    v11 = [(_INPBDateTimeRangeValue *)self recurrence];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBDateTimeRangeValue *)self hasStartCalendar])
  {
    startCalendar = self->_startCalendar;
    PBDataWriterWriteInt64Field();
  }

  v13 = [(_INPBDateTimeRangeValue *)self startDateTime];

  if (v13)
  {
    v14 = [(_INPBDateTimeRangeValue *)self startDateTime];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBDateTimeRangeValue *)self valueMetadata];

  v16 = v18;
  if (v15)
  {
    v17 = [(_INPBDateTimeRangeValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v16 = v18;
  }
}

- (void)setHasStartCalendar:(BOOL)a3
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

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (void)setHasEndCalendar:(BOOL)a3
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