@interface PDDPProgressEventDetails
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAttachmentType:(id)a3;
- (int)StringAsContextType:(id)a3;
- (int)StringAsProgressInfo:(id)a3;
- (int)attachmentType;
- (int)contextType;
- (int)progressInfo;
- (unint64_t)hash;
- (void)clearOneofValuesForProgressInfo;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setActivityInfo:(id)a3;
- (void)setActivityItemInfo:(id)a3;
- (void)setHasContextType:(BOOL)a3;
- (void)setHasProgressInfo:(BOOL)a3;
- (void)setRangeInfo:(id)a3;
- (void)setTimeIntervalInfo:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPProgressEventDetails

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

- (void)setActivityItemInfo:(id)a3
{
  v4 = a3;
  [(PDDPProgressEventDetails *)self clearOneofValuesForProgressInfo];
  *&self->_has |= 4u;
  self->_progressInfo = 1;
  activityItemInfo = self->_activityItemInfo;
  self->_activityItemInfo = v4;
}

- (void)setRangeInfo:(id)a3
{
  v4 = a3;
  [(PDDPProgressEventDetails *)self clearOneofValuesForProgressInfo];
  *&self->_has |= 4u;
  self->_progressInfo = 2;
  rangeInfo = self->_rangeInfo;
  self->_rangeInfo = v4;
}

- (void)setTimeIntervalInfo:(id)a3
{
  v4 = a3;
  [(PDDPProgressEventDetails *)self clearOneofValuesForProgressInfo];
  *&self->_has |= 4u;
  self->_progressInfo = 3;
  timeIntervalInfo = self->_timeIntervalInfo;
  self->_timeIntervalInfo = v4;
}

- (void)setActivityInfo:(id)a3
{
  v4 = a3;
  [(PDDPProgressEventDetails *)self clearOneofValuesForProgressInfo];
  *&self->_has |= 4u;
  self->_progressInfo = 4;
  activityInfo = self->_activityInfo;
  self->_activityInfo = v4;
}

- (int)progressInfo
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_progressInfo;
  }

  else
  {
    return 0;
  }
}

- (void)setHasProgressInfo:(BOOL)a3
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

