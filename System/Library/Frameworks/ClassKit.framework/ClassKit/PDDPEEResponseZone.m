@interface PDDPEEResponseZone
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEEResponseZone

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEEResponseZone;
  v3 = [(PDDPEEResponseZone *)&v7 description];
  v4 = [(PDDPEEResponseZone *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v7 = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"status"];
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
    v11 = [(PDDPAdminRequestRequestor *)requestor dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"requestor"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_cursor)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    totalFound = self->_totalFound;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_requestor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_zoneName)
  {
    [v4 setZoneName:?];
    v4 = v5;
  }

  if (self->_status)
  {
    [v5 setStatus:?];
    v4 = v5;
  }

  if (self->_cursor)
  {
    [v5 setCursor:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_totalFound;
    *(v4 + 48) |= 1u;
  }

  if (self->_requestor)
  {
    [v5 setRequestor:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_zoneName copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(PDDPStatus *)self->_status copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_cursor copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_totalFound;
    *(v5 + 48) |= 1u;
  }

  v12 = [(PDDPAdminRequestRequestor *)self->_requestor copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  zoneName = self->_zoneName;
  if (zoneName | *(v4 + 5))
  {
    if (![(NSString *)zoneName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  status = self->_status;
  if (status | *(v4 + 3))
  {
    if (![(PDDPStatus *)status isEqual:?])
    {
      goto LABEL_15;
    }
  }

  cursor = self->_cursor;
  if (cursor | *(v4 + 1))
  {
    if (![(NSData *)cursor isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_totalFound != *(v4 + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  requestor = self->_requestor;
  if (requestor | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 5))
  {
    [(PDDPEEResponseZone *)self setZoneName:?];
    v4 = v9;
  }

  status = self->_status;
  v6 = *(v4 + 3);
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

  v4 = v9;
LABEL_9:
  if (*(v4 + 1))
  {
    [(PDDPEEResponseZone *)self setCursor:?];
    v4 = v9;
  }

  if (v4[12])
  {
    self->_totalFound = v4[8];
    *&self->_has |= 1u;
  }

  requestor = self->_requestor;
  v8 = *(v4 + 2);
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

  v4 = v9;
LABEL_19:

  _objc_release_x1(requestor, v4);
}

@end