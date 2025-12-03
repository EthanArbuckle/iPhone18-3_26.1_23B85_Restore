@interface CellularWcdmaRachAttempt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAccbState:(BOOL)state;
- (void)setHasAichStatus:(BOOL)status;
- (void)setHasAntenna:(BOOL)antenna;
- (void)setHasMsgLengthMs:(BOOL)ms;
- (void)setHasNumPreambles:(BOOL)preambles;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTxPwrDbm:(BOOL)dbm;
- (void)writeTo:(id)to;
@end

@implementation CellularWcdmaRachAttempt

- (void)setHasMsgLengthMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumPreambles:(BOOL)preambles
{
  if (preambles)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasAichStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTxPwrDbm:(BOOL)dbm
{
  if (dbm)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasAntenna:(BOOL)antenna
{
  if (antenna)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAccbState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularWcdmaRachAttempt;
  v3 = [(CellularWcdmaRachAttempt *)&v7 description];
  dictionaryRepresentation = [(CellularWcdmaRachAttempt *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v12 = [NSNumber numberWithUnsignedInt:self->_msgLengthMs];
  [v3 setObject:v12 forKey:@"msg_length_ms"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [NSNumber numberWithUnsignedInt:self->_numPreambles];
  [v3 setObject:v13 forKey:@"num_preambles"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [NSNumber numberWithUnsignedInt:self->_aichStatus];
  [v3 setObject:v14 forKey:@"aich_status"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = [NSNumber numberWithInt:self->_txPwrDbm];
  [v3 setObject:v15 forKey:@"tx_pwr_dbm"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = [NSNumber numberWithUnsignedInt:self->_antenna];
  [v3 setObject:v16 forKey:@"antenna"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_25:
  v17 = [NSNumber numberWithUnsignedInt:self->_accbState];
  [v3 setObject:v17 forKey:@"accb_state"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    v5 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v5 forKey:@"num_subs"];
  }

LABEL_10:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v7 = self->_has;
  if ((v7 & 0x100) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v8 forKey:@"subs_id"];

    v7 = self->_has;
  }

  if ((v7 & 0x80) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v9 forKey:@"ps_pref"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  msgLengthMs = self->_msgLengthMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  numPreambles = self->_numPreambles;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  aichStatus = self->_aichStatus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  txPwrDbm = self->_txPwrDbm;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  antenna = self->_antenna;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_25:
  accbState = self->_accbState;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((v6 & 0x100) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
  }

  if ((v6 & 0x80) != 0)
  {
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 30) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 7) = self->_msgLengthMs;
  *(toCopy + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 8) = self->_numPreambles;
  *(toCopy + 30) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 5) = self->_aichStatus;
  *(toCopy + 30) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 14) = self->_txPwrDbm;
  *(toCopy + 30) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 6) = self->_antenna;
  *(toCopy + 30) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_25:
  *(toCopy + 4) = self->_accbState;
  *(toCopy + 30) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    *(toCopy + 9) = self->_numSubs;
    *(toCopy + 30) |= 0x40u;
  }

LABEL_10:
  if (self->_plmn)
  {
    v7 = toCopy;
    [toCopy setPlmn:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x100) != 0)
  {
    *(toCopy + 13) = self->_subsId;
    *(toCopy + 30) |= 0x100u;
    v6 = self->_has;
  }

  if ((v6 & 0x80) != 0)
  {
    *(toCopy + 12) = self->_psPref;
    *(toCopy + 30) |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 30) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 7) = self->_msgLengthMs;
  *(v5 + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 8) = self->_numPreambles;
  *(v5 + 30) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 5) = self->_aichStatus;
  *(v5 + 30) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 14) = self->_txPwrDbm;
  *(v5 + 30) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 6) = self->_antenna;
  *(v5 + 30) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  *(v5 + 4) = self->_accbState;
  *(v5 + 30) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    *(v5 + 9) = self->_numSubs;
    *(v5 + 30) |= 0x40u;
  }

LABEL_10:
  v8 = [(NSData *)self->_plmn copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  v10 = self->_has;
  if ((v10 & 0x100) != 0)
  {
    *(v6 + 13) = self->_subsId;
    *(v6 + 30) |= 0x100u;
    v10 = self->_has;
  }

  if ((v10 & 0x80) != 0)
  {
    *(v6 + 12) = self->_psPref;
    *(v6 + 30) |= 0x80u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  has = self->_has;
  v6 = *(equalCopy + 30);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_55;
    }
  }

  else if (v6)
  {
    goto LABEL_55;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_msgLengthMs != *(equalCopy + 7))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_numPreambles != *(equalCopy + 8))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_aichStatus != *(equalCopy + 5))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_55;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 30) & 0x200) == 0 || self->_txPwrDbm != *(equalCopy + 14))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 30) & 0x200) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_antenna != *(equalCopy + 6))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_accbState != *(equalCopy + 4))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_numSubs != *(equalCopy + 9))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_55;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 5))
  {
    if (![(NSData *)plmn isEqual:?])
    {
LABEL_55:
      v9 = 0;
      goto LABEL_56;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 30);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 30) & 0x100) == 0 || self->_subsId != *(equalCopy + 13))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 30) & 0x100) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_psPref != *(equalCopy + 12))
    {
      goto LABEL_55;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v8 & 0x80) == 0;
  }

LABEL_56:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v16 = 2654435761u * self->_timestamp;
    if ((has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_msgLengthMs;
      if ((has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_numPreambles;
    if ((has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((has & 4) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_aichStatus;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_txPwrDbm;
    if ((has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_antenna;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v8 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = 2654435761 * self->_accbState;
  if ((has & 0x40) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_numSubs;
    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
LABEL_18:
  v11 = [(NSData *)self->_plmn hash];
  v12 = self->_has;
  if ((v12 & 0x100) != 0)
  {
    v13 = 2654435761 * self->_subsId;
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_20;
    }

LABEL_22:
    v14 = 0;
    return v4 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v11;
  }

  v13 = 0;
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v14 = 2654435761 * self->_psPref;
  return v4 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 30);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 30);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_msgLengthMs = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_numPreambles = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 30);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_aichStatus = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_txPwrDbm = *(fromCopy + 14);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 30);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_antenna = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 30);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_25:
  self->_accbState = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 30) & 0x40) != 0)
  {
LABEL_9:
    self->_numSubs = *(fromCopy + 9);
    *&self->_has |= 0x40u;
  }

LABEL_10:
  if (*(fromCopy + 5))
  {
    v7 = fromCopy;
    [(CellularWcdmaRachAttempt *)self setPlmn:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 30);
  if ((v6 & 0x100) != 0)
  {
    self->_subsId = *(fromCopy + 13);
    *&self->_has |= 0x100u;
    v6 = *(fromCopy + 30);
  }

  if ((v6 & 0x80) != 0)
  {
    self->_psPref = *(fromCopy + 12);
    *&self->_has |= 0x80u;
  }
}

@end