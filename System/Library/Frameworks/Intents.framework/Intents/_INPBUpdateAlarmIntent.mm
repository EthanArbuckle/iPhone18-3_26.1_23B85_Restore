@interface _INPBUpdateAlarmIntent
- (BOOL)isEqual:(id)a3;
- (_INPBUpdateAlarmIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsOperation:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setOperation:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBUpdateAlarmIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBUpdateAlarmIntent *)self alarm];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"alarm"];

  v6 = [(_INPBUpdateAlarmIntent *)self alarmSearch];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"alarmSearch"];

  v8 = [(_INPBUpdateAlarmIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBUpdateAlarmIntent *)self hasOperation])
  {
    v10 = [(_INPBUpdateAlarmIntent *)self operation];
    if (v10 == 1)
    {
      v11 = @"UPDATE_LABEL";
    }

    else if (v10 == 2)
    {
      v11 = @"UPDATE_TIME";
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"operation"];
  }

  v12 = [(_INPBUpdateAlarmIntent *)self proposedLabel];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"proposedLabel"];

  v14 = [(_INPBUpdateAlarmIntent *)self proposedTime];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"proposedTime"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = [(_INPBUpdateAlarmIntent *)self alarm];
  v6 = [v4 alarm];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v7 = [(_INPBUpdateAlarmIntent *)self alarm];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBUpdateAlarmIntent *)self alarm];
    v10 = [v4 alarm];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBUpdateAlarmIntent *)self alarmSearch];
  v6 = [v4 alarmSearch];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v12 = [(_INPBUpdateAlarmIntent *)self alarmSearch];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBUpdateAlarmIntent *)self alarmSearch];
    v15 = [v4 alarmSearch];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBUpdateAlarmIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v17 = [(_INPBUpdateAlarmIntent *)self intentMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBUpdateAlarmIntent *)self intentMetadata];
    v20 = [v4 intentMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v22 = [(_INPBUpdateAlarmIntent *)self hasOperation];
  if (v22 != [v4 hasOperation])
  {
    goto LABEL_31;
  }

  if ([(_INPBUpdateAlarmIntent *)self hasOperation])
  {
    if ([v4 hasOperation])
    {
      operation = self->_operation;
      if (operation != [v4 operation])
      {
        goto LABEL_31;
      }
    }
  }

  v5 = [(_INPBUpdateAlarmIntent *)self proposedLabel];
  v6 = [v4 proposedLabel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v24 = [(_INPBUpdateAlarmIntent *)self proposedLabel];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBUpdateAlarmIntent *)self proposedLabel];
    v27 = [v4 proposedLabel];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBUpdateAlarmIntent *)self proposedTime];
  v6 = [v4 proposedTime];
  if ((v5 != 0) != (v6 == 0))
  {
    v29 = [(_INPBUpdateAlarmIntent *)self proposedTime];
    if (!v29)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = v29;
    v31 = [(_INPBUpdateAlarmIntent *)self proposedTime];
    v32 = [v4 proposedTime];
    v33 = [v31 isEqual:v32];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBUpdateAlarmIntent allocWithZone:](_INPBUpdateAlarmIntent init];
  v6 = [(_INPBAlarm *)self->_alarm copyWithZone:a3];
  [(_INPBUpdateAlarmIntent *)v5 setAlarm:v6];

  v7 = [(_INPBAlarmSearch *)self->_alarmSearch copyWithZone:a3];
  [(_INPBUpdateAlarmIntent *)v5 setAlarmSearch:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBUpdateAlarmIntent *)v5 setIntentMetadata:v8];

  if ([(_INPBUpdateAlarmIntent *)self hasOperation])
  {
    [(_INPBUpdateAlarmIntent *)v5 setOperation:[(_INPBUpdateAlarmIntent *)self operation]];
  }

  v9 = [(_INPBDataString *)self->_proposedLabel copyWithZone:a3];
  [(_INPBUpdateAlarmIntent *)v5 setProposedLabel:v9];

  v10 = [(_INPBDateTimeRange *)self->_proposedTime copyWithZone:a3];
  [(_INPBUpdateAlarmIntent *)v5 setProposedTime:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBUpdateAlarmIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBUpdateAlarmIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBUpdateAlarmIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  v4 = [(_INPBUpdateAlarmIntent *)self alarm];

  if (v4)
  {
    v5 = [(_INPBUpdateAlarmIntent *)self alarm];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBUpdateAlarmIntent *)self alarmSearch];

  if (v6)
  {
    v7 = [(_INPBUpdateAlarmIntent *)self alarmSearch];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBUpdateAlarmIntent *)self intentMetadata];

  if (v8)
  {
    v9 = [(_INPBUpdateAlarmIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBUpdateAlarmIntent *)self hasOperation])
  {
    operation = self->_operation;
    PBDataWriterWriteInt32Field();
  }

  v11 = [(_INPBUpdateAlarmIntent *)self proposedLabel];

  if (v11)
  {
    v12 = [(_INPBUpdateAlarmIntent *)self proposedLabel];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBUpdateAlarmIntent *)self proposedTime];

  v14 = v16;
  if (v13)
  {
    v15 = [(_INPBUpdateAlarmIntent *)self proposedTime];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (int)StringAsOperation:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"UPDATE_LABEL"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"UPDATE_TIME"])
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

@end