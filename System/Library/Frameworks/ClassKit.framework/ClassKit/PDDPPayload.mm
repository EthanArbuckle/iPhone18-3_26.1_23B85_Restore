@interface PDDPPayload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)action;
- (int)StringAsType:(id)type;
- (int)action;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAction:(BOOL)action;
- (void)setHasPayloadSize:(BOOL)size;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PDDPPayload

- (void)setHasPayloadSize:(BOOL)size
{
  if (size)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)type
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"STATUS"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"HANDOUT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ATTACHMENT"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"RECIPIENT"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CLASS"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"PERSON"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"CLASS_MEMBER"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"CLASS_ZONE"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"ASSET"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"AUTHORIZATION_STATUS"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"COMPLETION_STATUS"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"STATE_CHANGE"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"COLLECTION"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"COLLECTION_ITEM"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"ARCHIVED_HANDOUT"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"ARCHIVED_HANDOUT_ATTACHMENT"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"ARCHIVED_ASSET_REFERENCE"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"SURVEY"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"SURVEY_STEP"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"SURVEY_STEP_ANSWER"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"ARCHIVED_SURVEY"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"ARCHIVED_SURVEY_STEP"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"SCHEDULE"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"SCHEDULED_EVENT"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"ASSESSMENT"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"TAKER_WORK"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"ARCHIVED_ASSESSMENT"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"RETURNED_HANDOUT"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"RETURNED_ATTACHMENT"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"RETURNED_ASSESSMENT"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"RETURNED_TAKER_WORK"])
  {
    v4 = 38;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)action
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAction:(BOOL)action
{
  if (action)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"UNKNOWN_ACTION"])
  {
    v4 = 0;
  }

  else if ([actionCopy isEqualToString:@"CREATE"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"CHANGE"])
  {
    v4 = 2;
  }

  else if ([actionCopy isEqualToString:@"DELETE"])
  {
    v4 = 3;
  }

  else if ([actionCopy isEqualToString:@"REPLACE"])
  {
    v4 = 4;
  }

  else if ([actionCopy isEqualToString:@"REPAIR"])
  {
    v4 = 5;
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
  v7.super_class = PDDPPayload;
  v3 = [(PDDPPayload *)&v7 description];
  dictionaryRepresentation = [(PDDPPayload *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [NSNumber numberWithInt:self->_payloadSize];
    [v3 setObject:v5 forKey:@"payload_size"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    type = self->_type;
    if (type < 0x27 && ((0x7FFFFE91DFuLL >> type) & 1) != 0)
    {
      v7 = off_100205DA0[type];
    }

    else
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    [v3 setObject:v7 forKey:@"type"];
  }

  status = self->_status;
  if (status)
  {
    dictionaryRepresentation = [(PDDPStatus *)status dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"status"];
  }

  handout = self->_handout;
  if (handout)
  {
    dictionaryRepresentation2 = [(PDDPHandout *)handout dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"handout"];
  }

  attachment = self->_attachment;
  if (attachment)
  {
    dictionaryRepresentation3 = [(PDDPHandoutAttachment *)attachment dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"attachment"];
  }

  recipient = self->_recipient;
  if (recipient)
  {
    dictionaryRepresentation4 = [(PDDPHandoutRecipient *)recipient dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"recipient"];
  }

  classInfo = self->_classInfo;
  if (classInfo)
  {
    dictionaryRepresentation5 = [(PDDPClass *)classInfo dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"class_info"];
  }

  person = self->_person;
  if (person)
  {
    dictionaryRepresentation6 = [(PDDPPerson *)person dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation6 forKey:@"person"];
  }

  classMember = self->_classMember;
  if (classMember)
  {
    dictionaryRepresentation7 = [(PDDPClassMember *)classMember dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation7 forKey:@"class_member"];
  }

  classZone = self->_classZone;
  if (classZone)
  {
    dictionaryRepresentation8 = [(PDDPClassZone *)classZone dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation8 forKey:@"class_zone"];
  }

  asset = self->_asset;
  if (asset)
  {
    dictionaryRepresentation9 = [(PDDPAssetReference *)asset dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation9 forKey:@"asset"];
  }

  authStatus = self->_authStatus;
  if (authStatus)
  {
    dictionaryRepresentation10 = [(PDDPAuthorizationStatus *)authStatus dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation10 forKey:@"auth_status"];
  }

  completionStatus = self->_completionStatus;
  if (completionStatus)
  {
    dictionaryRepresentation11 = [(PDDPCompletionStatus *)completionStatus dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation11 forKey:@"completion_status"];
  }

  if ((*&self->_has & 2) != 0)
  {
    action = self->_action;
    if (action >= 6)
    {
      v31 = [NSString stringWithFormat:@"(unknown: %i)", self->_action];
    }

    else
    {
      v31 = off_100205ED8[action];
    }

    [v3 setObject:v31 forKey:@"action"];
  }

  stateChange = self->_stateChange;
  if (stateChange)
  {
    dictionaryRepresentation12 = [(PDDPStateChange *)stateChange dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation12 forKey:@"state_change"];
  }

  queryZone = self->_queryZone;
  if (queryZone)
  {
    dictionaryRepresentation13 = [(PDDPSchoolworkQueryZone *)queryZone dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation13 forKey:@"query_zone"];
  }

  collection = self->_collection;
  if (collection)
  {
    dictionaryRepresentation14 = [(PDDPCollection *)collection dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation14 forKey:@"collection"];
  }

  collectionItem = self->_collectionItem;
  if (collectionItem)
  {
    dictionaryRepresentation15 = [(PDDPCollectionItem *)collectionItem dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation15 forKey:@"collection_item"];
  }

  survey = self->_survey;
  if (survey)
  {
    dictionaryRepresentation16 = [(PDDPSurvey *)survey dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation16 forKey:@"survey"];
  }

  surveyStep = self->_surveyStep;
  if (surveyStep)
  {
    dictionaryRepresentation17 = [(PDDPSurveyStep *)surveyStep dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation17 forKey:@"survey_step"];
  }

  surveyStepAnswer = self->_surveyStepAnswer;
  if (surveyStepAnswer)
  {
    dictionaryRepresentation18 = [(PDDPSurveyStepAnswer *)surveyStepAnswer dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation18 forKey:@"survey_step_answer"];
  }

  if (*&self->_has)
  {
    v46 = [NSNumber numberWithUnsignedLongLong:self->_actionFlags];
    [v3 setObject:v46 forKey:@"action_flags"];
  }

  schedule = self->_schedule;
  if (schedule)
  {
    dictionaryRepresentation19 = [(PDDPSchedule *)schedule dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation19 forKey:@"schedule"];
  }

  scheduledEvent = self->_scheduledEvent;
  if (scheduledEvent)
  {
    dictionaryRepresentation20 = [(PDDPScheduledEvent *)scheduledEvent dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation20 forKey:@"scheduled_event"];
  }

  assessment = self->_assessment;
  if (assessment)
  {
    dictionaryRepresentation21 = [(PDDPAssessment *)assessment dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation21 forKey:@"assessment"];
  }

  takerWork = self->_takerWork;
  if (takerWork)
  {
    dictionaryRepresentation22 = [(PDDPTakerWork *)takerWork dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation22 forKey:@"taker_work"];
  }

  v55 = v3;

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v10 = toCopy;
  if ((has & 4) != 0)
  {
    payloadSize = self->_payloadSize;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_handout)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_attachment)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_recipient)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_classInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_person)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_classMember)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_classZone)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_asset)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_authStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_completionStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    action = self->_action;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
  }

  if (self->_stateChange)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_queryZone)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_collection)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_collectionItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_survey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_surveyStep)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_surveyStepAnswer)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (*&self->_has)
  {
    actionFlags = self->_actionFlags;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
  }

  if (self->_schedule)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_scheduledEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_assessment)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_takerWork)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[28] = self->_payloadSize;
    *(toCopy + 212) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    toCopy[52] = self->_type;
    *(toCopy + 212) |= 8u;
  }

  v6 = toCopy;
  if (self->_status)
  {
    [toCopy setStatus:?];
    toCopy = v6;
  }

  if (self->_handout)
  {
    [v6 setHandout:?];
    toCopy = v6;
  }

  if (self->_attachment)
  {
    [v6 setAttachment:?];
    toCopy = v6;
  }

  if (self->_recipient)
  {
    [v6 setRecipient:?];
    toCopy = v6;
  }

  if (self->_classInfo)
  {
    [v6 setClassInfo:?];
    toCopy = v6;
  }

  if (self->_person)
  {
    [v6 setPerson:?];
    toCopy = v6;
  }

  if (self->_classMember)
  {
    [v6 setClassMember:?];
    toCopy = v6;
  }

  if (self->_classZone)
  {
    [v6 setClassZone:?];
    toCopy = v6;
  }

  if (self->_asset)
  {
    [v6 setAsset:?];
    toCopy = v6;
  }

  if (self->_authStatus)
  {
    [v6 setAuthStatus:?];
    toCopy = v6;
  }

  if (self->_completionStatus)
  {
    [v6 setCompletionStatus:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[4] = self->_action;
    *(toCopy + 212) |= 2u;
  }

  if (self->_stateChange)
  {
    [v6 setStateChange:?];
    toCopy = v6;
  }

  if (self->_queryZone)
  {
    [v6 setQueryZone:?];
    toCopy = v6;
  }

  if (self->_collection)
  {
    [v6 setCollection:?];
    toCopy = v6;
  }

  if (self->_collectionItem)
  {
    [v6 setCollectionItem:?];
    toCopy = v6;
  }

  if (self->_survey)
  {
    [v6 setSurvey:?];
    toCopy = v6;
  }

  if (self->_surveyStep)
  {
    [v6 setSurveyStep:?];
    toCopy = v6;
  }

  if (self->_surveyStepAnswer)
  {
    [v6 setSurveyStepAnswer:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_actionFlags;
    *(toCopy + 212) |= 1u;
  }

  if (self->_schedule)
  {
    [v6 setSchedule:?];
    toCopy = v6;
  }

  if (self->_scheduledEvent)
  {
    [v6 setScheduledEvent:?];
    toCopy = v6;
  }

  if (self->_assessment)
  {
    [v6 setAssessment:?];
    toCopy = v6;
  }

  if (self->_takerWork)
  {
    [v6 setTakerWork:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[28] = self->_payloadSize;
    *(v5 + 212) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v5[52] = self->_type;
    *(v5 + 212) |= 8u;
  }

  v8 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v9 = v6[21];
  v6[21] = v8;

  v10 = [(PDDPHandout *)self->_handout copyWithZone:zone];
  v11 = v6[13];
  v6[13] = v10;

  v12 = [(PDDPHandoutAttachment *)self->_attachment copyWithZone:zone];
  v13 = v6[5];
  v6[5] = v12;

  v14 = [(PDDPHandoutRecipient *)self->_recipient copyWithZone:zone];
  v15 = v6[17];
  v6[17] = v14;

  v16 = [(PDDPClass *)self->_classInfo copyWithZone:zone];
  v17 = v6[7];
  v6[7] = v16;

  v18 = [(PDDPPerson *)self->_person copyWithZone:zone];
  v19 = v6[15];
  v6[15] = v18;

  v20 = [(PDDPClassMember *)self->_classMember copyWithZone:zone];
  v21 = v6[8];
  v6[8] = v20;

  v22 = [(PDDPClassZone *)self->_classZone copyWithZone:zone];
  v23 = v6[9];
  v6[9] = v22;

  v24 = [(PDDPAssetReference *)self->_asset copyWithZone:zone];
  v25 = v6[4];
  v6[4] = v24;

  v26 = [(PDDPAuthorizationStatus *)self->_authStatus copyWithZone:zone];
  v27 = v6[6];
  v6[6] = v26;

  v28 = [(PDDPCompletionStatus *)self->_completionStatus copyWithZone:zone];
  v29 = v6[12];
  v6[12] = v28;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 4) = self->_action;
    *(v6 + 212) |= 2u;
  }

  v30 = [(PDDPStateChange *)self->_stateChange copyWithZone:zone];
  v31 = v6[20];
  v6[20] = v30;

  v32 = [(PDDPSchoolworkQueryZone *)self->_queryZone copyWithZone:zone];
  v33 = v6[16];
  v6[16] = v32;

  v34 = [(PDDPCollection *)self->_collection copyWithZone:zone];
  v35 = v6[10];
  v6[10] = v34;

  v36 = [(PDDPCollectionItem *)self->_collectionItem copyWithZone:zone];
  v37 = v6[11];
  v6[11] = v36;

  v38 = [(PDDPSurvey *)self->_survey copyWithZone:zone];
  v39 = v6[22];
  v6[22] = v38;

  v40 = [(PDDPSurveyStep *)self->_surveyStep copyWithZone:zone];
  v41 = v6[23];
  v6[23] = v40;

  v42 = [(PDDPSurveyStepAnswer *)self->_surveyStepAnswer copyWithZone:zone];
  v43 = v6[24];
  v6[24] = v42;

  if (*&self->_has)
  {
    v6[1] = self->_actionFlags;
    *(v6 + 212) |= 1u;
  }

  v44 = [(PDDPSchedule *)self->_schedule copyWithZone:zone];
  v45 = v6[18];
  v6[18] = v44;

  v46 = [(PDDPScheduledEvent *)self->_scheduledEvent copyWithZone:zone];
  v47 = v6[19];
  v6[19] = v46;

  v48 = [(PDDPAssessment *)self->_assessment copyWithZone:zone];
  v49 = v6[3];
  v6[3] = v48;

  v50 = [(PDDPTakerWork *)self->_takerWork copyWithZone:zone];
  v51 = v6[25];
  v6[25] = v50;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  v5 = *(equalCopy + 212);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 212) & 4) == 0 || self->_payloadSize != *(equalCopy + 28))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 212) & 4) != 0)
  {
LABEL_66:
    v30 = 0;
    goto LABEL_67;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 212) & 8) == 0 || self->_type != *(equalCopy + 52))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 212) & 8) != 0)
  {
    goto LABEL_66;
  }

  status = self->_status;
  if (status | *(equalCopy + 21) && ![(PDDPStatus *)status isEqual:?])
  {
    goto LABEL_66;
  }

  handout = self->_handout;
  if (handout | *(equalCopy + 13))
  {
    if (![(PDDPHandout *)handout isEqual:?])
    {
      goto LABEL_66;
    }
  }

  attachment = self->_attachment;
  if (attachment | *(equalCopy + 5))
  {
    if (![(PDDPHandoutAttachment *)attachment isEqual:?])
    {
      goto LABEL_66;
    }
  }

  recipient = self->_recipient;
  if (recipient | *(equalCopy + 17))
  {
    if (![(PDDPHandoutRecipient *)recipient isEqual:?])
    {
      goto LABEL_66;
    }
  }

  classInfo = self->_classInfo;
  if (classInfo | *(equalCopy + 7))
  {
    if (![(PDDPClass *)classInfo isEqual:?])
    {
      goto LABEL_66;
    }
  }

  person = self->_person;
  if (person | *(equalCopy + 15))
  {
    if (![(PDDPPerson *)person isEqual:?])
    {
      goto LABEL_66;
    }
  }

  classMember = self->_classMember;
  if (classMember | *(equalCopy + 8))
  {
    if (![(PDDPClassMember *)classMember isEqual:?])
    {
      goto LABEL_66;
    }
  }

  classZone = self->_classZone;
  if (classZone | *(equalCopy + 9))
  {
    if (![(PDDPClassZone *)classZone isEqual:?])
    {
      goto LABEL_66;
    }
  }

  asset = self->_asset;
  if (asset | *(equalCopy + 4))
  {
    if (![(PDDPAssetReference *)asset isEqual:?])
    {
      goto LABEL_66;
    }
  }

  authStatus = self->_authStatus;
  if (authStatus | *(equalCopy + 6))
  {
    if (![(PDDPAuthorizationStatus *)authStatus isEqual:?])
    {
      goto LABEL_66;
    }
  }

  completionStatus = self->_completionStatus;
  if (completionStatus | *(equalCopy + 12))
  {
    if (![(PDDPCompletionStatus *)completionStatus isEqual:?])
    {
      goto LABEL_66;
    }
  }

  v17 = *(equalCopy + 212);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 212) & 2) == 0 || self->_action != *(equalCopy + 4))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 212) & 2) != 0)
  {
    goto LABEL_66;
  }

  stateChange = self->_stateChange;
  if (stateChange | *(equalCopy + 20) && ![(PDDPStateChange *)stateChange isEqual:?])
  {
    goto LABEL_66;
  }

  queryZone = self->_queryZone;
  if (queryZone | *(equalCopy + 16))
  {
    if (![(PDDPSchoolworkQueryZone *)queryZone isEqual:?])
    {
      goto LABEL_66;
    }
  }

  collection = self->_collection;
  if (collection | *(equalCopy + 10))
  {
    if (![(PDDPCollection *)collection isEqual:?])
    {
      goto LABEL_66;
    }
  }

  collectionItem = self->_collectionItem;
  if (collectionItem | *(equalCopy + 11))
  {
    if (![(PDDPCollectionItem *)collectionItem isEqual:?])
    {
      goto LABEL_66;
    }
  }

  survey = self->_survey;
  if (survey | *(equalCopy + 22))
  {
    if (![(PDDPSurvey *)survey isEqual:?])
    {
      goto LABEL_66;
    }
  }

  surveyStep = self->_surveyStep;
  if (surveyStep | *(equalCopy + 23))
  {
    if (![(PDDPSurveyStep *)surveyStep isEqual:?])
    {
      goto LABEL_66;
    }
  }

  surveyStepAnswer = self->_surveyStepAnswer;
  if (surveyStepAnswer | *(equalCopy + 24))
  {
    if (![(PDDPSurveyStepAnswer *)surveyStepAnswer isEqual:?])
    {
      goto LABEL_66;
    }
  }

  v25 = *(equalCopy + 212);
  if (*&self->_has)
  {
    if ((*(equalCopy + 212) & 1) == 0 || self->_actionFlags != *(equalCopy + 1))
    {
      goto LABEL_66;
    }
  }

  else if (*(equalCopy + 212))
  {
    goto LABEL_66;
  }

  schedule = self->_schedule;
  if (schedule | *(equalCopy + 18) && ![(PDDPSchedule *)schedule isEqual:?])
  {
    goto LABEL_66;
  }

  scheduledEvent = self->_scheduledEvent;
  if (scheduledEvent | *(equalCopy + 19))
  {
    if (![(PDDPScheduledEvent *)scheduledEvent isEqual:?])
    {
      goto LABEL_66;
    }
  }

  assessment = self->_assessment;
  if (assessment | *(equalCopy + 3))
  {
    if (![(PDDPAssessment *)assessment isEqual:?])
    {
      goto LABEL_66;
    }
  }

  takerWork = self->_takerWork;
  if (takerWork | *(equalCopy + 25))
  {
    v30 = [(PDDPTakerWork *)takerWork isEqual:?];
  }

  else
  {
    v30 = 1;
  }

