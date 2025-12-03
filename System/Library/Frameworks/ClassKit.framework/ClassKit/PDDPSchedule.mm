@interface PDDPSchedule
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsScheduleAction:(id)action;
- (int)StringAsScheduledEntityType:(id)type;
- (int)scheduleAction;
- (int)scheduledEntityType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasScheduledEntityType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PDDPSchedule

- (int)scheduledEntityType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_scheduledEntityType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScheduledEntityType:(BOOL)type
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

- (int)StringAsScheduledEntityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"HANDOUT_TYPE"];
  }

  return v4;
}

- (int)scheduleAction
{
  if (*&self->_has)
  {
    return self->_scheduleAction;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsScheduleAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"UNKNOWN_ACTION"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [actionCopy isEqualToString:@"PUBLISH_ACTION"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPSchedule;
  v3 = [(PDDPSchedule *)&v7 description];
  dictionaryRepresentation = [(PDDPSchedule *)self dictionaryRepresentation];
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

  parentObjectId = self->_parentObjectId;
  if (parentObjectId)
  {
    [v4 setObject:parentObjectId forKey:@"parent_object_id"];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    scheduledEntityType = self->_scheduledEntityType;
    if (scheduledEntityType)
    {
      if (scheduledEntityType == 1)
      {
        v13 = @"HANDOUT_TYPE";
      }

      else
      {
        v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_scheduledEntityType];
      }
    }

    else
    {
      v13 = @"UNKNOWN_TYPE";
    }

    [v4 setObject:v13 forKey:@"scheduled_entity_type"];

    has = self->_has;
  }

  if (has)
  {
    scheduleAction = self->_scheduleAction;
    if (scheduleAction)
    {
      if (scheduleAction == 1)
      {
        v15 = @"PUBLISH_ACTION";
      }

      else
      {
        v15 = [NSString stringWithFormat:@"(unknown: %i)", self->_scheduleAction];
      }
    }

    else
    {
      v15 = @"UNKNOWN_ACTION";
    }

    [v4 setObject:v15 forKey:@"schedule_action"];
  }

  scheduleDate = self->_scheduleDate;
  if (scheduleDate)
  {
    dictionaryRepresentation3 = [(PDDPDate *)scheduleDate dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"schedule_date"];
  }

  classId = self->_classId;
  if (classId)
  {
    [v4 setObject:classId forKey:@"class_id"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    scheduledEntityType = self->_scheduledEntityType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    scheduleAction = self->_scheduleAction;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_scheduleDate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v6;
  }

  if (self->_parentObjectId)
  {
    [v6 setParentObjectId:?];
    toCopy = v6;
  }

  if (self->_dateCreated)
  {
    [v6 setDateCreated:?];
    toCopy = v6;
  }

  if (self->_dateLastModified)
  {
    [v6 setDateLastModified:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 16) = self->_scheduledEntityType;
    *(toCopy + 68) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 12) = self->_scheduleAction;
    *(toCopy + 68) |= 1u;
  }

  if (self->_scheduleDate)
  {
    [v6 setScheduleDate:?];
    toCopy = v6;
  }

  if (self->_classId)
  {
    [v6 setClassId:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_parentObjectId copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_scheduledEntityType;
    *(v5 + 68) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 12) = self->_scheduleAction;
    *(v5 + 68) |= 1u;
  }

  v15 = [(PDDPDate *)self->_scheduleDate copyWithZone:zone];
  v16 = v5[7];
  v5[7] = v15;

  v17 = [(NSString *)self->_classId copyWithZone:zone];
  v18 = v5[1];
  v5[1] = v17;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 4))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(equalCopy + 5))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 2))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_24;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 3))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v9 = *(equalCopy + 68);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_scheduledEntityType != *(equalCopy + 16))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
  {
LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_scheduleAction != *(equalCopy + 12))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_24;
  }

  scheduleDate = self->_scheduleDate;
  if (scheduleDate | *(equalCopy + 7) && ![(PDDPDate *)scheduleDate isEqual:?])
  {
    goto LABEL_24;
  }

  classId = self->_classId;
  if (classId | *(equalCopy + 1))
  {
    v12 = [(NSString *)classId isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_25:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectId hash];
  v4 = [(NSString *)self->_parentObjectId hash];
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = [(PDDPDate *)self->_dateLastModified hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_scheduledEntityType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_scheduleAction;
LABEL_6:
  v9 = v4 ^ v3 ^ v5 ^ v6;
  v10 = v7 ^ v8 ^ [(PDDPDate *)self->_scheduleDate hash];
  return v9 ^ v10 ^ [(NSString *)self->_classId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v12 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PDDPSchedule *)self setObjectId:?];
    fromCopy = v12;
  }

  if (*(fromCopy + 5))
  {
    [(PDDPSchedule *)self setParentObjectId:?];
    fromCopy = v12;
  }

  dateCreated = self->_dateCreated;
  v6 = *(fromCopy + 2);
  if (dateCreated)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(PDDPDate *)dateCreated mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(PDDPSchedule *)self setDateCreated:?];
  }

  fromCopy = v12;
LABEL_11:
  dateLastModified = self->_dateLastModified;
  v8 = *(fromCopy + 3);
  if (dateLastModified)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(PDDPDate *)dateLastModified mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(PDDPSchedule *)self setDateLastModified:?];
  }

  fromCopy = v12;
LABEL_17:
  v9 = *(fromCopy + 68);
  if ((v9 & 2) != 0)
  {
    self->_scheduledEntityType = fromCopy[16];
    *&self->_has |= 2u;
    v9 = *(fromCopy + 68);
  }

  if (v9)
  {
    self->_scheduleAction = fromCopy[12];
    *&self->_has |= 1u;
  }

  scheduleDate = self->_scheduleDate;
  v11 = *(fromCopy + 7);
  if (scheduleDate)
  {
    if (!v11)
    {
      goto LABEL_27;
    }

    scheduleDate = [(PDDPDate *)scheduleDate mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_27;
    }

    scheduleDate = [(PDDPSchedule *)self setScheduleDate:?];
  }

  fromCopy = v12;
LABEL_27:
  if (*(fromCopy + 1))
  {
    scheduleDate = [(PDDPSchedule *)self setClassId:?];
    fromCopy = v12;
  }

  _objc_release_x1(scheduleDate, fromCopy);
}

@end