@interface PDDPGroup
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPGroup

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPGroup;
  v3 = [(PDDPGroup *)&v7 description];
  v4 = [(PDDPGroup *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v8 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v10 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"date_last_modified"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_groupId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_groupName)
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

  if (self->_locationId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_email)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_groupId)
  {
    [v4 setGroupId:?];
    v4 = v5;
  }

  if (self->_groupName)
  {
    [v5 setGroupName:?];
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

  if (self->_locationId)
  {
    [v5 setLocationId:?];
    v4 = v5;
  }

  if (self->_email)
  {
    [v5 setEmail:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_groupId copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_groupName copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_locationId copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_email copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((groupId = self->_groupId, !(groupId | v4[4])) || -[NSString isEqual:](groupId, "isEqual:")) && ((groupName = self->_groupName, !(groupName | v4[5])) || -[NSString isEqual:](groupName, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | v4[1])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | v4[2])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")) && ((locationId = self->_locationId, !(locationId | v4[6])) || -[NSString isEqual:](locationId, "isEqual:")))
  {
    email = self->_email;
    if (email | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v8 = a3;
  if (v8[4])
  {
    [(PDDPGroup *)self setGroupId:?];
  }

  if (v8[5])
  {
    [(PDDPGroup *)self setGroupName:?];
  }

  dateCreated = self->_dateCreated;
  v5 = v8[1];
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
  v7 = v8[2];
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

  if (v8[6])
  {
    [(PDDPGroup *)self setLocationId:?];
  }

  if (v8[3])
  {
    [(PDDPGroup *)self setEmail:?];
  }
}

@end