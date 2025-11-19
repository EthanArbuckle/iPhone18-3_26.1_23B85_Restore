@interface SPProtoSockPuppetIDSObject
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoSockPuppetIDSObject

- (id)description
{
  v7.receiver = self;
  v7.super_class = SPProtoSockPuppetIDSObject;
  v3 = [(SPProtoSockPuppetIDSObject *)&v7 description];
  v4 = [(SPProtoSockPuppetIDSObject *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_type];
  [v3 setObject:v4 forKey:@"type"];

  objectData = self->_objectData;
  if (objectData)
  {
    [v3 setObject:objectData forKey:@"objectData"];
  }

  receiver = self->_receiver;
  if (receiver)
  {
    [v3 setObject:receiver forKey:@"receiver"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  type = self->_type;
  PBDataWriterWriteInt32Field();
  objectData = self->_objectData;
  PBDataWriterWriteDataField();
  if (self->_receiver)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[6] = self->_type;
  v5 = v4;
  [v4 setObjectData:self->_objectData];
  if (self->_receiver)
  {
    [v5 setReceiver:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[6] = self->_type;
  v6 = [(NSData *)self->_objectData copyWithZone:a3];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = [(NSString *)self->_receiver copyWithZone:a3];
  v9 = *(v5 + 2);
  *(v5 + 2) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_type == *(v4 + 6) && ((objectData = self->_objectData, !(objectData | v4[1])) || -[NSData isEqual:](objectData, "isEqual:")))
  {
    receiver = self->_receiver;
    if (receiver | v4[2])
    {
      v7 = [(NSString *)receiver isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_type;
  v4 = [(NSData *)self->_objectData hash];
  return v4 ^ [(NSString *)self->_receiver hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_type = v4[6];
  v5 = v4;
  if (*(v4 + 1))
  {
    [(SPProtoSockPuppetIDSObject *)self setObjectData:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(SPProtoSockPuppetIDSObject *)self setReceiver:?];
    v4 = v5;
  }
}

@end