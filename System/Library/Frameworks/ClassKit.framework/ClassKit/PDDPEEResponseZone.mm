@interface PDDPEEResponseZone
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPEEResponseZone

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEEResponseZone;
  v3 = [(PDDPEEResponseZone *)&v7 description];
  dictionaryRepresentation = [(PDDPEEResponseZone *)self dictionaryRepresentation];
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

  status = self->_status;
  if (status)
  {
    dictionaryRepresentation = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"status"];
  }

  cursor = self->_cursor;
  if (cursor)
  {
    [v4 setObject:cursor forKey:@"cursor"];
  }

  if (*&self->_has)
  {
    v9 = [NSNumber numberWithInt:self->_totalFound];
    [v4 setObject:v9 forKey:@"total_found"];
  }

  requestor = self->_requestor;
  if (requestor)
  {
    dictionaryRepresentation2 = [(PDDPAdminRequestRequestor *)requestor dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"requestor"];
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

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_cursor)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    totalFound = self->_totalFound;
    PBDataWriterWriteInt32Field();
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

  if (self->_status)
  {
    [v5 setStatus:?];
    toCopy = v5;
  }

  if (self->_cursor)
  {
    [v5 setCursor:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_totalFound;
    *(toCopy + 48) |= 1u;
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
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_cursor copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_totalFound;
    *(v5 + 48) |= 1u;
  }

  v12 = [(PDDPAdminRequestRequestor *)self->_requestor copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  zoneName = self->_zoneName;
  if (zoneName | *(equalCopy + 5))
  {
    if (![(NSString *)zoneName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  status = self->_status;
  if (status | *(equalCopy + 3))
  {
    if (![(PDDPStatus *)status isEqual:?])
    {
      goto LABEL_15;
    }
  }

  cursor = self->_cursor;
  if (cursor | *(equalCopy + 1))
  {
    if (![(NSData *)cursor isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_totalFound != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  requestor = self->_requestor;
  if (requestor | *(equalCopy + 2))
  {
    v10 = [(PDDPAdminRequestRequestor *)requestor isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_zoneName hash];
  v4 = [(PDDPStatus *)self->_status hash];
  v5 = [(NSData *)self->_cursor hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_totalFound;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(PDDPAdminRequestRequestor *)self->_requestor hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(PDDPEEResponseZone *)self setZoneName:?];
    fromCopy = v9;
  }

  status = self->_status;
  v6 = *(fromCopy + 3);
  if (status)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PDDPStatus *)status mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PDDPEEResponseZone *)self setStatus:?];
  }

  fromCopy = v9;
LABEL_9:
  if (*(fromCopy + 1))
  {
    [(PDDPEEResponseZone *)self setCursor:?];
    fromCopy = v9;
  }

  if (fromCopy[12])
  {
    self->_totalFound = fromCopy[8];
    *&self->_has |= 1u;
  }

  requestor = self->_requestor;
  v8 = *(fromCopy + 2);
  if (requestor)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    requestor = [(PDDPAdminRequestRequestor *)requestor mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    requestor = [(PDDPEEResponseZone *)self setRequestor:?];
  }

  fromCopy = v9;
LABEL_19:

  _objc_release_x1(requestor, fromCopy);
}

@end