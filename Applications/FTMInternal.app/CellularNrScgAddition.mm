@interface CellularNrScgAddition
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDrbConfig:(id)config;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFreqBandInd:(BOOL)ind;
- (void)setHasFreqRange:(BOOL)range;
- (void)setHasIsSrb3Configured:(BOOL)configured;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasReason:(BOOL)reason;
- (void)setHasResult:(BOOL)result;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularNrScgAddition

- (void)setHasReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasResult:(BOOL)result
{
  if (result)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsSrb3Configured:(BOOL)configured
{
  if (configured)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)addDrbConfig:(id)config
{
  configCopy = config;
  drbConfigs = self->_drbConfigs;
  v8 = configCopy;
  if (!drbConfigs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_drbConfigs;
    self->_drbConfigs = v6;

    configCopy = v8;
    drbConfigs = self->_drbConfigs;
  }

  [(NSMutableArray *)drbConfigs addObject:configCopy];
}

- (void)setHasFreqRange:(BOOL)range
{
  if (range)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasFreqBandInd:(BOOL)ind
{
  if (ind)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
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

  *&self->_has = *&self->_has & 0xFFF7 | v3;
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

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrScgAddition;
  v3 = [(CellularNrScgAddition *)&v7 description];
  dictionaryRepresentation = [(CellularNrScgAddition *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v17 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v17 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v18 = [NSNumber numberWithUnsignedInt:self->_reason];
  [v3 setObject:v18 forKey:@"reason"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_28:
  v19 = [NSNumber numberWithUnsignedInt:self->_result];
  [v3 setObject:v19 forKey:@"result"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithBool:self->_isSrb3Configured];
    [v3 setObject:v5 forKey:@"is_srb3_configured"];
  }

LABEL_6:
  if ([(NSMutableArray *)self->_drbConfigs count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_drbConfigs, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = self->_drbConfigs;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"drb_config"];
  }

  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    v20 = [NSNumber numberWithUnsignedInt:self->_freqRange];
    [v3 setObject:v20 forKey:@"freq_range"];

    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_17:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_17;
  }

  v21 = [NSNumber numberWithUnsignedInt:self->_freqBandInd, v24];
  [v3 setObject:v21 forKey:@"freq_band_ind"];

  v13 = self->_has;
  if ((v13 & 0x80) == 0)
  {
LABEL_18:
    if ((v13 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  v22 = [NSNumber numberWithUnsignedInt:self->_subsId, v24];
  [v3 setObject:v22 forKey:@"subs_id"];

  v13 = self->_has;
  if ((v13 & 8) == 0)
  {
LABEL_19:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_33:
  v23 = [NSNumber numberWithUnsignedInt:self->_numSubs, v24];
  [v3 setObject:v23 forKey:@"num_subs"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_20:
    v14 = [NSNumber numberWithUnsignedInt:self->_psPref, v24];
    [v3 setObject:v14 forKey:@"ps_pref"];
  }

LABEL_21:
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
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  reason = self->_reason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_25:
  result = self->_result;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    isSrb3Configured = self->_isSrb3Configured;
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_drbConfigs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    freqRange = self->_freqRange;
    PBDataWriterWriteUint32Field();
    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_15:
      if ((v13 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_15;
  }

  freqBandInd = self->_freqBandInd;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((v13 & 8) == 0)
  {
LABEL_16:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_29:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_17:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x80) != 0)
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
    *(toCopy + 34) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      *(toCopy + 14) = self->_result;
      *(toCopy + 34) |= 0x40u;
      if ((*&self->_has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 13) = self->_reason;
  *(toCopy + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((has & 0x100) != 0)
  {
LABEL_5:
    *(toCopy + 64) = self->_isSrb3Configured;
    *(toCopy + 34) |= 0x100u;
  }

LABEL_6:
  v12 = toCopy;
  if ([(CellularNrScgAddition *)self drbConfigsCount])
  {
    [v12 clearDrbConfigs];
    drbConfigsCount = [(CellularNrScgAddition *)self drbConfigsCount];
    if (drbConfigsCount)
    {
      v7 = drbConfigsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularNrScgAddition *)self drbConfigAtIndex:i];
        [v12 addDrbConfig:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v12;
  if ((v10 & 4) != 0)
  {
    *(v12 + 7) = self->_freqRange;
    *(v12 + 34) |= 4u;
    v10 = self->_has;
    if ((v10 & 2) == 0)
    {
LABEL_12:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_12;
  }

  *(v12 + 6) = self->_freqBandInd;
  *(v12 + 34) |= 2u;
  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
LABEL_13:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  *(v12 + 8) = self->_numSubs;
  *(v12 + 34) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    *(v12 + 12) = self->_psPref;
    *(v12 + 34) |= 0x10u;
  }

LABEL_15:
  if (self->_plmn)
  {
    [v12 setPlmn:?];
    v11 = v12;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v11[15] = self->_subsId;
    *(v11 + 34) |= 0x80u;
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
    *(v5 + 34) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 13) = self->_reason;
  *(v5 + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  *(v5 + 14) = self->_result;
  *(v5 + 34) |= 0x40u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    *(v5 + 64) = self->_isSrb3Configured;
    *(v5 + 34) |= 0x100u;
  }

LABEL_6:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_drbConfigs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{zone, v18}];
        [v6 addDrbConfig:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    *(v6 + 7) = self->_freqRange;
    *(v6 + 34) |= 4u;
    v14 = self->_has;
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  *(v6 + 6) = self->_freqBandInd;
  *(v6 + 34) |= 2u;
  v14 = self->_has;
  if ((v14 & 8) == 0)
  {
LABEL_16:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_27:
  *(v6 + 8) = self->_numSubs;
  *(v6 + 34) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_17:
    *(v6 + 12) = self->_psPref;
    *(v6 + 34) |= 0x10u;
  }

LABEL_18:
  v15 = [(NSData *)self->_plmn copyWithZone:zone, v18];
  v16 = *(v6 + 5);
  *(v6 + 5) = v15;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v6 + 15) = self->_subsId;
    *(v6 + 34) |= 0x80u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  has = self->_has;
  v6 = *(equalCopy + 34);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_56;
    }
  }

  else if (v6)
  {
    goto LABEL_56;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_reason != *(equalCopy + 13))
    {
      goto LABEL_56;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_56;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_result != *(equalCopy + 14))
    {
      goto LABEL_56;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 34) & 0x100) == 0)
    {
      goto LABEL_56;
    }

    v9 = *(equalCopy + 64);
    if (self->_isSrb3Configured)
    {
      if ((*(equalCopy + 64) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 64))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 34) & 0x100) != 0)
  {
    goto LABEL_56;
  }

  drbConfigs = self->_drbConfigs;
  if (drbConfigs | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)drbConfigs isEqual:?])
    {
      goto LABEL_56;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 34);
  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_freqRange != *(equalCopy + 7))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_56;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_freqBandInd != *(equalCopy + 6))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_56;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_numSubs != *(equalCopy + 8))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_56;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_psPref != *(equalCopy + 12))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_56;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 5))
  {
    if ([(NSData *)plmn isEqual:?])
    {
      has = self->_has;
      goto LABEL_51;
    }

LABEL_56:
    v12 = 0;
    goto LABEL_57;
  }

