@interface CellularNrEpsFallbackCallFastReturnStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFirstCampedSys:(id)sys;
- (int)firstCampedSys;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFastReturnResult:(BOOL)result;
- (void)setHasFastReturnState:(BOOL)state;
- (void)setHasFirstCampedSys:(BOOL)sys;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasReturnDelay:(BOOL)delay;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularNrEpsFallbackCallFastReturnStats

- (void)setHasFastReturnState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasFastReturnResult:(BOOL)result
{
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasReturnDelay:(BOOL)delay
{
  if (delay)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)firstCampedSys
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_firstCampedSys;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFirstCampedSys:(BOOL)sys
{
  if (sys)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsFirstCampedSys:(id)sys
{
  sysCopy = sys;
  if ([sysCopy isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 12;
  }

  else if ([sysCopy isEqualToString:@"SYS_MODE_CDMA_HDR"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrEpsFallbackCallFastReturnStats;
  v3 = [(CellularNrEpsFallbackCallFastReturnStats *)&v7 description];
  dictionaryRepresentation = [(CellularNrEpsFallbackCallFastReturnStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_fastReturnState];
  [v3 setObject:v10 forKey:@"fast_return_state"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [NSNumber numberWithUnsignedInt:self->_fastReturnResult];
  [v3 setObject:v11 forKey:@"fast_return_result"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [NSNumber numberWithUnsignedInt:self->_returnDelay];
  [v3 setObject:v12 forKey:@"return_delay"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_20:
  firstCampedSys = self->_firstCampedSys;
  if (firstCampedSys < 0x10 && ((0x9FFFu >> firstCampedSys) & 1) != 0)
  {
    v14 = *(&off_100318DB0 + firstCampedSys);
  }

  else
  {
    v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_firstCampedSys];
  }

  [v3 setObject:v14 forKey:@"first_camped_sys"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_25:
  v15 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v15 forKey:@"num_subs"];

  if ((*&self->_has & 0x20) != 0)
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

  if ((*&self->_has & 0x80000000) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v7 forKey:@"subs_id"];
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  fastReturnState = self->_fastReturnState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  fastReturnResult = self->_fastReturnResult;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  returnDelay = self->_returnDelay;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  firstCampedSys = self->_firstCampedSys;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    subsId = self->_subsId;
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
    *(toCopy + 52) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 5) = self->_fastReturnState;
  *(toCopy + 52) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(toCopy + 4) = self->_fastReturnResult;
  *(toCopy + 52) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(toCopy + 11) = self->_returnDelay;
  *(toCopy + 52) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(toCopy + 6) = self->_firstCampedSys;
  *(toCopy + 52) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  *(toCopy + 7) = self->_numSubs;
  *(toCopy + 52) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    *(toCopy + 10) = self->_psPref;
    *(toCopy + 52) |= 0x20u;
  }

LABEL_9:
  if (self->_plmn)
  {
    v6 = toCopy;
    [toCopy setPlmn:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(toCopy + 12) = self->_subsId;
    *(toCopy + 52) |= 0x80u;
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
    *(v5 + 52) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 5) = self->_fastReturnState;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 4) = self->_fastReturnResult;
  *(v5 + 52) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 11) = self->_returnDelay;
  *(v5 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 6) = self->_firstCampedSys;
  *(v5 + 52) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  *(v5 + 7) = self->_numSubs;
  *(v5 + 52) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    *(v5 + 10) = self->_psPref;
    *(v5 + 52) |= 0x20u;
  }

LABEL_9:
  v8 = [(NSData *)self->_plmn copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v6 + 12) = self->_subsId;
    *(v6 + 52) |= 0x80u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  has = self->_has;
  v6 = equalCopy[52];
  if (has)
  {
    if ((equalCopy[52] & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_45;
    }
  }

  else if (equalCopy[52])
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[52] & 4) == 0 || self->_fastReturnState != *(equalCopy + 5))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[52] & 4) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[52] & 2) == 0 || self->_fastReturnResult != *(equalCopy + 4))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[52] & 2) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((equalCopy[52] & 0x40) == 0 || self->_returnDelay != *(equalCopy + 11))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[52] & 0x40) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[52] & 8) == 0 || self->_firstCampedSys != *(equalCopy + 6))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[52] & 8) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((equalCopy[52] & 0x10) == 0 || self->_numSubs != *(equalCopy + 7))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[52] & 0x10) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((equalCopy[52] & 0x20) == 0 || self->_psPref != *(equalCopy + 10))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[52] & 0x20) != 0)
  {
    goto LABEL_45;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 4))
  {
    if (![(NSData *)plmn isEqual:?])
    {
LABEL_45:
      v9 = 0;
      goto LABEL_46;
    }

    has = self->_has;
  }

  v8 = equalCopy[52];
  if (has < 0)
  {
    if ((v8 & 0x80000000) == 0 || self->_subsId != *(equalCopy + 12))
    {
      goto LABEL_45;
    }

    v9 = 1;
  }

  else
  {
    v9 = v8 >= 0;
  }

LABEL_46:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_fastReturnState;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_fastReturnResult;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_returnDelay;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_firstCampedSys;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v8 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_psPref;
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  v10 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v11 = 2654435761 * self->_subsId;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[52];
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = fromCopy[52];
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((fromCopy[52] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_fastReturnState = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = fromCopy[52];
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_fastReturnResult = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = fromCopy[52];
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_returnDelay = *(fromCopy + 11);
  *&self->_has |= 0x40u;
  v5 = fromCopy[52];
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_firstCampedSys = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = fromCopy[52];
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  self->_numSubs = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  if ((fromCopy[52] & 0x20) != 0)
  {
LABEL_8:
    self->_psPref = *(fromCopy + 10);
    *&self->_has |= 0x20u;
  }

LABEL_9:
  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(CellularNrEpsFallbackCallFastReturnStats *)self setPlmn:?];
    fromCopy = v6;
  }

  if (fromCopy[52] < 0)
  {
    self->_subsId = *(fromCopy + 12);
    *&self->_has |= 0x80u;
  }
}

@end