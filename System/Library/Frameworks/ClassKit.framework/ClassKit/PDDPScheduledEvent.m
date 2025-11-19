@interface PDDPScheduledEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPScheduledEvent

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPScheduledEvent;
  v3 = [(PDDPScheduledEvent *)&v7 description];
  v4 = [(PDDPScheduledEvent *)self dictionaryRepresentation];
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

  eventDate = self->_eventDate;
  if (eventDate)
  {
    v12 = [(PDDPDate *)eventDate dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"event_date"];
  }

  classId = self->_classId;
  if (classId)
  {
    [v4 setObject:classId forKey:@"class_id"];
  }

  status = self->_status;
  if (status)
  {
    v15 = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"status"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_eventDate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
    v4 = v5;
  }

  if (self->_parentObjectId)
  {
    [v5 setParentObjectId:?];
    v4 = v5;
  }

  if (self->_dateCreated)
  {
    [v5 setDateCreated:?];
    v4 = v5;
  }

  if (self->_dateLastModified)
  {
    [v5 setDateLastModified:?];
    v4 = v5;
  }

  if (self->_eventDate)
  {
    [v5 setEventDate:?];
    v4 = v5;
  }

  if (self->_classId)
  {
    [v5 setClassId:?];
    v4 = v5;
  }

  if (self->_status)
  {
    [v5 setStatus:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(PDDPDate *)self->_eventDate copyWithZone:a3];
  v15 = v5[4];
  v5[4] = v14;

  v16 = [(NSString *)self->_classId copyWithZone:a3];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(PDDPStatus *)self->_status copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((objectId = self->_objectId, !(objectId | v4[5])) || -[NSString isEqual:](objectId, "isEqual:")) && ((parentObjectId = self->_parentObjectId, !(parentObjectId | v4[6])) || -[NSString isEqual:](parentObjectId, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | v4[2])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | v4[3])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")) && ((eventDate = self->_eventDate, !(eventDate | v4[4])) || -[PDDPDate isEqual:](eventDate, "isEqual:")) && ((classId = self->_classId, !(classId | v4[1])) || -[NSString isEqual:](classId, "isEqual:")))
  {
    status = self->_status;
    if (status | v4[7])
    {
      v12 = [(PDDPStatus *)status isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectId hash];
  v4 = [(NSString *)self->_parentObjectId hash]^ v3;
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = v4 ^ v5 ^ [(PDDPDate *)self->_dateLastModified hash];
  v7 = [(PDDPDate *)self->_eventDate hash];
  v8 = v7 ^ [(NSString *)self->_classId hash];
  return v6 ^ v8 ^ [(PDDPStatus *)self->_status hash];
}

- (void)mergeFrom:(id)a3
{
  v12 = a3;
  if (v12[5])
  {
    [(PDDPScheduledEvent *)self setObjectId:?];
  }

  if (v12[6])
  {
    [(PDDPScheduledEvent *)self setParentObjectId:?];
  }

  dateCreated = self->_dateCreated;
  v5 = v12[2];
  if (dateCreated)
  {
    if (v5)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PDDPScheduledEvent *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v7 = v12[3];
  if (dateLastModified)
  {
    if (v7)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPScheduledEvent *)self setDateLastModified:?];
  }

  eventDate = self->_eventDate;
  v9 = v12[4];
  if (eventDate)
  {
    if (v9)
    {
      [(PDDPDate *)eventDate mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPScheduledEvent *)self setEventDate:?];
  }

  if (v12[1])
  {
    [(PDDPScheduledEvent *)self setClassId:?];
  }

  status = self->_status;
  v11 = v12[7];
  if (status)
  {
    if (v11)
    {
      [(PDDPStatus *)status mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(PDDPScheduledEvent *)self setStatus:?];
  }
}

@end