LABEL_51:
  v11 = *(equalCopy + 34);
  if ((has & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_subsId != *(equalCopy + 15))
    {
      goto LABEL_56;
    }

    v12 = 1;
  }

  else
  {
    v12 = (v11 & 0x80) == 0;
  }

LABEL_57:

  return v12;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v17 = 2654435761u * self->_timestamp;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v15 = 2654435761 * self->_reason;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_result;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_isSrb3Configured;
    goto LABEL_10;
  }

LABEL_9:
  v5 = 0;
LABEL_10:
  v6 = [(NSMutableArray *)self->_drbConfigs hash];
  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    v8 = 2654435761 * self->_freqRange;
    if ((v7 & 2) != 0)
    {
LABEL_12:
      v9 = 2654435761 * self->_freqBandInd;
      if ((v7 & 8) != 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v10 = 0;
      if ((v7 & 0x10) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  v9 = 0;
  if ((v7 & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v10 = 2654435761 * self->_numSubs;
  if ((v7 & 0x10) != 0)
  {
LABEL_14:
    v11 = 2654435761 * self->_psPref;
    goto LABEL_19;
  }

LABEL_18:
  v11 = 0;
LABEL_19:
  v12 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v13 = 2654435761 * self->_subsId;
  }

  else
  {
    v13 = 0;
  }

  return v16 ^ v17 ^ v4 ^ v5 ^ v8 ^ v9 ^ v10 ^ v11 ^ v6 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 34);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 34);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_reason = *(fromCopy + 13);
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 34);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_25:
  self->_result = *(fromCopy + 14);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 34) & 0x100) != 0)
  {
LABEL_5:
    self->_isSrb3Configured = *(fromCopy + 64);
    *&self->_has |= 0x100u;
  }

LABEL_6:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CellularNrScgAddition *)self addDrbConfig:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 34);
  if ((v12 & 4) != 0)
  {
    self->_freqRange = *(v5 + 7);
    *&self->_has |= 4u;
    v12 = *(v5 + 34);
    if ((v12 & 2) == 0)
    {
LABEL_15:
      if ((v12 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_15;
  }

  self->_freqBandInd = *(v5 + 6);
  *&self->_has |= 2u;
  v12 = *(v5 + 34);
  if ((v12 & 8) == 0)
  {
LABEL_16:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_29:
  self->_numSubs = *(v5 + 8);
  *&self->_has |= 8u;
  if ((*(v5 + 34) & 0x10) != 0)
  {
LABEL_17:
    self->_psPref = *(v5 + 12);
    *&self->_has |= 0x10u;
  }

LABEL_18:
  if (*(v5 + 5))
  {
    [(CellularNrScgAddition *)self setPlmn:?];
  }

  if ((*(v5 + 34) & 0x80) != 0)
  {
    self->_subsId = *(v5 + 15);
    *&self->_has |= 0x80u;
  }
}

@end