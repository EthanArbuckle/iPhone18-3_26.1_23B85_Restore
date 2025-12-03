@interface PDDPGroupMember
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPGroupMember

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPGroupMember;
  v3 = [(PDDPGroupMember *)&v7 description];
  dictionaryRepresentation = [(PDDPGroupMember *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  groupId = self->_groupId;
  if (groupId)
  {
    [v3 setObject:groupId forKey:@"group_id"];
  }

  personIds = self->_personIds;
  if (personIds)
  {
    dictionaryRepresentation = [(PDDPTypedValue *)personIds dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"person_ids"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation3 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"date_last_modified"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_groupId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_personIds)
  {
    PBDataWriterWriteSubmessage();
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_groupId)
  {
    [toCopy setGroupId:?];
    toCopy = v5;
  }

  if (self->_personIds)
  {
    [v5 setPersonIds:?];
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_groupId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PDDPTypedValue *)self->_personIds copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((groupId = self->_groupId, !(groupId | equalCopy[3])) || -[NSString isEqual:](groupId, "isEqual:")) && ((personIds = self->_personIds, !(personIds | equalCopy[4])) || -[PDDPTypedValue isEqual:](personIds, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | equalCopy[1])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")))
  {
    dateLastModified = self->_dateLastModified;
    if (dateLastModified | equalCopy[2])
    {
      v9 = [(PDDPDate *)dateLastModified isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_groupId hash];
  v4 = [(PDDPTypedValue *)self->_personIds hash]^ v3;
  v5 = [(PDDPDate *)self->_dateCreated hash];
  return v4 ^ v5 ^ [(PDDPDate *)self->_dateLastModified hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(PDDPGroupMember *)self setGroupId:?];
  }

  personIds = self->_personIds;
  v5 = fromCopy[4];
  if (personIds)
  {
    if (v5)
    {
      [(PDDPTypedValue *)personIds mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PDDPGroupMember *)self setPersonIds:?];
  }

  dateCreated = self->_dateCreated;
  v7 = fromCopy[1];
  if (dateCreated)
  {
    if (v7)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPGroupMember *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v9 = fromCopy[2];
  if (dateLastModified)
  {
    if (v9)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPGroupMember *)self setDateLastModified:?];
  }
}

@end