@interface CellularNrConnectionStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCause:(id)cause;
- (int)StringAsConnectionType:(id)type;
- (int)StringAsMaxDlMod:(id)mod;
- (int)StringAsMaxUlMod:(id)mod;
- (int)cause;
- (int)connectionType;
- (int)maxDlMod;
- (int)maxUlMod;
- (unint64_t)hash;
- (void)addNwUeCapStat:(id)stat;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCause:(BOOL)cause;
- (void)setHasConnDuration:(BOOL)duration;
- (void)setHasConnectionType:(BOOL)type;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasDurationOfConn:(BOOL)conn;
- (void)setHasHasBwpSwitch:(BOOL)switch;
- (void)setHasMaxDlMod:(BOOL)mod;
- (void)setHasMaxNwMimoLyr:(BOOL)lyr;
- (void)setHasMaxRxAnt:(BOOL)ant;
- (void)setHasMaxSchdMimoLyr:(BOOL)lyr;
- (void)setHasMaxUeRank:(BOOL)rank;
- (void)setHasMaxUlMod:(BOOL)mod;
- (void)setHasNr5gTotalDlMimoLayers:(BOOL)layers;
- (void)setHasNr5gTotalNumCcs:(BOOL)ccs;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularNrConnectionStats

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
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

