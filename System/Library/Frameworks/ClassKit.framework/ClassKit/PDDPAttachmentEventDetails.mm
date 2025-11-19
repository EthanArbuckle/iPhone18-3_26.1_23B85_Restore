@interface PDDPAttachmentEventDetails
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAttachmentType:(id)a3;
- (int)StringAsContextType:(id)a3;
- (int)attachmentType;
- (int)contextType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasContextType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPAttachmentEventDetails

- (int)attachmentType
{
  if (*&self->_has)
  {
    return self->_attachmentType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAttachmentType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"URL_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONTEXT_TYPE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ASSET_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"APP_TYPE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HAND_IN_REQUEST_TYPE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SURVEY_TYPE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ASSESSMENT_TYPE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)contextType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_contextType;
  }

  else
  {
    return -1;
  }
}

- (void)setHasContextType:(BOOL)a3
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

- (int)StringAsContextType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_CONTEXT_TYPE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"APP"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CHAPTER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SECTION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LEVEL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PAGE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TASK"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CHALLENGE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"QUIZ"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"EXERCISE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LESSON"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"BOOK"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"GAME"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"DOCUMENT"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"AUDIO"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"VIDEO"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"COURSE"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"CUSTOM"])
  {
    v4 = 17;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPAttachmentEventDetails;
  v3 = [(PDDPAttachmentEventDetails *)&v7 description];
  v4 = [(PDDPAttachmentEventDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  classId = self->_classId;
  if (classId)
  {
    [v3 setObject:classId forKey:@"class_id"];
  }

  handoutId = self->_handoutId;
  if (handoutId)
  {
    [v4 setObject:handoutId forKey:@"handout_id"];
  }

  attachmentId = self->_attachmentId;
  if (attachmentId)
  {
    [v4 setObject:attachmentId forKey:@"attachment_id"];
  }

  has = self->_has;
  if (has)
  {
    attachmentType = self->_attachmentType;
    if (attachmentType >= 8)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_attachmentType];
    }

    else
    {
      v10 = *(&off_100202A70 + attachmentType);
    }

    [v4 setObject:v10 forKey:@"attachment_type"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = self->_contextType + 1;
    if (v11 >= 0x13)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_contextType];
    }

    else
    {
      v12 = *(&off_100202AB0 + v11);
    }

    [v4 setObject:v12 forKey:@"context_type"];
  }

  eventRecipientId = self->_eventRecipientId;
  if (eventRecipientId)
  {
    [v4 setObject:eventRecipientId forKey:@"event_recipient_id"];
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [v4 setObject:appIdentifier forKey:@"app_identifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_handoutId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_attachmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    attachmentType = self->_attachmentType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    contextType = self->_contextType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_eventRecipientId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_classId)
  {
    [v4 setClassId:?];
    v4 = v6;
  }

  if (self->_handoutId)
  {
    [v6 setHandoutId:?];
    v4 = v6;
  }

  if (self->_attachmentId)
  {
    [v6 setAttachmentId:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 6) = self->_attachmentType;
    *(v4 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 10) = self->_contextType;
    *(v4 + 64) |= 2u;
  }

  if (self->_eventRecipientId)
  {
    [v6 setEventRecipientId:?];
    v4 = v6;
  }

  if (self->_appIdentifier)
  {
    [v6 setAppIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_classId copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_handoutId copyWithZone:a3];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSString *)self->_attachmentId copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 6) = self->_attachmentType;
    *(v5 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 10) = self->_contextType;
    *(v5 + 64) |= 2u;
  }

  v13 = [(NSString *)self->_eventRecipientId copyWithZone:a3];
  v14 = v5[6];
  v5[6] = v13;

  v15 = [(NSString *)self->_appIdentifier copyWithZone:a3];
  v16 = v5[1];
  v5[1] = v15;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  classId = self->_classId;
  if (classId | *(v4 + 4))
  {
    if (![(NSString *)classId isEqual:?])
    {
      goto LABEL_22;
    }
  }

  handoutId = self->_handoutId;
  if (handoutId | *(v4 + 7))
  {
    if (![(NSString *)handoutId isEqual:?])
    {
      goto LABEL_22;
    }
  }

  attachmentId = self->_attachmentId;
  if (attachmentId | *(v4 + 2))
  {
    if (![(NSString *)attachmentId isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v8 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_attachmentType != *(v4 + 6))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_contextType != *(v4 + 10))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_22;
  }

  eventRecipientId = self->_eventRecipientId;
  if (eventRecipientId | *(v4 + 6) && ![(NSString *)eventRecipientId isEqual:?])
  {
    goto LABEL_22;
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier | *(v4 + 1))
  {
    v11 = [(NSString *)appIdentifier isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_classId hash];
  v4 = [(NSString *)self->_handoutId hash];
  v5 = [(NSString *)self->_attachmentId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_attachmentType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_contextType;
LABEL_6:
  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSString *)self->_eventRecipientId hash];
  return v8 ^ v9 ^ [(NSString *)self->_appIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(PDDPAttachmentEventDetails *)self setClassId:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(PDDPAttachmentEventDetails *)self setHandoutId:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(PDDPAttachmentEventDetails *)self setAttachmentId:?];
    v4 = v6;
  }

  v5 = *(v4 + 64);
  if (v5)
  {
    self->_attachmentType = v4[6];
    *&self->_has |= 1u;
    v5 = *(v4 + 64);
  }

  if ((v5 & 2) != 0)
  {
    self->_contextType = v4[10];
    *&self->_has |= 2u;
  }

  if (*(v4 + 6))
  {
    [(PDDPAttachmentEventDetails *)self setEventRecipientId:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(PDDPAttachmentEventDetails *)self setAppIdentifier:?];
    v4 = v6;
  }
}

@end