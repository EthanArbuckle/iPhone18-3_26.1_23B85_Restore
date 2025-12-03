@interface _INPBCreateAlarmIntent
- (BOOL)isEqual:(id)equal;
- (_INPBCreateAlarmIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAlarmRepeatScheduleOptions:(id)options;
- (unint64_t)hash;
- (void)addAlarmRepeatScheduleOptions:(int)options;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateAlarmIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v4 forKeyedSubscript:@"alarmRepeatScheduleOptions"];
  }

  intentMetadata = [(_INPBCreateAlarmIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  label = [(_INPBCreateAlarmIntent *)self label];
  dictionaryRepresentation2 = [label dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"label"];

  if ([(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBCreateAlarmIntent relativeOffsetInMinutes](self, "relativeOffsetInMinutes")}];
    [dictionary setObject:v12 forKeyedSubscript:@"relativeOffsetInMinutes"];
  }

  time = [(_INPBCreateAlarmIntent *)self time];
  dictionaryRepresentation3 = [time dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"time"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_22;
  }

  intentMetadata = [(_INPBCreateAlarmIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_21;
  }

  intentMetadata3 = [(_INPBCreateAlarmIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBCreateAlarmIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBCreateAlarmIntent *)self label];
  intentMetadata2 = [equalCopy label];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_21;
  }

  label = [(_INPBCreateAlarmIntent *)self label];
  if (label)
  {
    v13 = label;
    label2 = [(_INPBCreateAlarmIntent *)self label];
    label3 = [equalCopy label];
    v16 = [label2 isEqual:label3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  hasRelativeOffsetInMinutes = [(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes];
  if (hasRelativeOffsetInMinutes != [equalCopy hasRelativeOffsetInMinutes])
  {
    goto LABEL_22;
  }

  if ([(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes])
  {
    if ([equalCopy hasRelativeOffsetInMinutes])
    {
      relativeOffsetInMinutes = self->_relativeOffsetInMinutes;
      if (relativeOffsetInMinutes != [equalCopy relativeOffsetInMinutes])
      {
        goto LABEL_22;
      }
    }
  }

  intentMetadata = [(_INPBCreateAlarmIntent *)self time];
  intentMetadata2 = [equalCopy time];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    time = [(_INPBCreateAlarmIntent *)self time];
    if (!time)
    {

LABEL_25:
      v24 = 1;
      goto LABEL_23;
    }

    v20 = time;
    time2 = [(_INPBCreateAlarmIntent *)self time];
    time3 = [equalCopy time];
    v23 = [time2 isEqual:time3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCreateAlarmIntent allocWithZone:](_INPBCreateAlarmIntent init];
  PBRepeatedInt32Copy();
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBCreateAlarmIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_label copyWithZone:zone];
  [(_INPBCreateAlarmIntent *)v5 setLabel:v7];

  if ([(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes])
  {
    [(_INPBCreateAlarmIntent *)v5 setRelativeOffsetInMinutes:[(_INPBCreateAlarmIntent *)self relativeOffsetInMinutes]];
  }

  v8 = [(_INPBDateTimeRange *)self->_time copyWithZone:zone];
  [(_INPBCreateAlarmIntent *)v5 setTime:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateAlarmIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateAlarmIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateAlarmIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBCreateAlarmIntent *)self clearAlarmRepeatScheduleOptions];
  v3.receiver = self;
  v3.super_class = _INPBCreateAlarmIntent;
  [(_INPBCreateAlarmIntent *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  p_alarmRepeatScheduleOptions = &self->_alarmRepeatScheduleOptions;
  toCopy = to;
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

  intentMetadata = [(_INPBCreateAlarmIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBCreateAlarmIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  label = [(_INPBCreateAlarmIntent *)self label];

  if (label)
  {
    label2 = [(_INPBCreateAlarmIntent *)self label];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateAlarmIntent *)self hasRelativeOffsetInMinutes])
  {
    relativeOffsetInMinutes = self->_relativeOffsetInMinutes;
    PBDataWriterWriteInt32Field();
  }

  time = [(_INPBCreateAlarmIntent *)self time];

  v13 = toCopy;
  if (time)
  {
    time2 = [(_INPBCreateAlarmIntent *)self time];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (int)StringAsAlarmRepeatScheduleOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([optionsCopy isEqualToString:@"MONDAY"])
  {
    v4 = 1;
  }

  else if ([optionsCopy isEqualToString:@"TUESDAY"])
  {
    v4 = 2;
  }

  else if ([optionsCopy isEqualToString:@"WEDNESDAY"])
  {
    v4 = 3;
  }

  else if ([optionsCopy isEqualToString:@"THURSDAY"])
  {
    v4 = 4;
  }

  else if ([optionsCopy isEqualToString:@"FRIDAY"])
  {
    v4 = 5;
  }

  else if ([optionsCopy isEqualToString:@"SATURDAY"])
  {
    v4 = 6;
  }

  else if ([optionsCopy isEqualToString:@"SUNDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAlarmRepeatScheduleOptions:(int)options
{
  if (options != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end