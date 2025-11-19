@interface PDDPClass
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPClass

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPClass;
  v3 = [(PDDPClass *)&v7 description];
  v4 = [(PDDPClass *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  classId = self->_classId;
  if (classId)
  {
    [v3 setObject:classId forKey:@"class_id"];
  }

  className = self->_className;
  if (className)
  {
    [v4 setObject:className forKey:@"class_name"];
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

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"display_name"];
  }

  locationId = self->_locationId;
  if (locationId)
  {
    [v4 setObject:locationId forKey:@"location_id"];
  }

  entityMeta = self->_entityMeta;
  if (entityMeta)
  {
    v14 = [(PDDPEntityMeta *)entityMeta dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"entity_meta"];
  }

  iconIdentifier = self->_iconIdentifier;
  if (iconIdentifier)
  {
    [v4 setObject:iconIdentifier forKey:@"icon_identifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_className)
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

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_locationId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_entityMeta)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_iconIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_classId)
  {
    [v4 setClassId:?];
    v4 = v5;
  }

  if (self->_className)
  {
    [v5 setClassName:?];
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

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    v4 = v5;
  }

  if (self->_locationId)
  {
    [v5 setLocationId:?];
    v4 = v5;
  }

  if (self->_entityMeta)
  {
    [v5 setEntityMeta:?];
    v4 = v5;
  }

  if (self->_iconIdentifier)
  {
    [v5 setIconIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_classId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_className copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_displayName copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_locationId copyWithZone:a3];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(PDDPEntityMeta *)self->_entityMeta copyWithZone:a3];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(NSString *)self->_iconIdentifier copyWithZone:a3];
  v21 = v5[7];
  v5[7] = v20;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((classId = self->_classId, !(classId | v4[1])) || -[NSString isEqual:](classId, "isEqual:")) && ((className = self->_className, !(className | v4[2])) || -[NSString isEqual:](className, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | v4[3])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | v4[4])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")) && ((displayName = self->_displayName, !(displayName | v4[5])) || -[NSString isEqual:](displayName, "isEqual:")) && ((locationId = self->_locationId, !(locationId | v4[8])) || -[NSString isEqual:](locationId, "isEqual:")) && ((entityMeta = self->_entityMeta, !(entityMeta | v4[6])) || -[PDDPEntityMeta isEqual:](entityMeta, "isEqual:")))
  {
    iconIdentifier = self->_iconIdentifier;
    if (iconIdentifier | v4[7])
    {
      v13 = [(NSString *)iconIdentifier isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_classId hash];
  v4 = [(NSString *)self->_className hash]^ v3;
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = v4 ^ v5 ^ [(PDDPDate *)self->_dateLastModified hash];
  v7 = [(NSString *)self->_displayName hash];
  v8 = v7 ^ [(NSString *)self->_locationId hash];
  v9 = v6 ^ v8 ^ [(PDDPEntityMeta *)self->_entityMeta hash];
  return v9 ^ [(NSString *)self->_iconIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v10 = a3;
  if (v10[1])
  {
    [(PDDPClass *)self setClassId:?];
  }

  if (v10[2])
  {
    [(PDDPClass *)self setClassName:?];
  }

  dateCreated = self->_dateCreated;
  v5 = v10[3];
  if (dateCreated)
  {
    if (v5)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PDDPClass *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v7 = v10[4];
  if (dateLastModified)
  {
    if (v7)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPClass *)self setDateLastModified:?];
  }

  if (v10[5])
  {
    [(PDDPClass *)self setDisplayName:?];
  }

  if (v10[8])
  {
    [(PDDPClass *)self setLocationId:?];
  }

  entityMeta = self->_entityMeta;
  v9 = v10[6];
  if (entityMeta)
  {
    if (v9)
    {
      [(PDDPEntityMeta *)entityMeta mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPClass *)self setEntityMeta:?];
  }

  if (v10[7])
  {
    [(PDDPClass *)self setIconIdentifier:?];
  }
}

@end