- (int)StringAsProgressInfo:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"activity_item_info"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"range_info"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"time_interval_info"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"activity_info"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForProgressInfo
{
  *&self->_has &= ~4u;
  self->_progressInfo = 0;
  activityItemInfo = self->_activityItemInfo;
  self->_activityItemInfo = 0;

  rangeInfo = self->_rangeInfo;
  self->_rangeInfo = 0;

  timeIntervalInfo = self->_timeIntervalInfo;
  self->_timeIntervalInfo = 0;

  activityInfo = self->_activityInfo;
  self->_activityInfo = 0;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPProgressEventDetails;
  v3 = [(PDDPProgressEventDetails *)&v7 description];
  v4 = [(PDDPProgressEventDetails *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v9 = self->_contextType + 1;
    if (v9 >= 0x13)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_contextType];
    }

    else
    {
      v10 = off_1002061F8[v9];
    }

    [v4 setObject:v10 forKey:@"context_type"];

    has = self->_has;
  }

  if (has)
  {
    attachmentType = self->_attachmentType;
    if (attachmentType >= 8)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_attachmentType];
    }

    else
    {
      v12 = off_100206290[attachmentType];
    }

    [v4 setObject:v12 forKey:@"attachment_type"];
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId)
  {
    [v4 setObject:parentObjectId forKey:@"parent_object_id"];
  }

  objectIdPath = self->_objectIdPath;
  if (objectIdPath)
  {
    [v4 setObject:objectIdPath forKey:@"object_id_path"];
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [v4 setObject:appIdentifier forKey:@"app_identifier"];
  }

  handoutAuthorizedObjectId = self->_handoutAuthorizedObjectId;
  if (handoutAuthorizedObjectId)
  {
    [v4 setObject:handoutAuthorizedObjectId forKey:@"handout_authorized_object_id"];
  }

  activityItemInfo = self->_activityItemInfo;
  if (activityItemInfo)
  {
    v18 = [(PDDPActivityReportItem *)activityItemInfo dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"activity_item_info"];
  }

  rangeInfo = self->_rangeInfo;
  if (rangeInfo)
  {
    v20 = [(PDDPRange *)rangeInfo dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"range_info"];
  }

  timeIntervalInfo = self->_timeIntervalInfo;
  if (timeIntervalInfo)
  {
    v22 = [(PDDPTimeIntervalInfo *)timeIntervalInfo dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"time_interval_info"];
  }

  activityInfo = self->_activityInfo;
  if (activityInfo)
  {
    v24 = [(PDDPActivityInfo *)activityInfo dictionaryRepresentation];
    [v4 setObject:v24 forKey:@"activity_info"];
  }

  if ((*&self->_has & 4) != 0)
  {
    progressInfo = self->_progressInfo;
    if (progressInfo >= 5)
    {
      v26 = [NSString stringWithFormat:@"(unknown: %i)", self->_progressInfo];
    }

    else
    {
      v26 = off_1002062D0[progressInfo];
    }

    [v4 setObject:v26 forKey:@"progress_info"];
  }

  activityId = self->_activityId;
  if (activityId)
  {
    [v4 setObject:activityId forKey:@"activity_id"];
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
  if ((has & 2) != 0)
  {
    contextType = self->_contextType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    attachmentType = self->_attachmentType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_objectIdPath)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_handoutAuthorizedObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_activityItemInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_rangeInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_timeIntervalInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_activityInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_activityId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[26] = self->_progressInfo;
    *(v4 + 128) |= 4u;
  }

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
  if ((has & 2) != 0)
  {
    v4[16] = self->_contextType;
    *(v4 + 128) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[12] = self->_attachmentType;
    *(v4 + 128) |= 1u;
  }

  if (self->_parentObjectId)
  {
    [v6 setParentObjectId:?];
    v4 = v6;
  }

  if (self->_objectIdPath)
  {
    [v6 setObjectIdPath:?];
    v4 = v6;
  }

  if (self->_appIdentifier)
  {
    [v6 setAppIdentifier:?];
    v4 = v6;
  }

  if (self->_handoutAuthorizedObjectId)
  {
    [v6 setHandoutAuthorizedObjectId:?];
    v4 = v6;
  }

  if (self->_activityItemInfo)
  {
    [v6 setActivityItemInfo:?];
    v4 = v6;
  }

  if (self->_rangeInfo)
  {
    [v6 setRangeInfo:?];
    v4 = v6;
  }

  if (self->_timeIntervalInfo)
  {
    [v6 setTimeIntervalInfo:?];
    v4 = v6;
  }

  if (self->_activityInfo)
  {
    [v6 setActivityInfo:?];
    v4 = v6;
  }

  if (self->_activityId)
  {
    [v6 setActivityId:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[26] = self->_progressInfo;
    *(v5 + 128) |= 4u;
  }

  v7 = [(NSString *)self->_classId copyWithZone:a3];
  v8 = v6[7];
  v6[7] = v7;

  v9 = [(NSString *)self->_handoutId copyWithZone:a3];
  v10 = v6[10];
  v6[10] = v9;

  v11 = [(NSString *)self->_attachmentId copyWithZone:a3];
  v12 = v6[5];
  v6[5] = v11;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_contextType;
    *(v6 + 128) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 12) = self->_attachmentType;
    *(v6 + 128) |= 1u;
  }

  v14 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v15 = v6[12];
  v6[12] = v14;

  v16 = [(NSString *)self->_objectIdPath copyWithZone:a3];
  v17 = v6[11];
  v6[11] = v16;

  v18 = [(NSString *)self->_appIdentifier copyWithZone:a3];
  v19 = v6[4];
  v6[4] = v18;

  v20 = [(NSString *)self->_handoutAuthorizedObjectId copyWithZone:a3];
  v21 = v6[9];
  v6[9] = v20;

  v22 = [(PDDPActivityReportItem *)self->_activityItemInfo copyWithZone:a3];
  v23 = v6[3];
  v6[3] = v22;

  v24 = [(PDDPRange *)self->_rangeInfo copyWithZone:a3];
  v25 = v6[14];
  v6[14] = v24;

  v26 = [(PDDPTimeIntervalInfo *)self->_timeIntervalInfo copyWithZone:a3];
  v27 = v6[15];
  v6[15] = v26;

  v28 = [(PDDPActivityInfo *)self->_activityInfo copyWithZone:a3];
  v29 = v6[2];
  v6[2] = v28;

  v30 = [(NSString *)self->_activityId copyWithZone:a3];
  v31 = v6[1];
  v6[1] = v30;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  v5 = *(v4 + 128);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 128) & 4) == 0 || self->_progressInfo != *(v4 + 26))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 128) & 4) != 0)
  {
LABEL_41:
    v19 = 0;
    goto LABEL_42;
  }

  classId = self->_classId;
  if (classId | *(v4 + 7) && ![(NSString *)classId isEqual:?])
  {
    goto LABEL_41;
  }

  handoutId = self->_handoutId;
  if (handoutId | *(v4 + 10))
  {
    if (![(NSString *)handoutId isEqual:?])
    {
      goto LABEL_41;
    }
  }

  attachmentId = self->_attachmentId;
  if (attachmentId | *(v4 + 5))
  {
    if (![(NSString *)attachmentId isEqual:?])
    {
      goto LABEL_41;
    }
  }

  v9 = *(v4 + 128);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 128) & 2) == 0 || self->_contextType != *(v4 + 16))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 128) & 2) != 0)
  {
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 128) & 1) == 0 || self->_attachmentType != *(v4 + 12))
    {
      goto LABEL_41;
    }
  }

  else if (*(v4 + 128))
  {
    goto LABEL_41;
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(v4 + 12) && ![(NSString *)parentObjectId isEqual:?])
  {
    goto LABEL_41;
  }

  objectIdPath = self->_objectIdPath;
  if (objectIdPath | *(v4 + 11))
  {
    if (![(NSString *)objectIdPath isEqual:?])
    {
      goto LABEL_41;
    }
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier | *(v4 + 4))
  {
    if (![(NSString *)appIdentifier isEqual:?])
    {
      goto LABEL_41;
    }
  }

  handoutAuthorizedObjectId = self->_handoutAuthorizedObjectId;
  if (handoutAuthorizedObjectId | *(v4 + 9))
  {
    if (![(NSString *)handoutAuthorizedObjectId isEqual:?])
    {
      goto LABEL_41;
    }
  }

  activityItemInfo = self->_activityItemInfo;
  if (activityItemInfo | *(v4 + 3))
  {
    if (![(PDDPActivityReportItem *)activityItemInfo isEqual:?])
    {
      goto LABEL_41;
    }
  }

  rangeInfo = self->_rangeInfo;
  if (rangeInfo | *(v4 + 14))
  {
    if (![(PDDPRange *)rangeInfo isEqual:?])
    {
      goto LABEL_41;
    }
  }

  timeIntervalInfo = self->_timeIntervalInfo;
  if (timeIntervalInfo | *(v4 + 15))
  {
    if (![(PDDPTimeIntervalInfo *)timeIntervalInfo isEqual:?])
    {
      goto LABEL_41;
    }
  }

  activityInfo = self->_activityInfo;
  if (activityInfo | *(v4 + 2))
  {
    if (![(PDDPActivityInfo *)activityInfo isEqual:?])
    {
      goto LABEL_41;
    }
  }

  activityId = self->_activityId;
  if (activityId | *(v4 + 1))
  {
    v19 = [(NSString *)activityId isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_42:

  return v19;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_progressInfo;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_classId hash];
  v5 = [(NSString *)self->_handoutId hash];
  v6 = [(NSString *)self->_attachmentId hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_contextType;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 2654435761 * self->_attachmentType;
LABEL_9:
  v9 = v4 ^ v3 ^ v5 ^ v6;
  v10 = v7 ^ v8 ^ [(NSString *)self->_parentObjectId hash];
  v11 = v9 ^ v10 ^ [(NSString *)self->_objectIdPath hash];
  v12 = [(NSString *)self->_appIdentifier hash];
  v13 = v12 ^ [(NSString *)self->_handoutAuthorizedObjectId hash];
  v14 = v13 ^ [(PDDPActivityReportItem *)self->_activityItemInfo hash];
  v15 = v11 ^ v14 ^ [(PDDPRange *)self->_rangeInfo hash];
  v16 = [(PDDPTimeIntervalInfo *)self->_timeIntervalInfo hash];
  v17 = v16 ^ [(PDDPActivityInfo *)self->_activityInfo hash];
  return v15 ^ v17 ^ [(NSString *)self->_activityId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[32] & 4) != 0)
  {
    self->_progressInfo = v4[26];
    *&self->_has |= 4u;
  }

  v15 = v4;
  if (*(v4 + 7))
  {
    [(PDDPProgressEventDetails *)self setClassId:?];
    v5 = v15;
  }

  if (*(v5 + 10))
  {
    [(PDDPProgressEventDetails *)self setHandoutId:?];
    v5 = v15;
  }

  if (*(v5 + 5))
  {
    [(PDDPProgressEventDetails *)self setAttachmentId:?];
    v5 = v15;
  }

  v6 = *(v5 + 128);
  if ((v6 & 2) != 0)
  {
    self->_contextType = v5[16];
    *&self->_has |= 2u;
    v6 = *(v5 + 128);
  }

  if (v6)
  {
    self->_attachmentType = v5[12];
    *&self->_has |= 1u;
  }

  if (*(v5 + 12))
  {
    [(PDDPProgressEventDetails *)self setParentObjectId:?];
    v5 = v15;
  }

  if (*(v5 + 11))
  {
    [(PDDPProgressEventDetails *)self setObjectIdPath:?];
    v5 = v15;
  }

  if (*(v5 + 4))
  {
    [(PDDPProgressEventDetails *)self setAppIdentifier:?];
    v5 = v15;
  }

  if (*(v5 + 9))
  {
    [(PDDPProgressEventDetails *)self setHandoutAuthorizedObjectId:?];
    v5 = v15;
  }

  activityItemInfo = self->_activityItemInfo;
  v8 = *(v5 + 3);
  if (activityItemInfo)
  {
    if (!v8)
    {
      goto LABEL_27;
    }

    [(PDDPActivityReportItem *)activityItemInfo mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_27;
    }

    [(PDDPProgressEventDetails *)self setActivityItemInfo:?];
  }

  v5 = v15;
LABEL_27:
  rangeInfo = self->_rangeInfo;
  v10 = *(v5 + 14);
  if (rangeInfo)
  {
    if (!v10)
    {
      goto LABEL_33;
    }

    [(PDDPRange *)rangeInfo mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_33;
    }

    [(PDDPProgressEventDetails *)self setRangeInfo:?];
  }

  v5 = v15;
LABEL_33:
  timeIntervalInfo = self->_timeIntervalInfo;
  v12 = *(v5 + 15);
  if (timeIntervalInfo)
  {
    if (!v12)
    {
      goto LABEL_39;
    }

    [(PDDPTimeIntervalInfo *)timeIntervalInfo mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_39;
    }

    [(PDDPProgressEventDetails *)self setTimeIntervalInfo:?];
  }

  v5 = v15;
LABEL_39:
  activityInfo = self->_activityInfo;
  v14 = *(v5 + 2);
  if (activityInfo)
  {
    if (!v14)
    {
      goto LABEL_45;
    }

    activityInfo = [(PDDPActivityInfo *)activityInfo mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_45;
    }

    activityInfo = [(PDDPProgressEventDetails *)self setActivityInfo:?];
  }

  v5 = v15;
LABEL_45:
  if (*(v5 + 1))
  {
    activityInfo = [(PDDPProgressEventDetails *)self setActivityId:?];
    v5 = v15;
  }

  _objc_release_x1(activityInfo, v5);
}

@end