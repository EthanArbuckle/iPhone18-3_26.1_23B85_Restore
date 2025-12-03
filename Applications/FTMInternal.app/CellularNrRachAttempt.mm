@interface CellularNrRachAttempt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addServingCellBeamInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAccbState:(BOOL)state;
- (void)setHasCarrierId:(BOOL)id;
- (void)setHasCellId:(BOOL)id;
- (void)setHasCsiRsId:(BOOL)id;
- (void)setHasDcMode:(BOOL)mode;
- (void)setHasFreqBandInd:(BOOL)ind;
- (void)setHasFreqRange:(BOOL)range;
- (void)setHasLastTxPower:(BOOL)power;
- (void)setHasNumAttempt:(BOOL)attempt;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasRachContention:(BOOL)contention;
- (void)setHasRachReason:(BOOL)reason;
- (void)setHasRachResult:(BOOL)result;
- (void)setHasSsbId:(BOOL)id;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTac:(BOOL)tac;
- (void)setHasTxPowerDiff:(BOOL)diff;
- (void)writeTo:(id)to;
@end

@implementation CellularNrRachAttempt

- (void)setHasNumAttempt:(BOOL)attempt
{
  if (attempt)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasRachResult:(BOOL)result
{
  if (result)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasRachContention:(BOOL)contention
{
  if (contention)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasSsbId:(BOOL)id
{
  if (id)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasCsiRsId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasCarrierId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasLastTxPower:(BOOL)power
{
  if (power)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasTac:(BOOL)tac
{
  if (tac)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasCellId:(BOOL)id
{
  if (id)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
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

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasRachReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasTxPowerDiff:(BOOL)diff
{
  if (diff)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasDcMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasFreqRange:(BOOL)range
{
  if (range)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasFreqBandInd:(BOOL)ind
{
  if (ind)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)addServingCellBeamInfo:(id)info
{
  infoCopy = info;
  servingCellBeamInfos = self->_servingCellBeamInfos;
  v8 = infoCopy;
  if (!servingCellBeamInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_servingCellBeamInfos;
    self->_servingCellBeamInfos = v6;

    infoCopy = v8;
    servingCellBeamInfos = self->_servingCellBeamInfos;
  }

  [(NSMutableArray *)servingCellBeamInfos addObject:infoCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrRachAttempt;
  v3 = [(CellularNrRachAttempt *)&v7 description];
  dictionaryRepresentation = [(CellularNrRachAttempt *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v17 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v17 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v18 = [NSNumber numberWithUnsignedInt:self->_numAttempt];
  [v3 setObject:v18 forKey:@"num_attempt"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = [NSNumber numberWithUnsignedInt:self->_rachResult];
  [v3 setObject:v19 forKey:@"rach_result"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = [NSNumber numberWithUnsignedInt:self->_rachContention];
  [v3 setObject:v20 forKey:@"rach_contention"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = [NSNumber numberWithUnsignedInt:self->_ssbId];
  [v3 setObject:v21 forKey:@"ssb_id"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  v22 = [NSNumber numberWithUnsignedInt:self->_csiRsId];
  [v3 setObject:v22 forKey:@"csi_rs_id"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  v23 = [NSNumber numberWithUnsignedInt:self->_carrierId];
  [v3 setObject:v23 forKey:@"carrier_id"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  v24 = [NSNumber numberWithInt:self->_lastTxPower];
  [v3 setObject:v24 forKey:@"last_tx_power"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  v25 = [NSNumber numberWithUnsignedInt:self->_tac];
  [v3 setObject:v25 forKey:@"tac"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  v26 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v26 forKey:@"cell_id"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_46:
  v27 = [NSNumber numberWithUnsignedInt:self->_accbState];
  [v3 setObject:v27 forKey:@"accb_state"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    v5 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v5 forKey:@"num_subs"];
  }

LABEL_14:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v7 = self->_has;
  if ((*&v7 & 0x10000) != 0)
  {
    v28 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v28 forKey:@"subs_id"];

    v7 = self->_has;
    if ((*&v7 & 0x2000) == 0)
    {
LABEL_18:
      if ((*&v7 & 0x40000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_50;
    }
  }

  else if ((*&v7 & 0x2000) == 0)
  {
    goto LABEL_18;
  }

  v29 = [NSNumber numberWithUnsignedInt:self->_rachReason];
  [v3 setObject:v29 forKey:@"rach_reason"];

  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v30 = [NSNumber numberWithInt:self->_txPowerDiff];
  [v3 setObject:v30 forKey:@"tx_power_diff"];

  v7 = self->_has;
  if ((*&v7 & 0x20) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v31 = [NSNumber numberWithUnsignedInt:self->_dcMode];
  [v3 setObject:v31 forKey:@"dc_mode"];

  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  v32 = [NSNumber numberWithUnsignedInt:self->_psPref];
  [v3 setObject:v32 forKey:@"ps_pref"];

  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_53:
  v33 = [NSNumber numberWithUnsignedInt:self->_freqRange];
  [v3 setObject:v33 forKey:@"freq_range"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_23:
    v8 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
    [v3 setObject:v8 forKey:@"freq_band_ind"];
  }

LABEL_24:
  if ([(NSMutableArray *)self->_servingCellBeamInfos count])
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_servingCellBeamInfos, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = self->_servingCellBeamInfos;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"serving_cell_beam_info"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  numAttempt = self->_numAttempt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  rachResult = self->_rachResult;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  rachContention = self->_rachContention;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  ssbId = self->_ssbId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  csiRsId = self->_csiRsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  carrierId = self->_carrierId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  lastTxPower = self->_lastTxPower;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  tac = self->_tac;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_42:
  accbState = self->_accbState;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x10000) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((*&v7 & 0x2000) == 0)
    {
LABEL_18:
      if ((*&v7 & 0x40000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_46;
    }
  }

  else if ((*&v7 & 0x2000) == 0)
  {
    goto LABEL_18;
  }

  rachReason = self->_rachReason;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  txPowerDiff = self->_txPowerDiff;
  PBDataWriterWriteSint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x20) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  dcMode = self->_dcMode;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  psPref = self->_psPref;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_49:
  freqRange = self->_freqRange;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_23:
    freqBandInd = self->_freqBandInd;
    PBDataWriterWriteUint32Field();
  }

LABEL_24:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = self->_servingCellBeamInfos;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 26) |= 1u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 12) = self->_numAttempt;
  *(toCopy + 26) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 19) = self->_rachResult;
  *(toCopy + 26) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 17) = self->_rachContention;
  *(toCopy + 26) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 22) = self->_ssbId;
  *(toCopy + 26) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 7) = self->_csiRsId;
  *(toCopy + 26) |= 0x10u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 5) = self->_carrierId;
  *(toCopy + 26) |= 4u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 11) = self->_lastTxPower;
  *(toCopy + 26) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 24) = self->_tac;
  *(toCopy + 26) |= 0x20000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 6) = self->_cellId;
  *(toCopy + 26) |= 8u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_41:
  *(toCopy + 4) = self->_accbState;
  *(toCopy + 26) |= 2u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    *(toCopy + 13) = self->_numSubs;
    *(toCopy + 26) |= 0x400u;
  }

LABEL_14:
  v11 = toCopy;
  if (self->_plmn)
  {
    [toCopy setPlmn:?];
    toCopy = v11;
  }

  v6 = self->_has;
  if ((*&v6 & 0x10000) != 0)
  {
    *(toCopy + 23) = self->_subsId;
    *(toCopy + 26) |= 0x10000u;
    v6 = self->_has;
    if ((*&v6 & 0x2000) == 0)
    {
LABEL_18:
      if ((*&v6 & 0x40000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_45;
    }
  }

  else if ((*&v6 & 0x2000) == 0)
  {
    goto LABEL_18;
  }

  *(toCopy + 18) = self->_rachReason;
  *(toCopy + 26) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 25) = self->_txPowerDiff;
  *(toCopy + 26) |= 0x40000u;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 8) = self->_dcMode;
  *(toCopy + 26) |= 0x20u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_22;
    }

LABEL_48:
    *(toCopy + 10) = self->_freqRange;
    *(toCopy + 26) |= 0x80u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  *(toCopy + 16) = self->_psPref;
  *(toCopy + 26) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    goto LABEL_48;
  }

LABEL_22:
  if ((*&v6 & 0x40) != 0)
  {
LABEL_23:
    *(toCopy + 9) = self->_freqBandInd;
    *(toCopy + 26) |= 0x40u;
  }

LABEL_24:
  if ([(CellularNrRachAttempt *)self servingCellBeamInfosCount])
  {
    [v11 clearServingCellBeamInfos];
    servingCellBeamInfosCount = [(CellularNrRachAttempt *)self servingCellBeamInfosCount];
    if (servingCellBeamInfosCount)
    {
      v8 = servingCellBeamInfosCount;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(CellularNrRachAttempt *)self servingCellBeamInfoAtIndex:i];
        [v11 addServingCellBeamInfo:v10];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 26) |= 1u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_numAttempt;
  *(v5 + 26) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 19) = self->_rachResult;
  *(v5 + 26) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 17) = self->_rachContention;
  *(v5 + 26) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 22) = self->_ssbId;
  *(v5 + 26) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_7:
    if ((*&has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 7) = self->_csiRsId;
  *(v5 + 26) |= 0x10u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 5) = self->_carrierId;
  *(v5 + 26) |= 4u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 11) = self->_lastTxPower;
  *(v5 + 26) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 24) = self->_tac;
  *(v5 + 26) |= 0x20000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 6) = self->_cellId;
  *(v5 + 26) |= 8u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_40:
  *(v5 + 4) = self->_accbState;
  *(v5 + 26) |= 2u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    *(v5 + 13) = self->_numSubs;
    *(v5 + 26) |= 0x400u;
  }

