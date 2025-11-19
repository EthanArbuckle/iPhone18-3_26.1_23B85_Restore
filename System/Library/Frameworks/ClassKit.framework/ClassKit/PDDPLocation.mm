@interface PDDPLocation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPLocation

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPLocation;
  v3 = [(PDDPLocation *)&v7 description];
  v4 = [(PDDPLocation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  locationId = self->_locationId;
  if (locationId)
  {
    [v3 setObject:locationId forKey:@"location_id"];
  }

  locationName = self->_locationName;
  if (locationName)
  {
    [v4 setObject:locationName forKey:@"location_name"];
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

  entityMeta = self->_entityMeta;
  if (entityMeta)
  {
    v12 = [(PDDPEntityMeta *)entityMeta dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"entity_meta"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_locationId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_locationName)
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

  if (self->_entityMeta)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_locationId)
  {
    [v4 setLocationId:?];
    v4 = v5;
  }

  if (self->_locationName)
  {
    [v5 setLocationName:?];
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

  if (self->_entityMeta)
  {
    [v5 setEntityMeta:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_locationId copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_locationName copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(PDDPEntityMeta *)self->_entityMeta copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((locationId = self->_locationId, !(locationId | v4[4])) || -[NSString isEqual:](locationId, "isEqual:")) && ((locationName = self->_locationName, !(locationName | v4[5])) || -[NSString isEqual:](locationName, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | v4[1])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | v4[2])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")))
  {
    entityMeta = self->_entityMeta;
    if (entityMeta | v4[3])
    {
      v10 = [(PDDPEntityMeta *)entityMeta isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_locationId hash];
  v4 = [(NSString *)self->_locationName hash]^ v3;
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = v4 ^ v5 ^ [(PDDPDate *)self->_dateLastModified hash];
  return v6 ^ [(PDDPEntityMeta *)self->_entityMeta hash];
}

- (void)mergeFrom:(id)a3
{
  v10 = a3;
  if (v10[4])
  {
    [(PDDPLocation *)self setLocationId:?];
  }

  if (v10[5])
  {
    [(PDDPLocation *)self setLocationName:?];
  }

  dateCreated = self->_dateCreated;
  v5 = v10[1];
  if (dateCreated)
  {
    if (v5)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PDDPLocation *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v7 = v10[2];
  if (dateLastModified)
  {
    if (v7)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPLocation *)self setDateLastModified:?];
  }

  entityMeta = self->_entityMeta;
  v9 = v10[3];
  if (entityMeta)
  {
    if (v9)
    {
      [(PDDPEntityMeta *)entityMeta mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPLocation *)self setEntityMeta:?];
  }
}

@end