LABEL_67:

  return v30;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v28 = 2654435761 * self->_payloadSize;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v27 = 2654435761 * self->_type;
      goto LABEL_6;
    }
  }

  v27 = 0;
LABEL_6:
  v26 = [(PDDPStatus *)self->_status hash];
  v25 = [(PDDPHandout *)self->_handout hash];
  v24 = [(PDDPHandoutAttachment *)self->_attachment hash];
  v23 = [(PDDPHandoutRecipient *)self->_recipient hash];
  v22 = [(PDDPClass *)self->_classInfo hash];
  v21 = [(PDDPPerson *)self->_person hash];
  v20 = [(PDDPClassMember *)self->_classMember hash];
  v19 = [(PDDPClassZone *)self->_classZone hash];
  v18 = [(PDDPAssetReference *)self->_asset hash];
  v17 = [(PDDPAuthorizationStatus *)self->_authStatus hash];
  v16 = [(PDDPCompletionStatus *)self->_completionStatus hash];
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_action;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PDDPStateChange *)self->_stateChange hash];
  v5 = [(PDDPSchoolworkQueryZone *)self->_queryZone hash];
  v6 = [(PDDPCollection *)self->_collection hash];
  v7 = [(PDDPCollectionItem *)self->_collectionItem hash];
  v8 = [(PDDPSurvey *)self->_survey hash];
  v9 = [(PDDPSurveyStep *)self->_surveyStep hash];
  v10 = [(PDDPSurveyStepAnswer *)self->_surveyStepAnswer hash];
  if (*&self->_has)
  {
    v11 = 2654435761u * self->_actionFlags;
  }

  else
  {
    v11 = 0;
  }

  v12 = v27 ^ v28 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(PDDPSchedule *)self->_schedule hash];
  v13 = [(PDDPScheduledEvent *)self->_scheduledEvent hash];
  v14 = v13 ^ [(PDDPAssessment *)self->_assessment hash];
  return v12 ^ v14 ^ [(PDDPTakerWork *)self->_takerWork hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 212);
  if ((v6 & 4) != 0)
  {
    self->_payloadSize = fromCopy[28];
    *&self->_has |= 4u;
    v6 = *(fromCopy + 212);
  }

  if ((v6 & 8) != 0)
  {
    self->_type = fromCopy[52];
    *&self->_has |= 8u;
  }

  status = self->_status;
  v8 = *(v5 + 21);
  v51 = v5;
  if (status)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(PDDPStatus *)status mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(PDDPPayload *)self setStatus:?];
  }

  v5 = v51;