- (int)connectionType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_connectionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnectionType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (int)StringAsConnectionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NR5G_MAC_QSH_METRIC_CONNECTION_SA"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"NR5G_MAC_QSH_METRIC_CONNECTION_NSA"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"NR5G_MAC_QSH_METRIC_CONNECTION_MAX"])
  {
    v4 = 2;
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

- (void)setHasDurationOfConn:(BOOL)conn
{
  if (conn)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasHasBwpSwitch:(BOOL)switch
{
  if (switch)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasNr5gTotalNumCcs:(BOOL)ccs
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

- (void)setHasNr5gTotalDlMimoLayers:(BOOL)layers
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
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
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

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
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
  if ([causeCopy isEqualToString:@"CONN_INFO_FLUSH_REASON_RELEASE"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"CONN_INFO_FLUSH_REASON_HO"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"CONN_INFO_FLUSH_REASON_OTHER1"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"CONN_INFO_FLUSH_REASON_MAX"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"CONN_INFO_FLUSH_REASON_MAX_STATS"])
  {
    v4 = 4;
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
  v7.super_class = CellularNrConnectionStats;
  v3 = [(CellularNrConnectionStats *)&v7 description];
  dictionaryRepresentation = [(CellularNrConnectionStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v20 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v20 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v21 = [NSNumber numberWithUnsignedInt:self->_duration];
  [v3 setObject:v21 forKey:@"duration"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_40:
  maxUlMod = self->_maxUlMod;
  if (maxUlMod >= 7)
  {
    v23 = [NSString stringWithFormat:@"(unknown: %i)", self->_maxUlMod];
  }

  else
  {
    v23 = *(&off_100318D38 + maxUlMod);
  }

  [v3 setObject:v23 forKey:@"max_ul_mod"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_48:
  maxDlMod = self->_maxDlMod;
  if (maxDlMod >= 7)
  {
    v29 = [NSString stringWithFormat:@"(unknown: %i)", self->_maxDlMod];
  }

  else
  {
    v29 = *(&off_100318D38 + maxDlMod);
  }

  [v3 setObject:v29 forKey:@"max_dl_mod"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_55:
  connectionType = self->_connectionType;
  if (connectionType >= 3)
  {
    v31 = [NSString stringWithFormat:@"(unknown: %i)", self->_connectionType];
  }

  else
  {
    v31 = *(&off_100318D70 + connectionType);
  }

  [v3 setObject:v31 forKey:@"connection_type"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v32 = [NSNumber numberWithUnsignedInt:self->_maxNwMimoLyr];
  [v3 setObject:v32 forKey:@"max_nw_mimo_lyr"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v33 = [NSNumber numberWithUnsignedInt:self->_maxUeRank];
  [v3 setObject:v33 forKey:@"max_ue_rank"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v34 = [NSNumber numberWithUnsignedInt:self->_maxRxAnt];
  [v3 setObject:v34 forKey:@"max_rx_ant"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  v35 = [NSNumber numberWithUnsignedInt:self->_maxSchdMimoLyr];
  [v3 setObject:v35 forKey:@"max_schd_mimo_lyr"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  v36 = [NSNumber numberWithUnsignedInt:self->_durationOfConn];
  [v3 setObject:v36 forKey:@"duration_of_conn"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_64:
  v37 = [NSNumber numberWithBool:self->_hasBwpSwitch];
  [v3 setObject:v37 forKey:@"has_bwp_switch"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_65:
  v38 = [NSNumber numberWithUnsignedInt:self->_nr5gTotalNumCcs];
  [v3 setObject:v38 forKey:@"nr5g_total_num_ccs"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    v5 = [NSNumber numberWithUnsignedInt:self->_nr5gTotalDlMimoLayers];
    [v3 setObject:v5 forKey:@"nr5g_total_dl_mimo_layers"];
  }

LABEL_15:
  nr5gBandCombo = self->_nr5gBandCombo;
  if (nr5gBandCombo)
  {
    dictionaryRepresentation = [nr5gBandCombo dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"nr5g_band_combo"];
  }

  if ([(NSMutableArray *)self->_nwUeCapStats count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_nwUeCapStats, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = self->_nwUeCapStats;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"nw_ue_cap_stat"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v15 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v15 forKey:@"num_subs"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v17 = self->_has;
  if ((*&v17 & 0x10000) != 0)
  {
    v24 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v24 forKey:@"subs_id"];

    v17 = self->_has;
    if ((*&v17 & 0x8000) == 0)
    {
LABEL_32:
      if ((*&v17 & 2) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_44;
    }
  }

  else if ((*&v17 & 0x8000) == 0)
  {
    goto LABEL_32;
  }

  v25 = [NSNumber numberWithUnsignedInt:self->_psPref];
  [v3 setObject:v25 forKey:@"ps_pref"];

  v17 = self->_has;
  if ((*&v17 & 2) == 0)
  {
LABEL_33:
    if ((*&v17 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_44:
  cause = self->_cause;
  if (cause >= 5)
  {
    v27 = [NSString stringWithFormat:@"(unknown: %i)", self->_cause];
  }

  else
  {
    v27 = *(&off_100318D88 + cause);
  }

  [v3 setObject:v27 forKey:@"cause"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_35;
  }

LABEL_34:
  v18 = [NSNumber numberWithUnsignedInt:self->_connDuration];
  [v3 setObject:v18 forKey:@"conn_duration"];

LABEL_35:

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
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x10) == 0)
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

    goto LABEL_37;
  }

LABEL_36:
  maxUlMod = self->_maxUlMod;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  maxDlMod = self->_maxDlMod;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  connectionType = self->_connectionType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  maxNwMimoLyr = self->_maxNwMimoLyr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  maxUeRank = self->_maxUeRank;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  maxRxAnt = self->_maxRxAnt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  maxSchdMimoLyr = self->_maxSchdMimoLyr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  durationOfConn = self->_durationOfConn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  hasBwpSwitch = self->_hasBwpSwitch;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_45:
  nr5gTotalNumCcs = self->_nr5gTotalNumCcs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    nr5gTotalDlMimoLayers = self->_nr5gTotalDlMimoLayers;
    PBDataWriterWriteUint32Field();
  }

LABEL_15:
  if (self->_nr5gBandCombo)
  {
    PBDataWriterWriteSubmessage();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_nwUeCapStats;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v14 = self->_has;
  if ((*&v14 & 0x10000) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v14 = self->_has;
    if ((*&v14 & 0x8000) == 0)
    {
LABEL_30:
      if ((*&v14 & 2) == 0)
      {
        goto LABEL_31;
      }

LABEL_49:
      cause = self->_cause;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((*&v14 & 0x8000) == 0)
  {
    goto LABEL_30;
  }

  psPref = self->_psPref;
  PBDataWriterWriteUint32Field();
  v14 = self->_has;
  if ((*&v14 & 2) != 0)
  {
    goto LABEL_49;
  }

LABEL_31:
  if ((*&v14 & 4) != 0)
  {
LABEL_32:
    connDuration = self->_connDuration;
    PBDataWriterWriteUint32Field();
  }

LABEL_33:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 29) |= 1u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 7) = self->_duration;
  *(toCopy + 29) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 14) = self->_maxUlMod;
  *(toCopy + 29) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 9) = self->_maxDlMod;
  *(toCopy + 29) |= 0x40u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 6) = self->_connectionType;
  *(toCopy + 29) |= 8u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 10) = self->_maxNwMimoLyr;
  *(toCopy + 29) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 13) = self->_maxUeRank;
  *(toCopy + 29) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 11) = self->_maxRxAnt;
  *(toCopy + 29) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 12) = self->_maxSchdMimoLyr;
  *(toCopy + 29) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 8) = self->_durationOfConn;
  *(toCopy + 29) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 112) = self->_hasBwpSwitch;
  *(toCopy + 29) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_44:
  *(toCopy + 19) = self->_nr5gTotalNumCcs;
  *(toCopy + 29) |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    *(toCopy + 18) = self->_nr5gTotalDlMimoLayers;
    *(toCopy + 29) |= 0x1000u;
  }

LABEL_15:
  v12 = toCopy;
  if (self->_nr5gBandCombo)
  {
    [toCopy setNr5gBandCombo:?];
  }

  if ([(CellularNrConnectionStats *)self nwUeCapStatsCount])
  {
    [v12 clearNwUeCapStats];
    nwUeCapStatsCount = [(CellularNrConnectionStats *)self nwUeCapStatsCount];
    if (nwUeCapStatsCount)
    {
      v7 = nwUeCapStatsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularNrConnectionStats *)self nwUeCapStatAtIndex:i];
        [v12 addNwUeCapStat:v9];
      }
    }
  }

  v10 = v12;
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v12[20] = self->_numSubs;
    v12[29] |= 0x4000u;
  }

  if (self->_plmn)
  {
    [v12 setPlmn:?];
    v10 = v12;
  }

  v11 = self->_has;
  if ((*&v11 & 0x10000) != 0)
  {
    v10[27] = self->_subsId;
    v10[29] |= 0x10000u;
    v11 = self->_has;
    if ((*&v11 & 0x8000) == 0)
    {
LABEL_27:
      if ((*&v11 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_48;
    }
  }

  else if ((*&v11 & 0x8000) == 0)
  {
    goto LABEL_27;
  }

  v10[26] = self->_psPref;
  v10[29] |= 0x8000u;
  v11 = self->_has;
  if ((*&v11 & 2) == 0)
  {
LABEL_28:
    if ((*&v11 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_48:
  v10[4] = self->_cause;
  v10[29] |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_29:
    v10[5] = self->_connDuration;
    v10[29] |= 4u;
  }

LABEL_30:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 29) |= 1u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 7) = self->_duration;
  *(v5 + 29) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 14) = self->_maxUlMod;
  *(v5 + 29) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 9) = self->_maxDlMod;
  *(v5 + 29) |= 0x40u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 6) = self->_connectionType;
  *(v5 + 29) |= 8u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 10) = self->_maxNwMimoLyr;
  *(v5 + 29) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 13) = self->_maxUeRank;
  *(v5 + 29) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 11) = self->_maxRxAnt;
  *(v5 + 29) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 12) = self->_maxSchdMimoLyr;
  *(v5 + 29) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 8) = self->_durationOfConn;
  *(v5 + 29) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 112) = self->_hasBwpSwitch;
  *(v5 + 29) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_41:
  *(v5 + 19) = self->_nr5gTotalNumCcs;
  *(v5 + 29) |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    *(v5 + 18) = self->_nr5gTotalDlMimoLayers;
    *(v5 + 29) |= 0x1000u;
  }

