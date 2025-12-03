@interface _INPBUpdateAlarmIntent
- (BOOL)isEqual:(id)equal;
- (_INPBUpdateAlarmIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsOperation:(id)operation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setOperation:(int)operation;
- (void)writeTo:(id)to;
@end

@implementation _INPBUpdateAlarmIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  alarm = [(_INPBUpdateAlarmIntent *)self alarm];
  dictionaryRepresentation = [alarm dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alarm"];

  alarmSearch = [(_INPBUpdateAlarmIntent *)self alarmSearch];
  dictionaryRepresentation2 = [alarmSearch dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"alarmSearch"];

  intentMetadata = [(_INPBUpdateAlarmIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBUpdateAlarmIntent *)self hasOperation])
  {
    operation = [(_INPBUpdateAlarmIntent *)self operation];
    if (operation == 1)
    {
      v11 = @"UPDATE_LABEL";
    }

    else if (operation == 2)
    {
      v11 = @"UPDATE_TIME";
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", operation];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"operation"];
  }

  proposedLabel = [(_INPBUpdateAlarmIntent *)self proposedLabel];
  dictionaryRepresentation4 = [proposedLabel dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"proposedLabel"];

  proposedTime = [(_INPBUpdateAlarmIntent *)self proposedTime];
  dictionaryRepresentation5 = [proposedTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"proposedTime"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAlarm *)self->_alarm hash];
  v4 = [(_INPBAlarmSearch *)self->_alarmSearch hash];
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBUpdateAlarmIntent *)self hasOperation])
  {
    v6 = 2654435761 * self->_operation;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(_INPBDataString *)self->_proposedLabel hash];
  return v7 ^ v8 ^ [(_INPBDateTimeRange *)self->_proposedTime hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  alarm = [(_INPBUpdateAlarmIntent *)self alarm];
  alarm2 = [equalCopy alarm];
  if ((alarm != 0) == (alarm2 == 0))
  {
    goto LABEL_30;
  }

  alarm3 = [(_INPBUpdateAlarmIntent *)self alarm];
  if (alarm3)
  {
    v8 = alarm3;
    alarm4 = [(_INPBUpdateAlarmIntent *)self alarm];
    alarm5 = [equalCopy alarm];
    v11 = [alarm4 isEqual:alarm5];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  alarm = [(_INPBUpdateAlarmIntent *)self alarmSearch];
  alarm2 = [equalCopy alarmSearch];
  if ((alarm != 0) == (alarm2 == 0))
  {
    goto LABEL_30;
  }

  alarmSearch = [(_INPBUpdateAlarmIntent *)self alarmSearch];
  if (alarmSearch)
  {
    v13 = alarmSearch;
    alarmSearch2 = [(_INPBUpdateAlarmIntent *)self alarmSearch];
    alarmSearch3 = [equalCopy alarmSearch];
    v16 = [alarmSearch2 isEqual:alarmSearch3];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  alarm = [(_INPBUpdateAlarmIntent *)self intentMetadata];
  alarm2 = [equalCopy intentMetadata];
  if ((alarm != 0) == (alarm2 == 0))
  {
    goto LABEL_30;
  }

  intentMetadata = [(_INPBUpdateAlarmIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v18 = intentMetadata;
    intentMetadata2 = [(_INPBUpdateAlarmIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  hasOperation = [(_INPBUpdateAlarmIntent *)self hasOperation];
  if (hasOperation != [equalCopy hasOperation])
  {
    goto LABEL_31;
  }

  if ([(_INPBUpdateAlarmIntent *)self hasOperation])
  {
    if ([equalCopy hasOperation])
    {
      operation = self->_operation;
      if (operation != [equalCopy operation])
      {
        goto LABEL_31;
      }
    }
  }

  alarm = [(_INPBUpdateAlarmIntent *)self proposedLabel];
  alarm2 = [equalCopy proposedLabel];
  if ((alarm != 0) == (alarm2 == 0))
  {
    goto LABEL_30;
  }

  proposedLabel = [(_INPBUpdateAlarmIntent *)self proposedLabel];
  if (proposedLabel)
  {
    v25 = proposedLabel;
    proposedLabel2 = [(_INPBUpdateAlarmIntent *)self proposedLabel];
    proposedLabel3 = [equalCopy proposedLabel];
    v28 = [proposedLabel2 isEqual:proposedLabel3];

    if (!v28)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  alarm = [(_INPBUpdateAlarmIntent *)self proposedTime];
  alarm2 = [equalCopy proposedTime];
  if ((alarm != 0) != (alarm2 == 0))
  {
    proposedTime = [(_INPBUpdateAlarmIntent *)self proposedTime];
    if (!proposedTime)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = proposedTime;
    proposedTime2 = [(_INPBUpdateAlarmIntent *)self proposedTime];
    proposedTime3 = [equalCopy proposedTime];
    v33 = [proposedTime2 isEqual:proposedTime3];

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v34 = 0;
LABEL_32:

  return v34;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBUpdateAlarmIntent allocWithZone:](_INPBUpdateAlarmIntent init];
  v6 = [(_INPBAlarm *)self->_alarm copyWithZone:zone];
  [(_INPBUpdateAlarmIntent *)v5 setAlarm:v6];

  v7 = [(_INPBAlarmSearch *)self->_alarmSearch copyWithZone:zone];
  [(_INPBUpdateAlarmIntent *)v5 setAlarmSearch:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBUpdateAlarmIntent *)v5 setIntentMetadata:v8];

  if ([(_INPBUpdateAlarmIntent *)self hasOperation])
  {
    [(_INPBUpdateAlarmIntent *)v5 setOperation:[(_INPBUpdateAlarmIntent *)self operation]];
  }

  v9 = [(_INPBDataString *)self->_proposedLabel copyWithZone:zone];
  [(_INPBUpdateAlarmIntent *)v5 setProposedLabel:v9];

  v10 = [(_INPBDateTimeRange *)self->_proposedTime copyWithZone:zone];
  [(_INPBUpdateAlarmIntent *)v5 setProposedTime:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBUpdateAlarmIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBUpdateAlarmIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBUpdateAlarmIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  alarm = [(_INPBUpdateAlarmIntent *)self alarm];

  if (alarm)
  {
    alarm2 = [(_INPBUpdateAlarmIntent *)self alarm];
    PBDataWriterWriteSubmessage();
  }

  alarmSearch = [(_INPBUpdateAlarmIntent *)self alarmSearch];

  if (alarmSearch)
  {
    alarmSearch2 = [(_INPBUpdateAlarmIntent *)self alarmSearch];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBUpdateAlarmIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBUpdateAlarmIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBUpdateAlarmIntent *)self hasOperation])
  {
    operation = self->_operation;
    PBDataWriterWriteInt32Field();
  }

  proposedLabel = [(_INPBUpdateAlarmIntent *)self proposedLabel];

  if (proposedLabel)
  {
    proposedLabel2 = [(_INPBUpdateAlarmIntent *)self proposedLabel];
    PBDataWriterWriteSubmessage();
  }

  proposedTime = [(_INPBUpdateAlarmIntent *)self proposedTime];

  v14 = toCopy;
  if (proposedTime)
  {
    proposedTime2 = [(_INPBUpdateAlarmIntent *)self proposedTime];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (int)StringAsOperation:(id)operation
{
  operationCopy = operation;
  v4 = 1;
  if (([operationCopy isEqualToString:@"UPDATE_LABEL"] & 1) == 0)
  {
    if ([operationCopy isEqualToString:@"UPDATE_TIME"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setOperation:(int)operation
{
  has = self->_has;
  if (operation == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_operation = operation;
  }
}

@end