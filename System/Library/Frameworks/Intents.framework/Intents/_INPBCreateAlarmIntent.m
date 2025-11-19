@interface _INPBCreateAlarmIntent
- (BOOL)isEqual:(id)a3;
- (_INPBCreateAlarmIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAlarmRepeatScheduleOptions:(id)a3;
- (unint64_t)hash;
- (void)addAlarmRepeatScheduleOptions:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCreateAlarmIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alarmRepeatScheduleOptions.count)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBCreateAlarmIntent alarmRepeatScheduleOptionsCount](self, "alarmRepeatScheduleOptionsCount")}];
    if ([(_INPBCreateAlarmIntent *)self alarmRepeatScheduleOptionsCount])
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
          v7 = off_1E72880F0[v6];
        }

        [v4 addObject:v7];

        ++v5;
      }

      while (v5 < [(_INPBCreateAlarmIntent *)self alarmRepeatScheduleOptionsCount]);
    }

    [v3 setObject:v4 forKeyedSubscript:@"alarmRepeatScheduleOptions"];
  }

  v8 = [(_INPBCreateAlarmIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  v10 = [(_INPBCreateAlarmIntent *)self label];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"label"];

  if ([(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBCreateAlarmIntent relativeOffsetInMinutes](self, "relativeOffsetInMinutes")}];
    [v3 setObject:v12 forKeyedSubscript:@"relativeOffsetInMinutes"];
  }

  v13 = [(_INPBCreateAlarmIntent *)self time];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"time"];

  return v3;
}

- (unint64_t)hash
{
  v3 = PBRepeatedInt32Hash();
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v5 = [(_INPBDataString *)self->_label hash];
  if ([(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes])
  {
    v6 = 2654435761 * self->_relativeOffsetInMinutes;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(_INPBDateTimeRange *)self->_time hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_22;
  }

  v5 = [(_INPBCreateAlarmIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBCreateAlarmIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCreateAlarmIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateAlarmIntent *)self label];
  v6 = [v4 label];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBCreateAlarmIntent *)self label];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCreateAlarmIntent *)self label];
    v15 = [v4 label];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v17 = [(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes];
  if (v17 != [v4 hasRelativeOffsetInMinutes])
  {
    goto LABEL_22;
  }

  if ([(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes])
  {
    if ([v4 hasRelativeOffsetInMinutes])
    {
      relativeOffsetInMinutes = self->_relativeOffsetInMinutes;
      if (relativeOffsetInMinutes != [v4 relativeOffsetInMinutes])
      {
        goto LABEL_22;
      }
    }
  }

  v5 = [(_INPBCreateAlarmIntent *)self time];
  v6 = [v4 time];
  if ((v5 != 0) != (v6 == 0))
  {
    v19 = [(_INPBCreateAlarmIntent *)self time];
    if (!v19)
    {

LABEL_25:
      v24 = 1;
      goto LABEL_23;
    }

    v20 = v19;
    v21 = [(_INPBCreateAlarmIntent *)self time];
    v22 = [v4 time];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v24 = 0;
LABEL_23:

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCreateAlarmIntent allocWithZone:](_INPBCreateAlarmIntent init];
  PBRepeatedInt32Copy();
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBCreateAlarmIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_label copyWithZone:a3];
  [(_INPBCreateAlarmIntent *)v5 setLabel:v7];

  if ([(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes])
  {
    [(_INPBCreateAlarmIntent *)v5 setRelativeOffsetInMinutes:[(_INPBCreateAlarmIntent *)self relativeOffsetInMinutes]];
  }

  v8 = [(_INPBDateTimeRange *)self->_time copyWithZone:a3];
  [(_INPBCreateAlarmIntent *)v5 setTime:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCreateAlarmIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCreateAlarmIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCreateAlarmIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBCreateAlarmIntent *)self clearAlarmRepeatScheduleOptions];
  v3.receiver = self;
  v3.super_class = _INPBCreateAlarmIntent;
  [(_INPBCreateAlarmIntent *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  p_alarmRepeatScheduleOptions = &self->_alarmRepeatScheduleOptions;
  v15 = a3;
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

  v7 = [(_INPBCreateAlarmIntent *)self intentMetadata];

  if (v7)
  {
    v8 = [(_INPBCreateAlarmIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBCreateAlarmIntent *)self label];

  if (v9)
  {
    v10 = [(_INPBCreateAlarmIntent *)self label];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes])
  {
    relativeOffsetInMinutes = self->_relativeOffsetInMinutes;
    PBDataWriterWriteInt32Field();
  }

  v12 = [(_INPBCreateAlarmIntent *)self time];

  v13 = v15;
  if (v12)
  {
    v14 = [(_INPBCreateAlarmIntent *)self time];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (int)StringAsAlarmRepeatScheduleOptions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
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

- (void)addAlarmRepeatScheduleOptions:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end