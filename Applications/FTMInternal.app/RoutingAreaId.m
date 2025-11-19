@interface RoutingAreaId
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRac:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RoutingAreaId

- (void)setHasRac:(BOOL)a3
{
  if (a3)
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
  v4 = [(RoutingAreaId *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_encodedPlmn)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    lac = self->_lac;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    rac = self->_rac;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_encodedPlmn)
  {
    v6 = v4;
    [v4 setEncodedPlmn:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 4) = self->_lac;
    *(v4 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_rac;
    *(v4 + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encodedPlmn copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  encodedPlmn = self->_encodedPlmn;
  if (encodedPlmn | *(v4 + 1))
  {
    if (![(NSData *)encodedPlmn isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_lac != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_rac != *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(RoutingAreaId *)self setEncodedPlmn:?];
    v4 = v6;
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    self->_lac = v4[4];
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_rac = v4[5];
    *&self->_has |= 2u;
  }
}

@end