LABEL_11:
  handout = self->_handout;
  v10 = *(v5 + 13);
  if (handout)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(PDDPHandout *)handout mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(PDDPPayload *)self setHandout:?];
  }

  v5 = v51;
LABEL_17:
  attachment = self->_attachment;
  v12 = *(v5 + 5);
  if (attachment)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    [(PDDPHandoutAttachment *)attachment mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    [(PDDPPayload *)self setAttachment:?];
  }

  v5 = v51;
LABEL_23:
  recipient = self->_recipient;
  v14 = *(v5 + 17);
  if (recipient)
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    [(PDDPHandoutRecipient *)recipient mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    [(PDDPPayload *)self setRecipient:?];
  }

  v5 = v51;
LABEL_29:
  classInfo = self->_classInfo;
  v16 = *(v5 + 7);
  if (classInfo)
  {
    if (!v16)
    {
      goto LABEL_35;
    }

    [(PDDPClass *)classInfo mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_35;
    }

    [(PDDPPayload *)self setClassInfo:?];
  }

  v5 = v51;
LABEL_35:
  person = self->_person;
  v18 = *(v5 + 15);
  if (person)
  {
    if (!v18)
    {
      goto LABEL_41;
    }

    [(PDDPPerson *)person mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_41;
    }

    [(PDDPPayload *)self setPerson:?];
  }

  v5 = v51;
