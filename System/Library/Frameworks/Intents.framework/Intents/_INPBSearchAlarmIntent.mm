@interface _INPBSearchAlarmIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchAlarmIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAlarmSearchType:(id)type;
- (unint64_t)hash;
- (void)addAlarms:(id)alarms;
- (void)encodeWithCoder:(id)coder;
- (void)setAlarmSearchType:(int)type;
- (void)setAlarms:(id)alarms;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchAlarmIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  alarmSearch = [(_INPBSearchAlarmIntent *)self alarmSearch];
  dictionaryRepresentation = [alarmSearch dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alarmSearch"];

  if ([(_INPBSearchAlarmIntent *)self hasAlarmSearchType])
  {
    alarmSearchType = [(_INPBSearchAlarmIntent *)self alarmSearchType];
    if (alarmSearchType >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", alarmSearchType];
    }

    else
    {
      v7 = off_1E7288370[alarmSearchType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"alarmSearchType"];
  }

  if ([(NSArray *)self->_alarms count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_alarms;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"alarms"];
  }

  intentMetadata = [(_INPBSearchAlarmIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAlarmSearch *)self->_alarmSearch hash];
  if ([(_INPBSearchAlarmIntent *)self hasAlarmSearchType])
  {
    v4 = 2654435761 * self->_alarmSearchType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSArray *)self->_alarms hash];
  return v5 ^ v6 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  alarmSearch = [(_INPBSearchAlarmIntent *)self alarmSearch];
  alarmSearch2 = [equalCopy alarmSearch];
  if ((alarmSearch != 0) == (alarmSearch2 == 0))
  {
    goto LABEL_20;
  }

  alarmSearch3 = [(_INPBSearchAlarmIntent *)self alarmSearch];
  if (alarmSearch3)
  {
    v8 = alarmSearch3;
    alarmSearch4 = [(_INPBSearchAlarmIntent *)self alarmSearch];
    alarmSearch5 = [equalCopy alarmSearch];
    v11 = [alarmSearch4 isEqual:alarmSearch5];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasAlarmSearchType = [(_INPBSearchAlarmIntent *)self hasAlarmSearchType];
  if (hasAlarmSearchType != [equalCopy hasAlarmSearchType])
  {
    goto LABEL_21;
  }

  if ([(_INPBSearchAlarmIntent *)self hasAlarmSearchType])
  {
    if ([equalCopy hasAlarmSearchType])
    {
      alarmSearchType = self->_alarmSearchType;
      if (alarmSearchType != [equalCopy alarmSearchType])
      {
        goto LABEL_21;
      }
    }
  }

  alarmSearch = [(_INPBSearchAlarmIntent *)self alarms];
  alarmSearch2 = [equalCopy alarms];
  if ((alarmSearch != 0) == (alarmSearch2 == 0))
  {
    goto LABEL_20;
  }

  alarms = [(_INPBSearchAlarmIntent *)self alarms];
  if (alarms)
  {
    v15 = alarms;
    alarms2 = [(_INPBSearchAlarmIntent *)self alarms];
    alarms3 = [equalCopy alarms];
    v18 = [alarms2 isEqual:alarms3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  alarmSearch = [(_INPBSearchAlarmIntent *)self intentMetadata];
  alarmSearch2 = [equalCopy intentMetadata];
  if ((alarmSearch != 0) != (alarmSearch2 == 0))
  {
    intentMetadata = [(_INPBSearchAlarmIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = intentMetadata;
    intentMetadata2 = [(_INPBSearchAlarmIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v23 = [intentMetadata2 isEqual:intentMetadata3];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchAlarmIntent allocWithZone:](_INPBSearchAlarmIntent init];
  v6 = [(_INPBAlarmSearch *)self->_alarmSearch copyWithZone:zone];
  [(_INPBSearchAlarmIntent *)v5 setAlarmSearch:v6];

  if ([(_INPBSearchAlarmIntent *)self hasAlarmSearchType])
  {
    [(_INPBSearchAlarmIntent *)v5 setAlarmSearchType:[(_INPBSearchAlarmIntent *)self alarmSearchType]];
  }

  v7 = [(NSArray *)self->_alarms copyWithZone:zone];
  [(_INPBSearchAlarmIntent *)v5 setAlarms:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchAlarmIntent *)v5 setIntentMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchAlarmIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchAlarmIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchAlarmIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  alarmSearch = [(_INPBSearchAlarmIntent *)self alarmSearch];

  if (alarmSearch)
  {
    alarmSearch2 = [(_INPBSearchAlarmIntent *)self alarmSearch];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchAlarmIntent *)self hasAlarmSearchType])
  {
    alarmSearchType = self->_alarmSearchType;
    PBDataWriterWriteInt32Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_alarms;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  intentMetadata = [(_INPBSearchAlarmIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchAlarmIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v16 = *MEMORY[0x1E69E9840];
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

- (int)StringAsAlarmSearchType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FIND"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"WHEN_IS"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"HOW_LONG_UNTIL"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"READ"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"HOW_MANY"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlarmSearchType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_alarmSearchType = type;
  }
}

@end