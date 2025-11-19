@interface KCellularTrackingAreaId
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularTrackingAreaId

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularTrackingAreaId;
  v3 = [(KCellularTrackingAreaId *)&v7 description];
  v4 = [(KCellularTrackingAreaId *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_tac];
    [v4 setObject:v6 forKey:@"tac"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_encodedPlmn)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    tac = self->_tac;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_encodedPlmn)
  {
    v5 = v4;
    [v4 setEncodedPlmn:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_tac;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encodedPlmn copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_tac;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  encodedPlmn = self->_encodedPlmn;
  if (encodedPlmn | *(v4 + 1))
  {
    if (![(NSData *)encodedPlmn isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_tac == *(v4 + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_encodedPlmn hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_tac;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(KCellularTrackingAreaId *)self setEncodedPlmn:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_tac = v4[4];
    *&self->_has |= 1u;
  }
}

@end