LABEL_41:
  classMember = self->_classMember;
  v20 = *(v5 + 8);
  if (classMember)
  {
    if (!v20)
    {
      goto LABEL_47;
    }

    [(PDDPClassMember *)classMember mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_47;
    }

    [(PDDPPayload *)self setClassMember:?];
  }

  v5 = v51;
LABEL_47:
  classZone = self->_classZone;
  v22 = *(v5 + 9);
  if (classZone)
  {
    if (!v22)
    {
      goto LABEL_53;
    }

    [(PDDPClassZone *)classZone mergeFrom:?];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_53;
    }

    [(PDDPPayload *)self setClassZone:?];
  }

  v5 = v51;
LABEL_53:
  asset = self->_asset;
  v24 = *(v5 + 4);
  if (asset)
  {
    if (!v24)
    {
      goto LABEL_59;
    }

    [(PDDPAssetReference *)asset mergeFrom:?];
  }

  else
  {
    if (!v24)
    {
      goto LABEL_59;
    }

    [(PDDPPayload *)self setAsset:?];
  }

  v5 = v51;
LABEL_59:
  authStatus = self->_authStatus;
  v26 = *(v5 + 6);
  if (authStatus)
  {
    if (!v26)
    {
      goto LABEL_65;
    }

    [(PDDPAuthorizationStatus *)authStatus mergeFrom:?];
  }

  else
  {
    if (!v26)
    {
      goto LABEL_65;
    }

    [(PDDPPayload *)self setAuthStatus:?];
  }

  v5 = v51;
