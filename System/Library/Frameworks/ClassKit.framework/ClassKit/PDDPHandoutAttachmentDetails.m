@interface PDDPHandoutAttachmentDetails
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
  v7.super_class = PDDPHandoutAttachmentDetails;
  v3 = [(PDDPHandoutAttachmentDetails *)&v7 description];
  v4 = [(PDDPHandoutAttachmentDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
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
  if (self->_attachmentId)
  {
    [v4 setAttachmentId:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 6) = self->_attachmentType;
    *(v4 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 7) = self->_contextType;
    *(v4 + 32) |= 2u;
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
  v6 = [(NSString *)self->_attachmentId copyWithZone:a3];
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

  v9 = [(NSString *)self->_appIdentifier copyWithZone:a3];
  v10 = v5[1];
  v5[1] = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  attachmentId = self->_attachmentId;
  if (attachmentId | *(v4 + 2))
  {
    if (![(NSString *)attachmentId isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_attachmentType != *(v4 + 6))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_contextType != *(v4 + 7))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_16;
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(PDDPHandoutAttachmentDetails *)self setAttachmentId:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if (v5)
  {
    self->_attachmentType = v4[6];
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_contextType = v4[7];
    *&self->_has |= 2u;
  }

  if (*(v4 + 1))
  {
    [(PDDPHandoutAttachmentDetails *)self setAppIdentifier:?];
    v4 = v6;
  }
}

@end