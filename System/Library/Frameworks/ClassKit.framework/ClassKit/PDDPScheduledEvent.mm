@interface PDDPScheduledEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPScheduledEvent

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPScheduledEvent;
  v3 = [(PDDPScheduledEvent *)&v7 description];
  dictionaryRepresentation = [(PDDPScheduledEvent *)self dictionaryRepresentation];
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

  eventDate = self->_eventDate;
  if (eventDate)
  {
    dictionaryRepresentation3 = [(PDDPDate *)eventDate dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"event_date"];
  }

  classId = self->_classId;
  if (classId)
  {
    [v4 setObject:classId forKey:@"class_id"];
  }

  status = self->_status;
  if (status)
  {
    dictionaryRepresentation4 = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"status"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_eventDate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v5;
  }

  if (self->_parentObjectId)
  {
    [v5 setParentObjectId:?];
    toCopy = v5;
  }

  if (self->_dateCreated)
  {
    [v5 setDateCreated:?];
    toCopy = v5;
  }

  if (self->_dateLastModified)
  {
    [v5 setDateLastModified:?];
    toCopy = v5;
  }

  if (self->_eventDate)
  {
    [v5 setEventDate:?];
    toCopy = v5;
  }

  if (self->_classId)
  {
    [v5 setClassId:?];
    toCopy = v5;
  }

  if (self->_status)
  {
    [v5 setStatus:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_parentObjectId copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(PDDPDate *)self->_eventDate copyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  v16 = [(NSString *)self->_classId copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((objectId = self->_objectId, !(objectId | equalCopy[5])) || -[NSString isEqual:](objectId, "isEqual:")) && ((parentObjectId = self->_parentObjectId, !(parentObjectId | equalCopy[6])) || -[NSString isEqual:](parentObjectId, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | equalCopy[2])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | equalCopy[3])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")) && ((eventDate = self->_eventDate, !(eventDate | equalCopy[4])) || -[PDDPDate isEqual:](eventDate, "isEqual:")) && ((classId = self->_classId, !(classId | equalCopy[1])) || -[NSString isEqual:](classId, "isEqual:")))
  {
    status = self->_status;
    if (status | equalCopy[7])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    [(PDDPScheduledEvent *)self setObjectId:?];
  }

  if (fromCopy[6])
  {
    [(PDDPScheduledEvent *)self setParentObjectId:?];
  }

  dateCreated = self->_dateCreated;
  v5 = fromCopy[2];
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
  v7 = fromCopy[3];
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
  v9 = fromCopy[4];
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

  if (fromCopy[1])
  {
    [(PDDPScheduledEvent *)self setClassId:?];
  }

  status = self->_status;
  v11 = fromCopy[7];
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