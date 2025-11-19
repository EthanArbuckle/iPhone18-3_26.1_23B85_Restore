@interface PDDPClassMember
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRoles:(id)a3;
- (int)rolesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPClassMember

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = PDDPClassMember;
  [(PDDPClassMember *)&v3 dealloc];
}

- (int)rolesAtIndex:(unint64_t)a3
{
  p_roles = &self->_roles;
  count = self->_roles.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_roles->list[a3];
}

- (int)StringAsRoles:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_ROLE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"STUDENT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INSTRUCTOR"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPClassMember;
  v3 = [(PDDPClassMember *)&v7 description];
  v4 = [(PDDPClassMember *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  classMemberId = self->_classMemberId;
  if (classMemberId)
  {
    [v3 setObject:classMemberId forKey:@"class_member_id"];
  }

  classId = self->_classId;
  if (classId)
  {
    [v4 setObject:classId forKey:@"class_id"];
  }

  personId = self->_personId;
  if (personId)
  {
    [v4 setObject:personId forKey:@"person_id"];
  }

  p_roles = &self->_roles;
  if (self->_roles.count)
  {
    v9 = [NSMutableArray arrayWithCapacity:?];
    if (self->_roles.count)
    {
      v10 = 0;
      do
      {
        v11 = p_roles->list[v10];
        if (v11 >= 3)
        {
          v12 = [NSString stringWithFormat:@"(unknown: %i)", p_roles->list[v10]];
        }

        else
        {
          v12 = *(&off_100202ED0 + v11);
        }

        [v9 addObject:v12];

        ++v10;
      }

      while (v10 < self->_roles.count);
    }

    [v4 setObject:v9 forKey:@"roles"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    v14 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v16 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"date_last_modified"];
  }

  personIds = self->_personIds;
  if (personIds)
  {
    v18 = [(PDDPTypedValue *)personIds dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"person_ids"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_classMemberId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_personId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_roles.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_roles.list[v5];
      PBDataWriterWriteInt32Field();
      v4 = v7;
      ++v5;
    }

    while (v5 < self->_roles.count);
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_personIds)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_classMemberId)
  {
    [v8 setClassMemberId:?];
  }

  if (self->_classId)
  {
    [v8 setClassId:?];
  }

  if (self->_personId)
  {
    [v8 setPersonId:?];
  }

  if ([(PDDPClassMember *)self rolesCount])
  {
    [v8 clearRoles];
    v4 = [(PDDPClassMember *)self rolesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v8 addRoles:{-[PDDPClassMember rolesAtIndex:](self, "rolesAtIndex:", i)}];
      }
    }
  }

  if (self->_dateCreated)
  {
    [v8 setDateCreated:?];
  }

  v7 = v8;
  if (self->_dateLastModified)
  {
    [v8 setDateLastModified:?];
    v7 = v8;
  }

  if (self->_personIds)
  {
    [v8 setPersonIds:?];
    v7 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_classMemberId copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_classId copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_personId copyWithZone:a3];
  v11 = v5[8];
  v5[8] = v10;

  PBRepeatedInt32Copy();
  v12 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v15 = v5[7];
  v5[7] = v14;

  v16 = [(PDDPTypedValue *)self->_personIds copyWithZone:a3];
  v17 = v5[9];
  v5[9] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((classMemberId = self->_classMemberId, !(classMemberId | v4[5])) || -[NSString isEqual:](classMemberId, "isEqual:")) && ((classId = self->_classId, !(classId | v4[4])) || -[NSString isEqual:](classId, "isEqual:")) && ((personId = self->_personId, !(personId | v4[8])) || -[NSString isEqual:](personId, "isEqual:")) && PBRepeatedInt32IsEqual() && ((dateCreated = self->_dateCreated, !(dateCreated | v4[6])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | v4[7])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")))
  {
    personIds = self->_personIds;
    if (personIds | v4[9])
    {
      v11 = [(PDDPTypedValue *)personIds isEqual:?];
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
  v3 = [(NSString *)self->_classMemberId hash];
  v4 = [(NSString *)self->_classId hash]^ v3;
  v5 = [(NSString *)self->_personId hash];
  v6 = v4 ^ v5 ^ PBRepeatedInt32Hash();
  v7 = [(PDDPDate *)self->_dateCreated hash];
  v8 = v7 ^ [(PDDPDate *)self->_dateLastModified hash];
  return v6 ^ v8 ^ [(PDDPTypedValue *)self->_personIds hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (v4[5])
  {
    [(PDDPClassMember *)self setClassMemberId:?];
    v4 = v15;
  }

  if (v4[4])
  {
    [(PDDPClassMember *)self setClassId:?];
    v4 = v15;
  }

  if (v4[8])
  {
    [(PDDPClassMember *)self setPersonId:?];
    v4 = v15;
  }

  v5 = [v4 rolesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[PDDPClassMember addRoles:](self, "addRoles:", [v15 rolesAtIndex:i]);
    }
  }

  dateCreated = self->_dateCreated;
  v9 = v15;
  v10 = v15[6];
  if (dateCreated)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    [(PDDPDate *)dateCreated mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    [(PDDPClassMember *)self setDateCreated:?];
  }

  v9 = v15;
LABEL_16:
  dateLastModified = self->_dateLastModified;
  v12 = v9[7];
  if (dateLastModified)
  {
    if (!v12)
    {
      goto LABEL_22;
    }

    [(PDDPDate *)dateLastModified mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_22;
    }

    [(PDDPClassMember *)self setDateLastModified:?];
  }

  v9 = v15;
LABEL_22:
  personIds = self->_personIds;
  v14 = v9[9];
  if (personIds)
  {
    if (v14)
    {
      [(PDDPTypedValue *)personIds mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(PDDPClassMember *)self setPersonIds:?];
  }

  _objc_release_x1();
}

@end