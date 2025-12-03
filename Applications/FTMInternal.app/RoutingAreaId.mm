@interface RoutingAreaId
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRac:(BOOL)rac;
- (void)writeTo:(id)to;
@end

@implementation RoutingAreaId

- (void)setHasRac:(BOOL)rac
{
  if (rac)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RoutingAreaId;
  v3 = [(RoutingAreaId *)&v7 description];
  dictionaryRepresentation = [(RoutingAreaId *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  encodedPlmn = self->_encodedPlmn;
  if (encodedPlmn)
  {
    [v3 setObject:encodedPlmn forKey:@"encoded_plmn"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_lac];
    [v4 setObject:v7 forKey:@"lac"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_rac];
    [v4 setObject:v8 forKey:@"rac"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_encodedPlmn)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    lac = self->_lac;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    rac = self->_rac;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_encodedPlmn)
  {
    v6 = toCopy;
    [toCopy setEncodedPlmn:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = self->_lac;
    *(toCopy + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_rac;
    *(toCopy + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_encodedPlmn copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 4) = self->_lac;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 5) = self->_rac;
    *(v5 + 24) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  encodedPlmn = self->_encodedPlmn;
  if (encodedPlmn | *(equalCopy + 1))
  {
    if (![(NSData *)encodedPlmn isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_lac != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_rac != *(equalCopy + 5))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_encodedPlmn hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_lac;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_rac;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(RoutingAreaId *)self setEncodedPlmn:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_lac = fromCopy[4];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_rac = fromCopy[5];
    *&self->_has |= 2u;
  }
}

@end