LABEL_15:
  v8 = [self->_nr5gBandCombo copyWithZone:zone];
  v9 = v6[8];
  v6[8] = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_nwUeCapStats;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * v14) copyWithZone:{zone, v20}];
        [v6 addNwUeCapStat:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v6 + 20) = self->_numSubs;
    *(v6 + 29) |= 0x4000u;
  }

  v16 = [(NSData *)self->_plmn copyWithZone:zone, v20];
  v17 = v6[12];
  v6[12] = v16;

  v18 = self->_has;
  if ((*&v18 & 0x10000) != 0)
  {
    *(v6 + 27) = self->_subsId;
    *(v6 + 29) |= 0x10000u;
    v18 = self->_has;
    if ((*&v18 & 0x8000) == 0)
    {
LABEL_26:
      if ((*&v18 & 2) == 0)
      {
        goto LABEL_27;
      }

LABEL_45:
      *(v6 + 4) = self->_cause;
      *(v6 + 29) |= 2u;
      if ((*&self->_has & 4) == 0)
      {
        return v6;
      }

      goto LABEL_28;
    }
  }

  else if ((*&v18 & 0x8000) == 0)
  {
    goto LABEL_26;
  }

  *(v6 + 26) = self->_psPref;
  *(v6 + 29) |= 0x8000u;
  v18 = self->_has;
  if ((*&v18 & 2) != 0)
  {
    goto LABEL_45;
  }

