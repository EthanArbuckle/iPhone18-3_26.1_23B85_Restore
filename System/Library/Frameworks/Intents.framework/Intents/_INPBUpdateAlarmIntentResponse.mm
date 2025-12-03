@interface _INPBUpdateAlarmIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBUpdateAlarmIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addConflictAlarms:(id)alarms;
- (void)encodeWithCoder:(id)coder;
- (void)setConflictAlarms:(id)alarms;
- (void)writeTo:(id)to;
@end

@implementation _INPBUpdateAlarmIntentResponse

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_conflictAlarms count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_conflictAlarms;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"conflictAlarms"];
  }

  updatedAlarm = [(_INPBUpdateAlarmIntentResponse *)self updatedAlarm];
  dictionaryRepresentation2 = [updatedAlarm dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"updatedAlarm"];

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  conflictAlarms = [(_INPBUpdateAlarmIntentResponse *)self conflictAlarms];
  conflictAlarms2 = [equalCopy conflictAlarms];
  if ((conflictAlarms != 0) == (conflictAlarms2 == 0))
  {
    goto LABEL_11;
  }

  conflictAlarms3 = [(_INPBUpdateAlarmIntentResponse *)self conflictAlarms];
  if (conflictAlarms3)
  {
    v8 = conflictAlarms3;
    conflictAlarms4 = [(_INPBUpdateAlarmIntentResponse *)self conflictAlarms];
    conflictAlarms5 = [equalCopy conflictAlarms];
    v11 = [conflictAlarms4 isEqual:conflictAlarms5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  conflictAlarms = [(_INPBUpdateAlarmIntentResponse *)self updatedAlarm];
  conflictAlarms2 = [equalCopy updatedAlarm];
  if ((conflictAlarms != 0) != (conflictAlarms2 == 0))
  {
    updatedAlarm = [(_INPBUpdateAlarmIntentResponse *)self updatedAlarm];
    if (!updatedAlarm)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = updatedAlarm;
    updatedAlarm2 = [(_INPBUpdateAlarmIntentResponse *)self updatedAlarm];
    updatedAlarm3 = [equalCopy updatedAlarm];
    v16 = [updatedAlarm2 isEqual:updatedAlarm3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBUpdateAlarmIntentResponse allocWithZone:](_INPBUpdateAlarmIntentResponse init];
  v6 = [(NSArray *)self->_conflictAlarms copyWithZone:zone];
  [(_INPBUpdateAlarmIntentResponse *)v5 setConflictAlarms:v6];

  v7 = [(_INPBAlarm *)self->_updatedAlarm copyWithZone:zone];
  [(_INPBUpdateAlarmIntentResponse *)v5 setUpdatedAlarm:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBUpdateAlarmIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBUpdateAlarmIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBUpdateAlarmIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_conflictAlarms;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  updatedAlarm = [(_INPBUpdateAlarmIntentResponse *)self updatedAlarm];

  if (updatedAlarm)
  {
    updatedAlarm2 = [(_INPBUpdateAlarmIntentResponse *)self updatedAlarm];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addConflictAlarms:(id)alarms
{
  alarmsCopy = alarms;
  conflictAlarms = self->_conflictAlarms;
  v8 = alarmsCopy;
  if (!conflictAlarms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_conflictAlarms;
    self->_conflictAlarms = array;

    alarmsCopy = v8;
    conflictAlarms = self->_conflictAlarms;
  }

  [(NSArray *)conflictAlarms addObject:alarmsCopy];
}

- (void)setConflictAlarms:(id)alarms
{
  v4 = [alarms mutableCopy];
  conflictAlarms = self->_conflictAlarms;
  self->_conflictAlarms = v4;

  MEMORY[0x1EEE66BB8](v4, conflictAlarms);
}

@end