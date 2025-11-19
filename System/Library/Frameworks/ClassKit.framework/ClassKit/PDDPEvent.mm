@interface PDDPEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventDetails:(id)a3;
- (int)StringAsEventDetailsType:(id)a3;
- (int)StringAsEventType:(id)a3;
- (int)eventDetails;
- (int)eventDetailsType;
- (int)eventType;
- (unint64_t)hash;
- (void)addExtraInfo:(id)a3;
- (void)clearOneofValuesForEventDetails;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setAttachmentEventDetails:(id)a3;
- (void)setHandoutEventDetails:(id)a3;
- (void)setHasEventDetailsType:(BOOL)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)setProgressEventDetails:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEvent

- (int)eventType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEventType:(BOOL)a3
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

- (int)StringAsEventType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_EVENT_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ASSIGN_HANDOUT_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UPDATE_HANDOUT_TYPE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TRY_AGAIN_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"REVIEW_ATTACHMENT_TYPE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CANCEL_TRY_AGAIN_TYPE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CANCEL_REVIEW_ATTACHMENT_TYPE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DELETE_HANDOUT_TYPE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"MARK_HANDOUT_DONE_TYPE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"OPEN_HANDOUT_TYPE"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"OPEN_ATTACHMENT_TYPE"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"MARK_DONE_TYPE"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"MARK_DONE_LATE_TYPE"])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:@"MARK_NOT_DONE_TYPE"])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:@"SCORE_TYPE"])
  {
    v4 = 201;
  }

  else if ([v3 isEqualToString:@"TIME_SPENT_TYPE"])
  {
    v4 = 202;
  }

  else if ([v3 isEqualToString:@"BINARY_TYPE"])
  {
    v4 = 203;
  }

  else if ([v3 isEqualToString:@"QUANTITY_TYPE"])
  {
    v4 = 204;
  }

  else if ([v3 isEqualToString:@"RANGE_TYPE"])
  {
    v4 = 205;
  }

  else if ([v3 isEqualToString:@"ACTIVITY_STARTED_TYPE"])
  {
    v4 = 206;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addExtraInfo:(id)a3
{
  v4 = a3;
  extraInfos = self->_extraInfos;
  v8 = v4;
  if (!extraInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_extraInfos;
    self->_extraInfos = v6;

    v4 = v8;
    extraInfos = self->_extraInfos;
  }

  [(NSMutableArray *)extraInfos addObject:v4];
}

- (int)eventDetailsType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_eventDetailsType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEventDetailsType:(BOOL)a3
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

- (int)StringAsEventDetailsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_EVENT_DETAILS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HANDOUT_EVENT_DETAILS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ATTACHMENT_EVENT_DETAILS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PROGRESS_EVENT_DETAILS"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHandoutEventDetails:(id)a3
{
  v4 = a3;
  [(PDDPEvent *)self clearOneofValuesForEventDetails];
  *&self->_has |= 1u;
  self->_eventDetails = 1;
  handoutEventDetails = self->_handoutEventDetails;
  self->_handoutEventDetails = v4;
}

- (void)setAttachmentEventDetails:(id)a3
{
  v4 = a3;
  [(PDDPEvent *)self clearOneofValuesForEventDetails];
  *&self->_has |= 1u;
  self->_eventDetails = 2;
  attachmentEventDetails = self->_attachmentEventDetails;
  self->_attachmentEventDetails = v4;
}

- (void)setProgressEventDetails:(id)a3
{
  v4 = a3;
  [(PDDPEvent *)self clearOneofValuesForEventDetails];
  *&self->_has |= 1u;
  self->_eventDetails = 3;
  progressEventDetails = self->_progressEventDetails;
  self->_progressEventDetails = v4;
}

- (int)eventDetails
{
  if (*&self->_has)
  {
    return self->_eventDetails;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsEventDetails:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"handout_event_details"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"attachment_event_details"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"progress_event_details"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForEventDetails
{
  *&self->_has &= ~1u;
  self->_eventDetails = 0;
  handoutEventDetails = self->_handoutEventDetails;
  self->_handoutEventDetails = 0;

  attachmentEventDetails = self->_attachmentEventDetails;
  self->_attachmentEventDetails = 0;

  progressEventDetails = self->_progressEventDetails;
  self->_progressEventDetails = 0;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEvent;
  v3 = [(PDDPEvent *)&v7 description];
  v4 = [(PDDPEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  if ((*&self->_has & 4) != 0)
  {
    eventType = self->_eventType;
    if (eventType > 101)
    {
      if (eventType > 201)
      {
        if (eventType <= 203)
        {
          if (eventType == 202)
          {
            v7 = @"TIME_SPENT_TYPE";
          }

          else
          {
            v7 = @"BINARY_TYPE";
          }

          goto LABEL_48;
        }

        if (eventType == 204)
        {
          v7 = @"QUANTITY_TYPE";
          goto LABEL_48;
        }

        if (eventType == 205)
        {
          v7 = @"RANGE_TYPE";
          goto LABEL_48;
        }

        if (eventType != 206)
        {
          goto LABEL_47;
        }

        v7 = @"ACTIVITY_STARTED_TYPE";
      }

      else
      {
        if (eventType <= 103)
        {
          if (eventType == 102)
          {
            v7 = @"OPEN_ATTACHMENT_TYPE";
          }

          else
          {
            v7 = @"MARK_DONE_TYPE";
          }

          goto LABEL_48;
        }

        if (eventType == 104)
        {
          v7 = @"MARK_DONE_LATE_TYPE";
          goto LABEL_48;
        }

        if (eventType == 105)
        {
          v7 = @"MARK_NOT_DONE_TYPE";
          goto LABEL_48;
        }

        if (eventType != 201)
        {
          goto LABEL_47;
        }

        v7 = @"SCORE_TYPE";
      }
    }

    else
    {
      if (eventType <= 4)
      {
        if (eventType > 1)
        {
          if (eventType == 2)
          {
            v7 = @"UPDATE_HANDOUT_TYPE";
          }

          else if (eventType == 3)
          {
            v7 = @"TRY_AGAIN_TYPE";
          }

          else
          {
            v7 = @"REVIEW_ATTACHMENT_TYPE";
          }

          goto LABEL_48;
        }

        if (!eventType)
        {
          v7 = @"UNKNOWN_EVENT_TYPE";
          goto LABEL_48;
        }

        if (eventType == 1)
        {
          v7 = @"ASSIGN_HANDOUT_TYPE";
          goto LABEL_48;
        }

LABEL_47:
        v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_eventType];
        goto LABEL_48;
      }

      if (eventType <= 6)
      {
        if (eventType == 5)
        {
          v7 = @"CANCEL_TRY_AGAIN_TYPE";
        }

        else
        {
          v7 = @"CANCEL_REVIEW_ATTACHMENT_TYPE";
        }

        goto LABEL_48;
      }

      if (eventType == 7)
      {
        v7 = @"DELETE_HANDOUT_TYPE";
        goto LABEL_48;
      }

      if (eventType == 8)
      {
        v7 = @"MARK_HANDOUT_DONE_TYPE";
        goto LABEL_48;
      }

      if (eventType != 101)
      {
        goto LABEL_47;
      }

      v7 = @"OPEN_HANDOUT_TYPE";
    }

LABEL_48:
    [v4 setObject:v7 forKey:@"event_type"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    v9 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v11 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"date_last_modified"];
  }

  if ([(NSMutableArray *)self->_extraInfos count])
  {
    v12 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_extraInfos, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = self->_extraInfos;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    [v4 setObject:v12 forKey:@"extra_info"];
  }

  if ((*&self->_has & 2) != 0)
  {
    eventDetailsType = self->_eventDetailsType;
    if (eventDetailsType >= 4)
    {
      v20 = [NSString stringWithFormat:@"(unknown: %i)", self->_eventDetailsType];
    }

    else
    {
      v20 = off_1002062F8[eventDetailsType];
    }

    [v4 setObject:v20 forKey:@"event_details_type"];
  }

  handoutEventDetails = self->_handoutEventDetails;
  if (handoutEventDetails)
  {
    v22 = [(PDDPHandoutEventDetails *)handoutEventDetails dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"handout_event_details"];
  }

  attachmentEventDetails = self->_attachmentEventDetails;
  if (attachmentEventDetails)
  {
    v24 = [(PDDPAttachmentEventDetails *)attachmentEventDetails dictionaryRepresentation];
    [v4 setObject:v24 forKey:@"attachment_event_details"];
  }

  progressEventDetails = self->_progressEventDetails;
  if (progressEventDetails)
  {
    v26 = [(PDDPProgressEventDetails *)progressEventDetails dictionaryRepresentation];
    [v4 setObject:v26 forKey:@"progress_event_details"];
  }

  if (*&self->_has)
  {
    eventDetails = self->_eventDetails;
    if (eventDetails >= 4)
    {
      v28 = [NSString stringWithFormat:@"(unknown: %i)", self->_eventDetails];
    }

    else
    {
      v28 = off_100206318[eventDetails];
    }

    [v4 setObject:v28 forKey:@"event_details"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_extraInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    eventDetailsType = self->_eventDetailsType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_handoutEventDetails)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_attachmentEventDetails)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_progressEventDetails)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_eventDetails;
    *(v4 + 80) |= 1u;
  }

  v10 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
    v4 = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[10] = self->_eventType;
    *(v4 + 80) |= 4u;
  }

  if (self->_dateCreated)
  {
    [v10 setDateCreated:?];
  }

  if (self->_dateLastModified)
  {
    [v10 setDateLastModified:?];
  }

  if ([(PDDPEvent *)self extraInfosCount])
  {
    [v10 clearExtraInfos];
    v5 = [(PDDPEvent *)self extraInfosCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPEvent *)self extraInfoAtIndex:i];
        [v10 addExtraInfo:v8];
      }
    }
  }

  v9 = v10;
  if ((*&self->_has & 2) != 0)
  {
    v10[9] = self->_eventDetailsType;
    *(v10 + 80) |= 2u;
  }

  if (self->_handoutEventDetails)
  {
    [v10 setHandoutEventDetails:?];
    v9 = v10;
  }

  if (self->_attachmentEventDetails)
  {
    [v10 setAttachmentEventDetails:?];
    v9 = v10;
  }

  if (self->_progressEventDetails)
  {
    [v10 setProgressEventDetails:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[8] = self->_eventDetails;
    *(v5 + 80) |= 1u;
  }

  v7 = [(NSString *)self->_objectId copyWithZone:a3];
  v8 = v6[8];
  v6[8] = v7;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 10) = self->_eventType;
    *(v6 + 80) |= 4u;
  }

  v9 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_extraInfos;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v26 + 1) + 8 * i) copyWithZone:{a3, v26}];
        [v6 addExtraInfo:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 9) = self->_eventDetailsType;
    *(v6 + 80) |= 2u;
  }

  v19 = [(PDDPHandoutEventDetails *)self->_handoutEventDetails copyWithZone:a3, v26];
  v20 = v6[7];
  v6[7] = v19;

  v21 = [(PDDPAttachmentEventDetails *)self->_attachmentEventDetails copyWithZone:a3];
  v22 = v6[1];
  v6[1] = v21;

  v23 = [(PDDPProgressEventDetails *)self->_progressEventDetails copyWithZone:a3];
  v24 = v6[9];
  v6[9] = v23;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(v4 + 80);
  if (has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_eventDetails != *(v4 + 8))
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_32;
  }

  objectId = self->_objectId;
  if (objectId | *(v4 + 8))
  {
    if (![(NSString *)objectId isEqual:?])
    {
LABEL_32:
      v15 = 0;
      goto LABEL_33;
    }

    has = self->_has;
    v6 = *(v4 + 80);
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_eventType != *(v4 + 10))
    {
      goto LABEL_32;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_32;
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 2) && ![(PDDPDate *)dateCreated isEqual:?])
  {
    goto LABEL_32;
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(v4 + 3))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_32;
    }
  }

  extraInfos = self->_extraInfos;
  if (extraInfos | *(v4 + 6))
  {
    if (![(NSMutableArray *)extraInfos isEqual:?])
    {
      goto LABEL_32;
    }
  }

  v11 = *(v4 + 80);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_eventDetailsType != *(v4 + 9))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_32;
  }

  handoutEventDetails = self->_handoutEventDetails;
  if (handoutEventDetails | *(v4 + 7) && ![(PDDPHandoutEventDetails *)handoutEventDetails isEqual:?])
  {
    goto LABEL_32;
  }

  attachmentEventDetails = self->_attachmentEventDetails;
  if (attachmentEventDetails | *(v4 + 1))
  {
    if (![(PDDPAttachmentEventDetails *)attachmentEventDetails isEqual:?])
    {
      goto LABEL_32;
    }
  }

  progressEventDetails = self->_progressEventDetails;
  if (progressEventDetails | *(v4 + 9))
  {
    v15 = [(PDDPProgressEventDetails *)progressEventDetails isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_33:

  return v15;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_eventDetails;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_objectId hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_eventType;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PDDPDate *)self->_dateCreated hash];
  v7 = [(PDDPDate *)self->_dateLastModified hash];
  v8 = [(NSMutableArray *)self->_extraInfos hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_eventDetailsType;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(PDDPHandoutEventDetails *)self->_handoutEventDetails hash];
  v11 = [(PDDPAttachmentEventDetails *)self->_attachmentEventDetails hash];
  return v10 ^ v11 ^ [(PDDPProgressEventDetails *)self->_progressEventDetails hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[20])
  {
    self->_eventDetails = v4[8];
    *&self->_has |= 1u;
  }

  if (*(v4 + 8))
  {
    [(PDDPEvent *)self setObjectId:?];
  }

  if ((*(v5 + 80) & 4) != 0)
  {
    self->_eventType = *(v5 + 10);
    *&self->_has |= 4u;
  }

  dateCreated = self->_dateCreated;
  v7 = *(v5 + 2);
  if (dateCreated)
  {
    if (v7)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPEvent *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v9 = *(v5 + 3);
  if (dateLastModified)
  {
    if (v9)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPEvent *)self setDateLastModified:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = *(v5 + 6);
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PDDPEvent *)self addExtraInfo:*(*(&v21 + 1) + 8 * i), v21];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  if ((*(v5 + 80) & 2) != 0)
  {
    self->_eventDetailsType = *(v5 + 9);
    *&self->_has |= 2u;
  }

  handoutEventDetails = self->_handoutEventDetails;
  v16 = *(v5 + 7);
  if (handoutEventDetails)
  {
    if (v16)
    {
      [(PDDPHandoutEventDetails *)handoutEventDetails mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(PDDPEvent *)self setHandoutEventDetails:?];
  }

  attachmentEventDetails = self->_attachmentEventDetails;
  v18 = *(v5 + 1);
  if (attachmentEventDetails)
  {
    if (v18)
    {
      [(PDDPAttachmentEventDetails *)attachmentEventDetails mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(PDDPEvent *)self setAttachmentEventDetails:?];
  }

  progressEventDetails = self->_progressEventDetails;
  v20 = *(v5 + 9);
  if (progressEventDetails)
  {
    if (v20)
    {
      [(PDDPProgressEventDetails *)progressEventDetails mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(PDDPEvent *)self setProgressEventDetails:?];
  }
}

@end