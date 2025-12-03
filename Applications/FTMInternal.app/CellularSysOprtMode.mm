@interface CellularSysOprtMode
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMode:(id)mode;
- (int)mode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDurationMs:(BOOL)ms;
- (void)setHasMode:(BOOL)mode;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularSysOprtMode

- (int)mode
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_mode;
  }

  else
  {
    return -1;
  }
}

- (void)setHasMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_NONE"])
  {
    v4 = -1;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_PWROFF"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_FTM"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_OFFLINE"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_OFFLINE_AMPS"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_OFFLINE_CDMA"])
  {
    v4 = 4;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_ONLINE"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_LPM"])
  {
    v4 = 6;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_RESET"])
  {
    v4 = 7;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_NET_TEST_GW"])
  {
    v4 = 8;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_OFFLINE_IF_NOT_FTM"])
  {
    v4 = 9;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_PSEUDO_ONLINE"])
  {
    v4 = 10;
  }

  else if ([modeCopy isEqualToString:@"SYS_OPRT_MODE_RESET_MODEM"])
  {
    v4 = 11;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasDurationMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularSysOprtMode;
  v3 = [(CellularSysOprtMode *)&v7 description];
  dictionaryRepresentation = [(CellularSysOprtMode *)self dictionaryRepresentation];
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v12 = self->_mode + 1;
  if (v12 >= 0xD)
  {
    v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_mode];
  }

  else
  {
    v13 = *(&off_100317A90 + v12);
  }

  [v3 setObject:v13 forKey:@"mode"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithUnsignedInt:self->_durationMs];
    [v3 setObject:v5 forKey:@"duration_ms"];
  }

LABEL_5:
  simHplmn = self->_simHplmn;
  if (simHplmn)
  {
    [v3 setObject:simHplmn forKey:@"sim_hplmn"];
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v14 forKey:@"subs_id"];

    v7 = self->_has;
    if ((v7 & 8) == 0)
    {
LABEL_9:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  v15 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v15 forKey:@"num_subs"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    v8 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v8 forKey:@"ps_pref"];
  }

LABEL_11:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v13 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v13;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  mode = self->_mode;
  PBDataWriterWriteInt32Field();
  toCopy = v13;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    toCopy = v13;
  }

LABEL_5:
  if (self->_simHplmn)
  {
    PBDataWriterWriteDataField();
    toCopy = v13;
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    toCopy = v13;
    v7 = self->_has;
    if ((v7 & 8) == 0)
    {
LABEL_9:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  toCopy = v13;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
    toCopy = v13;
  }

LABEL_11:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
    toCopy = v13;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 60) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 5) = self->_mode;
  *(toCopy + 60) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(toCopy + 4) = self->_durationMs;
    *(toCopy + 60) |= 2u;
  }

LABEL_5:
  v7 = toCopy;
  if (self->_simHplmn)
  {
    [toCopy setSimHplmn:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(toCopy + 14) = self->_subsId;
    *(toCopy + 60) |= 0x20u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 6) = self->_numSubs;
  *(toCopy + 60) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    *(toCopy + 10) = self->_psPref;
    *(toCopy + 60) |= 0x10u;
  }

LABEL_11:
  if (self->_plmn)
  {
    [v7 setPlmn:?];
    toCopy = v7;
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
    *(v5 + 60) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 5) = self->_mode;
  *(v5 + 60) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 4) = self->_durationMs;
    *(v5 + 60) |= 2u;
  }

LABEL_5:
  v8 = [(NSData *)self->_simHplmn copyWithZone:zone];
  v9 = v6[6];
  v6[6] = v8;

  v10 = self->_has;
  if ((v10 & 0x20) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    *(v6 + 6) = self->_numSubs;
    *(v6 + 60) |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v6 + 14) = self->_subsId;
  *(v6 + 60) |= 0x20u;
  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v10 & 0x10) != 0)
  {
LABEL_8:
    *(v6 + 10) = self->_psPref;
    *(v6 + 60) |= 0x10u;
  }

LABEL_9:
  v11 = [(NSData *)self->_plmn copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  has = self->_has;
  v6 = *(equalCopy + 60);
  if (has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_mode != *(equalCopy + 5))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_durationMs != *(equalCopy + 4))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_37;
  }

  simHplmn = self->_simHplmn;
  if (simHplmn | *(equalCopy + 6))
  {
    if (![(NSData *)simHplmn isEqual:?])
    {
LABEL_37:
      v10 = 0;
      goto LABEL_38;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 60);
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 60) & 0x20) == 0 || self->_subsId != *(equalCopy + 14))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 60) & 0x20) != 0)
  {
    goto LABEL_37;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_numSubs != *(equalCopy + 6))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_37;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 60) & 0x10) == 0 || self->_psPref != *(equalCopy + 10))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 60) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 4))
  {
    v10 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_38:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_mode;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_durationMs;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSData *)self->_simHplmn hash];
  if ((*&self->_has & 0x20) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v6 ^ [(NSData *)self->_plmn hash];
  }

  v7 = 2654435761 * self->_subsId;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v8 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v9 = 2654435761 * self->_psPref;
  return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v6 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 60);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 60);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 60) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_mode = *(fromCopy + 5);
  *&self->_has |= 4u;
  if ((*(fromCopy + 60) & 2) != 0)
  {
LABEL_4:
    self->_durationMs = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
  v7 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(CellularSysOprtMode *)self setSimHplmn:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 60);
  if ((v6 & 0x20) != 0)
  {
    self->_subsId = *(fromCopy + 14);
    *&self->_has |= 0x20u;
    v6 = *(fromCopy + 60);
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(fromCopy + 60) & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_numSubs = *(fromCopy + 6);
  *&self->_has |= 8u;
  if ((*(fromCopy + 60) & 0x10) != 0)
  {
LABEL_10:
    self->_psPref = *(fromCopy + 10);
    *&self->_has |= 0x10u;
  }

LABEL_11:
  if (*(fromCopy + 4))
  {
    [(CellularSysOprtMode *)self setPlmn:?];
    fromCopy = v7;
  }
}

@end