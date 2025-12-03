@interface PDDPAttachmentEventDetails
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAttachmentType:(id)type;
- (int)StringAsContextType:(id)type;
- (int)attachmentType;
- (int)contextType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasContextType:(BOOL)type;
- (void)writeTo:(id)to;
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

- (int)StringAsAttachmentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"URL_TYPE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CONTEXT_TYPE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ASSET_TYPE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"APP_TYPE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"HAND_IN_REQUEST_TYPE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"SURVEY_TYPE"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"ASSESSMENT_TYPE"])
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

- (void)setHasContextType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsContextType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_CONTEXT_TYPE"])
  {
    v4 = -1;
  }

  else if ([typeCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"APP"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CHAPTER"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SECTION"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"LEVEL"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"PAGE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"TASK"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"CHALLENGE"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"QUIZ"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"EXERCISE"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"LESSON"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"BOOK"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"GAME"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"DOCUMENT"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"AUDIO"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"VIDEO"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"COURSE"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"CUSTOM"])
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
  dictionaryRepresentation = [(PDDPAttachmentEventDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_handoutId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_attachmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    attachmentType = self->_attachmentType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    contextType = self->_contextType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_eventRecipientId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_classId)
  {
    [toCopy setClassId:?];
    toCopy = v6;
  }

  if (self->_handoutId)
  {
    [v6 setHandoutId:?];
    toCopy = v6;
  }

  if (self->_attachmentId)
  {
    [v6 setAttachmentId:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 6) = self->_attachmentType;
    *(toCopy + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 10) = self->_contextType;
    *(toCopy + 64) |= 2u;
  }

  if (self->_eventRecipientId)
  {
    [v6 setEventRecipientId:?];
    toCopy = v6;
  }

  if (self->_appIdentifier)
  {
    [v6 setAppIdentifier:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_classId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_handoutId copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSString *)self->_attachmentId copyWithZone:zone];
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

  v13 = [(NSString *)self->_eventRecipientId copyWithZone:zone];
  v14 = v5[6];
  v5[6] = v13;

  v15 = [(NSString *)self->_appIdentifier copyWithZone:zone];
  v16 = v5[1];
  v5[1] = v15;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  classId = self->_classId;
  if (classId | *(equalCopy + 4))
  {
    if (![(NSString *)classId isEqual:?])
    {
      goto LABEL_22;
    }
  }

  handoutId = self->_handoutId;
  if (handoutId | *(equalCopy + 7))
  {
    if (![(NSString *)handoutId isEqual:?])
    {
      goto LABEL_22;
    }
  }

  attachmentId = self->_attachmentId;
  if (attachmentId | *(equalCopy + 2))
  {
    if (![(NSString *)attachmentId isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v8 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_attachmentType != *(equalCopy + 6))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_contextType != *(equalCopy + 10))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_22;
  }

  eventRecipientId = self->_eventRecipientId;
  if (eventRecipientId | *(equalCopy + 6) && ![(NSString *)eventRecipientId isEqual:?])
  {
    goto LABEL_22;
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PDDPAttachmentEventDetails *)self setClassId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(PDDPAttachmentEventDetails *)self setHandoutId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(PDDPAttachmentEventDetails *)self setAttachmentId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 64);
  if (v5)
  {
    self->_attachmentType = fromCopy[6];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 64);
  }

  if ((v5 & 2) != 0)
  {
    self->_contextType = fromCopy[10];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 6))
  {
    [(PDDPAttachmentEventDetails *)self setEventRecipientId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(PDDPAttachmentEventDetails *)self setAppIdentifier:?];
    fromCopy = v6;
  }
}

@end