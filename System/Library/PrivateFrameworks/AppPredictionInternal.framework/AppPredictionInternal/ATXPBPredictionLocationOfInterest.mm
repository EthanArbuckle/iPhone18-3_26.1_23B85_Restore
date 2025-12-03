@interface ATXPBPredictionLocationOfInterest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLongitude:(BOOL)longitude;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ATXPBPredictionLocationOfInterest

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Home"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Work"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"School"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Gym"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLongitude:(BOOL)longitude
{
  if (longitude)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBPredictionLocationOfInterest;
  v4 = [(ATXPBPredictionLocationOfInterest *)&v8 description];
  dictionaryRepresentation = [(ATXPBPredictionLocationOfInterest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    if (type >= 5)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v8 = off_278598ED8[type];
    }

    [v4 setObject:v8 forKey:@"type"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
    [v4 setObject:v9 forKey:@"latitude"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
    [v4 setObject:v10 forKey:@"longitude"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  latitude = self->_latitude;
  PBDataWriterWriteDoubleField();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    longitude = self->_longitude;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_uuid)
  {
    v6 = toCopy;
    [toCopy setUuid:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 6) = self->_type;
    *(toCopy + 40) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 1) = *&self->_latitude;
  *(toCopy + 40) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 2) = *&self->_longitude;
    *(toCopy + 40) |= 2u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_latitude;
    *(v5 + 40) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_type;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_longitude;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 4))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_type != *(equalCopy + 6))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_latitude != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_longitude != *(equalCopy + 2))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_type;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  latitude = self->_latitude;
  if (latitude < 0.0)
  {
    latitude = -latitude;
  }

  *v4.i64 = floor(latitude + 0.5);
  v8 = (latitude - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
  v10 = 2654435761u * *v4.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v4.i64 = floor(longitude + 0.5);
    v13 = (longitude - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(ATXPBPredictionLocationOfInterest *)self setUuid:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 4) != 0)
  {
    self->_type = *(fromCopy + 6);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 40);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 40) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_latitude = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 40) & 2) != 0)
  {
LABEL_6:
    self->_longitude = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_7:
}

@end