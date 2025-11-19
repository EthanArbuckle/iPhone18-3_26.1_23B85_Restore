@interface PDDPSchedule
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsScheduleAction:(id)a3;
- (int)StringAsScheduledEntityType:(id)a3;
- (int)scheduleAction;
- (int)scheduledEntityType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasScheduledEntityType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasScheduledEntityType:(BOOL)a3
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

- (int)StringAsScheduledEntityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"HANDOUT_TYPE"];
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

- (int)StringAsScheduleAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_ACTION"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"PUBLISH_ACTION"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPSchedule;
  v3 = [(PDDPSchedule *)&v7 description];
  v4 = [(PDDPSchedule *)self dictionaryRepresentation];
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
    v17 = [(PDDPDate *)scheduleDate dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"schedule_date"];
  }

  classId = self->_classId;
  if (classId)
  {
    [v4 setObject:classId forKey:@"class_id"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    scheduledEntityType = self->_scheduledEntityType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    scheduleAction = self->_scheduleAction;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_scheduleDate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
    v4 = v6;
  }

  if (self->_parentObjectId)
  {
    [v6 setParentObjectId:?];
    v4 = v6;
  }

  if (self->_dateCreated)
  {
    [v6 setDateCreated:?];
    v4 = v6;
  }

  if (self->_dateLastModified)
  {
    [v6 setDateLastModified:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 16) = self->_scheduledEntityType;
    *(v4 + 68) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 12) = self->_scheduleAction;
    *(v4 + 68) |= 1u;
  }

  if (self->_scheduleDate)
  {
    [v6 setScheduleDate:?];
    v4 = v6;
  }

  if (self->_classId)
  {
    [v6 setClassId:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
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

  v15 = [(PDDPDate *)self->_scheduleDate copyWithZone:a3];
  v16 = v5[7];
  v5[7] = v15;

  v17 = [(NSString *)self->_classId copyWithZone:a3];
  v18 = v5[1];
  v5[1] = v17;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  objectId = self->_objectId;
  if (objectId | *(v4 + 4))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(v4 + 5))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 2))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_24;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(v4 + 3))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v9 = *(v4 + 68);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_scheduledEntityType != *(v4 + 16))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_scheduleAction != *(v4 + 12))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_24;
  }

  scheduleDate = self->_scheduleDate;
  if (scheduleDate | *(v4 + 7) && ![(PDDPDate *)scheduleDate isEqual:?])
  {
    goto LABEL_24;
  }

  classId = self->_classId;
  if (classId | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (*(v4 + 4))
  {
    [(PDDPSchedule *)self setObjectId:?];
    v4 = v12;
  }

  if (*(v4 + 5))
  {
    [(PDDPSchedule *)self setParentObjectId:?];
    v4 = v12;
  }

  dateCreated = self->_dateCreated;
  v6 = *(v4 + 2);
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

  v4 = v12;
LABEL_11:
  dateLastModified = self->_dateLastModified;
  v8 = *(v4 + 3);
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

  v4 = v12;
LABEL_17:
  v9 = *(v4 + 68);
  if ((v9 & 2) != 0)
  {
    self->_scheduledEntityType = v4[16];
    *&self->_has |= 2u;
    v9 = *(v4 + 68);
  }

  if (v9)
  {
    self->_scheduleAction = v4[12];
    *&self->_has |= 1u;
  }

  scheduleDate = self->_scheduleDate;
  v11 = *(v4 + 7);
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

  v4 = v12;
LABEL_27:
  if (*(v4 + 1))
  {
    scheduleDate = [(PDDPSchedule *)self setClassId:?];
    v4 = v12;
  }

  _objc_release_x1(scheduleDate, v4);
}

@end