LABEL_27:
  if ((*&v18 & 4) != 0)
  {
LABEL_28:
    *(v6 + 5) = self->_connDuration;
    *(v6 + 29) |= 4u;
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
  v6 = *(equalCopy + 29);
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

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_duration != *(equalCopy + 7))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_maxUlMod != *(equalCopy + 14))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_maxDlMod != *(equalCopy + 9))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_connectionType != *(equalCopy + 6))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_maxNwMimoLyr != *(equalCopy + 10))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_maxUeRank != *(equalCopy + 13))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_maxRxAnt != *(equalCopy + 11))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_maxSchdMimoLyr != *(equalCopy + 12))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_durationOfConn != *(equalCopy + 8))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_102;
    }

    v7 = *(equalCopy + 112);
    if (self->_hasBwpSwitch)
    {
      if ((*(equalCopy + 112) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else if (*(equalCopy + 112))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_nr5gTotalNumCcs != *(equalCopy + 19))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_nr5gTotalDlMimoLayers != *(equalCopy + 18))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_102;
  }

  nr5gBandCombo = self->_nr5gBandCombo;
  if (nr5gBandCombo | *(equalCopy + 8) && ![nr5gBandCombo isEqual:?])
  {
    goto LABEL_102;
  }

  nwUeCapStats = self->_nwUeCapStats;
  if (nwUeCapStats | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)nwUeCapStats isEqual:?])
    {
      goto LABEL_102;
    }
  }

  v10 = self->_has;
  v11 = *(equalCopy + 29);
  if ((*&v10 & 0x4000) != 0)
  {
    if ((v11 & 0x4000) == 0 || self->_numSubs != *(equalCopy + 20))
    {
      goto LABEL_102;
    }
  }

  else if ((v11 & 0x4000) != 0)
  {
    goto LABEL_102;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 12))
  {
    if ([(NSData *)plmn isEqual:?])
    {
      v10 = self->_has;
      goto LABEL_82;
    }

LABEL_102:
    v14 = 0;
    goto LABEL_103;
  }

LABEL_82:
  v13 = *(equalCopy + 29);
  if ((*&v10 & 0x10000) != 0)
  {
    if ((v13 & 0x10000) == 0 || self->_subsId != *(equalCopy + 27))
    {
      goto LABEL_102;
    }
  }

  else if ((v13 & 0x10000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&v10 & 0x8000) != 0)
  {
    if ((v13 & 0x8000) == 0 || self->_psPref != *(equalCopy + 26))
    {
      goto LABEL_102;
    }
  }

  else if ((v13 & 0x8000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&v10 & 2) != 0)
  {
    if ((v13 & 2) == 0 || self->_cause != *(equalCopy + 4))
    {
      goto LABEL_102;
    }
  }

  else if ((v13 & 2) != 0)
  {
    goto LABEL_102;
  }

  if ((*&v10 & 4) != 0)
  {
    if ((v13 & 4) == 0 || self->_connDuration != *(equalCopy + 5))
    {
      goto LABEL_102;
    }

    v14 = 1;
  }

  else
  {
    v14 = (*(equalCopy + 29) & 4) == 0;
  }

