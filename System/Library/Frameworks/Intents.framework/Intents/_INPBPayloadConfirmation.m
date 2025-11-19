@interface _INPBPayloadConfirmation
- (BOOL)isEqual:(id)a3;
- (_INPBPayloadConfirmation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)a3;
- (int)StringAsStartCallIntentContactsConfirmationReason:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAddTasksIntentTargetTaskListConfirmationReason:(int)a3;
- (void)setHasAddTasksIntentTargetTaskListConfirmationReason:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)setHasStartCallIntentContactsConfirmationReason:(BOOL)a3;
- (void)setReason:(int)a3;
- (void)setSendAnnouncementIntentAnnouncementConfirmationReason:(int)a3;
- (void)setStartCallIntentContactsConfirmationReason:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPayloadConfirmation

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    v4 = [(_INPBPayloadConfirmation *)self sendAnnouncementIntentAnnouncementConfirmationReason];
    if (v4 == 1)
    {
      v5 = @"DURATION_ABOVE_MAX_THRESHOLD";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"announcementConfirmationReason"];
  }

  v6 = [(_INPBPayloadConfirmation *)self confirmationItem];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"confirmationItem"];

  if ([(_INPBPayloadConfirmation *)self hasStartCallIntentContactsConfirmationReason])
  {
    v8 = [(_INPBPayloadConfirmation *)self startCallIntentContactsConfirmationReason];
    if ((v8 - 1) >= 5)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7281050[(v8 - 1)];
    }

    [v3 setObject:v9 forKeyedSubscript:@"contactsConfirmationReason"];
  }

  if ([(_INPBPayloadConfirmation *)self hasReason])
  {
    v10 = [(_INPBPayloadConfirmation *)self reason];
    if (v10 == 1)
    {
      v11 = @"ConfirmationReasonNone";
    }

    else if (v10 == 1000)
    {
      v11 = @"ConfirmationReasonExtension";
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"reason"];
  }

  if ([(_INPBPayloadConfirmation *)self hasAddTasksIntentTargetTaskListConfirmationReason])
  {
    v12 = [(_INPBPayloadConfirmation *)self addTasksIntentTargetTaskListConfirmationReason];
    if (v12 == 1)
    {
      v13 = @"LIST_SHOULD_BE_CREATED";
    }

    else
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"targetTaskListConfirmationReason"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    v3 = 2654435761 * self->_sendAnnouncementIntentAnnouncementConfirmationReason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBSelectionItem *)self->_confirmationItem hash];
  if ([(_INPBPayloadConfirmation *)self hasStartCallIntentContactsConfirmationReason])
  {
    v5 = 2654435761 * self->_startCallIntentContactsConfirmationReason;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBPayloadConfirmation *)self hasReason])
  {
    v6 = 2654435761 * self->_reason;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBPayloadConfirmation *)self hasAddTasksIntentTargetTaskListConfirmationReason])
  {
    v7 = 2654435761 * self->_addTasksIntentTargetTaskListConfirmationReason;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason];
  if (v5 != [v4 hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    goto LABEL_21;
  }

  if ([(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    if ([v4 hasSendAnnouncementIntentAnnouncementConfirmationReason])
    {
      sendAnnouncementIntentAnnouncementConfirmationReason = self->_sendAnnouncementIntentAnnouncementConfirmationReason;
      if (sendAnnouncementIntentAnnouncementConfirmationReason != [v4 sendAnnouncementIntentAnnouncementConfirmationReason])
      {
        goto LABEL_21;
      }
    }
  }

  v7 = [(_INPBPayloadConfirmation *)self confirmationItem];
  v8 = [v4 confirmationItem];
  v9 = v8;
  if ((v7 != 0) != (v8 == 0))
  {
    v10 = [(_INPBPayloadConfirmation *)self confirmationItem];
    if (v10)
    {
      v11 = v10;
      v12 = [(_INPBPayloadConfirmation *)self confirmationItem];
      v13 = [v4 confirmationItem];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v15 = [(_INPBPayloadConfirmation *)self hasStartCallIntentContactsConfirmationReason];
    if (v15 == [v4 hasStartCallIntentContactsConfirmationReason])
    {
      if (!-[_INPBPayloadConfirmation hasStartCallIntentContactsConfirmationReason](self, "hasStartCallIntentContactsConfirmationReason") || ![v4 hasStartCallIntentContactsConfirmationReason] || (startCallIntentContactsConfirmationReason = self->_startCallIntentContactsConfirmationReason, startCallIntentContactsConfirmationReason == objc_msgSend(v4, "startCallIntentContactsConfirmationReason")))
      {
        v17 = [(_INPBPayloadConfirmation *)self hasReason];
        if (v17 == [v4 hasReason])
        {
          if (!-[_INPBPayloadConfirmation hasReason](self, "hasReason") || ![v4 hasReason] || (reason = self->_reason, reason == objc_msgSend(v4, "reason")))
          {
            v19 = [(_INPBPayloadConfirmation *)self hasAddTasksIntentTargetTaskListConfirmationReason];
            if (v19 == [v4 hasAddTasksIntentTargetTaskListConfirmationReason])
            {
              if (!-[_INPBPayloadConfirmation hasAddTasksIntentTargetTaskListConfirmationReason](self, "hasAddTasksIntentTargetTaskListConfirmationReason") || ![v4 hasAddTasksIntentTargetTaskListConfirmationReason] || (addTasksIntentTargetTaskListConfirmationReason = self->_addTasksIntentTargetTaskListConfirmationReason, addTasksIntentTargetTaskListConfirmationReason == objc_msgSend(v4, "addTasksIntentTargetTaskListConfirmationReason")))
              {
                v20 = 1;
                goto LABEL_22;
              }
            }
          }
        }
      }
    }
  }

  else
  {
  }

LABEL_21:
  v20 = 0;
LABEL_22:

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPayloadConfirmation allocWithZone:](_INPBPayloadConfirmation init];
  if ([(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    [(_INPBPayloadConfirmation *)v5 setSendAnnouncementIntentAnnouncementConfirmationReason:[(_INPBPayloadConfirmation *)self sendAnnouncementIntentAnnouncementConfirmationReason]];
  }

  v6 = [(_INPBSelectionItem *)self->_confirmationItem copyWithZone:a3];
  [(_INPBPayloadConfirmation *)v5 setConfirmationItem:v6];

  if ([(_INPBPayloadConfirmation *)self hasStartCallIntentContactsConfirmationReason])
  {
    [(_INPBPayloadConfirmation *)v5 setStartCallIntentContactsConfirmationReason:[(_INPBPayloadConfirmation *)self startCallIntentContactsConfirmationReason]];
  }

  if ([(_INPBPayloadConfirmation *)self hasReason])
  {
    [(_INPBPayloadConfirmation *)v5 setReason:[(_INPBPayloadConfirmation *)self reason]];
  }

  if ([(_INPBPayloadConfirmation *)self hasAddTasksIntentTargetTaskListConfirmationReason])
  {
    [(_INPBPayloadConfirmation *)v5 setAddTasksIntentTargetTaskListConfirmationReason:[(_INPBPayloadConfirmation *)self addTasksIntentTargetTaskListConfirmationReason]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPayloadConfirmation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPayloadConfirmation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPayloadConfirmation *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    sendAnnouncementIntentAnnouncementConfirmationReason = self->_sendAnnouncementIntentAnnouncementConfirmationReason;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBPayloadConfirmation *)self confirmationItem];

  if (v5)
  {
    v6 = [(_INPBPayloadConfirmation *)self confirmationItem];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPayloadConfirmation *)self hasStartCallIntentContactsConfirmationReason])
  {
    startCallIntentContactsConfirmationReason = self->_startCallIntentContactsConfirmationReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadConfirmation *)self hasReason])
  {
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadConfirmation *)self hasAddTasksIntentTargetTaskListConfirmationReason])
  {
    addTasksIntentTargetTaskListConfirmationReason = self->_addTasksIntentTargetTaskListConfirmationReason;
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasAddTasksIntentTargetTaskListConfirmationReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setAddTasksIntentTargetTaskListConfirmationReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_addTasksIntentTargetTaskListConfirmationReason = a3;
  }
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ConfirmationReasonNone"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ConfirmationReasonExtension"])
  {
    v4 = 1000;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_reason = a3;
  }
}

- (int)StringAsStartCallIntentContactsConfirmationReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"INVALID_NUMBER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TOP_MATCH_HANDLE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TOP_MATCH_NAME"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UNKNOWN_CONTACTS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"FOUND_IN_APPS_TOP_MATCH_NAME"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStartCallIntentContactsConfirmationReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setStartCallIntentContactsConfirmationReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_startCallIntentContactsConfirmationReason = a3;
  }
}

- (void)setSendAnnouncementIntentAnnouncementConfirmationReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_sendAnnouncementIntentAnnouncementConfirmationReason = a3;
  }
}

@end