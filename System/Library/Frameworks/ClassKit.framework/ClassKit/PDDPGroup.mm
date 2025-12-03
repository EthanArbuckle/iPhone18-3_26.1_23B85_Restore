@interface PDDPGroup
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPGroup

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPGroup;
  v3 = [(PDDPGroup *)&v7 description];
  dictionaryRepresentation = [(PDDPGroup *)self dictionaryRepresentation];
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

  groupName = self->_groupName;
  if (groupName)
  {
    [v4 setObject:groupName forKey:@"group_name"];
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

  locationId = self->_locationId;
  if (locationId)
  {
    [v4 setObject:locationId forKey:@"location_id"];
  }

  email = self->_email;
  if (email)
  {
    [v4 setObject:email forKey:@"email"];
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

  if (self->_groupName)
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

  if (self->_locationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_email)
  {
    PBDataWriterWriteStringField();
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

  if (self->_groupName)
  {
    [v5 setGroupName:?];
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

  if (self->_locationId)
  {
    [v5 setLocationId:?];
    toCopy = v5;
  }

  if (self->_email)
  {
    [v5 setEmail:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_groupId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_groupName copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_locationId copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_email copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((groupId = self->_groupId, !(groupId | equalCopy[4])) || -[NSString isEqual:](groupId, "isEqual:")) && ((groupName = self->_groupName, !(groupName | equalCopy[5])) || -[NSString isEqual:](groupName, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | equalCopy[1])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | equalCopy[2])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")) && ((locationId = self->_locationId, !(locationId | equalCopy[6])) || -[NSString isEqual:](locationId, "isEqual:")))
  {
    email = self->_email;
    if (email | equalCopy[3])
    {
      v11 = [(NSString *)email isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_groupId hash];
  v4 = [(NSString *)self->_groupName hash]^ v3;
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = v4 ^ v5 ^ [(PDDPDate *)self->_dateLastModified hash];
  v7 = [(NSString *)self->_locationId hash];
  return v6 ^ v7 ^ [(NSString *)self->_email hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(PDDPGroup *)self setGroupId:?];
  }

  if (fromCopy[5])
  {
    [(PDDPGroup *)self setGroupName:?];
  }

  dateCreated = self->_dateCreated;
  v5 = fromCopy[1];
  if (dateCreated)
  {
    if (v5)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PDDPGroup *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v7 = fromCopy[2];
  if (dateLastModified)
  {
    if (v7)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPGroup *)self setDateLastModified:?];
  }

  if (fromCopy[6])
  {
    [(PDDPGroup *)self setLocationId:?];
  }

  if (fromCopy[3])
  {
    [(PDDPGroup *)self setEmail:?];
  }
}

@end