LABEL_103:

  return v14;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v26 = 2654435761u * self->_timestamp;
    if ((*&has & 0x10) != 0)
    {
LABEL_3:
      v25 = 2654435761 * self->_duration;
      if ((*&has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v26 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v25 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_4:
    v24 = 2654435761 * self->_maxUlMod;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v24 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_5:
    v23 = 2654435761 * self->_maxDlMod;
    if ((*&has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v23 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_6:
    v22 = 2654435761 * self->_connectionType;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v22 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_7:
    v21 = 2654435761 * self->_maxNwMimoLyr;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v21 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_8:
    v20 = 2654435761 * self->_maxUeRank;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v20 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_9:
    v19 = 2654435761 * self->_maxRxAnt;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_10:
    v18 = 2654435761 * self->_maxSchdMimoLyr;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v18 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_11:
    v4 = 2654435761 * self->_durationOfConn;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_12:
    v5 = 2654435761 * self->_hasBwpSwitch;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v6 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_25:
  v5 = 0;
  if ((*&has & 0x2000) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v6 = 2654435761 * self->_nr5gTotalNumCcs;
  if ((*&has & 0x1000) != 0)
  {
LABEL_14:
    v7 = 2654435761 * self->_nr5gTotalDlMimoLayers;
    goto LABEL_28;
  }

LABEL_27:
  v7 = 0;
LABEL_28:
  v8 = [self->_nr5gBandCombo hash];
  v9 = [(NSMutableArray *)self->_nwUeCapStats hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v10 = 2654435761 * self->_numSubs;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NSData *)self->_plmn hash];
  v12 = self->_has;
  if ((*&v12 & 0x10000) != 0)
  {
    v13 = 2654435761 * self->_subsId;
    if ((*&v12 & 0x8000) != 0)
    {
LABEL_33:
      v14 = 2654435761 * self->_psPref;
      if ((*&v12 & 2) != 0)
      {
        goto LABEL_34;
      }

LABEL_38:
      v15 = 0;
      if ((*&v12 & 4) != 0)
      {
        goto LABEL_35;
      }

LABEL_39:
      v16 = 0;
      return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x8000) != 0)
    {
      goto LABEL_33;
    }
  }

  v14 = 0;
  if ((*&v12 & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v15 = 2654435761 * self->_cause;
  if ((*&v12 & 4) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v16 = 2654435761 * self->_connDuration;
  return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 29);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 29);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 29);
  if ((v6 & 0x800) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_maxUlMod = *(fromCopy + 14);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 29);
  if ((v6 & 0x40) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_maxDlMod = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v6 = *(fromCopy + 29);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_connectionType = *(fromCopy + 6);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 29);
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_maxNwMimoLyr = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 29);
  if ((v6 & 0x400) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_maxUeRank = *(fromCopy + 13);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 29);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_maxRxAnt = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v6 = *(fromCopy + 29);
  if ((v6 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_maxSchdMimoLyr = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v6 = *(fromCopy + 29);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_durationOfConn = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 29);
  if ((v6 & 0x20000) == 0)
  {
LABEL_12:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_hasBwpSwitch = *(fromCopy + 112);
  *&self->_has |= 0x20000u;
  v6 = *(fromCopy + 29);
  if ((v6 & 0x2000) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  self->_nr5gTotalNumCcs = *(fromCopy + 19);
  *&self->_has |= 0x2000u;
  if ((*(fromCopy + 29) & 0x1000) != 0)
  {
LABEL_14:
    self->_nr5gTotalDlMimoLayers = *(fromCopy + 18);
    *&self->_has |= 0x1000u;
  }

LABEL_15:
  nr5gBandCombo = self->_nr5gBandCombo;
  v8 = *(v5 + 8);
  if (nr5gBandCombo)
  {
    if (v8)
    {
      [nr5gBandCombo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CellularNrConnectionStats *)self setNr5gBandCombo:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v5 + 11);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CellularNrConnectionStats *)self addNwUeCapStat:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if ((*(v5 + 117) & 0x40) != 0)
  {
    self->_numSubs = *(v5 + 20);
    *&self->_has |= 0x4000u;
  }

  if (*(v5 + 12))
  {
    [(CellularNrConnectionStats *)self setPlmn:?];
  }

  v14 = *(v5 + 29);
  if ((v14 & 0x10000) != 0)
  {
    self->_subsId = *(v5 + 27);
    *&self->_has |= 0x10000u;
    v14 = *(v5 + 29);
    if ((v14 & 0x8000) == 0)
    {
LABEL_46:
      if ((v14 & 2) == 0)
      {
        goto LABEL_47;
      }

LABEL_52:
      self->_cause = *(v5 + 4);
      *&self->_has |= 2u;
      if ((*(v5 + 29) & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else if ((v14 & 0x8000) == 0)
  {
    goto LABEL_46;
  }

  self->_psPref = *(v5 + 26);
  *&self->_has |= 0x8000u;
  v14 = *(v5 + 29);
  if ((v14 & 2) != 0)
  {
    goto LABEL_52;
  }

LABEL_47:
  if ((v14 & 4) != 0)
  {
LABEL_48:
    self->_connDuration = *(v5 + 5);
    *&self->_has |= 4u;
  }

LABEL_49:
}

@end