@interface PDDPEERequestZone
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPEERequestZone

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEERequestZone;
  v3 = [(PDDPEERequestZone *)&v7 description];
  dictionaryRepresentation = [(PDDPEERequestZone *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  zoneName = self->_zoneName;
  if (zoneName)
  {
    [v3 setObject:zoneName forKey:@"zone_name"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithInt:self->_limit];
    [v4 setObject:v6 forKey:@"limit"];
  }

  cursor = self->_cursor;
  if (cursor)
  {
    [v4 setObject:cursor forKey:@"cursor"];
  }

  requestor = self->_requestor;
  if (requestor)
  {
    dictionaryRepresentation = [(PDDPAdminRequestRequestor *)requestor dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"requestor"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    limit = self->_limit;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_cursor)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_requestor)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_zoneName)
  {
    [toCopy setZoneName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_limit;
    *(toCopy + 40) |= 1u;
  }

  if (self->_cursor)
  {
    [v5 setCursor:?];
    toCopy = v5;
  }

  if (self->_requestor)
  {
    [v5 setRequestor:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_zoneName copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_limit;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSData *)self->_cursor copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(PDDPAdminRequestRequestor *)self->_requestor copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  zoneName = self->_zoneName;
  if (zoneName | *(equalCopy + 4))
  {
    if (![(NSString *)zoneName isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_limit != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  cursor = self->_cursor;
  if (cursor | *(equalCopy + 1) && ![(NSData *)cursor isEqual:?])
  {
    goto LABEL_13;
  }

  requestor = self->_requestor;
  if (requestor | *(equalCopy + 3))
  {
    v9 = [(PDDPAdminRequestRequestor *)requestor isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_zoneName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_limit;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSData *)self->_cursor hash];
  return v5 ^ v6 ^ [(PDDPAdminRequestRequestor *)self->_requestor hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PDDPEERequestZone *)self setZoneName:?];
    fromCopy = v7;
  }

  if (fromCopy[10])
  {
    self->_limit = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(PDDPEERequestZone *)self setCursor:?];
    fromCopy = v7;
  }

  requestor = self->_requestor;
  v6 = *(fromCopy + 3);
  if (requestor)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    requestor = [(PDDPAdminRequestRequestor *)requestor mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    requestor = [(PDDPEERequestZone *)self setRequestor:?];
  }

  fromCopy = v7;
LABEL_13:

  _objc_release_x1(requestor, fromCopy);
}

@end