LABEL_65:
  completionStatus = self->_completionStatus;
  v28 = *(v5 + 12);
  if (completionStatus)
  {
    if (!v28)
    {
      goto LABEL_71;
    }

    [(PDDPCompletionStatus *)completionStatus mergeFrom:?];
  }

  else
  {
    if (!v28)
    {
      goto LABEL_71;
    }

    [(PDDPPayload *)self setCompletionStatus:?];
  }

  v5 = v51;
LABEL_71:
  if ((v5[53] & 2) != 0)
  {
    self->_action = v5[4];
    *&self->_has |= 2u;
  }

  stateChange = self->_stateChange;
  v30 = *(v5 + 20);
  if (stateChange)
  {
    if (!v30)
    {
      goto LABEL_79;
    }

    [(PDDPStateChange *)stateChange mergeFrom:?];
  }

  else
  {
    if (!v30)
    {
      goto LABEL_79;
    }

    [(PDDPPayload *)self setStateChange:?];
  }

  v5 = v51;
LABEL_79:
  queryZone = self->_queryZone;
  v32 = *(v5 + 16);
  if (queryZone)
  {
    if (!v32)
    {
      goto LABEL_85;
    }

    [(PDDPSchoolworkQueryZone *)queryZone mergeFrom:?];
  }

  else
  {
    if (!v32)
    {
      goto LABEL_85;
    }

    [(PDDPPayload *)self setQueryZone:?];
  }

  v5 = v51;
