@interface CellularLteConnectionStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCause:(id)cause;
- (int)StringAsMaxDlMod:(id)mod;
- (int)StringAsMaxUlMod:(id)mod;
- (int)cause;
- (int)maxDlMod;
- (int)maxUlMod;
- (unint64_t)hash;
- (void)addNwUeCapStat:(id)stat;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCause:(BOOL)cause;
- (void)setHasConnDuration:(BOOL)duration;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasLteTotalDlMimoLayers:(BOOL)layers;
- (void)setHasLteTotalNumCcs:(BOOL)ccs;
- (void)setHasMaxDlMod:(BOOL)mod;
- (void)setHasMaxNwMimoLyr:(BOOL)lyr;
- (void)setHasMaxRxAnt:(BOOL)ant;
- (void)setHasMaxSchdMimoLyr:(BOOL)lyr;
- (void)setHasMaxUeRank:(BOOL)rank;
- (void)setHasMaxUlMod:(BOOL)mod;
- (void)setHasMrdcLteTotalDlMimoLayers:(BOOL)layers;
- (void)setHasMrdcLteTotalNumCcs:(BOOL)ccs;
- (void)setHasMrdcNrTotalDlMimoLayers:(BOOL)layers;
- (void)setHasMrdcNrTotalNumCcs:(BOOL)ccs;
- (void)setHasMrdcTotalDlMimoLayers:(BOOL)layers;
- (void)setHasMrdcTotalNumCcs:(BOOL)ccs;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularLteConnectionStats

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (int)maxUlMod
{
  if ((*(&self->_has + 1) & 8) != 0)
  {
    return self->_maxUlMod;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMaxUlMod:(BOOL)mod
{
  if (mod)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (int)StringAsMaxUlMod:(id)mod
{
  modCopy = mod;
  if ([modCopy isEqualToString:@"MODULATION_BPSK"])
  {
    v4 = 0;
  }

  else if ([modCopy isEqualToString:@"MODULATION_QPSK"])
  {
    v4 = 1;
  }

  else if ([modCopy isEqualToString:@"MODULATION_16QAM"])
  {
    v4 = 2;
  }

  else if ([modCopy isEqualToString:@"MODULATION_64QAM"])
  {
    v4 = 3;
  }

  else if ([modCopy isEqualToString:@"MODULATION_256QAM"])
  {
    v4 = 4;
  }

  else if ([modCopy isEqualToString:@"MODULATION_1024QAM"])
  {
    v4 = 5;
  }

  else if ([modCopy isEqualToString:@"MODULATION_UNKOWN"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)maxDlMod
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_maxDlMod;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMaxDlMod:(BOOL)mod
{
  if (mod)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (int)StringAsMaxDlMod:(id)mod
{
  modCopy = mod;
  if ([modCopy isEqualToString:@"MODULATION_BPSK"])
  {
    v4 = 0;
  }

  else if ([modCopy isEqualToString:@"MODULATION_QPSK"])
  {
    v4 = 1;
  }

  else if ([modCopy isEqualToString:@"MODULATION_16QAM"])
  {
    v4 = 2;
  }

  else if ([modCopy isEqualToString:@"MODULATION_64QAM"])
  {
    v4 = 3;
  }

  else if ([modCopy isEqualToString:@"MODULATION_256QAM"])
  {
    v4 = 4;
  }

  else if ([modCopy isEqualToString:@"MODULATION_1024QAM"])
  {
    v4 = 5;
  }

  else if ([modCopy isEqualToString:@"MODULATION_UNKOWN"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMaxNwMimoLyr:(BOOL)lyr
{
  if (lyr)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasMaxUeRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasMaxRxAnt:(BOOL)ant
{
  if (ant)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasMaxSchdMimoLyr:(BOOL)lyr
{
  if (lyr)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasLteTotalNumCcs:(BOOL)ccs
{
  if (ccs)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasLteTotalDlMimoLayers:(BOOL)layers
{
  if (layers)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasMrdcTotalNumCcs:(BOOL)ccs
{
  if (ccs)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasMrdcTotalDlMimoLayers:(BOOL)layers
{
  if (layers)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasMrdcLteTotalNumCcs:(BOOL)ccs
{
  if (ccs)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasMrdcLteTotalDlMimoLayers:(BOOL)layers
{
  if (layers)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasMrdcNrTotalNumCcs:(BOOL)ccs
{
  if (ccs)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasMrdcNrTotalDlMimoLayers:(BOOL)layers
{
  if (layers)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)addNwUeCapStat:(id)stat
{
  statCopy = stat;
  nwUeCapStats = self->_nwUeCapStats;
  v8 = statCopy;
  if (!nwUeCapStats)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_nwUeCapStats;
    self->_nwUeCapStats = v6;

    statCopy = v8;
    nwUeCapStats = self->_nwUeCapStats;
  }

  [(NSMutableArray *)nwUeCapStats addObject:statCopy];
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (int)cause
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_cause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)StringAsCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"CONN_INFO_CAUSE_INVALID"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"CONN_INFO_CAUSE_RELEASE"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"CONN_INFO_CAUSE_HO"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"CONN_INFO_CAUSE_OTHER"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"CONN_INFO_CAUSE_MAX"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"CONN_INFO_CAUSE_MAX_STATS"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasConnDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteConnectionStats;
  v3 = [(CellularLteConnectionStats *)&v7 description];
  dictionaryRepresentation = [(CellularLteConnectionStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v30 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v30 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  v31 = [NSNumber numberWithUnsignedInt:self->_duration];
  [v3 setObject:v31 forKey:@"duration"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_60;
  }

LABEL_48:
  maxUlMod = self->_maxUlMod;
  if (maxUlMod >= 7)
  {
    v33 = [NSString stringWithFormat:@"(unknown: %i)", self->_maxUlMod];
  }

  else
  {
    v33 = *(&off_100318128 + maxUlMod);
  }

  [v3 setObject:v33 forKey:@"max_ul_mod"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_67;
  }

LABEL_60:
  maxDlMod = self->_maxDlMod;
  if (maxDlMod >= 7)
  {
    v42 = [NSString stringWithFormat:@"(unknown: %i)", self->_maxDlMod];
  }

  else
  {
    v42 = *(&off_100318128 + maxDlMod);
  }

  [v3 setObject:v42 forKey:@"max_dl_mod"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_68;
  }

LABEL_67:
  v43 = [NSNumber numberWithUnsignedInt:self->_maxNwMimoLyr];
  [v3 setObject:v43 forKey:@"max_nw_mimo_lyr"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_69;
  }

LABEL_68:
  v44 = [NSNumber numberWithUnsignedInt:self->_maxUeRank];
  [v3 setObject:v44 forKey:@"max_ue_rank"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_70;
  }

LABEL_69:
  v45 = [NSNumber numberWithUnsignedInt:self->_maxRxAnt];
  [v3 setObject:v45 forKey:@"max_rx_ant"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_70:
  v46 = [NSNumber numberWithUnsignedInt:self->_maxSchdMimoLyr];
  [v3 setObject:v46 forKey:@"max_schd_mimo_lyr"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_71:
  v47 = [NSNumber numberWithUnsignedInt:self->_lteTotalNumCcs];
  [v3 setObject:v47 forKey:@"lte_total_num_ccs"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    v5 = [NSNumber numberWithUnsignedInt:self->_lteTotalDlMimoLayers];
    [v3 setObject:v5 forKey:@"lte_total_dl_mimo_layers"];
  }

LABEL_12:
  lteBandCombo = self->_lteBandCombo;
  if (lteBandCombo)
  {
    dictionaryRepresentation = [lteBandCombo dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"lte_band_combo"];
  }

  v8 = self->_has;
  if ((*&v8 & 0x20000) != 0)
  {
    v34 = [NSNumber numberWithUnsignedInt:self->_mrdcTotalNumCcs];
    [v3 setObject:v34 forKey:@"mrdc_total_num_ccs"];

    v8 = self->_has;
    if ((*&v8 & 0x10000) == 0)
    {
LABEL_16:
      if ((*&v8 & 0x2000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v8 & 0x10000) == 0)
  {
    goto LABEL_16;
  }

  v35 = [NSNumber numberWithUnsignedInt:self->_mrdcTotalDlMimoLayers];
  [v3 setObject:v35 forKey:@"mrdc_total_dl_mimo_layers"];

  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_17:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_52:
  v36 = [NSNumber numberWithUnsignedInt:self->_mrdcLteTotalNumCcs];
  [v3 setObject:v36 forKey:@"mrdc_lte_total_num_ccs"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    v9 = [NSNumber numberWithUnsignedInt:self->_mrdcLteTotalDlMimoLayers];
    [v3 setObject:v9 forKey:@"mrdc_lte_total_dl_mimo_layers"];
  }

LABEL_19:
  mrdcLteBandCombo = self->_mrdcLteBandCombo;
  if (mrdcLteBandCombo)
  {
    dictionaryRepresentation2 = [mrdcLteBandCombo dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"mrdc_lte_band_combo"];
  }

  v12 = self->_has;
  if ((*&v12 & 0x8000) != 0)
  {
    v13 = [NSNumber numberWithUnsignedInt:self->_mrdcNrTotalNumCcs];
    [v3 setObject:v13 forKey:@"mrdc_nr_total_num_ccs"];

    v12 = self->_has;
  }

  if ((*&v12 & 0x4000) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_mrdcNrTotalDlMimoLayers];
    [v3 setObject:v14 forKey:@"mrdc_nr_total_dl_mimo_layers"];
  }

  mrdcNrBandCombo = self->_mrdcNrBandCombo;
  if (mrdcNrBandCombo)
  {
    dictionaryRepresentation3 = [mrdcNrBandCombo dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"mrdc_nr_band_combo"];
  }

  if ([(NSMutableArray *)self->_nwUeCapStats count])
  {
    v17 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_nwUeCapStats, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v18 = self->_nwUeCapStats;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v49;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation4 = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentation];
          [v17 addObject:dictionaryRepresentation4];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKey:@"nw_ue_cap_stat"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v24 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v24 forKey:@"num_subs"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v26 = self->_has;
  if ((*&v26 & 0x100000) != 0)
  {
    v37 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v37 forKey:@"subs_id"];

    v26 = self->_has;
    if ((*&v26 & 0x80000) == 0)
    {
LABEL_42:
      if ((*&v26 & 2) == 0)
      {
        goto LABEL_43;
      }

LABEL_56:
      cause = self->_cause;
      if (cause >= 6)
      {
        v40 = [NSString stringWithFormat:@"(unknown: %i)", self->_cause];
      }

      else
      {
        v40 = *(&off_100318160 + cause);
      }

      [v3 setObject:v40 forKey:@"cause"];

      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  else if ((*&v26 & 0x80000) == 0)
  {
    goto LABEL_42;
  }

  v38 = [NSNumber numberWithUnsignedInt:self->_psPref];
  [v3 setObject:v38 forKey:@"ps_pref"];

  v26 = self->_has;
  if ((*&v26 & 2) != 0)
  {
    goto LABEL_56;
  }

LABEL_43:
  if ((*&v26 & 4) != 0)
  {
LABEL_44:
    v27 = [NSNumber numberWithUnsignedInt:self->_connDuration];
    [v3 setObject:v27 forKey:@"conn_duration"];
  }

LABEL_45:
  v28 = v3;

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
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_46;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

LABEL_46:
  maxUlMod = self->_maxUlMod;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

LABEL_47:
  maxDlMod = self->_maxDlMod;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_48:
  maxNwMimoLyr = self->_maxNwMimoLyr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

LABEL_49:
  maxUeRank = self->_maxUeRank;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

LABEL_50:
  maxRxAnt = self->_maxRxAnt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_51:
  maxSchdMimoLyr = self->_maxSchdMimoLyr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_52:
  lteTotalNumCcs = self->_lteTotalNumCcs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    lteTotalDlMimoLayers = self->_lteTotalDlMimoLayers;
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
  if (self->_lteBandCombo)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = self->_has;
  if ((*&v7 & 0x20000) != 0)
  {
    mrdcTotalNumCcs = self->_mrdcTotalNumCcs;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((*&v7 & 0x10000) == 0)
    {
LABEL_16:
      if ((*&v7 & 0x2000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v7 & 0x10000) == 0)
  {
    goto LABEL_16;
  }

  mrdcTotalDlMimoLayers = self->_mrdcTotalDlMimoLayers;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_56:
  mrdcLteTotalNumCcs = self->_mrdcLteTotalNumCcs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    mrdcLteTotalDlMimoLayers = self->_mrdcLteTotalDlMimoLayers;
    PBDataWriterWriteUint32Field();
  }

LABEL_19:
  if (self->_mrdcLteBandCombo)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = self->_has;
  if ((*&v9 & 0x8000) != 0)
  {
    mrdcNrTotalNumCcs = self->_mrdcNrTotalNumCcs;
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
  }

  if ((*&v9 & 0x4000) != 0)
  {
    mrdcNrTotalDlMimoLayers = self->_mrdcNrTotalDlMimoLayers;
    PBDataWriterWriteUint32Field();
  }

  if (self->_mrdcNrBandCombo)
  {
    PBDataWriterWriteSubmessage();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = self->_nwUeCapStats;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      v16 = 0;
      do
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v36 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v14);
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v19 = self->_has;
  if ((*&v19 & 0x100000) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v19 = self->_has;
    if ((*&v19 & 0x80000) == 0)
    {
LABEL_40:
      if ((*&v19 & 2) == 0)
      {
        goto LABEL_41;
      }

LABEL_60:
      cause = self->_cause;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((*&v19 & 0x80000) == 0)
  {
    goto LABEL_40;
  }

  psPref = self->_psPref;
  PBDataWriterWriteUint32Field();
  v19 = self->_has;
  if ((*&v19 & 2) != 0)
  {
    goto LABEL_60;
  }

LABEL_41:
  if ((*&v19 & 4) != 0)
  {
LABEL_42:
    connDuration = self->_connDuration;
    PBDataWriterWriteUint32Field();
  }

LABEL_43:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = self->_duration;
  *(toCopy + 36) |= 8u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 17) = self->_maxUlMod;
  *(toCopy + 36) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 12) = self->_maxDlMod;
  *(toCopy + 36) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 13) = self->_maxNwMimoLyr;
  *(toCopy + 36) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 16) = self->_maxUeRank;
  *(toCopy + 36) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 14) = self->_maxRxAnt;
  *(toCopy + 36) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 15) = self->_maxSchdMimoLyr;
  *(toCopy + 36) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_51:
  *(toCopy + 11) = self->_lteTotalNumCcs;
  *(toCopy + 36) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    *(toCopy + 10) = self->_lteTotalDlMimoLayers;
    *(toCopy + 36) |= 0x10u;
  }

LABEL_12:
  v14 = toCopy;
  if (self->_lteBandCombo)
  {
    [toCopy setLteBandCombo:?];
    toCopy = v14;
  }

  v6 = self->_has;
  if ((*&v6 & 0x20000) != 0)
  {
    *(toCopy + 27) = self->_mrdcTotalNumCcs;
    *(toCopy + 36) |= 0x20000u;
    v6 = self->_has;
    if ((*&v6 & 0x10000) == 0)
    {
LABEL_16:
      if ((*&v6 & 0x2000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v6 & 0x10000) == 0)
  {
    goto LABEL_16;
  }

  *(toCopy + 26) = self->_mrdcTotalDlMimoLayers;
  *(toCopy + 36) |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_55:
  *(toCopy + 21) = self->_mrdcLteTotalNumCcs;
  *(toCopy + 36) |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_18:
    *(toCopy + 20) = self->_mrdcLteTotalDlMimoLayers;
    *(toCopy + 36) |= 0x1000u;
  }

LABEL_19:
  if (self->_mrdcLteBandCombo)
  {
    [v14 setMrdcLteBandCombo:?];
    toCopy = v14;
  }

  v7 = self->_has;
  if ((*&v7 & 0x8000) != 0)
  {
    *(toCopy + 25) = self->_mrdcNrTotalNumCcs;
    *(toCopy + 36) |= 0x8000u;
    v7 = self->_has;
  }

  if ((*&v7 & 0x4000) != 0)
  {
    *(toCopy + 24) = self->_mrdcNrTotalDlMimoLayers;
    *(toCopy + 36) |= 0x4000u;
  }

  if (self->_mrdcNrBandCombo)
  {
    [v14 setMrdcNrBandCombo:?];
  }

  if ([(CellularLteConnectionStats *)self nwUeCapStatsCount])
  {
    [v14 clearNwUeCapStats];
    nwUeCapStatsCount = [(CellularLteConnectionStats *)self nwUeCapStatsCount];
    if (nwUeCapStatsCount)
    {
      v9 = nwUeCapStatsCount;
      for (i = 0; i != v9; ++i)
      {
        v11 = [(CellularLteConnectionStats *)self nwUeCapStatAtIndex:i];
        [v14 addNwUeCapStat:v11];
      }
    }
  }

  v12 = v14;
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v14[28] = self->_numSubs;
    v14[36] |= 0x40000u;
  }

  if (self->_plmn)
  {
    [v14 setPlmn:?];
    v12 = v14;
  }

  v13 = self->_has;
  if ((*&v13 & 0x100000) != 0)
  {
    v12[35] = self->_subsId;
    v12[36] |= 0x100000u;
    v13 = self->_has;
    if ((*&v13 & 0x80000) == 0)
    {
LABEL_37:
      if ((*&v13 & 2) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_59;
    }
  }

  else if ((*&v13 & 0x80000) == 0)
  {
    goto LABEL_37;
  }

  v12[34] = self->_psPref;
  v12[36] |= 0x80000u;
  v13 = self->_has;
  if ((*&v13 & 2) == 0)
  {
LABEL_38:
    if ((*&v13 & 4) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_59:
  v12[4] = self->_cause;
  v12[36] |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_39:
    v12[5] = self->_connDuration;
    v12[36] |= 4u;
  }

LABEL_40:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 36) |= 1u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 6) = self->_duration;
  *(v5 + 36) |= 8u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 17) = self->_maxUlMod;
  *(v5 + 36) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 12) = self->_maxDlMod;
  *(v5 + 36) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 13) = self->_maxNwMimoLyr;
  *(v5 + 36) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 16) = self->_maxUeRank;
  *(v5 + 36) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 14) = self->_maxRxAnt;
  *(v5 + 36) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 15) = self->_maxSchdMimoLyr;
  *(v5 + 36) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_44:
  *(v5 + 11) = self->_lteTotalNumCcs;
  *(v5 + 36) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    *(v5 + 10) = self->_lteTotalDlMimoLayers;
    *(v5 + 36) |= 0x10u;
  }

LABEL_12:
  v8 = [self->_lteBandCombo copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  v10 = self->_has;
  if ((*&v10 & 0x20000) != 0)
  {
    *(v6 + 27) = self->_mrdcTotalNumCcs;
    *(v6 + 36) |= 0x20000u;
    v10 = self->_has;
    if ((*&v10 & 0x10000) == 0)
    {
LABEL_14:
      if ((*&v10 & 0x2000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_48;
    }
  }

  else if ((*&v10 & 0x10000) == 0)
  {
    goto LABEL_14;
  }

  *(v6 + 26) = self->_mrdcTotalDlMimoLayers;
  *(v6 + 36) |= 0x10000u;
  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_15:
    if ((*&v10 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_48:
  *(v6 + 21) = self->_mrdcLteTotalNumCcs;
  *(v6 + 36) |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_16:
    *(v6 + 20) = self->_mrdcLteTotalDlMimoLayers;
    *(v6 + 36) |= 0x1000u;
  }

LABEL_17:
  v11 = [self->_mrdcLteBandCombo copyWithZone:zone];
  v12 = v6[9];
  v6[9] = v11;

  v13 = self->_has;
  if ((*&v13 & 0x8000) != 0)
  {
    *(v6 + 25) = self->_mrdcNrTotalNumCcs;
    *(v6 + 36) |= 0x8000u;
    v13 = self->_has;
  }

  if ((*&v13 & 0x4000) != 0)
  {
    *(v6 + 24) = self->_mrdcNrTotalDlMimoLayers;
    *(v6 + 36) |= 0x4000u;
  }

  v14 = [self->_mrdcNrBandCombo copyWithZone:zone];
  v15 = v6[11];
  v6[11] = v14;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_nwUeCapStats;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v26 + 1) + 8 * v20) copyWithZone:{zone, v26}];
        [v6 addNwUeCapStat:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v6 + 28) = self->_numSubs;
    *(v6 + 36) |= 0x40000u;
  }

  v22 = [(NSData *)self->_plmn copyWithZone:zone, v26];
  v23 = v6[16];
  v6[16] = v22;

  v24 = self->_has;
  if ((*&v24 & 0x100000) != 0)
  {
    *(v6 + 35) = self->_subsId;
    *(v6 + 36) |= 0x100000u;
    v24 = self->_has;
    if ((*&v24 & 0x80000) == 0)
    {
LABEL_32:
      if ((*&v24 & 2) == 0)
      {
        goto LABEL_33;
      }

LABEL_52:
      *(v6 + 4) = self->_cause;
      *(v6 + 36) |= 2u;
      if ((*&self->_has & 4) == 0)
      {
        return v6;
      }

      goto LABEL_34;
    }
  }

  else if ((*&v24 & 0x80000) == 0)
  {
    goto LABEL_32;
  }

  *(v6 + 34) = self->_psPref;
  *(v6 + 36) |= 0x80000u;
  v24 = self->_has;
  if ((*&v24 & 2) != 0)
  {
    goto LABEL_52;
  }

LABEL_33:
  if ((*&v24 & 4) != 0)
  {
LABEL_34:
    *(v6 + 5) = self->_connDuration;
    *(v6 + 36) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_120;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_120;
    }
  }

  else if (v6)
  {
    goto LABEL_120;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_duration != *(equalCopy + 6))
    {
      goto LABEL_120;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_maxUlMod != *(equalCopy + 17))
    {
      goto LABEL_120;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_maxDlMod != *(equalCopy + 12))
    {
      goto LABEL_120;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_maxNwMimoLyr != *(equalCopy + 13))
    {
      goto LABEL_120;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_maxUeRank != *(equalCopy + 16))
    {
      goto LABEL_120;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_maxRxAnt != *(equalCopy + 14))
    {
      goto LABEL_120;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_maxSchdMimoLyr != *(equalCopy + 15))
    {
      goto LABEL_120;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_lteTotalNumCcs != *(equalCopy + 11))
    {
      goto LABEL_120;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_lteTotalDlMimoLayers != *(equalCopy + 10))
    {
      goto LABEL_120;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_120;
  }

  lteBandCombo = self->_lteBandCombo;
  if (lteBandCombo | *(equalCopy + 4))
  {
    if (![lteBandCombo isEqual:?])
    {
      goto LABEL_120;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 36);
  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_mrdcTotalNumCcs != *(equalCopy + 27))
    {
      goto LABEL_120;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_mrdcTotalDlMimoLayers != *(equalCopy + 26))
    {
      goto LABEL_120;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_mrdcLteTotalNumCcs != *(equalCopy + 21))
    {
      goto LABEL_120;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || self->_mrdcLteTotalDlMimoLayers != *(equalCopy + 20))
    {
      goto LABEL_120;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_120;
  }

  mrdcLteBandCombo = self->_mrdcLteBandCombo;
  if (mrdcLteBandCombo | *(equalCopy + 9))
  {
    if (![mrdcLteBandCombo isEqual:?])
    {
      goto LABEL_120;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 36);
  if ((*&has & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || self->_mrdcNrTotalNumCcs != *(equalCopy + 25))
    {
      goto LABEL_120;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    goto LABEL_120;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0 || self->_mrdcNrTotalDlMimoLayers != *(equalCopy + 24))
    {
      goto LABEL_120;
    }
  }

  else if ((v10 & 0x4000) != 0)
  {
    goto LABEL_120;
  }

  mrdcNrBandCombo = self->_mrdcNrBandCombo;
  if (mrdcNrBandCombo | *(equalCopy + 11) && ![mrdcNrBandCombo isEqual:?])
  {
    goto LABEL_120;
  }

  nwUeCapStats = self->_nwUeCapStats;
  if (nwUeCapStats | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)nwUeCapStats isEqual:?])
    {
      goto LABEL_120;
    }
  }

  v13 = self->_has;
  v14 = *(equalCopy + 36);
  if ((*&v13 & 0x40000) != 0)
  {
    if ((v14 & 0x40000) == 0 || self->_numSubs != *(equalCopy + 28))
    {
      goto LABEL_120;
    }
  }

  else if ((v14 & 0x40000) != 0)
  {
    goto LABEL_120;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 16))
  {
    if ([(NSData *)plmn isEqual:?])
    {
      v13 = self->_has;
      goto LABEL_100;
    }

LABEL_120:
    v17 = 0;
    goto LABEL_121;
  }

LABEL_100:
  v16 = *(equalCopy + 36);
  if ((*&v13 & 0x100000) != 0)
  {
    if ((v16 & 0x100000) == 0 || self->_subsId != *(equalCopy + 35))
    {
      goto LABEL_120;
    }
  }

  else if ((v16 & 0x100000) != 0)
  {
    goto LABEL_120;
  }

  if ((*&v13 & 0x80000) != 0)
  {
    if ((v16 & 0x80000) == 0 || self->_psPref != *(equalCopy + 34))
    {
      goto LABEL_120;
    }
  }

  else if ((v16 & 0x80000) != 0)
  {
    goto LABEL_120;
  }

  if ((*&v13 & 2) != 0)
  {
    if ((v16 & 2) == 0 || self->_cause != *(equalCopy + 4))
    {
      goto LABEL_120;
    }
  }

  else if ((v16 & 2) != 0)
  {
    goto LABEL_120;
  }

  if ((*&v13 & 4) != 0)
  {
    if ((v16 & 4) == 0 || self->_connDuration != *(equalCopy + 5))
    {
      goto LABEL_120;
    }

    v17 = 1;
  }

  else
  {
    v17 = (*(equalCopy + 36) & 4) == 0;
  }

LABEL_121:

  return v17;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v34 = 2654435761u * self->_timestamp;
    if ((*&has & 8) != 0)
    {
LABEL_3:
      v33 = 2654435761 * self->_duration;
      if ((*&has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v34 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v33 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_4:
    v32 = 2654435761 * self->_maxUlMod;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v32 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_5:
    v31 = 2654435761 * self->_maxDlMod;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v31 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_6:
    v30 = 2654435761 * self->_maxNwMimoLyr;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v30 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_7:
    v29 = 2654435761 * self->_maxUeRank;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v29 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_8:
    v28 = 2654435761 * self->_maxRxAnt;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v28 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_9:
    v27 = 2654435761 * self->_maxSchdMimoLyr;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v26 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v27 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v26 = 2654435761 * self->_lteTotalNumCcs;
  if ((*&has & 0x10) != 0)
  {
LABEL_11:
    v25 = 2654435761 * self->_lteTotalDlMimoLayers;
    goto LABEL_22;
  }

LABEL_21:
  v25 = 0;
LABEL_22:
  v24 = [self->_lteBandCombo hash];
  v4 = self->_has;
  if ((*&v4 & 0x20000) != 0)
  {
    v23 = 2654435761 * self->_mrdcTotalNumCcs;
    if ((*&v4 & 0x10000) != 0)
    {
LABEL_24:
      v22 = 2654435761 * self->_mrdcTotalDlMimoLayers;
      if ((*&v4 & 0x2000) != 0)
      {
        goto LABEL_25;
      }

LABEL_29:
      v20 = 0;
      if ((*&v4 & 0x1000) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v23 = 0;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_24;
    }
  }

  v22 = 0;
  if ((*&v4 & 0x2000) == 0)
  {
    goto LABEL_29;
  }

LABEL_25:
  v20 = 2654435761 * self->_mrdcLteTotalNumCcs;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_26:
    v5 = 2654435761 * self->_mrdcLteTotalDlMimoLayers;
    goto LABEL_31;
  }

LABEL_30:
  v5 = 0;
LABEL_31:
  v6 = [self->_mrdcLteBandCombo hash];
  v7 = self->_has;
  if ((*&v7 & 0x8000) != 0)
  {
    v8 = 2654435761 * self->_mrdcNrTotalNumCcs;
    if ((*&v7 & 0x4000) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v8 = 0;
    if ((*&v7 & 0x4000) != 0)
    {
LABEL_33:
      v9 = 2654435761 * self->_mrdcNrTotalDlMimoLayers;
      goto LABEL_36;
    }
  }

  v9 = 0;
LABEL_36:
  v10 = [self->_mrdcNrBandCombo hash];
  v11 = [(NSMutableArray *)self->_nwUeCapStats hash];
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v12 = 2654435761 * self->_numSubs;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSData *)self->_plmn hash];
  v14 = self->_has;
  if ((*&v14 & 0x100000) != 0)
  {
    v15 = 2654435761 * self->_subsId;
    if ((*&v14 & 0x80000) != 0)
    {
LABEL_41:
      v16 = 2654435761 * self->_psPref;
      if ((*&v14 & 2) != 0)
      {
        goto LABEL_42;
      }

LABEL_46:
      v17 = 0;
      if ((*&v14 & 4) != 0)
      {
        goto LABEL_43;
      }

LABEL_47:
      v18 = 0;
      return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v23 ^ v22 ^ v21 ^ v5 ^ v24 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18;
    }
  }

  else
  {
    v15 = 0;
    if ((*&v14 & 0x80000) != 0)
    {
      goto LABEL_41;
    }
  }

  v16 = 0;
  if ((*&v14 & 2) == 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v17 = 2654435761 * self->_cause;
  if ((*&v14 & 4) == 0)
  {
    goto LABEL_47;
  }

LABEL_43:
  v18 = 2654435761 * self->_connDuration;
  return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v23 ^ v22 ^ v21 ^ v5 ^ v24 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 36);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 36);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(fromCopy + 6);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x800) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_maxUlMod = *(fromCopy + 17);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x40) == 0)
  {
LABEL_5:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_maxDlMod = *(fromCopy + 12);
  *&self->_has |= 0x40u;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x80) == 0)
  {
LABEL_6:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_maxNwMimoLyr = *(fromCopy + 13);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x400) == 0)
  {
LABEL_7:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_maxUeRank = *(fromCopy + 16);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x100) == 0)
  {
LABEL_8:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_maxRxAnt = *(fromCopy + 14);
  *&self->_has |= 0x100u;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x200) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_maxSchdMimoLyr = *(fromCopy + 15);
  *&self->_has |= 0x200u;
  v6 = *(fromCopy + 36);
  if ((v6 & 0x20) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_lteTotalNumCcs = *(fromCopy + 11);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 36) & 0x10) != 0)
  {
LABEL_11:
    self->_lteTotalDlMimoLayers = *(fromCopy + 10);
    *&self->_has |= 0x10u;
  }

LABEL_12:
  lteBandCombo = self->_lteBandCombo;
  v8 = *(v5 + 4);
  if (lteBandCombo)
  {
    if (v8)
    {
      [lteBandCombo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CellularLteConnectionStats *)self setLteBandCombo:?];
  }

  v9 = *(v5 + 36);
  if ((v9 & 0x20000) != 0)
  {
    self->_mrdcTotalNumCcs = *(v5 + 27);
    *&self->_has |= 0x20000u;
    v9 = *(v5 + 36);
    if ((v9 & 0x10000) == 0)
    {
LABEL_29:
      if ((v9 & 0x2000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_37;
    }
  }

  else if ((v9 & 0x10000) == 0)
  {
    goto LABEL_29;
  }

  self->_mrdcTotalDlMimoLayers = *(v5 + 26);
  *&self->_has |= 0x10000u;
  v9 = *(v5 + 36);
  if ((v9 & 0x2000) == 0)
  {
LABEL_30:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_37:
  self->_mrdcLteTotalNumCcs = *(v5 + 21);
  *&self->_has |= 0x2000u;
  if ((*(v5 + 36) & 0x1000) != 0)
  {
LABEL_31:
    self->_mrdcLteTotalDlMimoLayers = *(v5 + 20);
    *&self->_has |= 0x1000u;
  }

LABEL_32:
  mrdcLteBandCombo = self->_mrdcLteBandCombo;
  v11 = *(v5 + 9);
  if (mrdcLteBandCombo)
  {
    if (v11)
    {
      [mrdcLteBandCombo mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(CellularLteConnectionStats *)self setMrdcLteBandCombo:?];
  }

  v12 = *(v5 + 36);
  if ((v12 & 0x8000) != 0)
  {
    self->_mrdcNrTotalNumCcs = *(v5 + 25);
    *&self->_has |= 0x8000u;
    v12 = *(v5 + 36);
  }

  if ((v12 & 0x4000) != 0)
  {
    self->_mrdcNrTotalDlMimoLayers = *(v5 + 24);
    *&self->_has |= 0x4000u;
  }

  mrdcNrBandCombo = self->_mrdcNrBandCombo;
  v14 = *(v5 + 11);
  if (mrdcNrBandCombo)
  {
    if (v14)
    {
      [mrdcNrBandCombo mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(CellularLteConnectionStats *)self setMrdcNrBandCombo:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = *(v5 + 15);
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(CellularLteConnectionStats *)self addNwUeCapStat:*(*(&v21 + 1) + 8 * i), v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  if ((*(v5 + 146) & 4) != 0)
  {
    self->_numSubs = *(v5 + 28);
    *&self->_has |= 0x40000u;
  }

  if (*(v5 + 16))
  {
    [(CellularLteConnectionStats *)self setPlmn:?];
  }

  v20 = *(v5 + 36);
  if ((v20 & 0x100000) != 0)
  {
    self->_subsId = *(v5 + 35);
    *&self->_has |= 0x100000u;
    v20 = *(v5 + 36);
    if ((v20 & 0x80000) == 0)
    {
LABEL_63:
      if ((v20 & 2) == 0)
      {
        goto LABEL_64;
      }

LABEL_69:
      self->_cause = *(v5 + 4);
      *&self->_has |= 2u;
      if ((*(v5 + 36) & 4) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }
  }

  else if ((v20 & 0x80000) == 0)
  {
    goto LABEL_63;
  }

  self->_psPref = *(v5 + 34);
  *&self->_has |= 0x80000u;
  v20 = *(v5 + 36);
  if ((v20 & 2) != 0)
  {
    goto LABEL_69;
  }

LABEL_64:
  if ((v20 & 4) != 0)
  {
LABEL_65:
    self->_connDuration = *(v5 + 5);
    *&self->_has |= 4u;
  }

LABEL_66:
}

@end