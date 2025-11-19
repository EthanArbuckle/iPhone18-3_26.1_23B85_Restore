@interface PDDPAssessment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAssessmentMode:(id)a3;
- (int)assessmentMode;
- (unint64_t)hash;
- (void)addInstructionAssets:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAllowLateSubmissions:(BOOL)a3;
- (void)setHasAssessmentMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPAssessment

- (void)setHasAllowLateSubmissions:(BOOL)a3
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

- (int)assessmentMode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_assessmentMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAssessmentMode:(BOOL)a3
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

- (int)StringAsAssessmentMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_MODE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"OPEN_MODE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LOCKED_TO_SCHOOLWORK_MODE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addInstructionAssets:(id)a3
{
  v4 = a3;
  instructionAssets = self->_instructionAssets;
  v8 = v4;
  if (!instructionAssets)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_instructionAssets;
    self->_instructionAssets = v6;

    v4 = v8;
    instructionAssets = self->_instructionAssets;
  }

  [(NSMutableArray *)instructionAssets addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPAssessment;
  v3 = [(PDDPAssessment *)&v7 description];
  v4 = [(PDDPAssessment *)self dictionaryRepresentation];
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

  makerUserId = self->_makerUserId;
  if (makerUserId)
  {
    [v4 setObject:makerUserId forKey:@"maker_user_id"];
  }

  etag = self->_etag;
  if (etag)
  {
    [v4 setObject:etag forKey:@"etag"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [NSNumber numberWithBool:self->_allowLateSubmissions];
    [v4 setObject:v14 forKey:@"allow_late_submissions"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_15:
      if ((has & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = [NSNumber numberWithDouble:self->_takerTimeLimitInSeconds];
  [v4 setObject:v15 forKey:@"taker_time_limit_in_seconds"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  assessmentMode = self->_assessmentMode;
  if (assessmentMode >= 3)
  {
    v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_assessmentMode];
  }

  else
  {
    v17 = off_100205700[assessmentMode];
  }

  [v4 setObject:v17 forKey:@"assessment_mode"];

LABEL_23:
  createdByGivenName = self->_createdByGivenName;
  if (createdByGivenName)
  {
    [v4 setObject:createdByGivenName forKey:@"created_by_given_name"];
  }

  createdByFamilyName = self->_createdByFamilyName;
  if (createdByFamilyName)
  {
    [v4 setObject:createdByFamilyName forKey:@"created_by_family_name"];
  }

  baseAsset = self->_baseAsset;
  if (baseAsset)
  {
    v21 = [(PDDPAsset *)baseAsset dictionaryRepresentation];
    [v4 setObject:v21 forKey:@"base_asset"];
  }

  baseMarkupAsset = self->_baseMarkupAsset;
  if (baseMarkupAsset)
  {
    v23 = [(PDDPAsset *)baseMarkupAsset dictionaryRepresentation];
    [v4 setObject:v23 forKey:@"base_markup_asset"];
  }

  questionDataAsset = self->_questionDataAsset;
  if (questionDataAsset)
  {
    v25 = [(PDDPAsset *)questionDataAsset dictionaryRepresentation];
    [v4 setObject:v25 forKey:@"question_data_asset"];
  }

  aggregateDataAsset = self->_aggregateDataAsset;
  if (aggregateDataAsset)
  {
    v27 = [(PDDPAsset *)aggregateDataAsset dictionaryRepresentation];
    [v4 setObject:v27 forKey:@"aggregate_data_asset"];
  }

  if ([(NSMutableArray *)self->_instructionAssets count])
  {
    v28 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_instructionAssets, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = self->_instructionAssets;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v37;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v28 addObject:v34];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v31);
    }

    [v4 setObject:v28 forKey:@"instruction_assets"];
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

  if (self->_makerUserId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    allowLateSubmissions = self->_allowLateSubmissions;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_15:
      if ((has & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  takerTimeLimitInSeconds = self->_takerTimeLimitInSeconds;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_16:
    assessmentMode = self->_assessmentMode;
    PBDataWriterWriteInt32Field();
  }

LABEL_17:
  if (self->_createdByGivenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_createdByFamilyName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_baseAsset)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_baseMarkupAsset)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_questionDataAsset)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_aggregateDataAsset)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_instructionAssets;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
    v4 = v10;
  }

  if (self->_parentObjectId)
  {
    [v10 setParentObjectId:?];
    v4 = v10;
  }

  if (self->_dateCreated)
  {
    [v10 setDateCreated:?];
    v4 = v10;
  }

  if (self->_dateLastModified)
  {
    [v10 setDateLastModified:?];
    v4 = v10;
  }

  if (self->_makerUserId)
  {
    [v10 setMakerUserId:?];
    v4 = v10;
  }

  if (self->_etag)
  {
    [v10 setEtag:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 128) = self->_allowLateSubmissions;
    *(v4 + 132) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_15:
      if ((has & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  *(v4 + 1) = *&self->_takerTimeLimitInSeconds;
  *(v4 + 132) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_16:
    *(v4 + 6) = self->_assessmentMode;
    *(v4 + 132) |= 2u;
  }

LABEL_17:
  if (self->_createdByGivenName)
  {
    [v10 setCreatedByGivenName:?];
  }

  if (self->_createdByFamilyName)
  {
    [v10 setCreatedByFamilyName:?];
  }

  if (self->_baseAsset)
  {
    [v10 setBaseAsset:?];
  }

  if (self->_baseMarkupAsset)
  {
    [v10 setBaseMarkupAsset:?];
  }

  if (self->_questionDataAsset)
  {
    [v10 setQuestionDataAsset:?];
  }

  if (self->_aggregateDataAsset)
  {
    [v10 setAggregateDataAsset:?];
  }

  if ([(PDDPAssessment *)self instructionAssetsCount])
  {
    [v10 clearInstructionAssets];
    v6 = [(PDDPAssessment *)self instructionAssetsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPAssessment *)self instructionAssetsAtIndex:i];
        [v10 addInstructionAssets:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = v5[13];
  v5[13] = v6;

  v8 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v9 = v5[14];
  v5[14] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[8];
  v5[8] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v13 = v5[9];
  v5[9] = v12;

  v14 = [(NSString *)self->_makerUserId copyWithZone:a3];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSString *)self->_etag copyWithZone:a3];
  v17 = v5[10];
  v5[10] = v16;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 128) = self->_allowLateSubmissions;
    *(v5 + 132) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v5[1] = *&self->_takerTimeLimitInSeconds;
  *(v5 + 132) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 6) = self->_assessmentMode;
    *(v5 + 132) |= 2u;
  }

