@interface PDDPHandoutAuthorizedMetaInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAttachmentType:(id)a3;
- (int)attachmentType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPHandoutAuthorizedMetaInfo

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

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPHandoutAuthorizedMetaInfo;
  v3 = [(PDDPHandoutAuthorizedMetaInfo *)&v7 description];
  v4 = [(PDDPHandoutAuthorizedMetaInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    attachmentType = self->_attachmentType;
    if (attachmentType >= 8)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_attachmentType];
    }

    else
    {
      v5 = *(&off_100206740 + attachmentType);
    }

    [v3 setObject:v5 forKey:@"attachment_type"];
  }

  attachmentId = self->_attachmentId;
  if (attachmentId)
  {
    [v3 setObject:attachmentId forKey:@"attachment_id"];
  }

  handoutAuthorizedObjectId = self->_handoutAuthorizedObjectId;
  if (handoutAuthorizedObjectId)
  {
    [v3 setObject:handoutAuthorizedObjectId forKey:@"handout_authorized_object_id"];
  }

  classId = self->_classId;
  if (classId)
  {
    [v3 setObject:classId forKey:@"class_id"];
  }

  handoutId = self->_handoutId;
  if (handoutId)
  {
    [v3 setObject:handoutId forKey:@"handout_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    attachmentType = self->_attachmentType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_attachmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_handoutAuthorizedObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_handoutId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_attachmentType;
    *(v4 + 48) |= 1u;
  }

  v5 = v4;
  if (self->_attachmentId)
  {
    [v4 setAttachmentId:?];
    v4 = v5;
  }

  if (self->_handoutAuthorizedObjectId)
  {
    [v5 setHandoutAuthorizedObjectId:?];
    v4 = v5;
  }

  if (self->_classId)
  {
    [v5 setClassId:?];
    v4 = v5;
  }

  if (self->_handoutId)
  {
    [v5 setHandoutId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_attachmentType;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_attachmentId copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_handoutAuthorizedObjectId copyWithZone:a3];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(NSString *)self->_classId copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(NSString *)self->_handoutId copyWithZone:a3];
  v14 = v6[5];
  v6[5] = v13;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_attachmentType != *(v4 + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  attachmentId = self->_attachmentId;
  if (attachmentId | *(v4 + 1) && ![(NSString *)attachmentId isEqual:?])
  {
    goto LABEL_15;
  }

  handoutAuthorizedObjectId = self->_handoutAuthorizedObjectId;
  if (handoutAuthorizedObjectId | *(v4 + 4))
  {
    if (![(NSString *)handoutAuthorizedObjectId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  classId = self->_classId;
  if (classId | *(v4 + 3))
  {
    if (![(NSString *)classId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  handoutId = self->_handoutId;
  if (handoutId | *(v4 + 5))
  {
    v10 = [(NSString *)handoutId isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_attachmentType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_attachmentId hash]^ v3;
  v5 = [(NSString *)self->_handoutAuthorizedObjectId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_classId hash];
  return v6 ^ [(NSString *)self->_handoutId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[12])
  {
    self->_attachmentType = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(PDDPHandoutAuthorizedMetaInfo *)self setAttachmentId:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(PDDPHandoutAuthorizedMetaInfo *)self setHandoutAuthorizedObjectId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(PDDPHandoutAuthorizedMetaInfo *)self setClassId:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(PDDPHandoutAuthorizedMetaInfo *)self setHandoutId:?];
    v4 = v5;
  }
}

@end