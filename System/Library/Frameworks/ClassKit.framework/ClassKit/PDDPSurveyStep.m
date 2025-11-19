@interface PDDPSurveyStep
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAnswerFormatType:(id)a3;
- (int)StringAsMultipleChoiceType:(id)a3;
- (int)StringAsOpenResponseType:(id)a3;
- (int)StringAsSliderType:(id)a3;
- (int)StringAsSurveyStepType:(id)a3;
- (int)answerFormatType;
- (int)multipleChoiceType;
- (int)openResponseType;
- (int)sliderType;
- (int)surveyStepType;
- (unint64_t)hash;
- (void)addClassIds:(id)a3;
- (void)addOptionItems:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAnswerFormatType:(BOOL)a3;
- (void)setHasDisplayOrder:(BOOL)a3;
- (void)setHasMultipleChoiceType:(BOOL)a3;
- (void)setHasOpenResponseAllowMedia:(BOOL)a3;
- (void)setHasOpenResponseMaximumTextLength:(BOOL)a3;
- (void)setHasOpenResponseMinimumTextLength:(BOOL)a3;
- (void)setHasOpenResponseType:(BOOL)a3;
- (void)setHasSliderMinimum:(BOOL)a3;
- (void)setHasSliderType:(BOOL)a3;
- (void)setHasSurveyStepType:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPSurveyStep

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)surveyStepType
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_surveyStepType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSurveyStepType:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)StringAsSurveyStepType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_STEP_TYPE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"QUESTION_STEP_TYPE"];
  }

  return v4;
}

- (void)setHasDisplayOrder:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)answerFormatType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_answerFormatType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAnswerFormatType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsAnswerFormatType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_FORMAT_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MULTIPLE_CHOICE_FORMAT_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SLIDER_FORMAT_TYPE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"OPEN_FORMAT_TYPE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)multipleChoiceType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_multipleChoiceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMultipleChoiceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsMultipleChoiceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CUSTOM_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SMILEY_FACE_TYPE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"STAR_RATING_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"THUMB_UP_DOWN_TYPE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addOptionItems:(id)a3
{
  v4 = a3;
  optionItems = self->_optionItems;
  v8 = v4;
  if (!optionItems)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_optionItems;
    self->_optionItems = v6;

    v4 = v8;
    optionItems = self->_optionItems;
  }

  [(NSMutableArray *)optionItems addObject:v4];
}

- (int)sliderType
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_sliderType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSliderType:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsSliderType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_SLIDER_TYPE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"CONTINUOUS_SLIDER_TYPE"];
  }

  return v4;
}

