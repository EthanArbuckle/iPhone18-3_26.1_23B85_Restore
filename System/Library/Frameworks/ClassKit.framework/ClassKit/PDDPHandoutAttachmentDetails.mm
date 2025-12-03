@interface PDDPHandoutAttachmentDetails
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

@implementation PDDPHandoutAttachmentDetails

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
  v7.super_class = PDDPHandoutAttachmentDetails;
  v3 = [(PDDPHandoutAttachmentDetails *)&v7 description];
  dictionaryRepresentation = [(PDDPHandoutAttachmentDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  attachmentId = self->_attachmentId;
  if (attachmentId)
  {
    [v3 setObject:attachmentId forKey:@"attachment_id"];
  }

  has = self->_has;
  if (has)
  {
    attachmentType = self->_attachmentType;
    if (attachmentType >= 8)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_attachmentType];
    }

    else
    {
      v8 = off_100205490[attachmentType];
    }

    [v4 setObject:v8 forKey:@"attachment_type"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = self->_contextType + 1;
    if (v9 >= 0x13)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_contextType];
    }

    else
    {
      v10 = off_1002054D0[v9];
    }

    [v4 setObject:v10 forKey:@"context_type"];
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
  if (self->_attachmentId)
  {
    [toCopy setAttachmentId:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 6) = self->_attachmentType;
    *(toCopy + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 7) = self->_contextType;
    *(toCopy + 32) |= 2u;
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
  v6 = [(NSString *)self->_attachmentId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 6) = self->_attachmentType;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 7) = self->_contextType;
    *(v5 + 32) |= 2u;
  }

  v9 = [(NSString *)self->_appIdentifier copyWithZone:zone];
  v10 = v5[1];
  v5[1] = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  attachmentId = self->_attachmentId;
  if (attachmentId | *(equalCopy + 2))
  {
    if (![(NSString *)attachmentId isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_attachmentType != *(equalCopy + 6))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_contextType != *(equalCopy + 7))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_16;
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier | *(equalCopy + 1))
  {
    v8 = [(NSString *)appIdentifier isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_attachmentId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_attachmentType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSString *)self->_appIdentifier hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_contextType;
  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_appIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PDDPHandoutAttachmentDetails *)self setAttachmentId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_attachmentType = fromCopy[6];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_contextType = fromCopy[7];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(PDDPHandoutAttachmentDetails *)self setAppIdentifier:?];
    fromCopy = v6;
  }
}

@end