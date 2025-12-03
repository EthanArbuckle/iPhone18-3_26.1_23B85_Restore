@interface SPProtoSockPuppetIDSObject
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoSockPuppetIDSObject

- (id)description
{
  v7.receiver = self;
  v7.super_class = SPProtoSockPuppetIDSObject;
  v3 = [(SPProtoSockPuppetIDSObject *)&v7 description];
  dictionaryRepresentation = [(SPProtoSockPuppetIDSObject *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  PBDataWriterWriteInt32Field();
  objectData = self->_objectData;
  PBDataWriterWriteDataField();
  if (self->_receiver)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[6] = self->_type;
  v5 = toCopy;
  [toCopy setObjectData:self->_objectData];
  if (self->_receiver)
  {
    [v5 setReceiver:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[6] = self->_type;
  v6 = [(NSData *)self->_objectData copyWithZone:zone];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = [(NSString *)self->_receiver copyWithZone:zone];
  v9 = *(v5 + 2);
  *(v5 + 2) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_type == *(equalCopy + 6) && ((objectData = self->_objectData, !(objectData | equalCopy[1])) || -[NSData isEqual:](objectData, "isEqual:")))
  {
    receiver = self->_receiver;
    if (receiver | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_type = fromCopy[6];
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(SPProtoSockPuppetIDSObject *)self setObjectData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(SPProtoSockPuppetIDSObject *)self setReceiver:?];
    fromCopy = v5;
  }
}

@end