LABEL_14:
  v8 = [(NSData *)self->_plmn copyWithZone:zone];
  v9 = v6[7];
  v6[7] = v8;

  v10 = self->_has;
  if ((*&v10 & 0x10000) != 0)
  {
    *(v6 + 23) = self->_subsId;
    *(v6 + 26) |= 0x10000u;
    v10 = self->_has;
    if ((*&v10 & 0x2000) == 0)
    {
LABEL_16:
      if ((*&v10 & 0x40000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }
  }

  else if ((*&v10 & 0x2000) == 0)
  {
    goto LABEL_16;
  }

  *(v6 + 18) = self->_rachReason;
  *(v6 + 26) |= 0x2000u;
  v10 = self->_has;
  if ((*&v10 & 0x40000) == 0)
  {
LABEL_17:
    if ((*&v10 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 25) = self->_txPowerDiff;
  *(v6 + 26) |= 0x40000u;
  v10 = self->_has;
  if ((*&v10 & 0x20) == 0)
  {
LABEL_18:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 8) = self->_dcMode;
  *(v6 + 26) |= 0x20u;
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_19:
    if ((*&v10 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 16) = self->_psPref;
  *(v6 + 26) |= 0x800u;
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_20:
    if ((*&v10 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_47:
  *(v6 + 10) = self->_freqRange;
  *(v6 + 26) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_21:
    *(v6 + 9) = self->_freqBandInd;
    *(v6 + 26) |= 0x40u;
  }

LABEL_22:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_servingCellBeamInfos;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) copyWithZone:{zone, v18}];
        [v6 addServingCellBeamInfo:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_102;
  }

  has = self->_has;
  v6 = *(equalCopy + 26);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_102;
    }
  }

  else if (v6)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_numAttempt != *(equalCopy + 12))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_rachResult != *(equalCopy + 19))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_rachContention != *(equalCopy + 17))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_ssbId != *(equalCopy + 22))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_csiRsId != *(equalCopy + 7))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_carrierId != *(equalCopy + 5))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_lastTxPower != *(equalCopy + 11))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_tac != *(equalCopy + 24))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_cellId != *(equalCopy + 6))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_accbState != *(equalCopy + 4))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_numSubs != *(equalCopy + 13))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_102;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 7))
  {
    if (![(NSData *)plmn isEqual:?])
    {
LABEL_102:
      v10 = 0;
      goto LABEL_103;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 26);
  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_subsId != *(equalCopy + 23))
    {
      goto LABEL_102;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_rachReason != *(equalCopy + 18))
    {
      goto LABEL_102;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_txPowerDiff != *(equalCopy + 25))
    {
      goto LABEL_102;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_dcMode != *(equalCopy + 8))
    {
      goto LABEL_102;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_psPref != *(equalCopy + 16))
    {
      goto LABEL_102;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_freqRange != *(equalCopy + 10))
    {
      goto LABEL_102;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_freqBandInd != *(equalCopy + 9))
    {
      goto LABEL_102;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_102;
  }

  servingCellBeamInfos = self->_servingCellBeamInfos;
  if (servingCellBeamInfos | *(equalCopy + 10))
  {
    v10 = [(NSMutableArray *)servingCellBeamInfos isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_103:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v25 = 2654435761u * self->_timestamp;
    if ((*&has & 0x200) != 0)
    {
LABEL_3:
      v24 = 2654435761 * self->_numAttempt;
      if ((*&has & 0x4000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v25 = 0;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v24 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_4:
    v23 = 2654435761 * self->_rachResult;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v23 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_5:
    v22 = 2654435761 * self->_rachContention;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v22 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_6:
    v21 = 2654435761 * self->_ssbId;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v21 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_7:
    v4 = 2654435761 * self->_csiRsId;
    if ((*&has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_carrierId;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_lastTxPower;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_tac;
    if ((*&has & 8) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_11:
    v8 = 2654435761 * self->_cellId;
    if ((*&has & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v9 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  v8 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v9 = 2654435761 * self->_accbState;
  if ((*&has & 0x400) != 0)
  {
LABEL_13:
    v10 = 2654435761 * self->_numSubs;
    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
LABEL_26:
  v11 = [(NSData *)self->_plmn hash];
  v12 = self->_has;
  if ((*&v12 & 0x10000) != 0)
  {
    v13 = 2654435761 * self->_subsId;
    if ((*&v12 & 0x2000) != 0)
    {
LABEL_28:
      v14 = 2654435761 * self->_rachReason;
      if ((*&v12 & 0x40000) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_28;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x40000) != 0)
  {
LABEL_29:
    v15 = 2654435761 * self->_txPowerDiff;
    if ((*&v12 & 0x20) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = 0;
  if ((*&v12 & 0x20) != 0)
  {
LABEL_30:
    v16 = 2654435761 * self->_dcMode;
    if ((*&v12 & 0x800) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = 0;
  if ((*&v12 & 0x800) != 0)
  {
LABEL_31:
    v17 = 2654435761 * self->_psPref;
    if ((*&v12 & 0x80) != 0)
    {
      goto LABEL_32;
    }

LABEL_39:
    v18 = 0;
    if ((*&v12 & 0x40) != 0)
    {
      goto LABEL_33;
    }

LABEL_40:
    v19 = 0;
    return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v11 ^ v19 ^ [(NSMutableArray *)self->_servingCellBeamInfos hash];
  }

LABEL_38:
  v17 = 0;
  if ((*&v12 & 0x80) == 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  v18 = 2654435761 * self->_freqRange;
  if ((*&v12 & 0x40) == 0)
  {
    goto LABEL_40;
  }

LABEL_33:
  v19 = 2654435761 * self->_freqBandInd;
  return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v11 ^ v19 ^ [(NSMutableArray *)self->_servingCellBeamInfos hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 26);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 26);
    if ((v6 & 0x200) == 0)
    {
LABEL_3:
      if ((v6 & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_numAttempt = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v6 = *(fromCopy + 26);
  if ((v6 & 0x4000) == 0)
  {
LABEL_4:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_rachResult = *(fromCopy + 19);
  *&self->_has |= 0x4000u;
  v6 = *(fromCopy + 26);
  if ((v6 & 0x1000) == 0)
  {
LABEL_5:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_rachContention = *(fromCopy + 17);
  *&self->_has |= 0x1000u;
  v6 = *(fromCopy + 26);
  if ((v6 & 0x8000) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_ssbId = *(fromCopy + 22);
  *&self->_has |= 0x8000u;
  v6 = *(fromCopy + 26);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_csiRsId = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 26);
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_carrierId = *(fromCopy + 5);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 26);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_lastTxPower = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v6 = *(fromCopy + 26);
  if ((v6 & 0x20000) == 0)
  {
LABEL_10:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_tac = *(fromCopy + 24);
  *&self->_has |= 0x20000u;
  v6 = *(fromCopy + 26);
  if ((v6 & 8) == 0)
  {
LABEL_11:
    if ((v6 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_cellId = *(fromCopy + 6);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 26);
  if ((v6 & 2) == 0)
  {
LABEL_12:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_42:
  self->_accbState = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 26) & 0x400) != 0)
  {
LABEL_13:
    self->_numSubs = *(fromCopy + 13);
    *&self->_has |= 0x400u;
  }

LABEL_14:
  if (*(fromCopy + 7))
  {
    [(CellularNrRachAttempt *)self setPlmn:?];
  }

  v7 = *(v5 + 26);
  if ((v7 & 0x10000) != 0)
  {
    self->_subsId = *(v5 + 23);
    *&self->_has |= 0x10000u;
    v7 = *(v5 + 26);
    if ((v7 & 0x2000) == 0)
    {
LABEL_18:
      if ((v7 & 0x40000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_46;
    }
  }

  else if ((v7 & 0x2000) == 0)
  {
    goto LABEL_18;
  }

  self->_rachReason = *(v5 + 18);
  *&self->_has |= 0x2000u;
  v7 = *(v5 + 26);
  if ((v7 & 0x40000) == 0)
  {
LABEL_19:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_txPowerDiff = *(v5 + 25);
  *&self->_has |= 0x40000u;
  v7 = *(v5 + 26);
  if ((v7 & 0x20) == 0)
  {
LABEL_20:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_dcMode = *(v5 + 8);
  *&self->_has |= 0x20u;
  v7 = *(v5 + 26);
  if ((v7 & 0x800) == 0)
  {
LABEL_21:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_psPref = *(v5 + 16);
  *&self->_has |= 0x800u;
  v7 = *(v5 + 26);
  if ((v7 & 0x80) == 0)
  {
LABEL_22:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_49:
  self->_freqRange = *(v5 + 10);
  *&self->_has |= 0x80u;
  if ((*(v5 + 26) & 0x40) != 0)
  {
LABEL_23:
    self->_freqBandInd = *(v5 + 9);
    *&self->_has |= 0x40u;
  }

LABEL_24:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(v5 + 10);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(CellularNrRachAttempt *)self addServingCellBeamInfo:*(*(&v13 + 1) + 8 * i), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end