LABEL_85:
  collection = self->_collection;
  v34 = *(v5 + 10);
  if (collection)
  {
    if (!v34)
    {
      goto LABEL_91;
    }

    [(PDDPCollection *)collection mergeFrom:?];
  }

  else
  {
    if (!v34)
    {
      goto LABEL_91;
    }

    [(PDDPPayload *)self setCollection:?];
  }

  v5 = v51;
LABEL_91:
  collectionItem = self->_collectionItem;
  v36 = *(v5 + 11);
  if (collectionItem)
  {
    if (!v36)
    {
      goto LABEL_97;
    }

    [(PDDPCollectionItem *)collectionItem mergeFrom:?];
  }

  else
  {
    if (!v36)
    {
      goto LABEL_97;
    }

    [(PDDPPayload *)self setCollectionItem:?];
  }

  v5 = v51;
LABEL_97:
  survey = self->_survey;
  v38 = *(v5 + 22);
  if (survey)
  {
    if (!v38)
    {
      goto LABEL_103;
    }

    [(PDDPSurvey *)survey mergeFrom:?];
  }

  else
  {
    if (!v38)
    {
      goto LABEL_103;
    }

    [(PDDPPayload *)self setSurvey:?];
  }

  v5 = v51;
LABEL_103:
  surveyStep = self->_surveyStep;
  v40 = *(v5 + 23);
  if (surveyStep)
  {
    if (!v40)
    {
      goto LABEL_109;
    }

    [(PDDPSurveyStep *)surveyStep mergeFrom:?];
  }

  else
  {
    if (!v40)
    {
      goto LABEL_109;
    }

    [(PDDPPayload *)self setSurveyStep:?];
  }

  v5 = v51;
