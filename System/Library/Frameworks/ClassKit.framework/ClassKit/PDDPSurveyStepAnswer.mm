@interface PDDPSurveyStepAnswer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAnswerType:(id)type;
- (int)answerType;
- (unint64_t)hash;
- (void)addClassIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAnswerType:(BOOL)type;
- (void)setHasMultipleChoiceSelectedIndexValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation PDDPSurveyStepAnswer

- (int)answerType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_answerType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAnswerType:(BOOL)type
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

- (int)StringAsAnswerType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_RESPONSE_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"MULTIPLE_CHOICE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"OPEN_RESPONSE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CONTINUOUS_SLIDER"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMultipleChoiceSelectedIndexValue:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addClassIds:(id)ids
{
  idsCopy = ids;
  classIds = self->_classIds;
  v8 = idsCopy;
  if (!classIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_classIds;
    self->_classIds = v6;

    idsCopy = v8;
    classIds = self->_classIds;
  }

  [(NSMutableArray *)classIds addObject:idsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPSurveyStepAnswer;
  v3 = [(PDDPSurveyStepAnswer *)&v7 description];
  dictionaryRepresentation = [(PDDPSurveyStepAnswer *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

  surveyId = self->_surveyId;
  if (surveyId)
  {
    [v4 setObject:surveyId forKey:@"survey_id"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  createdBy = self->_createdBy;
  if (createdBy)
  {
    [v4 setObject:createdBy forKey:@"created_by"];
  }

  if ((*&self->_has & 2) != 0)
  {
    answerType = self->_answerType;
    if (answerType >= 4)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_answerType];
    }

    else
    {
      v13 = *(&off_1002060B0 + answerType);
    }

    [v4 setObject:v13 forKey:@"answer_type"];
  }

  surveyStepId = self->_surveyStepId;
  if (surveyStepId)
  {
    [v4 setObject:surveyStepId forKey:@"survey_step_id"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v15 = [NSNumber numberWithInt:self->_multipleChoiceSelectedIndexValue];
    [v4 setObject:v15 forKey:@"multiple_choice_selected_index_value"];
  }

  textAnswerValue = self->_textAnswerValue;
  if (textAnswerValue)
  {
    [v4 setObject:textAnswerValue forKey:@"text_answer_value"];
  }

  if (*&self->_has)
  {
    v17 = [NSNumber numberWithDouble:self->_continuousSliderAnswerValue];
    [v4 setObject:v17 forKey:@"continuous_slider_answer_value"];
  }

  classIds = self->_classIds;
  if (classIds)
  {
    [v4 setObject:classIds forKey:@"class_ids"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_surveyId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_createdBy)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    answerType = self->_answerType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_surveyStepId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    multipleChoiceSelectedIndexValue = self->_multipleChoiceSelectedIndexValue;
    PBDataWriterWriteInt32Field();
  }

  if (self->_textAnswerValue)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    continuousSliderAnswerValue = self->_continuousSliderAnswerValue;
    PBDataWriterWriteDoubleField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_classIds;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        PBDataWriterWriteStringField();
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v9;
  }

  if (self->_surveyId)
  {
    [v9 setSurveyId:?];
    toCopy = v9;
  }

  if (self->_dateCreated)
  {
    [v9 setDateCreated:?];
    toCopy = v9;
  }

  if (self->_dateLastModified)
  {
    [v9 setDateLastModified:?];
    toCopy = v9;
  }

  if (self->_createdBy)
  {
    [v9 setCreatedBy:?];
    toCopy = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 4) = self->_answerType;
    *(toCopy + 96) |= 2u;
  }

  if (self->_surveyStepId)
  {
    [v9 setSurveyStepId:?];
    toCopy = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 14) = self->_multipleChoiceSelectedIndexValue;
    *(toCopy + 96) |= 4u;
  }

  if (self->_textAnswerValue)
  {
    [v9 setTextAnswerValue:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_continuousSliderAnswerValue;
    *(toCopy + 96) |= 1u;
  }

  if ([(PDDPSurveyStepAnswer *)self classIdsCount])
  {
    [v9 clearClassIds];
    classIdsCount = [(PDDPSurveyStepAnswer *)self classIdsCount];
    if (classIdsCount)
    {
      v6 = classIdsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPSurveyStepAnswer *)self classIdsAtIndex:i];
        [v9 addClassIds:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(NSString *)self->_surveyId copyWithZone:zone];
  v9 = v5[9];
  v5[9] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSString *)self->_createdBy copyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 4) = self->_answerType;
    *(v5 + 96) |= 2u;
  }

  v16 = [(NSString *)self->_surveyStepId copyWithZone:zone];
  v17 = v5[10];
  v5[10] = v16;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 14) = self->_multipleChoiceSelectedIndexValue;
    *(v5 + 96) |= 4u;
  }

  v18 = [(NSString *)self->_textAnswerValue copyWithZone:zone];
  v19 = v5[11];
  v5[11] = v18;

  if (*&self->_has)
  {
    v5[1] = *&self->_continuousSliderAnswerValue;
    *(v5 + 96) |= 1u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_classIds;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v27 + 1) + 8 * i) copyWithZone:{zone, v27}];
        [v5 addClassIds:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 8))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  surveyId = self->_surveyId;
  if (surveyId | *(equalCopy + 9))
  {
    if (![(NSString *)surveyId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 5))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_35;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 6))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_35;
    }
  }

  createdBy = self->_createdBy;
  if (createdBy | *(equalCopy + 4))
  {
    if (![(NSString *)createdBy isEqual:?])
    {
      goto LABEL_35;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 96);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_answerType != *(equalCopy + 4))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
    goto LABEL_35;
  }

  surveyStepId = self->_surveyStepId;
  if (surveyStepId | *(equalCopy + 10))
  {
    if (![(NSString *)surveyStepId isEqual:?])
    {
      goto LABEL_35;
    }

    has = self->_has;
    v11 = *(equalCopy + 96);
  }

  if ((has & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_multipleChoiceSelectedIndexValue != *(equalCopy + 14))
    {
      goto LABEL_35;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_35;
  }

  textAnswerValue = self->_textAnswerValue;
  if (textAnswerValue | *(equalCopy + 11))
  {
    if ([(NSString *)textAnswerValue isEqual:?])
    {
      has = self->_has;
      v11 = *(equalCopy + 96);
      goto LABEL_28;
    }

LABEL_35:
    v15 = 0;
    goto LABEL_36;
  }

LABEL_28:
  if (has)
  {
    if ((v11 & 1) == 0 || self->_continuousSliderAnswerValue != *(equalCopy + 1))
    {
      goto LABEL_35;
    }
  }

  else if (v11)
  {
    goto LABEL_35;
  }

  classIds = self->_classIds;
  if (classIds | *(equalCopy + 3))
  {
    v15 = [(NSMutableArray *)classIds isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_36:

  return v15;
}

- (unint64_t)hash
{
  v18 = [(NSString *)self->_objectId hash];
  v3 = [(NSString *)self->_surveyId hash];
  v4 = [(PDDPDate *)self->_dateCreated hash];
  v5 = [(PDDPDate *)self->_dateLastModified hash];
  v6 = [(NSString *)self->_createdBy hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_answerType;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_surveyStepId hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_multipleChoiceSelectedIndexValue;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_textAnswerValue hash];
  if (*&self->_has)
  {
    continuousSliderAnswerValue = self->_continuousSliderAnswerValue;
    if (continuousSliderAnswerValue < 0.0)
    {
      continuousSliderAnswerValue = -continuousSliderAnswerValue;
    }

    *v11.i64 = floor(continuousSliderAnswerValue + 0.5);
    v15 = (continuousSliderAnswerValue - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v12, v11).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  return v3 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ [(NSMutableArray *)self->_classIds hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 8))
  {
    [(PDDPSurveyStepAnswer *)self setObjectId:?];
  }

  if (*(fromCopy + 9))
  {
    [(PDDPSurveyStepAnswer *)self setSurveyId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(fromCopy + 5);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPSurveyStepAnswer *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(fromCopy + 6);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPSurveyStepAnswer *)self setDateLastModified:?];
  }

  if (*(fromCopy + 4))
  {
    [(PDDPSurveyStepAnswer *)self setCreatedBy:?];
  }

  if ((*(fromCopy + 96) & 2) != 0)
  {
    self->_answerType = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 10))
  {
    [(PDDPSurveyStepAnswer *)self setSurveyStepId:?];
  }

  if ((*(fromCopy + 96) & 4) != 0)
  {
    self->_multipleChoiceSelectedIndexValue = *(fromCopy + 14);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 11))
  {
    [(PDDPSurveyStepAnswer *)self setTextAnswerValue:?];
  }

  if (*(fromCopy + 96))
  {
    self->_continuousSliderAnswerValue = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(fromCopy + 3);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(PDDPSurveyStepAnswer *)self addClassIds:*(*(&v14 + 1) + 8 * i), v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end