- (void)setHasSliderMinimum:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)openResponseType
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_openResponseType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOpenResponseType:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)StringAsOpenResponseType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_OPEN_RESPONSE_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"OPEN_RESPONSE_SHORT_FORM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OPEN_RESPONSE_LONG_FORM"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOpenResponseAllowMedia:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasOpenResponseMinimumTextLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasOpenResponseMaximumTextLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)addClassIds:(id)a3
{
  v4 = a3;
  classIds = self->_classIds;
  v8 = v4;
  if (!classIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_classIds;
    self->_classIds = v6;

    v4 = v8;
    classIds = self->_classIds;
  }

  [(NSMutableArray *)classIds addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPSurveyStep;
  v3 = [(PDDPSurveyStep *)&v7 description];
  v4 = [(PDDPSurveyStep *)self dictionaryRepresentation];
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

  parentObjectId = self->_parentObjectId;
  if (parentObjectId)
  {
    [v4 setObject:parentObjectId forKey:@"parent_object_id"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    v8 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v10 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"date_last_modified"];
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v12 = [NSNumber numberWithInt:self->_version];
    [v4 setObject:v12 forKey:@"version"];

    has = self->_has;
  }

  if ((has & 0x200) != 0)
  {
    surveyStepType = self->_surveyStepType;
    if (surveyStepType)
    {
      if (surveyStepType == 1)
      {
        v14 = @"QUESTION_STEP_TYPE";
      }

      else
      {
        v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_surveyStepType];
      }
    }

    else
    {
      v14 = @"UNKNOWN_STEP_TYPE";
    }

    [v4 setObject:v14 forKey:@"survey_step_type"];
  }

  questionText = self->_questionText;
  if (questionText)
  {
    [v4 setObject:questionText forKey:@"question_text"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v16 = [NSNumber numberWithInt:self->_displayOrder];
    [v4 setObject:v16 forKey:@"display_order"];
  }

  answerFormatObjectId = self->_answerFormatObjectId;
  if (answerFormatObjectId)
  {
    [v4 setObject:answerFormatObjectId forKey:@"answer_format_object_id"];
  }

  v18 = self->_has;
  if ((v18 & 4) != 0)
  {
    answerFormatType = self->_answerFormatType;
    if (answerFormatType >= 4)
    {
      v20 = [NSString stringWithFormat:@"(unknown: %i)", self->_answerFormatType];
    }

    else
    {
      v20 = *(&off_100206780 + answerFormatType);
    }

    [v4 setObject:v20 forKey:@"answer_format_type"];

    v18 = self->_has;
  }

  if ((v18 & 0x10) != 0)
  {
    multipleChoiceType = self->_multipleChoiceType;
    if (multipleChoiceType >= 5)
    {
      v22 = [NSString stringWithFormat:@"(unknown: %i)", self->_multipleChoiceType];
    }

    else
    {
      v22 = *(&off_1002067A0 + multipleChoiceType);
    }

    [v4 setObject:v22 forKey:@"multiple_choice_type"];
  }

  if ([(NSMutableArray *)self->_optionItems count])
  {
    v23 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_optionItems, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v24 = self->_optionItems;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v48;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          [v23 addObject:v29];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v26);
    }

    [v4 setObject:v23 forKey:@"option_items"];
  }

  v30 = self->_has;
  if ((v30 & 0x100) != 0)
  {
    sliderType = self->_sliderType;
    if (sliderType)
    {
      if (sliderType == 1)
      {
        v38 = @"CONTINUOUS_SLIDER_TYPE";
      }

      else
      {
        v38 = [NSString stringWithFormat:@"(unknown: %i)", self->_sliderType];
      }
    }

    else
    {
      v38 = @"UNKNOWN_SLIDER_TYPE";
    }

    [v4 setObject:v38 forKey:@"slider_type"];

    v30 = self->_has;
    if ((v30 & 2) == 0)
    {
LABEL_45:
      if ((v30 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((v30 & 2) == 0)
  {
    goto LABEL_45;
  }

  v46 = [NSNumber numberWithDouble:self->_sliderMinimum];
  [v4 setObject:v46 forKey:@"slider_minimum"];

  if (*&self->_has)
  {
LABEL_46:
    v31 = [NSNumber numberWithDouble:self->_sliderMaximum];
    [v4 setObject:v31 forKey:@"slider_maximum"];
  }

LABEL_47:
  sliderMinimumLabel = self->_sliderMinimumLabel;
  if (sliderMinimumLabel)
  {
    [v4 setObject:sliderMinimumLabel forKey:@"slider_minimum_label"];
  }

  sliderMaximumLabel = self->_sliderMaximumLabel;
  if (sliderMaximumLabel)
  {
    [v4 setObject:sliderMaximumLabel forKey:@"slider_maximum_label"];
  }

  sliderMiddleLabel = self->_sliderMiddleLabel;
  if (sliderMiddleLabel)
  {
    [v4 setObject:sliderMiddleLabel forKey:@"slider_middle_label"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    openResponseType = self->_openResponseType;
    if (openResponseType >= 3)
    {
      v36 = [NSString stringWithFormat:@"(unknown: %i)", self->_openResponseType];
    }

    else
    {
      v36 = *(&off_1002067C8 + openResponseType);
    }

    [v4 setObject:v36 forKey:@"open_response_type"];
  }

  openResponseTeacherProvidedText = self->_openResponseTeacherProvidedText;
  if (openResponseTeacherProvidedText)
  {
    [v4 setObject:openResponseTeacherProvidedText forKey:@"open_response_teacher_provided_text"];
  }

  v40 = self->_has;
  if ((v40 & 0x800) != 0)
  {
    v44 = [NSNumber numberWithBool:self->_openResponseAllowMedia];
    [v4 setObject:v44 forKey:@"open_response_allow_media"];

    v40 = self->_has;
    if ((v40 & 0x40) == 0)
    {
LABEL_65:
      if ((v40 & 0x20) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  else if ((v40 & 0x40) == 0)
  {
    goto LABEL_65;
  }

  v45 = [NSNumber numberWithInt:self->_openResponseMinimumTextLength];
  [v4 setObject:v45 forKey:@"open_response_minimum_text_length"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_66:
    v41 = [NSNumber numberWithInt:self->_openResponseMaximumTextLength];
    [v4 setObject:v41 forKey:@"open_response_maximum_text_length"];
  }

LABEL_67:
  classIds = self->_classIds;
  if (classIds)
  {
    [v4 setObject:classIds forKey:@"class_ids"];
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

  if (self->_parentObjectId)
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

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 0x200) != 0)
  {
    surveyStepType = self->_surveyStepType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_questionText)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    displayOrder = self->_displayOrder;
    PBDataWriterWriteInt32Field();
  }

  if (self->_answerFormatObjectId)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((v9 & 4) != 0)
  {
    answerFormatType = self->_answerFormatType;
    PBDataWriterWriteInt32Field();
    v9 = self->_has;
  }

  if ((v9 & 0x10) != 0)
  {
    multipleChoiceType = self->_multipleChoiceType;
    PBDataWriterWriteInt32Field();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = self->_optionItems;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v14);
  }

  v18 = self->_has;
  if ((v18 & 0x100) != 0)
  {
    sliderType = self->_sliderType;
    PBDataWriterWriteInt32Field();
    v18 = self->_has;
    if ((v18 & 2) == 0)
    {
LABEL_32:
      if ((v18 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_32;
  }

  sliderMinimum = self->_sliderMinimum;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_33:
    sliderMaximum = self->_sliderMaximum;
    PBDataWriterWriteDoubleField();
  }

LABEL_34:
  if (self->_sliderMinimumLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sliderMaximumLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sliderMiddleLabel)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    openResponseType = self->_openResponseType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_openResponseTeacherProvidedText)
  {
    PBDataWriterWriteStringField();
  }

  v21 = self->_has;
  if ((v21 & 0x800) != 0)
  {
    openResponseAllowMedia = self->_openResponseAllowMedia;
    PBDataWriterWriteBOOLField();
    v21 = self->_has;
    if ((v21 & 0x40) == 0)
    {
LABEL_46:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  else if ((v21 & 0x40) == 0)
  {
    goto LABEL_46;
  }

  openResponseMinimumTextLength = self->_openResponseMinimumTextLength;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_47:
    openResponseMaximumTextLength = self->_openResponseMaximumTextLength;
    PBDataWriterWriteInt32Field();
  }

LABEL_48:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = self->_classIds;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v33 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v25);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v18 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
    v4 = v18;
  }

  if (self->_parentObjectId)
  {
    [v18 setParentObjectId:?];
    v4 = v18;
  }

  if (self->_dateCreated)
  {
    [v18 setDateCreated:?];
    v4 = v18;
  }

  if (self->_dateLastModified)
  {
    [v18 setDateLastModified:?];
    v4 = v18;
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v4 + 40) = self->_version;
    *(v4 + 84) |= 0x400u;
    has = self->_has;
  }

  if ((has & 0x200) != 0)
  {
    *(v4 + 39) = self->_surveyStepType;
    *(v4 + 84) |= 0x200u;
  }

  if (self->_questionText)
  {
    [v18 setQuestionText:?];
    v4 = v18;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 16) = self->_displayOrder;
    *(v4 + 84) |= 8u;
  }

  if (self->_answerFormatObjectId)
  {
    [v18 setAnswerFormatObjectId:?];
    v4 = v18;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(v4 + 8) = self->_answerFormatType;
    *(v4 + 84) |= 4u;
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    *(v4 + 17) = self->_multipleChoiceType;
    *(v4 + 84) |= 0x10u;
  }

  if ([(PDDPSurveyStep *)self optionItemsCount])
  {
    [v18 clearOptionItems];
    v7 = [(PDDPSurveyStep *)self optionItemsCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(PDDPSurveyStep *)self optionItemsAtIndex:i];
        [v18 addOptionItems:v10];
      }
    }
  }

  v11 = self->_has;
  v12 = v18;
  if ((v11 & 0x100) != 0)
  {
    *(v18 + 38) = self->_sliderType;
    *(v18 + 84) |= 0x100u;
    v11 = self->_has;
    if ((v11 & 2) == 0)
    {
LABEL_29:
      if ((v11 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_29;
  }

  *(v18 + 2) = *&self->_sliderMinimum;
  *(v18 + 84) |= 2u;
  if (*&self->_has)
  {
LABEL_30:
    *(v18 + 1) = *&self->_sliderMaximum;
    *(v18 + 84) |= 1u;
  }

LABEL_31:
  if (self->_sliderMinimumLabel)
  {
    [v18 setSliderMinimumLabel:?];
    v12 = v18;
  }

  if (self->_sliderMaximumLabel)
  {
    [v18 setSliderMaximumLabel:?];
    v12 = v18;
  }

  if (self->_sliderMiddleLabel)
  {
    [v18 setSliderMiddleLabel:?];
    v12 = v18;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v12[24] = self->_openResponseType;
    *(v12 + 84) |= 0x80u;
  }

  if (self->_openResponseTeacherProvidedText)
  {
    [v18 setOpenResponseTeacherProvidedText:?];
    v12 = v18;
  }

  v13 = self->_has;
  if ((v13 & 0x800) == 0)
  {
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_43;
    }

LABEL_56:
    v12[21] = self->_openResponseMinimumTextLength;
    *(v12 + 84) |= 0x40u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  *(v12 + 164) = self->_openResponseAllowMedia;
  *(v12 + 84) |= 0x800u;
  v13 = self->_has;
  if ((v13 & 0x40) != 0)
  {
    goto LABEL_56;
  }

LABEL_43:
  if ((v13 & 0x20) != 0)
  {
LABEL_44:
    v12[20] = self->_openResponseMaximumTextLength;
    *(v12 + 84) |= 0x20u;
  }

LABEL_45:
  if ([(PDDPSurveyStep *)self classIdsCount])
  {
    [v18 clearClassIds];
    v14 = [(PDDPSurveyStep *)self classIdsCount];
    if (v14)
    {
      v15 = v14;
      for (j = 0; j != v15; ++j)
      {
        v17 = [(PDDPSurveyStep *)self classIdsAtIndex:j];
        [v18 addClassIds:v17];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = v5[9];
  v5[9] = v6;

  v8 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v9 = v5[14];
  v5[14] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v5 + 40) = self->_version;
    *(v5 + 84) |= 0x400u;
    has = self->_has;
  }

  if ((has & 0x200) != 0)
  {
    *(v5 + 39) = self->_surveyStepType;
    *(v5 + 84) |= 0x200u;
  }

  v15 = [(NSString *)self->_questionText copyWithZone:a3];
  v16 = v5[15];
  v5[15] = v15;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 16) = self->_displayOrder;
    *(v5 + 84) |= 8u;
  }

  v17 = [(NSString *)self->_answerFormatObjectId copyWithZone:a3];
  v18 = v5[3];
  v5[3] = v17;

  v19 = self->_has;
  if ((v19 & 4) != 0)
  {
    *(v5 + 8) = self->_answerFormatType;
    *(v5 + 84) |= 4u;
    v19 = self->_has;
  }

  if ((v19 & 0x10) != 0)
  {
    *(v5 + 17) = self->_multipleChoiceType;
    *(v5 + 84) |= 0x10u;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = self->_optionItems;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v47 + 1) + 8 * i) copyWithZone:a3];
        [v5 addOptionItems:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v22);
  }

  v26 = self->_has;
  if ((v26 & 0x100) != 0)
  {
    *(v5 + 38) = self->_sliderType;
    *(v5 + 84) |= 0x100u;
    v26 = self->_has;
    if ((v26 & 2) == 0)
    {
LABEL_20:
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((v26 & 2) == 0)
  {
    goto LABEL_20;
  }

  v5[2] = *&self->_sliderMinimum;
  *(v5 + 84) |= 2u;
  if (*&self->_has)
  {
LABEL_21:
    v5[1] = *&self->_sliderMaximum;
    *(v5 + 84) |= 1u;
  }

LABEL_22:
  v27 = [(NSString *)self->_sliderMinimumLabel copyWithZone:a3];
  v28 = v5[18];
  v5[18] = v27;

  v29 = [(NSString *)self->_sliderMaximumLabel copyWithZone:a3];
  v30 = v5[16];
  v5[16] = v29;

  v31 = [(NSString *)self->_sliderMiddleLabel copyWithZone:a3];
  v32 = v5[17];
  v5[17] = v31;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v5 + 24) = self->_openResponseType;
    *(v5 + 84) |= 0x80u;
  }

  v33 = [(NSString *)self->_openResponseTeacherProvidedText copyWithZone:a3];
  v34 = v5[11];
  v5[11] = v33;

  v35 = self->_has;
  if ((v35 & 0x800) != 0)
  {
    *(v5 + 164) = self->_openResponseAllowMedia;
    *(v5 + 84) |= 0x800u;
    v35 = self->_has;
    if ((v35 & 0x40) == 0)
    {
LABEL_26:
      if ((v35 & 0x20) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else if ((v35 & 0x40) == 0)
  {
    goto LABEL_26;
  }

  *(v5 + 21) = self->_openResponseMinimumTextLength;
  *(v5 + 84) |= 0x40u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_27:
    *(v5 + 20) = self->_openResponseMaximumTextLength;
    *(v5 + 84) |= 0x20u;
  }

LABEL_28:
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = self->_classIds;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v44;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v43 + 1) + 8 * j) copyWithZone:{a3, v43}];
        [v5 addClassIds:v41];
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v38);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_93;
  }

  objectId = self->_objectId;
  if (objectId | *(v4 + 9))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_93;
    }
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(v4 + 14))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_93;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 6))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_93;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(v4 + 7))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_93;
    }
  }

  has = self->_has;
  v10 = *(v4 + 84);
  if ((has & 0x400) != 0)
  {
    if ((*(v4 + 84) & 0x400) == 0 || self->_version != *(v4 + 40))
    {
      goto LABEL_93;
    }
  }

  else if ((*(v4 + 84) & 0x400) != 0)
  {
    goto LABEL_93;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 84) & 0x200) == 0 || self->_surveyStepType != *(v4 + 39))
    {
      goto LABEL_93;
    }
  }

  else if ((*(v4 + 84) & 0x200) != 0)
  {
    goto LABEL_93;
  }

  questionText = self->_questionText;
  if (questionText | *(v4 + 15))
  {
    if (![(NSString *)questionText isEqual:?])
    {
      goto LABEL_93;
    }

    has = self->_has;
    v10 = *(v4 + 84);
  }

  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_displayOrder != *(v4 + 16))
    {
      goto LABEL_93;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_93;
  }

  answerFormatObjectId = self->_answerFormatObjectId;
  if (answerFormatObjectId | *(v4 + 3))
  {
    if (![(NSString *)answerFormatObjectId isEqual:?])
    {
      goto LABEL_93;
    }

    has = self->_has;
    v10 = *(v4 + 84);
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_answerFormatType != *(v4 + 8))
    {
      goto LABEL_93;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_93;
  }

  if ((has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_multipleChoiceType != *(v4 + 17))
    {
      goto LABEL_93;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_93;
  }

  optionItems = self->_optionItems;
  if (optionItems | *(v4 + 13))
  {
    if (![(NSMutableArray *)optionItems isEqual:?])
    {
      goto LABEL_93;
    }

    has = self->_has;
    v10 = *(v4 + 84);
  }

  if ((has & 0x100) != 0)
  {
    if ((v10 & 0x100) == 0 || self->_sliderType != *(v4 + 38))
    {
      goto LABEL_93;
    }
  }

  else if ((v10 & 0x100) != 0)
  {
    goto LABEL_93;
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_sliderMinimum != *(v4 + 2))
    {
      goto LABEL_93;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_93;
  }

  if (has)
  {
    if ((v10 & 1) == 0 || self->_sliderMaximum != *(v4 + 1))
    {
      goto LABEL_93;
    }
  }

  else if (v10)
  {
    goto LABEL_93;
  }

  sliderMinimumLabel = self->_sliderMinimumLabel;
  if (sliderMinimumLabel | *(v4 + 18) && ![(NSString *)sliderMinimumLabel isEqual:?])
  {
    goto LABEL_93;
  }

  sliderMaximumLabel = self->_sliderMaximumLabel;
  if (sliderMaximumLabel | *(v4 + 16))
  {
    if (![(NSString *)sliderMaximumLabel isEqual:?])
    {
      goto LABEL_93;
    }
  }

  sliderMiddleLabel = self->_sliderMiddleLabel;
  if (sliderMiddleLabel | *(v4 + 17))
  {
    if (![(NSString *)sliderMiddleLabel isEqual:?])
    {
      goto LABEL_93;
    }
  }

  v17 = self->_has;
  v18 = *(v4 + 84);
  if ((v17 & 0x80) != 0)
  {
    if ((v18 & 0x80) == 0 || self->_openResponseType != *(v4 + 24))
    {
      goto LABEL_93;
    }
  }

  else if ((v18 & 0x80) != 0)
  {
    goto LABEL_93;
  }

  openResponseTeacherProvidedText = self->_openResponseTeacherProvidedText;
  if (openResponseTeacherProvidedText | *(v4 + 11))
  {
    if (![(NSString *)openResponseTeacherProvidedText isEqual:?])
    {
      goto LABEL_93;
    }

    v17 = self->_has;
    v18 = *(v4 + 84);
  }

  if ((v17 & 0x800) == 0)
  {
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_75;
    }

LABEL_93:
    v22 = 0;
    goto LABEL_94;
  }

  if ((v18 & 0x800) == 0)
  {
    goto LABEL_93;
  }

  v20 = *(v4 + 164);
  if (self->_openResponseAllowMedia)
  {
    if ((*(v4 + 164) & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  else if (*(v4 + 164))
  {
    goto LABEL_93;
  }

LABEL_75:
  if ((v17 & 0x40) != 0)
  {
    if ((v18 & 0x40) == 0 || self->_openResponseMinimumTextLength != *(v4 + 21))
    {
      goto LABEL_93;
    }
  }

  else if ((v18 & 0x40) != 0)
  {
    goto LABEL_93;
  }

  if ((v17 & 0x20) != 0)
  {
    if ((v18 & 0x20) == 0 || self->_openResponseMaximumTextLength != *(v4 + 20))
    {
      goto LABEL_93;
    }
  }

  else if ((v18 & 0x20) != 0)
  {
    goto LABEL_93;
  }

  classIds = self->_classIds;
  if (classIds | *(v4 + 5))
  {
    v22 = [(NSMutableArray *)classIds isEqual:?];
  }

  else
  {
    v22 = 1;
  }

LABEL_94:

  return v22;
}

- (unint64_t)hash
{
  v38 = [(NSString *)self->_objectId hash];
  v37 = [(NSString *)self->_parentObjectId hash];
  v36 = [(PDDPDate *)self->_dateCreated hash];
  v35 = [(PDDPDate *)self->_dateLastModified hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v34 = 2654435761 * self->_version;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v33 = 2654435761 * self->_surveyStepType;
      goto LABEL_6;
    }
  }

  v33 = 0;
LABEL_6:
  v32 = [(NSString *)self->_questionText hash];
  if ((*&self->_has & 8) != 0)
  {
    v31 = 2654435761 * self->_displayOrder;
  }

  else
  {
    v31 = 0;
  }

  v30 = [(NSString *)self->_answerFormatObjectId hash];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v29 = 2654435761 * self->_answerFormatType;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v29 = 0;
    if ((has & 0x10) != 0)
    {
LABEL_11:
      v28 = 2654435761 * self->_multipleChoiceType;
      goto LABEL_14;
    }
  }

  v28 = 0;
LABEL_14:
  v26 = [(NSMutableArray *)self->_optionItems hash];
  v6 = self->_has;
  if ((v6 & 0x100) != 0)
  {
    v7 = 2654435761 * self->_sliderType;
    if ((v6 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v7 = 0;
  if ((v6 & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  sliderMinimum = self->_sliderMinimum;
  if (sliderMinimum < 0.0)
  {
    sliderMinimum = -sliderMinimum;
  }

  *v4.i64 = floor(sliderMinimum + 0.5);
  v9 = (sliderMinimum - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
  v11 = 2654435761u * *v4.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_22:
  if (v6)
  {
    sliderMaximum = self->_sliderMaximum;
    if (sliderMaximum < 0.0)
    {
      sliderMaximum = -sliderMaximum;
    }

    *v4.i64 = floor(sliderMaximum + 0.5);
    v14 = (sliderMaximum - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v5, v4).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = [(NSString *)self->_sliderMinimumLabel hash];
  v17 = [(NSString *)self->_sliderMaximumLabel hash];
  v18 = [(NSString *)self->_sliderMiddleLabel hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v19 = 2654435761 * self->_openResponseType;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(NSString *)self->_openResponseTeacherProvidedText hash];
  v21 = self->_has;
  if ((v21 & 0x800) == 0)
  {
    v22 = 0;
    if ((v21 & 0x40) != 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    v23 = 0;
    if ((v21 & 0x20) != 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v24 = 0;
    return v37 ^ v38 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v7 ^ v11 ^ v12 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v22 ^ v23 ^ v24 ^ [(NSMutableArray *)self->_classIds hash];
  }

  v22 = 2654435761 * self->_openResponseAllowMedia;
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v23 = 2654435761 * self->_openResponseMinimumTextLength;
  if ((v21 & 0x20) == 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  v24 = 2654435761 * self->_openResponseMaximumTextLength;
  return v37 ^ v38 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v7 ^ v11 ^ v12 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v22 ^ v23 ^ v24 ^ [(NSMutableArray *)self->_classIds hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 9))
  {
    [(PDDPSurveyStep *)self setObjectId:?];
  }

  if (*(v4 + 14))
  {
    [(PDDPSurveyStep *)self setParentObjectId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(v4 + 6);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPSurveyStep *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(v4 + 7);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPSurveyStep *)self setDateLastModified:?];
  }

  v9 = *(v4 + 84);
  if ((v9 & 0x400) != 0)
  {
    self->_version = *(v4 + 40);
    *&self->_has |= 0x400u;
    v9 = *(v4 + 84);
  }

  if ((v9 & 0x200) != 0)
  {
    self->_surveyStepType = *(v4 + 39);
    *&self->_has |= 0x200u;
  }

  if (*(v4 + 15))
  {
    [(PDDPSurveyStep *)self setQuestionText:?];
  }

  if ((*(v4 + 84) & 8) != 0)
  {
    self->_displayOrder = *(v4 + 16);
    *&self->_has |= 8u;
  }

  if (*(v4 + 3))
  {
    [(PDDPSurveyStep *)self setAnswerFormatObjectId:?];
  }

  v10 = *(v4 + 84);
  if ((v10 & 4) != 0)
  {
    self->_answerFormatType = *(v4 + 8);
    *&self->_has |= 4u;
    v10 = *(v4 + 84);
  }

  if ((v10 & 0x10) != 0)
  {
    self->_multipleChoiceType = *(v4 + 17);
    *&self->_has |= 0x10u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = *(v4 + 13);
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PDDPSurveyStep *)self addOptionItems:*(*(&v27 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v13);
  }

  v16 = *(v4 + 84);
  if ((v16 & 0x100) != 0)
  {
    self->_sliderType = *(v4 + 38);
    *&self->_has |= 0x100u;
    v16 = *(v4 + 84);
    if ((v16 & 2) == 0)
    {
LABEL_38:
      if ((v16 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_38;
  }

  self->_sliderMinimum = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 84))
  {
LABEL_39:
    self->_sliderMaximum = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_40:
  if (*(v4 + 18))
  {
    [(PDDPSurveyStep *)self setSliderMinimumLabel:?];
  }

  if (*(v4 + 16))
  {
    [(PDDPSurveyStep *)self setSliderMaximumLabel:?];
  }

  if (*(v4 + 17))
  {
    [(PDDPSurveyStep *)self setSliderMiddleLabel:?];
  }

  if ((*(v4 + 84) & 0x80) != 0)
  {
    self->_openResponseType = *(v4 + 24);
    *&self->_has |= 0x80u;
  }

  if (*(v4 + 11))
  {
    [(PDDPSurveyStep *)self setOpenResponseTeacherProvidedText:?];
  }

  v17 = *(v4 + 84);
  if ((v17 & 0x800) != 0)
  {
    self->_openResponseAllowMedia = *(v4 + 164);
    *&self->_has |= 0x800u;
    v17 = *(v4 + 84);
    if ((v17 & 0x40) == 0)
    {
LABEL_52:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }
  }

  else if ((v17 & 0x40) == 0)
  {
    goto LABEL_52;
  }

  self->_openResponseMinimumTextLength = *(v4 + 21);
  *&self->_has |= 0x40u;
  if ((*(v4 + 84) & 0x20) != 0)
  {
LABEL_53:
    self->_openResponseMaximumTextLength = *(v4 + 20);
    *&self->_has |= 0x20u;
  }

LABEL_54:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = *(v4 + 5);
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(PDDPSurveyStep *)self addClassIds:*(*(&v23 + 1) + 8 * j), v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v20);
  }
}

@end