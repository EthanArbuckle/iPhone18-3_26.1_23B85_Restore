@interface _INPBChangeAlarmStatusIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBChangeAlarmStatusIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addModifiedAlarms:(id)alarms;
- (void)encodeWithCoder:(id)coder;
- (void)setModifiedAlarms:(id)alarms;
- (void)writeTo:(id)to;
@end

@implementation _INPBChangeAlarmStatusIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_modifiedAlarms count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_modifiedAlarms;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"modifiedAlarms"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    modifiedAlarms = [(_INPBChangeAlarmStatusIntentResponse *)self modifiedAlarms];
    modifiedAlarms2 = [equalCopy modifiedAlarms];
    v7 = modifiedAlarms2;
    if ((modifiedAlarms != 0) != (modifiedAlarms2 == 0))
    {
      modifiedAlarms3 = [(_INPBChangeAlarmStatusIntentResponse *)self modifiedAlarms];
      if (!modifiedAlarms3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = modifiedAlarms3;
      modifiedAlarms4 = [(_INPBChangeAlarmStatusIntentResponse *)self modifiedAlarms];
      modifiedAlarms5 = [equalCopy modifiedAlarms];
      v12 = [modifiedAlarms4 isEqual:modifiedAlarms5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBChangeAlarmStatusIntentResponse allocWithZone:](_INPBChangeAlarmStatusIntentResponse init];
  v6 = [(NSArray *)self->_modifiedAlarms copyWithZone:zone];
  [(_INPBChangeAlarmStatusIntentResponse *)v5 setModifiedAlarms:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBChangeAlarmStatusIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBChangeAlarmStatusIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBChangeAlarmStatusIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_modifiedAlarms;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addModifiedAlarms:(id)alarms
{
  alarmsCopy = alarms;
  modifiedAlarms = self->_modifiedAlarms;
  v8 = alarmsCopy;
  if (!modifiedAlarms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_modifiedAlarms;
    self->_modifiedAlarms = array;

    alarmsCopy = v8;
    modifiedAlarms = self->_modifiedAlarms;
  }

  [(NSArray *)modifiedAlarms addObject:alarmsCopy];
}

- (void)setModifiedAlarms:(id)alarms
{
  v4 = [alarms mutableCopy];
  modifiedAlarms = self->_modifiedAlarms;
  self->_modifiedAlarms = v4;

  MEMORY[0x1EEE66BB8](v4, modifiedAlarms);
}

@end