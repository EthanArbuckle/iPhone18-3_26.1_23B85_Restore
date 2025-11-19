@interface CellularNrRrcResume
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasResumeRequestReason:(BOOL)a3;
- (void)setHasResumeSuccess:(BOOL)a3;
- (void)setHasResumeSuccessDuration:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularNrRrcResume

- (void)setHasResumeSuccessDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasResumeRequestReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasResumeSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasPsPref:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrRrcResume;
  v3 = [(CellularNrRrcResume *)&v7 description];
  v4 = [(CellularNrRrcResume *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v9 = [NSNumber numberWithUnsignedInt:self->_resumeSuccessDuration];
  [v3 setObject:v9 forKey:@"resume_success_duration"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [NSNumber numberWithUnsignedInt:self->_resumeRequestReason];
  [v3 setObject:v10 forKey:@"resume_request_reason"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [NSNumber numberWithBool:self->_resumeSuccess];
  [v3 setObject:v11 forKey:@"resume_success"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v12 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  v13 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v13 forKey:@"num_subs"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    v5 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v5 forKey:@"ps_pref"];
  }

LABEL_9:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  resumeSuccessDuration = self->_resumeSuccessDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  resumeRequestReason = self->_resumeRequestReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  resumeSuccess = self->_resumeSuccess;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 52) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 10) = self->_resumeSuccessDuration;
  *(v4 + 52) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 9) = self->_resumeRequestReason;
  *(v4 + 52) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 48) = self->_resumeSuccess;
  *(v4 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  *(v4 + 4) = self->_numSubs;
  *(v4 + 52) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    *(v4 + 8) = self->_psPref;
    *(v4 + 52) |= 4u;
  }

LABEL_8:
  if (self->_plmn)
  {
    v6 = v4;
    [v4 setPlmn:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v4 + 11) = self->_subsId;
    *(v4 + 52) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 52) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 10) = self->_resumeSuccessDuration;
  *(v5 + 52) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 9) = self->_resumeRequestReason;
  *(v5 + 52) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 48) = self->_resumeSuccess;
  *(v5 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v5 + 4) = self->_numSubs;
  *(v5 + 52) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    *(v5 + 8) = self->_psPref;
    *(v5 + 52) |= 4u;
  }

LABEL_8:
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 11) = self->_subsId;
    *(v6 + 52) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = *(v4 + 52);
  if (has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_42;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 52) & 0x10) == 0 || self->_resumeSuccessDuration != *(v4 + 10))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 52) & 0x10) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0 || self->_resumeRequestReason != *(v4 + 9))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 52) & 8) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 52) & 0x40) == 0)
    {
      goto LABEL_42;
    }

    v7 = *(v4 + 48);
    if (self->_resumeSuccess)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 52) & 0x40) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_numSubs != *(v4 + 4))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_psPref != *(v4 + 8))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_42;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 3))
  {
    if ([(NSData *)plmn isEqual:?])
    {
      has = self->_has;
      goto LABEL_38;
    }

LABEL_42:
    v9 = 0;
    goto LABEL_43;
  }

LABEL_38:
  v9 = (*(v4 + 52) & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 52) & 0x20) == 0 || self->_subsId != *(v4 + 11))
    {
      goto LABEL_42;
    }

    v9 = 1;
  }

LABEL_43:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_resumeSuccessDuration;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_resumeRequestReason;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v5 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_resumeSuccess;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v7 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_psPref;
    goto LABEL_14;
  }

LABEL_13:
  v8 = 0;
LABEL_14:
  v9 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v10 = 2654435761 * self->_subsId;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 52);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 52);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 52) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_resumeSuccessDuration = *(v4 + 10);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_resumeRequestReason = *(v4 + 9);
  *&self->_has |= 8u;
  v5 = *(v4 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_resumeSuccess = *(v4 + 48);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  self->_numSubs = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 52) & 4) != 0)
  {
LABEL_7:
    self->_psPref = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_8:
  if (*(v4 + 3))
  {
    v6 = v4;
    [(CellularNrRrcResume *)self setPlmn:?];
    v4 = v6;
  }

  if ((*(v4 + 52) & 0x20) != 0)
  {
    self->_subsId = *(v4 + 11);
    *&self->_has |= 0x20u;
  }
}

@end