LABEL_109:
  surveyStepAnswer = self->_surveyStepAnswer;
  v42 = *(v5 + 24);
  if (surveyStepAnswer)
  {
    if (!v42)
    {
      goto LABEL_115;
    }

    [(PDDPSurveyStepAnswer *)surveyStepAnswer mergeFrom:?];
  }

  else
  {
    if (!v42)
    {
      goto LABEL_115;
    }

    [(PDDPPayload *)self setSurveyStepAnswer:?];
  }

  v5 = v51;
LABEL_115:
  if (v5[53])
  {
    self->_actionFlags = *(v5 + 1);
    *&self->_has |= 1u;
  }

  schedule = self->_schedule;
  v44 = *(v5 + 18);
  if (schedule)
  {
    if (!v44)
    {
      goto LABEL_123;
    }

    [(PDDPSchedule *)schedule mergeFrom:?];
  }

  else
  {
    if (!v44)
    {
      goto LABEL_123;
    }

    [(PDDPPayload *)self setSchedule:?];
  }

  v5 = v51;
LABEL_123:
  scheduledEvent = self->_scheduledEvent;
  v46 = *(v5 + 19);
  if (scheduledEvent)
  {
    if (!v46)
    {
      goto LABEL_129;
    }

    [(PDDPScheduledEvent *)scheduledEvent mergeFrom:?];
  }

  else
  {
    if (!v46)
    {
      goto LABEL_129;
    }

    [(PDDPPayload *)self setScheduledEvent:?];
  }

  v5 = v51;
LABEL_129:
  assessment = self->_assessment;
  v48 = *(v5 + 3);
  if (assessment)
  {
    if (!v48)
    {
      goto LABEL_135;
    }

    [(PDDPAssessment *)assessment mergeFrom:?];
  }

  else
  {
    if (!v48)
    {
      goto LABEL_135;
    }

    [(PDDPPayload *)self setAssessment:?];
  }

  v5 = v51;
LABEL_135:
  takerWork = self->_takerWork;
  v50 = *(v5 + 25);
  if (takerWork)
  {
    if (!v50)
    {
      goto LABEL_141;
    }

    takerWork = [(PDDPTakerWork *)takerWork mergeFrom:?];
  }

  else
  {
    if (!v50)
    {
      goto LABEL_141;
    }

    takerWork = [(PDDPPayload *)self setTakerWork:?];
  }

  v5 = v51;
LABEL_141:

  _objc_release_x1(takerWork, v5);
}

@end