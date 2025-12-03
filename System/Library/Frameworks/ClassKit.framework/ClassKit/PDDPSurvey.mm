@interface PDDPSurvey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addClassIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPSurvey

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_SURVEY_TYPE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"EXIT_TICKET_TYPE"];
  }

  return v4;
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
  v7.super_class = PDDPSurvey;
  v3 = [(PDDPSurvey *)&v7 description];
  dictionaryRepresentation = [(PDDPSurvey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type)
    {
      if (type == 1)
      {
        v5 = @"EXIT_TICKET_TYPE";
      }

      else
      {
        v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
      }
    }

    else
    {
      v5 = @"UNKNOWN_SURVEY_TYPE";
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId)
  {
    [v3 setObject:parentObjectId forKey:@"parent_object_id"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  createdBy = self->_createdBy;
  if (createdBy)
  {
    [v3 setObject:createdBy forKey:@"created_by"];
  }

  studentDateFirstSubmitted = self->_studentDateFirstSubmitted;
  if (studentDateFirstSubmitted)
  {
    dictionaryRepresentation3 = [(PDDPDate *)studentDateFirstSubmitted dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"student_date_first_submitted"];
  }

  teacherDateLastModified = self->_teacherDateLastModified;
  if (teacherDateLastModified)
  {
    dictionaryRepresentation4 = [(PDDPDate *)teacherDateLastModified dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"teacher_date_last_modified"];
  }

  etag = self->_etag;
  if (etag)
  {
    [v3 setObject:etag forKey:@"etag"];
  }

  classIds = self->_classIds;
  if (classIds)
  {
    [v3 setObject:classIds forKey:@"class_ids"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

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

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_createdBy)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_studentDateFirstSubmitted)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_teacherDateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_classIds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[22] = self->_type;
    *(toCopy + 92) |= 1u;
  }

  v9 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
  }

  if (self->_parentObjectId)
  {
    [v9 setParentObjectId:?];
  }

  if (self->_dateCreated)
  {
    [v9 setDateCreated:?];
  }

  if (self->_dateLastModified)
  {
    [v9 setDateLastModified:?];
  }

  if (self->_title)
  {
    [v9 setTitle:?];
  }

  if (self->_createdBy)
  {
    [v9 setCreatedBy:?];
  }

  if (self->_studentDateFirstSubmitted)
  {
    [v9 setStudentDateFirstSubmitted:?];
  }

  if (self->_teacherDateLastModified)
  {
    [v9 setTeacherDateLastModified:?];
  }

  if (self->_etag)
  {
    [v9 setEtag:?];
  }

  if ([(PDDPSurvey *)self classIdsCount])
  {
    [v9 clearClassIds];
    classIdsCount = [(PDDPSurvey *)self classIdsCount];
    if (classIdsCount)
    {
      v6 = classIdsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPSurvey *)self classIdsAtIndex:i];
        [v9 addClassIds:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 22) = self->_type;
    *(v5 + 92) |= 1u;
  }

  v7 = [(NSString *)self->_objectId copyWithZone:zone];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(NSString *)self->_parentObjectId copyWithZone:zone];
  v10 = v6[7];
  v6[7] = v9;

  v11 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v14 = v6[4];
  v6[4] = v13;

  v15 = [(NSString *)self->_title copyWithZone:zone];
  v16 = v6[10];
  v6[10] = v15;

  v17 = [(NSString *)self->_createdBy copyWithZone:zone];
  v18 = v6[2];
  v6[2] = v17;

  v19 = [(PDDPDate *)self->_studentDateFirstSubmitted copyWithZone:zone];
  v20 = v6[8];
  v6[8] = v19;

  v21 = [(PDDPDate *)self->_teacherDateLastModified copyWithZone:zone];
  v22 = v6[9];
  v6[9] = v21;

  v23 = [(NSString *)self->_etag copyWithZone:zone];
  v24 = v6[5];
  v6[5] = v23;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_classIds;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v32 + 1) + 8 * i) copyWithZone:{zone, v32}];
        [v6 addClassIds:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v27);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = *(equalCopy + 92);
  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_type != *(equalCopy + 22))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 92))
  {
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 6) && ![(NSString *)objectId isEqual:?])
  {
    goto LABEL_27;
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(equalCopy + 7))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_27;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 3))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_27;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 4))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_27;
    }
  }

  title = self->_title;
  if (title | *(equalCopy + 10))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_27;
    }
  }

  createdBy = self->_createdBy;
  if (createdBy | *(equalCopy + 2))
  {
    if (![(NSString *)createdBy isEqual:?])
    {
      goto LABEL_27;
    }
  }

  studentDateFirstSubmitted = self->_studentDateFirstSubmitted;
  if (studentDateFirstSubmitted | *(equalCopy + 8))
  {
    if (![(PDDPDate *)studentDateFirstSubmitted isEqual:?])
    {
      goto LABEL_27;
    }
  }

  teacherDateLastModified = self->_teacherDateLastModified;
  if (teacherDateLastModified | *(equalCopy + 9))
  {
    if (![(PDDPDate *)teacherDateLastModified isEqual:?])
    {
      goto LABEL_27;
    }
  }

  etag = self->_etag;
  if (etag | *(equalCopy + 5))
  {
    if (![(NSString *)etag isEqual:?])
    {
      goto LABEL_27;
    }
  }

  classIds = self->_classIds;
  if (classIds | *(equalCopy + 1))
  {
    v16 = [(NSMutableArray *)classIds isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_28:

  return v16;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_objectId hash]^ v3;
  v5 = [(NSString *)self->_parentObjectId hash];
  v6 = v4 ^ v5 ^ [(PDDPDate *)self->_dateCreated hash];
  v7 = [(PDDPDate *)self->_dateLastModified hash];
  v8 = v7 ^ [(NSString *)self->_title hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_createdBy hash];
  v10 = [(PDDPDate *)self->_studentDateFirstSubmitted hash];
  v11 = v10 ^ [(PDDPDate *)self->_teacherDateLastModified hash];
  v12 = v11 ^ [(NSString *)self->_etag hash];
  return v9 ^ v12 ^ [(NSMutableArray *)self->_classIds hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[23])
  {
    self->_type = fromCopy[22];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(PDDPSurvey *)self setObjectId:?];
  }

  if (*(v5 + 7))
  {
    [(PDDPSurvey *)self setParentObjectId:?];
  }

  dateCreated = self->_dateCreated;
  v7 = *(v5 + 3);
  if (dateCreated)
  {
    if (v7)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPSurvey *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v9 = *(v5 + 4);
  if (dateLastModified)
  {
    if (v9)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPSurvey *)self setDateLastModified:?];
  }

  if (*(v5 + 10))
  {
    [(PDDPSurvey *)self setTitle:?];
  }

  if (*(v5 + 2))
  {
    [(PDDPSurvey *)self setCreatedBy:?];
  }

  studentDateFirstSubmitted = self->_studentDateFirstSubmitted;
  v11 = *(v5 + 8);
  if (studentDateFirstSubmitted)
  {
    if (v11)
    {
      [(PDDPDate *)studentDateFirstSubmitted mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(PDDPSurvey *)self setStudentDateFirstSubmitted:?];
  }

  teacherDateLastModified = self->_teacherDateLastModified;
  v13 = *(v5 + 9);
  if (teacherDateLastModified)
  {
    if (v13)
    {
      [(PDDPDate *)teacherDateLastModified mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(PDDPSurvey *)self setTeacherDateLastModified:?];
  }

  if (*(v5 + 5))
  {
    [(PDDPSurvey *)self setEtag:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = *(v5 + 1);
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(PDDPSurvey *)self addClassIds:*(*(&v19 + 1) + 8 * i), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

@end