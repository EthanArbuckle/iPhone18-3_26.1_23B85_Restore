@interface _INPBSearchAlarmIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSearchAlarmIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAlarmSearchType:(id)a3;
- (unint64_t)hash;
- (void)addAlarms:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlarmSearchType:(int)a3;
- (void)setAlarms:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchAlarmIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSearchAlarmIntent *)self alarmSearch];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"alarmSearch"];

  if ([(_INPBSearchAlarmIntent *)self hasAlarmSearchType])
  {
    v6 = [(_INPBSearchAlarmIntent *)self alarmSearchType];
    if (v6 >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7288370[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"alarmSearchType"];
  }

  if ([(NSArray *)self->_alarms count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
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

          v14 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"alarms"];
  }

  v15 = [(_INPBSearchAlarmIntent *)self intentMetadata];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"intentMetadata"];

  v17 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBSearchAlarmIntent *)self alarmSearch];
  v6 = [v4 alarmSearch];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v7 = [(_INPBSearchAlarmIntent *)self alarmSearch];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchAlarmIntent *)self alarmSearch];
    v10 = [v4 alarmSearch];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v12 = [(_INPBSearchAlarmIntent *)self hasAlarmSearchType];
  if (v12 != [v4 hasAlarmSearchType])
  {
    goto LABEL_21;
  }

  if ([(_INPBSearchAlarmIntent *)self hasAlarmSearchType])
  {
    if ([v4 hasAlarmSearchType])
    {
      alarmSearchType = self->_alarmSearchType;
      if (alarmSearchType != [v4 alarmSearchType])
      {
        goto LABEL_21;
      }
    }
  }

  v5 = [(_INPBSearchAlarmIntent *)self alarms];
  v6 = [v4 alarms];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBSearchAlarmIntent *)self alarms];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSearchAlarmIntent *)self alarms];
    v17 = [v4 alarms];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchAlarmIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v19 = [(_INPBSearchAlarmIntent *)self intentMetadata];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBSearchAlarmIntent *)self intentMetadata];
    v22 = [v4 intentMetadata];
    v23 = [v21 isEqual:v22];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchAlarmIntent allocWithZone:](_INPBSearchAlarmIntent init];
  v6 = [(_INPBAlarmSearch *)self->_alarmSearch copyWithZone:a3];
  [(_INPBSearchAlarmIntent *)v5 setAlarmSearch:v6];

  if ([(_INPBSearchAlarmIntent *)self hasAlarmSearchType])
  {
    [(_INPBSearchAlarmIntent *)v5 setAlarmSearchType:[(_INPBSearchAlarmIntent *)self alarmSearchType]];
  }

  v7 = [(NSArray *)self->_alarms copyWithZone:a3];
  [(_INPBSearchAlarmIntent *)v5 setAlarms:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSearchAlarmIntent *)v5 setIntentMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchAlarmIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchAlarmIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchAlarmIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBSearchAlarmIntent *)self alarmSearch];

  if (v5)
  {
    v6 = [(_INPBSearchAlarmIntent *)self alarmSearch];
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

  v14 = [(_INPBSearchAlarmIntent *)self intentMetadata];

  if (v14)
  {
    v15 = [(_INPBSearchAlarmIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addAlarms:(id)a3
{
  v4 = a3;
  alarms = self->_alarms;
  v8 = v4;
  if (!alarms)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alarms;
    self->_alarms = v6;

    v4 = v8;
    alarms = self->_alarms;
  }

  [(NSArray *)alarms addObject:v4];
}

- (void)setAlarms:(id)a3
{
  v4 = [a3 mutableCopy];
  alarms = self->_alarms;
  self->_alarms = v4;

  MEMORY[0x1EEE66BB8](v4, alarms);
}

- (int)StringAsAlarmSearchType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FIND"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WHEN_IS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HOW_LONG_UNTIL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"READ"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HOW_MANY"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlarmSearchType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_alarmSearchType = a3;
  }
}

@end