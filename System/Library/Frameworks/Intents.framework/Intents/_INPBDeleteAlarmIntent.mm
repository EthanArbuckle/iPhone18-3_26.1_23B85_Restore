@interface _INPBDeleteAlarmIntent
- (BOOL)isEqual:(id)equal;
- (_INPBDeleteAlarmIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAlarms:(id)alarms;
- (void)encodeWithCoder:(id)coder;
- (void)setAlarms:(id)alarms;
- (void)writeTo:(id)to;
@end

@implementation _INPBDeleteAlarmIntent

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  alarmSearch = [(_INPBDeleteAlarmIntent *)self alarmSearch];
  dictionaryRepresentation = [alarmSearch dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alarmSearch"];

  if ([(NSArray *)self->_alarms count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_alarms;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"alarms"];
  }

  intentMetadata = [(_INPBDeleteAlarmIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAlarmSearch *)self->_alarmSearch hash];
  v4 = [(NSArray *)self->_alarms hash]^ v3;
  return v4 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  alarmSearch = [(_INPBDeleteAlarmIntent *)self alarmSearch];
  alarmSearch2 = [equalCopy alarmSearch];
  if ((alarmSearch != 0) == (alarmSearch2 == 0))
  {
    goto LABEL_16;
  }

  alarmSearch3 = [(_INPBDeleteAlarmIntent *)self alarmSearch];
  if (alarmSearch3)
  {
    v8 = alarmSearch3;
    alarmSearch4 = [(_INPBDeleteAlarmIntent *)self alarmSearch];
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

  alarmSearch = [(_INPBDeleteAlarmIntent *)self alarms];
  alarmSearch2 = [equalCopy alarms];
  if ((alarmSearch != 0) == (alarmSearch2 == 0))
  {
    goto LABEL_16;
  }

  alarms = [(_INPBDeleteAlarmIntent *)self alarms];
  if (alarms)
  {
    v13 = alarms;
    alarms2 = [(_INPBDeleteAlarmIntent *)self alarms];
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

  alarmSearch = [(_INPBDeleteAlarmIntent *)self intentMetadata];
  alarmSearch2 = [equalCopy intentMetadata];
  if ((alarmSearch != 0) != (alarmSearch2 == 0))
  {
    intentMetadata = [(_INPBDeleteAlarmIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = intentMetadata;
    intentMetadata2 = [(_INPBDeleteAlarmIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDeleteAlarmIntent allocWithZone:](_INPBDeleteAlarmIntent init];
  v6 = [(_INPBAlarmSearch *)self->_alarmSearch copyWithZone:zone];
  [(_INPBDeleteAlarmIntent *)v5 setAlarmSearch:v6];

  v7 = [(NSArray *)self->_alarms copyWithZone:zone];
  [(_INPBDeleteAlarmIntent *)v5 setAlarms:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBDeleteAlarmIntent *)v5 setIntentMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDeleteAlarmIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDeleteAlarmIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDeleteAlarmIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  alarmSearch = [(_INPBDeleteAlarmIntent *)self alarmSearch];

  if (alarmSearch)
  {
    alarmSearch2 = [(_INPBDeleteAlarmIntent *)self alarmSearch];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_alarms;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  intentMetadata = [(_INPBDeleteAlarmIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBDeleteAlarmIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
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