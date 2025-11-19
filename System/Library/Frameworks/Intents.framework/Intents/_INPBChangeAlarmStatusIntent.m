@interface _INPBChangeAlarmStatusIntent
- (BOOL)isEqual:(id)a3;
- (_INPBChangeAlarmStatusIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsOperation:(id)a3;
- (unint64_t)hash;
- (void)addAlarms:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlarms:(id)a3;
- (void)setOperation:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBChangeAlarmStatusIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"alarmSearch"];

  if ([(NSArray *)self->_alarms count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"alarms"];
  }

  v13 = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBChangeAlarmStatusIntent *)self hasOperation])
  {
    v15 = [(_INPBChangeAlarmStatusIntent *)self operation];
    if ((v15 - 1) >= 3)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v15];
    }

    else
    {
      v16 = off_1E7288148[(v15 - 1)];
    }

    [v3 setObject:v16 forKeyedSubscript:@"operation"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
  v6 = [v4 alarmSearch];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
    v10 = [v4 alarmSearch];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBChangeAlarmStatusIntent *)self alarms];
  v6 = [v4 alarms];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBChangeAlarmStatusIntent *)self alarms];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBChangeAlarmStatusIntent *)self alarms];
    v15 = [v4 alarms];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
    v20 = [v4 intentMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = [(_INPBChangeAlarmStatusIntent *)self hasOperation];
  if (v24 == [v4 hasOperation])
  {
    if (!-[_INPBChangeAlarmStatusIntent hasOperation](self, "hasOperation") || ![v4 hasOperation] || (operation = self->_operation, operation == objc_msgSend(v4, "operation")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBChangeAlarmStatusIntent allocWithZone:](_INPBChangeAlarmStatusIntent init];
  v6 = [(_INPBAlarmSearch *)self->_alarmSearch copyWithZone:a3];
  [(_INPBChangeAlarmStatusIntent *)v5 setAlarmSearch:v6];

  v7 = [(NSArray *)self->_alarms copyWithZone:a3];
  [(_INPBChangeAlarmStatusIntent *)v5 setAlarms:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBChangeAlarmStatusIntent *)v5 setIntentMetadata:v8];

  if ([(_INPBChangeAlarmStatusIntent *)self hasOperation])
  {
    [(_INPBChangeAlarmStatusIntent *)v5 setOperation:[(_INPBChangeAlarmStatusIntent *)self operation]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBChangeAlarmStatusIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBChangeAlarmStatusIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBChangeAlarmStatusIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];

  if (v5)
  {
    v6 = [(_INPBChangeAlarmStatusIntent *)self alarmSearch];
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

  v13 = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];

  if (v13)
  {
    v14 = [(_INPBChangeAlarmStatusIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBChangeAlarmStatusIntent *)self hasOperation])
  {
    operation = self->_operation;
    PBDataWriterWriteInt32Field();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (int)StringAsOperation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ENABLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DISABLE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DISMISS"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setOperation:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_operation = a3;
  }
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

@end