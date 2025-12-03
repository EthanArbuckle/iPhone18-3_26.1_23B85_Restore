@interface _INPBSnoozeAlarmIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSnoozeAlarmIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addAlarms:(id)alarms;
- (void)encodeWithCoder:(id)coder;
- (void)setAlarms:(id)alarms;
- (void)writeTo:(id)to;
@end

@implementation _INPBSnoozeAlarmIntent

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alarms count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_alarms;
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

    [dictionary setObject:array forKeyedSubscript:@"alarms"];
  }

  intentMetadata = [(_INPBSnoozeAlarmIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

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

  alarms = [(_INPBSnoozeAlarmIntent *)self alarms];
  alarms2 = [equalCopy alarms];
  if ((alarms != 0) == (alarms2 == 0))
  {
    goto LABEL_11;
  }

  alarms3 = [(_INPBSnoozeAlarmIntent *)self alarms];
  if (alarms3)
  {
    v8 = alarms3;
    alarms4 = [(_INPBSnoozeAlarmIntent *)self alarms];
    alarms5 = [equalCopy alarms];
    v11 = [alarms4 isEqual:alarms5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  alarms = [(_INPBSnoozeAlarmIntent *)self intentMetadata];
  alarms2 = [equalCopy intentMetadata];
  if ((alarms != 0) != (alarms2 == 0))
  {
    intentMetadata = [(_INPBSnoozeAlarmIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intentMetadata;
    intentMetadata2 = [(_INPBSnoozeAlarmIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

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
  v5 = [+[_INPBSnoozeAlarmIntent allocWithZone:](_INPBSnoozeAlarmIntent init];
  v6 = [(NSArray *)self->_alarms copyWithZone:zone];
  [(_INPBSnoozeAlarmIntent *)v5 setAlarms:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSnoozeAlarmIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSnoozeAlarmIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSnoozeAlarmIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSnoozeAlarmIntent *)self initWithData:selfCopy];

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
  v5 = self->_alarms;
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

  intentMetadata = [(_INPBSnoozeAlarmIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSnoozeAlarmIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addAlarms:(id)alarms
{
  alarmsCopy = alarms;
  alarms = self->_alarms;
  v8 = alarmsCopy;
  if (!alarms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alarms;
    self->_alarms = array;

    alarmsCopy = v8;
    alarms = self->_alarms;
  }

  [(NSArray *)alarms addObject:alarmsCopy];
}

- (void)setAlarms:(id)alarms
{
  v4 = [alarms mutableCopy];
  alarms = self->_alarms;
  self->_alarms = v4;

  MEMORY[0x1EEE66BB8](v4, alarms);
}

@end