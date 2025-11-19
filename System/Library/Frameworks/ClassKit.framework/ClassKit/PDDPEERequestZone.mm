@interface PDDPEERequestZone
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEERequestZone

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEERequestZone;
  v3 = [(PDDPEERequestZone *)&v7 description];
  v4 = [(PDDPEERequestZone *)self dictionaryRepresentation];
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
    v9 = [(PDDPAdminRequestRequestor *)requestor dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"requestor"];
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

  if (*&self->_has)
  {
    limit = self->_limit;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_cursor)
  {
    PBDataWriterWriteDataField();
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

  if (*&self->_has)
  {
    *(v4 + 4) = self->_limit;
    *(v4 + 40) |= 1u;
  }

  if (self->_cursor)
  {
    [v5 setCursor:?];
    v4 = v5;
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
  v7 = v5[4];
  v5[4] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_limit;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSData *)self->_cursor copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(PDDPAdminRequestRequestor *)self->_requestor copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  zoneName = self->_zoneName;
  if (zoneName | *(v4 + 4))
  {
    if (![(NSString *)zoneName isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_limit != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  cursor = self->_cursor;
  if (cursor | *(v4 + 1) && ![(NSData *)cursor isEqual:?])
  {
    goto LABEL_13;
  }

  requestor = self->_requestor;
  if (requestor | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 4))
  {
    [(PDDPEERequestZone *)self setZoneName:?];
    v4 = v7;
  }

  if (v4[10])
  {
    self->_limit = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(PDDPEERequestZone *)self setCursor:?];
    v4 = v7;
  }

  requestor = self->_requestor;
  v6 = *(v4 + 3);
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

  v4 = v7;
LABEL_13:

  _objc_release_x1(requestor, v4);
}

@end