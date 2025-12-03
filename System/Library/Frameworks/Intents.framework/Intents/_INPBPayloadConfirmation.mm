@interface _INPBPayloadConfirmation
- (BOOL)isEqual:(id)equal;
- (_INPBPayloadConfirmation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)reason;
- (int)StringAsStartCallIntentContactsConfirmationReason:(id)reason;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAddTasksIntentTargetTaskListConfirmationReason:(int)reason;
- (void)setHasAddTasksIntentTargetTaskListConfirmationReason:(BOOL)reason;
- (void)setHasReason:(BOOL)reason;
- (void)setHasStartCallIntentContactsConfirmationReason:(BOOL)reason;
- (void)setReason:(int)reason;
- (void)setSendAnnouncementIntentAnnouncementConfirmationReason:(int)reason;
- (void)setStartCallIntentContactsConfirmationReason:(int)reason;
- (void)writeTo:(id)to;
@end

@implementation _INPBPayloadConfirmation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    sendAnnouncementIntentAnnouncementConfirmationReason = [(_INPBPayloadConfirmation *)self sendAnnouncementIntentAnnouncementConfirmationReason];
    if (sendAnnouncementIntentAnnouncementConfirmationReason == 1)
    {
      v5 = @"DURATION_ABOVE_MAX_THRESHOLD";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sendAnnouncementIntentAnnouncementConfirmationReason];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"announcementConfirmationReason"];
  }

  confirmationItem = [(_INPBPayloadConfirmation *)self confirmationItem];
  dictionaryRepresentation = [confirmationItem dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"confirmationItem"];

  if ([(_INPBPayloadConfirmation *)self hasStartCallIntentContactsConfirmationReason])
  {
    startCallIntentContactsConfirmationReason = [(_INPBPayloadConfirmation *)self startCallIntentContactsConfirmationReason];
    if ((startCallIntentContactsConfirmationReason - 1) >= 5)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", startCallIntentContactsConfirmationReason];
    }

    else
    {
      v9 = off_1E7281050[(startCallIntentContactsConfirmationReason - 1)];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"contactsConfirmationReason"];
  }

  if ([(_INPBPayloadConfirmation *)self hasReason])
  {
    reason = [(_INPBPayloadConfirmation *)self reason];
    if (reason == 1)
    {
      v11 = @"ConfirmationReasonNone";
    }

    else if (reason == 1000)
    {
      v11 = @"ConfirmationReasonExtension";
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", reason];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"reason"];
  }

  if ([(_INPBPayloadConfirmation *)self hasAddTasksIntentTargetTaskListConfirmationReason])
  {
    addTasksIntentTargetTaskListConfirmationReason = [(_INPBPayloadConfirmation *)self addTasksIntentTargetTaskListConfirmationReason];
    if (addTasksIntentTargetTaskListConfirmationReason == 1)
    {
      v13 = @"LIST_SHOULD_BE_CREATED";
    }

    else
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", addTasksIntentTargetTaskListConfirmationReason];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"targetTaskListConfirmationReason"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  hasSendAnnouncementIntentAnnouncementConfirmationReason = [(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason];
  if (hasSendAnnouncementIntentAnnouncementConfirmationReason != [equalCopy hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    goto LABEL_21;
  }

  if ([(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    if ([equalCopy hasSendAnnouncementIntentAnnouncementConfirmationReason])
    {
      sendAnnouncementIntentAnnouncementConfirmationReason = self->_sendAnnouncementIntentAnnouncementConfirmationReason;
      if (sendAnnouncementIntentAnnouncementConfirmationReason != [equalCopy sendAnnouncementIntentAnnouncementConfirmationReason])
      {
        goto LABEL_21;
      }
    }
  }

  confirmationItem = [(_INPBPayloadConfirmation *)self confirmationItem];
  confirmationItem2 = [equalCopy confirmationItem];
  v9 = confirmationItem2;
  if ((confirmationItem != 0) != (confirmationItem2 == 0))
  {
    confirmationItem3 = [(_INPBPayloadConfirmation *)self confirmationItem];
    if (confirmationItem3)
    {
      v11 = confirmationItem3;
      confirmationItem4 = [(_INPBPayloadConfirmation *)self confirmationItem];
      confirmationItem5 = [equalCopy confirmationItem];
      v14 = [confirmationItem4 isEqual:confirmationItem5];

      if (!v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    hasStartCallIntentContactsConfirmationReason = [(_INPBPayloadConfirmation *)self hasStartCallIntentContactsConfirmationReason];
    if (hasStartCallIntentContactsConfirmationReason == [equalCopy hasStartCallIntentContactsConfirmationReason])
    {
      if (!-[_INPBPayloadConfirmation hasStartCallIntentContactsConfirmationReason](self, "hasStartCallIntentContactsConfirmationReason") || ![equalCopy hasStartCallIntentContactsConfirmationReason] || (startCallIntentContactsConfirmationReason = self->_startCallIntentContactsConfirmationReason, startCallIntentContactsConfirmationReason == objc_msgSend(equalCopy, "startCallIntentContactsConfirmationReason")))
      {
        hasReason = [(_INPBPayloadConfirmation *)self hasReason];
        if (hasReason == [equalCopy hasReason])
        {
          if (!-[_INPBPayloadConfirmation hasReason](self, "hasReason") || ![equalCopy hasReason] || (reason = self->_reason, reason == objc_msgSend(equalCopy, "reason")))
          {
            hasAddTasksIntentTargetTaskListConfirmationReason = [(_INPBPayloadConfirmation *)self hasAddTasksIntentTargetTaskListConfirmationReason];
            if (hasAddTasksIntentTargetTaskListConfirmationReason == [equalCopy hasAddTasksIntentTargetTaskListConfirmationReason])
            {
              if (!-[_INPBPayloadConfirmation hasAddTasksIntentTargetTaskListConfirmationReason](self, "hasAddTasksIntentTargetTaskListConfirmationReason") || ![equalCopy hasAddTasksIntentTargetTaskListConfirmationReason] || (addTasksIntentTargetTaskListConfirmationReason = self->_addTasksIntentTargetTaskListConfirmationReason, addTasksIntentTargetTaskListConfirmationReason == objc_msgSend(equalCopy, "addTasksIntentTargetTaskListConfirmationReason")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPayloadConfirmation allocWithZone:](_INPBPayloadConfirmation init];
  if ([(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    [(_INPBPayloadConfirmation *)v5 setSendAnnouncementIntentAnnouncementConfirmationReason:[(_INPBPayloadConfirmation *)self sendAnnouncementIntentAnnouncementConfirmationReason]];
  }

  v6 = [(_INPBSelectionItem *)self->_confirmationItem copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPayloadConfirmation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPayloadConfirmation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPayloadConfirmation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBPayloadConfirmation *)self hasSendAnnouncementIntentAnnouncementConfirmationReason])
  {
    sendAnnouncementIntentAnnouncementConfirmationReason = self->_sendAnnouncementIntentAnnouncementConfirmationReason;
    PBDataWriterWriteInt32Field();
  }

  confirmationItem = [(_INPBPayloadConfirmation *)self confirmationItem];

  if (confirmationItem)
  {
    confirmationItem2 = [(_INPBPayloadConfirmation *)self confirmationItem];
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

- (void)setHasAddTasksIntentTargetTaskListConfirmationReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setAddTasksIntentTargetTaskListConfirmationReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_addTasksIntentTargetTaskListConfirmationReason = reason;
  }
}

- (int)StringAsReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"ConfirmationReasonNone"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"ConfirmationReasonExtension"])
  {
    v4 = 1000;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_reason = reason;
  }
}

- (int)StringAsStartCallIntentContactsConfirmationReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"INVALID_NUMBER"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"TOP_MATCH_HANDLE"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"TOP_MATCH_NAME"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"UNKNOWN_CONTACTS"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"FOUND_IN_APPS_TOP_MATCH_NAME"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStartCallIntentContactsConfirmationReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setStartCallIntentContactsConfirmationReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_startCallIntentContactsConfirmationReason = reason;
  }
}

- (void)setSendAnnouncementIntentAnnouncementConfirmationReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_sendAnnouncementIntentAnnouncementConfirmationReason = reason;
  }
}

@end