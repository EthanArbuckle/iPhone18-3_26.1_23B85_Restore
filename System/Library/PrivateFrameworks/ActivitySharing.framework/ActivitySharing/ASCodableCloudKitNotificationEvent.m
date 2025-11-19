@interface ASCodableCloudKitNotificationEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTriggerSnapshotIndex:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableCloudKitNotificationEvent

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTriggerSnapshotIndex:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableCloudKitNotificationEvent;
  v4 = [(ASCodableCloudKitNotificationEvent *)&v8 description];
  v5 = [(ASCodableCloudKitNotificationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [v3 setObject:v5 forKey:@"date"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v3 setObject:v6 forKey:@"type"];
  }

  triggerUUID = self->_triggerUUID;
  if (triggerUUID)
  {
    [v3 setObject:triggerUUID forKey:@"triggerUUID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_triggerSnapshotIndex];
    [v3 setObject:v8 forKey:@"triggerSnapshotIndex"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if (has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
  }

  if (self->_triggerUUID)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    triggerSnapshotIndex = self->_triggerSnapshotIndex;
    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = *&self->_date;
    *(v4 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[3] = self->_type;
    *(v4 + 40) |= 4u;
  }

  if (self->_triggerUUID)
  {
    v6 = v4;
    [v4 setTriggerUUID:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_triggerSnapshotIndex;
    *(v4 + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_type;
    *(v5 + 40) |= 4u;
  }

  v8 = [(NSData *)self->_triggerUUID copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_triggerSnapshotIndex;
    *(v6 + 40) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_type != *(v4 + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_19;
  }

  triggerUUID = self->_triggerUUID;
  if (triggerUUID | *(v4 + 4))
  {
    if (![(NSData *)triggerUUID isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 40) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_triggerSnapshotIndex != *(v4 + 2))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v2.i64 = floor(date + 0.5);
    v7 = (date - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_type;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSData *)self->_triggerUUID hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_triggerSnapshotIndex;
  }

  else
  {
    v11 = 0;
  }

  return v9 ^ v5 ^ v11 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5)
  {
    self->_date = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_type = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    v6 = v4;
    [(ASCodableCloudKitNotificationEvent *)self setTriggerUUID:?];
    v4 = v6;
  }

  if ((*(v4 + 40) & 2) != 0)
  {
    self->_triggerSnapshotIndex = *(v4 + 2);
    *&self->_has |= 2u;
  }
}

@end