LABEL_5:
  v19 = [(NSString *)self->_createdByGivenName copyWithZone:a3];
  v20 = v5[7];
  v5[7] = v19;

  v21 = [(NSString *)self->_createdByFamilyName copyWithZone:a3];
  v22 = v5[6];
  v5[6] = v21;

  v23 = [(PDDPAsset *)self->_baseAsset copyWithZone:a3];
  v24 = v5[4];
  v5[4] = v23;

  v25 = [(PDDPAsset *)self->_baseMarkupAsset copyWithZone:a3];
  v26 = v5[5];
  v5[5] = v25;

  v27 = [(PDDPAsset *)self->_questionDataAsset copyWithZone:a3];
  v28 = v5[15];
  v5[15] = v27;

  v29 = [(PDDPAsset *)self->_aggregateDataAsset copyWithZone:a3];
  v30 = v5[2];
  v5[2] = v29;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = self->_instructionAssets;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v39;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v38 + 1) + 8 * i) copyWithZone:{a3, v38}];
        [v5 addInstructionAssets:v36];
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v33);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  objectId = self->_objectId;
  if (objectId | *(v4 + 13))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(v4 + 14))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 8))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_46;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(v4 + 9))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_46;
    }
  }

  makerUserId = self->_makerUserId;
  if (makerUserId | *(v4 + 12))
  {
    if (![(NSString *)makerUserId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  etag = self->_etag;
  if (etag | *(v4 + 10))
  {
    if (![(NSString *)etag isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v11 = *(v4 + 132);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 132) & 4) == 0)
    {
      goto LABEL_16;
    }

LABEL_46:
    v20 = 0;
    goto LABEL_47;
  }

  if ((*(v4 + 132) & 4) == 0)
  {
    goto LABEL_46;
  }

  v12 = *(v4 + 128);
  if (self->_allowLateSubmissions)
  {
    if ((*(v4 + 128) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (*(v4 + 128))
  {
    goto LABEL_46;
  }

LABEL_16:
  if (*&self->_has)
  {
    if ((*(v4 + 132) & 1) == 0 || self->_takerTimeLimitInSeconds != *(v4 + 1))
    {
      goto LABEL_46;
    }
  }

  else if (*(v4 + 132))
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 132) & 2) == 0 || self->_assessmentMode != *(v4 + 6))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 132) & 2) != 0)
  {
    goto LABEL_46;
  }

  createdByGivenName = self->_createdByGivenName;
  if (createdByGivenName | *(v4 + 7) && ![(NSString *)createdByGivenName isEqual:?])
  {
    goto LABEL_46;
  }

  createdByFamilyName = self->_createdByFamilyName;
  if (createdByFamilyName | *(v4 + 6))
  {
    if (![(NSString *)createdByFamilyName isEqual:?])
    {
      goto LABEL_46;
    }
  }

  baseAsset = self->_baseAsset;
  if (baseAsset | *(v4 + 4))
  {
    if (![(PDDPAsset *)baseAsset isEqual:?])
    {
      goto LABEL_46;
    }
  }

  baseMarkupAsset = self->_baseMarkupAsset;
  if (baseMarkupAsset | *(v4 + 5))
  {
    if (![(PDDPAsset *)baseMarkupAsset isEqual:?])
    {
      goto LABEL_46;
    }
  }

  questionDataAsset = self->_questionDataAsset;
  if (questionDataAsset | *(v4 + 15))
  {
    if (![(PDDPAsset *)questionDataAsset isEqual:?])
    {
      goto LABEL_46;
    }
  }

  aggregateDataAsset = self->_aggregateDataAsset;
  if (aggregateDataAsset | *(v4 + 2))
  {
    if (![(PDDPAsset *)aggregateDataAsset isEqual:?])
    {
      goto LABEL_46;
    }
  }

  instructionAssets = self->_instructionAssets;
  if (instructionAssets | *(v4 + 11))
  {
    v20 = [(NSMutableArray *)instructionAssets isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_47:

  return v20;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectId hash];
  v4 = [(NSString *)self->_parentObjectId hash];
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = [(PDDPDate *)self->_dateLastModified hash];
  v7 = [(NSString *)self->_makerUserId hash];
  v8 = [(NSString *)self->_etag hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_allowLateSubmissions;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v11 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  takerTimeLimitInSeconds = self->_takerTimeLimitInSeconds;
  if (takerTimeLimitInSeconds < 0.0)
  {
    takerTimeLimitInSeconds = -takerTimeLimitInSeconds;
  }

  *v9.i64 = floor(takerTimeLimitInSeconds + 0.5);
  v13 = (takerTimeLimitInSeconds - *v9.i64) * 1.84467441e19;
  *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v10, v9).i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    v16 = 2654435761 * self->_assessmentMode;
  }

  else
  {
    v16 = 0;
  }

  v17 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v11;
  v18 = v15 ^ v16 ^ [(NSString *)self->_createdByGivenName hash];
  v19 = v18 ^ [(NSString *)self->_createdByFamilyName hash];
  v20 = v17 ^ v19 ^ [(PDDPAsset *)self->_baseAsset hash];
  v21 = [(PDDPAsset *)self->_baseMarkupAsset hash];
  v22 = v21 ^ [(PDDPAsset *)self->_questionDataAsset hash];
  v23 = v22 ^ [(PDDPAsset *)self->_aggregateDataAsset hash];
  return v20 ^ v23 ^ [(NSMutableArray *)self->_instructionAssets hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 13))
  {
    [(PDDPAssessment *)self setObjectId:?];
  }

  if (*(v4 + 14))
  {
    [(PDDPAssessment *)self setParentObjectId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(v4 + 8);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPAssessment *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(v4 + 9);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPAssessment *)self setDateLastModified:?];
  }

  if (*(v4 + 12))
  {
    [(PDDPAssessment *)self setMakerUserId:?];
  }

  if (*(v4 + 10))
  {
    [(PDDPAssessment *)self setEtag:?];
  }

  v9 = *(v4 + 132);
  if ((v9 & 4) != 0)
  {
    self->_allowLateSubmissions = *(v4 + 128);
    *&self->_has |= 4u;
    v9 = *(v4 + 132);
    if ((v9 & 1) == 0)
    {
LABEL_21:
      if ((v9 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((*(v4 + 132) & 1) == 0)
  {
    goto LABEL_21;
  }

  self->_takerTimeLimitInSeconds = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 132) & 2) != 0)
  {
LABEL_22:
    self->_assessmentMode = *(v4 + 6);
    *&self->_has |= 2u;
  }

LABEL_23:
  if (*(v4 + 7))
  {
    [(PDDPAssessment *)self setCreatedByGivenName:?];
  }

  if (*(v4 + 6))
  {
    [(PDDPAssessment *)self setCreatedByFamilyName:?];
  }

  baseAsset = self->_baseAsset;
  v11 = *(v4 + 4);
  if (baseAsset)
  {
    if (v11)
    {
      [(PDDPAsset *)baseAsset mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(PDDPAssessment *)self setBaseAsset:?];
  }

  baseMarkupAsset = self->_baseMarkupAsset;
  v13 = *(v4 + 5);
  if (baseMarkupAsset)
  {
    if (v13)
    {
      [(PDDPAsset *)baseMarkupAsset mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(PDDPAssessment *)self setBaseMarkupAsset:?];
  }

  questionDataAsset = self->_questionDataAsset;
  v15 = *(v4 + 15);
  if (questionDataAsset)
  {
    if (v15)
    {
      [(PDDPAsset *)questionDataAsset mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(PDDPAssessment *)self setQuestionDataAsset:?];
  }

  aggregateDataAsset = self->_aggregateDataAsset;
  v17 = *(v4 + 2);
  if (aggregateDataAsset)
  {
    if (v17)
    {
      [(PDDPAsset *)aggregateDataAsset mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(PDDPAssessment *)self setAggregateDataAsset:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = *(v4 + 11);
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(PDDPAssessment *)self addInstructionAssets:*(*(&v23 + 1) + 8 * i), v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }
}

@end