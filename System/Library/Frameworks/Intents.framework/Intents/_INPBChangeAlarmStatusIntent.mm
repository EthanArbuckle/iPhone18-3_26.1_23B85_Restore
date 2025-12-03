@interface _INPBChangeAlarmStatusIntent
- (BOOL)isEqual:(id)equal;
- (_INPBChangeAlarmStatusIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsOperation:(id)operation;
- (unint64_t)hash;
- (void)addAlarms:(id)alarms;
- (void)encodeWithCoder:(id)coder;
- (void)setAlarms:(id)alarms;
- (void)setOperation:(int)operation;
- (void)writeTo:(id)to;
@end

@implementation _INPBChangeAlarmStatusIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  alarmSearch = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
  dictionaryRepresentation = [alarmSearch dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alarmSearch"];

  if ([(NSArray *)self->_alarms count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_alarms;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"alarms"];
  }

  intentMetadata = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBChangeAlarmStatusIntent *)self hasOperation])
  {
    operation = [(_INPBChangeAlarmStatusIntent *)self operation];
    if ((operation - 1) >= 3)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", operation];
    }

    else
    {
      v16 = off_1E7288148[(operation - 1)];
    }

    [dictionary setObject:v16 forKeyedSubscript:@"operation"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAlarmSearch *)self->_alarmSearch hash];
  v4 = [(NSArray *)self->_alarms hash];
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBChangeAlarmStatusIntent *)self hasOperation])
  {
    v6 = 2654435761 * self->_operation;
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
    goto LABEL_17;
  }

  alarmSearch = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
  alarmSearch2 = [equalCopy alarmSearch];
  if ((alarmSearch != 0) == (alarmSearch2 == 0))
  {
    goto LABEL_16;
  }

  alarmSearch3 = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
  if (alarmSearch3)
  {
    v8 = alarmSearch3;
    alarmSearch4 = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
    alarmSearch5 = [equalCopy alarmSearch];
    v11 = [alarmSearch4 isEqual:alarmSearch5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  alarmSearch = [(_INPBChangeAlarmStatusIntent *)self alarms];
  alarmSearch2 = [equalCopy alarms];
  if ((alarmSearch != 0) == (alarmSearch2 == 0))
  {
    goto LABEL_16;
  }

  alarms = [(_INPBChangeAlarmStatusIntent *)self alarms];
  if (alarms)
  {
    v13 = alarms;
    alarms2 = [(_INPBChangeAlarmStatusIntent *)self alarms];
    alarms3 = [equalCopy alarms];
    v16 = [alarms2 isEqual:alarms3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  alarmSearch = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
  alarmSearch2 = [equalCopy intentMetadata];
  if ((alarmSearch != 0) == (alarmSearch2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  intentMetadata = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v18 = intentMetadata;
    intentMetadata2 = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  hasOperation = [(_INPBChangeAlarmStatusIntent *)self hasOperation];
  if (hasOperation == [equalCopy hasOperation])
  {
    if (!-[_INPBChangeAlarmStatusIntent hasOperation](self, "hasOperation") || ![equalCopy hasOperation] || (operation = self->_operation, operation == objc_msgSend(equalCopy, "operation")))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBChangeAlarmStatusIntent allocWithZone:](_INPBChangeAlarmStatusIntent init];
  v6 = [(_INPBAlarmSearch *)self->_alarmSearch copyWithZone:zone];
  [(_INPBChangeAlarmStatusIntent *)v5 setAlarmSearch:v6];

  v7 = [(NSArray *)self->_alarms copyWithZone:zone];
  [(_INPBChangeAlarmStatusIntent *)v5 setAlarms:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBChangeAlarmStatusIntent *)v5 setIntentMetadata:v8];

  if ([(_INPBChangeAlarmStatusIntent *)self hasOperation])
  {
    [(_INPBChangeAlarmStatusIntent *)v5 setOperation:[(_INPBChangeAlarmStatusIntent *)self operation]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBChangeAlarmStatusIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBChangeAlarmStatusIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBChangeAlarmStatusIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  alarmSearch = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];

  if (alarmSearch)
  {
    alarmSearch2 = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_alarms;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  intentMetadata = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBChangeAlarmStatusIntent *)self hasOperation])
  {
    operation = self->_operation;
    PBDataWriterWriteInt32Field();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (int)StringAsOperation:(id)operation
{
  operationCopy = operation;
  if ([operationCopy isEqualToString:@"ENABLE"])
  {
    v4 = 1;
  }

  else if ([operationCopy isEqualToString:@"DISABLE"])
  {
    v4 = 2;
  }

  else if ([operationCopy isEqualToString:@"DISMISS"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
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