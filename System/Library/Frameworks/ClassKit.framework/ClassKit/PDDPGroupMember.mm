@interface PDDPGroupMember
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPGroupMember

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPGroupMember;
  v3 = [(PDDPGroupMember *)&v7 description];
  v4 = [(PDDPGroupMember *)self dictionaryRepresentation];
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

  personIds = self->_personIds;
  if (personIds)
  {
    v7 = [(PDDPTypedValue *)personIds dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"person_ids"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    v9 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v11 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"date_last_modified"];
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

  if (self->_personIds)
  {
    PBDataWriterWriteSubmessage();
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

  if (self->_personIds)
  {
    [v5 setPersonIds:?];
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
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_groupId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PDDPTypedValue *)self->_personIds copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((groupId = self->_groupId, !(groupId | v4[3])) || -[NSString isEqual:](groupId, "isEqual:")) && ((personIds = self->_personIds, !(personIds | v4[4])) || -[PDDPTypedValue isEqual:](personIds, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | v4[1])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")))
  {
    dateLastModified = self->_dateLastModified;
    if (dateLastModified | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v10 = a3;
  if (v10[3])
  {
    [(PDDPGroupMember *)self setGroupId:?];
  }

  personIds = self->_personIds;
  v5 = v10[4];
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
  v7 = v10[1];
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
  v9 = v10[2];
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