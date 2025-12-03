@interface ConnStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMaxDlModulation:(id)modulation;
- (int)StringAsMaxUlModulation:(id)modulation;
- (int)maxDlModulation;
- (int)maxUlModulation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConfiguredAggregatedUlMimoLayers:(BOOL)layers;
- (void)setHasDlConfiguredAggregatedBwMhz:(BOOL)mhz;
- (void)setHasDlConfiguredAggregatedCcCount:(BOOL)count;
- (void)setHasHasBwpSwitch:(BOOL)switch;
- (void)setHasIsTddFdd:(BOOL)fdd;
- (void)setHasMaxConfiguredPerCcDlMimoLayers:(BOOL)layers;
- (void)setHasMaxConfiguredPerCcUlMimoLayers:(BOOL)layers;
- (void)setHasMaxDlModulation:(BOOL)modulation;
- (void)setHasMaxPerCcRxAnt:(BOOL)ant;
- (void)setHasMaxPerCcTxAnt:(BOOL)ant;
- (void)setHasMaxRxAnt:(BOOL)ant;
- (void)setHasMaxScheduledAggregatedDlBwMhz:(BOOL)mhz;
- (void)setHasMaxScheduledAggregatedDlCcCount:(BOOL)count;
- (void)setHasMaxScheduledAggregatedDlMimoLayers:(BOOL)layers;
- (void)setHasMaxScheduledAggregatedUlMimoLayers:(BOOL)layers;
- (void)setHasMaxScheduledPerCcDlMimoLayers:(BOOL)layers;
- (void)setHasMaxScheduledPerCcUlMimoLayers:(BOOL)layers;
- (void)setHasMaxTxAnt:(BOOL)ant;
- (void)setHasMaxUeRank:(BOOL)rank;
- (void)setHasMaxUlModulation:(BOOL)modulation;
- (void)setHasPscellDlBand:(BOOL)band;
- (void)setHasSecondUlBand:(BOOL)band;
- (void)setHasUlConfiguredAggregatedBwMhz:(BOOL)mhz;
- (void)setHasUlConfiguredAggregatedCcCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation ConnStats

- (void)setHasPscellDlBand:(BOOL)band
{
  if (band)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasSecondUlBand:(BOOL)band
{
  if (band)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasDlConfiguredAggregatedBwMhz:(BOOL)mhz
{
  if (mhz)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasUlConfiguredAggregatedBwMhz:(BOOL)mhz
{
  if (mhz)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasDlConfiguredAggregatedCcCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasUlConfiguredAggregatedCcCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasConfiguredAggregatedUlMimoLayers:(BOOL)layers
{
  if (layers)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasMaxConfiguredPerCcDlMimoLayers:(BOOL)layers
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

- (void)setHasMaxConfiguredPerCcUlMimoLayers:(BOOL)layers
{
  if (layers)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasMaxScheduledAggregatedDlBwMhz:(BOOL)mhz
{
  if (mhz)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasMaxScheduledAggregatedDlCcCount:(BOOL)count
{
  if (count)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasMaxScheduledAggregatedDlMimoLayers:(BOOL)layers
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

- (void)setHasMaxScheduledAggregatedUlMimoLayers:(BOOL)layers
{
  if (layers)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasMaxScheduledPerCcDlMimoLayers:(BOOL)layers
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

- (void)setHasMaxScheduledPerCcUlMimoLayers:(BOOL)layers
{
  if (layers)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (int)maxDlModulation
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_maxDlModulation;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMaxDlModulation:(BOOL)modulation
{
  if (modulation)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (int)StringAsMaxDlModulation:(id)modulation
{
  modulationCopy = modulation;
  if ([modulationCopy isEqualToString:@"MODULATION_BPSK"])
  {
    v4 = 0;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_QPSK"])
  {
    v4 = 1;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_16QAM"])
  {
    v4 = 2;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_64QAM"])
  {
    v4 = 3;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_256QAM"])
  {
    v4 = 4;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_1024QAM"])
  {
    v4 = 5;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_UNKOWN"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)maxUlModulation
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_maxUlModulation;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMaxUlModulation:(BOOL)modulation
{
  if (modulation)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (int)StringAsMaxUlModulation:(id)modulation
{
  modulationCopy = modulation;
  if ([modulationCopy isEqualToString:@"MODULATION_BPSK"])
  {
    v4 = 0;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_QPSK"])
  {
    v4 = 1;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_16QAM"])
  {
    v4 = 2;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_64QAM"])
  {
    v4 = 3;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_256QAM"])
  {
    v4 = 4;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_1024QAM"])
  {
    v4 = 5;
  }

  else if ([modulationCopy isEqualToString:@"MODULATION_UNKOWN"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMaxUeRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasMaxPerCcRxAnt:(BOOL)ant
{
  if (ant)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasMaxRxAnt:(BOOL)ant
{
  if (ant)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasMaxPerCcTxAnt:(BOOL)ant
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

- (void)setHasMaxTxAnt:(BOOL)ant
{
  if (ant)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasHasBwpSwitch:(BOOL)switch
{
  if (switch)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasIsTddFdd:(BOOL)fdd
{
  if (fdd)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ConnStats;
  v3 = [(ConnStats *)&v7 description];
  dictionaryRepresentation = [(ConnStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_pscellDlBand];
    [v3 setObject:v5 forKey:@"pscell_dl_band"];

    has = self->_has;
  }

  if ((*&has & 0x100000) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_secondUlBand];
    [v3 setObject:v6 forKey:@"second_ul_band"];
  }

  configuredBandCombo = self->_configuredBandCombo;
  if (configuredBandCombo)
  {
    [v3 setObject:configuredBandCombo forKey:@"configured_band_combo"];
  }

  v8 = self->_has;
  if ((*&v8 & 4) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_dlConfiguredAggregatedBwMhz];
    [v3 setObject:v14 forKey:@"dl_configured_aggregated_bw_mhz"];

    v8 = self->_has;
    if ((*&v8 & 0x200000) == 0)
    {
LABEL_9:
      if ((*&v8 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }
  }

  else if ((*&v8 & 0x200000) == 0)
  {
    goto LABEL_9;
  }

  v15 = [NSNumber numberWithUnsignedInt:self->_ulConfiguredAggregatedBwMhz];
  [v3 setObject:v15 forKey:@"ul_configured_aggregated_bw_mhz"];

  v8 = self->_has;
  if ((*&v8 & 8) == 0)
  {
LABEL_10:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  v16 = [NSNumber numberWithUnsignedInt:self->_dlConfiguredAggregatedCcCount];
  [v3 setObject:v16 forKey:@"dl_configured_aggregated_cc_count"];

  v8 = self->_has;
  if ((*&v8 & 0x400000) == 0)
  {
LABEL_11:
    if ((*&v8 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = [NSNumber numberWithUnsignedInt:self->_ulConfiguredAggregatedCcCount];
  [v3 setObject:v17 forKey:@"ul_configured_aggregated_cc_count"];

  v8 = self->_has;
  if ((*&v8 & 1) == 0)
  {
LABEL_12:
    if ((*&v8 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = [NSNumber numberWithUnsignedInt:self->_configuredAggregatedDlMimoLayers];
  [v3 setObject:v18 forKey:@"configured_aggregated_dl_mimo_layers"];

  v8 = self->_has;
  if ((*&v8 & 2) == 0)
  {
LABEL_13:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  v19 = [NSNumber numberWithUnsignedInt:self->_configuredAggregatedUlMimoLayers];
  [v3 setObject:v19 forKey:@"configured_aggregated_ul_mimo_layers"];

  v8 = self->_has;
  if ((*&v8 & 0x10) == 0)
  {
LABEL_14:
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_43:
  v20 = [NSNumber numberWithUnsignedInt:self->_maxConfiguredPerCcDlMimoLayers];
  [v3 setObject:v20 forKey:@"max_configured_per_cc_dl_mimo_layers"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    v9 = [NSNumber numberWithUnsignedInt:self->_maxConfiguredPerCcUlMimoLayers];
    [v3 setObject:v9 forKey:@"max_configured_per_cc_ul_mimo_layers"];
  }

LABEL_16:
  maxScheduledDlBandCombo = self->_maxScheduledDlBandCombo;
  if (maxScheduledDlBandCombo)
  {
    [v3 setObject:maxScheduledDlBandCombo forKey:@"max_scheduled_dl_band_combo"];
  }

  v11 = self->_has;
  if ((*&v11 & 0x400) != 0)
  {
    v21 = [NSNumber numberWithUnsignedInt:self->_maxScheduledAggregatedDlBwMhz];
    [v3 setObject:v21 forKey:@"max_scheduled_aggregated_dl_bw_mhz"];

    v11 = self->_has;
    if ((*&v11 & 0x800) == 0)
    {
LABEL_20:
      if ((*&v11 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_47;
    }
  }

  else if ((*&v11 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  v22 = [NSNumber numberWithUnsignedInt:self->_maxScheduledAggregatedDlCcCount];
  [v3 setObject:v22 forKey:@"max_scheduled_aggregated_dl_cc_count"];

  v11 = self->_has;
  if ((*&v11 & 0x1000) == 0)
  {
LABEL_21:
    if ((*&v11 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  v23 = [NSNumber numberWithUnsignedInt:self->_maxScheduledAggregatedDlMimoLayers];
  [v3 setObject:v23 forKey:@"max_scheduled_aggregated_dl_mimo_layers"];

  v11 = self->_has;
  if ((*&v11 & 0x2000) == 0)
  {
LABEL_22:
    if ((*&v11 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  v24 = [NSNumber numberWithUnsignedInt:self->_maxScheduledAggregatedUlMimoLayers];
  [v3 setObject:v24 forKey:@"max_scheduled_aggregated_ul_mimo_layers"];

  v11 = self->_has;
  if ((*&v11 & 0x4000) == 0)
  {
LABEL_23:
    if ((*&v11 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  v25 = [NSNumber numberWithUnsignedInt:self->_maxScheduledPerCcDlMimoLayers];
  [v3 setObject:v25 forKey:@"max_scheduled_per_cc_dl_mimo_layers"];

  v11 = self->_has;
  if ((*&v11 & 0x8000) == 0)
  {
LABEL_24:
    if ((*&v11 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  v26 = [NSNumber numberWithUnsignedInt:self->_maxScheduledPerCcUlMimoLayers];
  [v3 setObject:v26 forKey:@"max_scheduled_per_cc_ul_mimo_layers"];

  v11 = self->_has;
  if ((*&v11 & 0x40) == 0)
  {
LABEL_25:
    if ((*&v11 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_51:
  maxDlModulation = self->_maxDlModulation;
  if (maxDlModulation >= 7)
  {
    v28 = [NSString stringWithFormat:@"(unknown: %i)", self->_maxDlModulation];
  }

  else
  {
    v28 = *(&off_1003176E0 + maxDlModulation);
  }

  [v3 setObject:v28 forKey:@"max_dl_modulation"];

  v11 = self->_has;
  if ((*&v11 & 0x40000) == 0)
  {
LABEL_26:
    if ((*&v11 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_55:
  maxUlModulation = self->_maxUlModulation;
  if (maxUlModulation >= 7)
  {
    v30 = [NSString stringWithFormat:@"(unknown: %i)", self->_maxUlModulation];
  }

  else
  {
    v30 = *(&off_1003176E0 + maxUlModulation);
  }

  [v3 setObject:v30 forKey:@"max_ul_modulation"];

  v11 = self->_has;
  if ((*&v11 & 0x20000) == 0)
  {
LABEL_27:
    if ((*&v11 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v31 = [NSNumber numberWithUnsignedInt:self->_maxUeRank];
  [v3 setObject:v31 forKey:@"max_ue_rank"];

  v11 = self->_has;
  if ((*&v11 & 0x80) == 0)
  {
LABEL_28:
    if ((*&v11 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v32 = [NSNumber numberWithUnsignedInt:self->_maxPerCcRxAnt];
  [v3 setObject:v32 forKey:@"max_perCc_rx_ant"];

  v11 = self->_has;
  if ((*&v11 & 0x200) == 0)
  {
LABEL_29:
    if ((*&v11 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v33 = [NSNumber numberWithUnsignedInt:self->_maxRxAnt];
  [v3 setObject:v33 forKey:@"max_rx_ant"];

  v11 = self->_has;
  if ((*&v11 & 0x100) == 0)
  {
LABEL_30:
    if ((*&v11 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  v34 = [NSNumber numberWithUnsignedInt:self->_maxPerCcTxAnt];
  [v3 setObject:v34 forKey:@"max_perCc_tx_ant"];

  v11 = self->_has;
  if ((*&v11 & 0x10000) == 0)
  {
LABEL_31:
    if ((*&v11 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  v35 = [NSNumber numberWithUnsignedInt:self->_maxTxAnt];
  [v3 setObject:v35 forKey:@"max_tx_ant"];

  v11 = self->_has;
  if ((*&v11 & 0x800000) == 0)
  {
LABEL_32:
    if ((*&v11 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_64:
  v36 = [NSNumber numberWithBool:self->_hasBwpSwitch];
  [v3 setObject:v36 forKey:@"has_bwp_switch"];

  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_33:
    v12 = [NSNumber numberWithBool:self->_isTddFdd];
    [v3 setObject:v12 forKey:@"is_tdd_fdd"];
  }

LABEL_34:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    pscellDlBand = self->_pscellDlBand;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((*&has & 0x100000) != 0)
  {
    secondUlBand = self->_secondUlBand;
    PBDataWriterWriteUint32Field();
  }

  if (self->_configuredBandCombo)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 4) != 0)
  {
    dlConfiguredAggregatedBwMhz = self->_dlConfiguredAggregatedBwMhz;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((*&v7 & 0x200000) == 0)
    {
LABEL_9:
      if ((*&v7 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }
  }

  else if ((*&v7 & 0x200000) == 0)
  {
    goto LABEL_9;
  }

  ulConfiguredAggregatedBwMhz = self->_ulConfiguredAggregatedBwMhz;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_10:
    if ((*&v7 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  dlConfiguredAggregatedCcCount = self->_dlConfiguredAggregatedCcCount;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x400000) == 0)
  {
LABEL_11:
    if ((*&v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  ulConfiguredAggregatedCcCount = self->_ulConfiguredAggregatedCcCount;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 1) == 0)
  {
LABEL_12:
    if ((*&v7 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  configuredAggregatedDlMimoLayers = self->_configuredAggregatedDlMimoLayers;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 2) == 0)
  {
LABEL_13:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  configuredAggregatedUlMimoLayers = self->_configuredAggregatedUlMimoLayers;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_43:
  maxConfiguredPerCcDlMimoLayers = self->_maxConfiguredPerCcDlMimoLayers;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    maxConfiguredPerCcUlMimoLayers = self->_maxConfiguredPerCcUlMimoLayers;
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
  if (self->_maxScheduledDlBandCombo)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((*&v9 & 0x400) != 0)
  {
    maxScheduledAggregatedDlBwMhz = self->_maxScheduledAggregatedDlBwMhz;
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
    if ((*&v9 & 0x800) == 0)
    {
LABEL_20:
      if ((*&v9 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_47;
    }
  }

  else if ((*&v9 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  maxScheduledAggregatedDlCcCount = self->_maxScheduledAggregatedDlCcCount;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x1000) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  maxScheduledAggregatedDlMimoLayers = self->_maxScheduledAggregatedDlMimoLayers;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_22:
    if ((*&v9 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  maxScheduledAggregatedUlMimoLayers = self->_maxScheduledAggregatedUlMimoLayers;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x4000) == 0)
  {
LABEL_23:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  maxScheduledPerCcDlMimoLayers = self->_maxScheduledPerCcDlMimoLayers;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x8000) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  maxScheduledPerCcUlMimoLayers = self->_maxScheduledPerCcUlMimoLayers;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x40) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  maxDlModulation = self->_maxDlModulation;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x40000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  maxUlModulation = self->_maxUlModulation;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x20000) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  maxUeRank = self->_maxUeRank;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x80) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  maxPerCcRxAnt = self->_maxPerCcRxAnt;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x200) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  maxRxAnt = self->_maxRxAnt;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  maxPerCcTxAnt = self->_maxPerCcTxAnt;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_31:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

LABEL_57:
  maxTxAnt = self->_maxTxAnt;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x800000) == 0)
  {
LABEL_32:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_58:
  hasBwpSwitch = self->_hasBwpSwitch;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_33:
    isTddFdd = self->_isTddFdd;
    PBDataWriterWriteBOOLField();
  }

LABEL_34:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    toCopy[25] = self->_pscellDlBand;
    toCopy[30] |= 0x80000u;
    has = self->_has;
  }

  if ((*&has & 0x100000) != 0)
  {
    toCopy[26] = self->_secondUlBand;
    toCopy[30] |= 0x100000u;
  }

  v8 = toCopy;
  if (self->_configuredBandCombo)
  {
    [toCopy setConfiguredBandCombo:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((*&v6 & 4) != 0)
  {
    toCopy[6] = self->_dlConfiguredAggregatedBwMhz;
    toCopy[30] |= 4u;
    v6 = self->_has;
    if ((*&v6 & 0x200000) == 0)
    {
LABEL_9:
      if ((*&v6 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }
  }

  else if ((*&v6 & 0x200000) == 0)
  {
    goto LABEL_9;
  }

  toCopy[27] = self->_ulConfiguredAggregatedBwMhz;
  toCopy[30] |= 0x200000u;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_10:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  toCopy[7] = self->_dlConfiguredAggregatedCcCount;
  toCopy[30] |= 8u;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_11:
    if ((*&v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  toCopy[28] = self->_ulConfiguredAggregatedCcCount;
  toCopy[30] |= 0x400000u;
  v6 = self->_has;
  if ((*&v6 & 1) == 0)
  {
LABEL_12:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  toCopy[2] = self->_configuredAggregatedDlMimoLayers;
  toCopy[30] |= 1u;
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_13:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  toCopy[3] = self->_configuredAggregatedUlMimoLayers;
  toCopy[30] |= 2u;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_14:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_43:
  toCopy[8] = self->_maxConfiguredPerCcDlMimoLayers;
  toCopy[30] |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    toCopy[9] = self->_maxConfiguredPerCcUlMimoLayers;
    toCopy[30] |= 0x20u;
  }

LABEL_16:
  if (self->_maxScheduledDlBandCombo)
  {
    [v8 setMaxScheduledDlBandCombo:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((*&v7 & 0x400) != 0)
  {
    toCopy[14] = self->_maxScheduledAggregatedDlBwMhz;
    toCopy[30] |= 0x400u;
    v7 = self->_has;
    if ((*&v7 & 0x800) == 0)
    {
LABEL_20:
      if ((*&v7 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_47;
    }
  }

  else if ((*&v7 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  toCopy[15] = self->_maxScheduledAggregatedDlCcCount;
  toCopy[30] |= 0x800u;
  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  toCopy[16] = self->_maxScheduledAggregatedDlMimoLayers;
  toCopy[30] |= 0x1000u;
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  toCopy[17] = self->_maxScheduledAggregatedUlMimoLayers;
  toCopy[30] |= 0x2000u;
  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  toCopy[20] = self->_maxScheduledPerCcDlMimoLayers;
  toCopy[30] |= 0x4000u;
  v7 = self->_has;
  if ((*&v7 & 0x8000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  toCopy[21] = self->_maxScheduledPerCcUlMimoLayers;
  toCopy[30] |= 0x8000u;
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_25:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  toCopy[10] = self->_maxDlModulation;
  toCopy[30] |= 0x40u;
  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_26:
    if ((*&v7 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  toCopy[24] = self->_maxUlModulation;
  toCopy[30] |= 0x40000u;
  v7 = self->_has;
  if ((*&v7 & 0x20000) == 0)
  {
LABEL_27:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  toCopy[23] = self->_maxUeRank;
  toCopy[30] |= 0x20000u;
  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  toCopy[11] = self->_maxPerCcRxAnt;
  toCopy[30] |= 0x80u;
  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_29:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  toCopy[13] = self->_maxRxAnt;
  toCopy[30] |= 0x200u;
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_30:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  toCopy[12] = self->_maxPerCcTxAnt;
  toCopy[30] |= 0x100u;
  v7 = self->_has;
  if ((*&v7 & 0x10000) == 0)
  {
LABEL_31:
    if ((*&v7 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

LABEL_57:
  toCopy[22] = self->_maxTxAnt;
  toCopy[30] |= 0x10000u;
  v7 = self->_has;
  if ((*&v7 & 0x800000) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_58:
  *(toCopy + 116) = self->_hasBwpSwitch;
  toCopy[30] |= 0x800000u;
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_33:
    *(toCopy + 117) = self->_isTddFdd;
    toCopy[30] |= 0x1000000u;
  }

LABEL_34:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    v5[25] = self->_pscellDlBand;
    v5[30] |= 0x80000u;
    has = self->_has;
  }

  if ((*&has & 0x100000) != 0)
  {
    v5[26] = self->_secondUlBand;
    v5[30] |= 0x100000u;
  }

  v8 = [(NSString *)self->_configuredBandCombo copyWithZone:zone];
  v9 = *(v6 + 2);
  *(v6 + 2) = v8;

  v10 = self->_has;
  if ((*&v10 & 4) != 0)
  {
    v6[6] = self->_dlConfiguredAggregatedBwMhz;
    v6[30] |= 4u;
    v10 = self->_has;
    if ((*&v10 & 0x200000) == 0)
    {
LABEL_7:
      if ((*&v10 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_33;
    }
  }

  else if ((*&v10 & 0x200000) == 0)
  {
    goto LABEL_7;
  }

  v6[27] = self->_ulConfiguredAggregatedBwMhz;
  v6[30] |= 0x200000u;
  v10 = self->_has;
  if ((*&v10 & 8) == 0)
  {
LABEL_8:
    if ((*&v10 & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  v6[7] = self->_dlConfiguredAggregatedCcCount;
  v6[30] |= 8u;
  v10 = self->_has;
  if ((*&v10 & 0x400000) == 0)
  {
LABEL_9:
    if ((*&v10 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6[28] = self->_ulConfiguredAggregatedCcCount;
  v6[30] |= 0x400000u;
  v10 = self->_has;
  if ((*&v10 & 1) == 0)
  {
LABEL_10:
    if ((*&v10 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v6[2] = self->_configuredAggregatedDlMimoLayers;
  v6[30] |= 1u;
  v10 = self->_has;
  if ((*&v10 & 2) == 0)
  {
LABEL_11:
    if ((*&v10 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6[3] = self->_configuredAggregatedUlMimoLayers;
  v6[30] |= 2u;
  v10 = self->_has;
  if ((*&v10 & 0x10) == 0)
  {
LABEL_12:
    if ((*&v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_37:
  v6[8] = self->_maxConfiguredPerCcDlMimoLayers;
  v6[30] |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_13:
    v6[9] = self->_maxConfiguredPerCcUlMimoLayers;
    v6[30] |= 0x20u;
  }

LABEL_14:
  v11 = [(NSString *)self->_maxScheduledDlBandCombo copyWithZone:zone];
  v12 = *(v6 + 9);
  *(v6 + 9) = v11;

  v13 = self->_has;
  if ((*&v13 & 0x400) != 0)
  {
    v6[14] = self->_maxScheduledAggregatedDlBwMhz;
    v6[30] |= 0x400u;
    v13 = self->_has;
    if ((*&v13 & 0x800) == 0)
    {
LABEL_16:
      if ((*&v13 & 0x1000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v13 & 0x800) == 0)
  {
    goto LABEL_16;
  }

  v6[15] = self->_maxScheduledAggregatedDlCcCount;
  v6[30] |= 0x800u;
  v13 = self->_has;
  if ((*&v13 & 0x1000) == 0)
  {
LABEL_17:
    if ((*&v13 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6[16] = self->_maxScheduledAggregatedDlMimoLayers;
  v6[30] |= 0x1000u;
  v13 = self->_has;
  if ((*&v13 & 0x2000) == 0)
  {
LABEL_18:
    if ((*&v13 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v6[17] = self->_maxScheduledAggregatedUlMimoLayers;
  v6[30] |= 0x2000u;
  v13 = self->_has;
  if ((*&v13 & 0x4000) == 0)
  {
LABEL_19:
    if ((*&v13 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v6[20] = self->_maxScheduledPerCcDlMimoLayers;
  v6[30] |= 0x4000u;
  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_20:
    if ((*&v13 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6[21] = self->_maxScheduledPerCcUlMimoLayers;
  v6[30] |= 0x8000u;
  v13 = self->_has;
  if ((*&v13 & 0x40) == 0)
  {
LABEL_21:
    if ((*&v13 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v6[10] = self->_maxDlModulation;
  v6[30] |= 0x40u;
  v13 = self->_has;
  if ((*&v13 & 0x40000) == 0)
  {
LABEL_22:
    if ((*&v13 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v6[24] = self->_maxUlModulation;
  v6[30] |= 0x40000u;
  v13 = self->_has;
  if ((*&v13 & 0x20000) == 0)
  {
LABEL_23:
    if ((*&v13 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  v6[23] = self->_maxUeRank;
  v6[30] |= 0x20000u;
  v13 = self->_has;
  if ((*&v13 & 0x80) == 0)
  {
LABEL_24:
    if ((*&v13 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  v6[11] = self->_maxPerCcRxAnt;
  v6[30] |= 0x80u;
  v13 = self->_has;
  if ((*&v13 & 0x200) == 0)
  {
LABEL_25:
    if ((*&v13 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  v6[13] = self->_maxRxAnt;
  v6[30] |= 0x200u;
  v13 = self->_has;
  if ((*&v13 & 0x100) == 0)
  {
LABEL_26:
    if ((*&v13 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  v6[12] = self->_maxPerCcTxAnt;
  v6[30] |= 0x100u;
  v13 = self->_has;
  if ((*&v13 & 0x10000) == 0)
  {
LABEL_27:
    if ((*&v13 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

LABEL_52:
    *(v6 + 116) = self->_hasBwpSwitch;
    v6[30] |= 0x800000u;
    if ((*&self->_has & 0x1000000) == 0)
    {
      return v6;
    }

    goto LABEL_29;
  }

LABEL_51:
  v6[22] = self->_maxTxAnt;
  v6[30] |= 0x10000u;
  v13 = self->_has;
  if ((*&v13 & 0x800000) != 0)
  {
    goto LABEL_52;
  }

LABEL_28:
  if ((*&v13 & 0x1000000) != 0)
  {
LABEL_29:
    *(v6 + 117) = self->_isTddFdd;
    v6[30] |= 0x1000000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_138;
  }

  has = self->_has;
  v6 = *(equalCopy + 30);
  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_pscellDlBand != *(equalCopy + 25))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_secondUlBand != *(equalCopy + 26))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_138;
  }

  configuredBandCombo = self->_configuredBandCombo;
  if (configuredBandCombo | *(equalCopy + 2))
  {
    if (![(NSString *)configuredBandCombo isEqual:?])
    {
      goto LABEL_138;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 30);
  if ((*&has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_dlConfiguredAggregatedBwMhz != *(equalCopy + 6))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0 || self->_ulConfiguredAggregatedBwMhz != *(equalCopy + 27))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_dlConfiguredAggregatedCcCount != *(equalCopy + 7))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0 || self->_ulConfiguredAggregatedCcCount != *(equalCopy + 28))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_138;
  }

  if (*&has)
  {
    if ((v8 & 1) == 0 || self->_configuredAggregatedDlMimoLayers != *(equalCopy + 2))
    {
      goto LABEL_138;
    }
  }

  else if (v8)
  {
    goto LABEL_138;
  }

  if ((*&has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_configuredAggregatedUlMimoLayers != *(equalCopy + 3))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_maxConfiguredPerCcDlMimoLayers != *(equalCopy + 8))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_maxConfiguredPerCcUlMimoLayers != *(equalCopy + 9))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_138;
  }

  maxScheduledDlBandCombo = self->_maxScheduledDlBandCombo;
  if (maxScheduledDlBandCombo | *(equalCopy + 9))
  {
    if (![(NSString *)maxScheduledDlBandCombo isEqual:?])
    {
      goto LABEL_138;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 30);
  if ((*&has & 0x400) != 0)
  {
    if ((v10 & 0x400) == 0 || self->_maxScheduledAggregatedDlBwMhz != *(equalCopy + 14))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x400) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v10 & 0x800) == 0 || self->_maxScheduledAggregatedDlCcCount != *(equalCopy + 15))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x800) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v10 & 0x1000) == 0 || self->_maxScheduledAggregatedDlMimoLayers != *(equalCopy + 16))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x1000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v10 & 0x2000) == 0 || self->_maxScheduledAggregatedUlMimoLayers != *(equalCopy + 17))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x2000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0 || self->_maxScheduledPerCcDlMimoLayers != *(equalCopy + 20))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x4000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || self->_maxScheduledPerCcUlMimoLayers != *(equalCopy + 21))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_maxDlModulation != *(equalCopy + 10))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v10 & 0x40000) == 0 || self->_maxUlModulation != *(equalCopy + 24))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x40000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v10 & 0x20000) == 0 || self->_maxUeRank != *(equalCopy + 23))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x20000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_maxPerCcRxAnt != *(equalCopy + 11))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v10 & 0x200) == 0 || self->_maxRxAnt != *(equalCopy + 13))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x200) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v10 & 0x100) == 0 || self->_maxPerCcTxAnt != *(equalCopy + 12))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x100) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || self->_maxTxAnt != *(equalCopy + 22))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_138;
    }

    v11 = *(equalCopy + 116);
    if (self->_hasBwpSwitch)
    {
      if ((*(equalCopy + 116) & 1) == 0)
      {
        goto LABEL_138;
      }
    }

    else if (*(equalCopy + 116))
    {
      goto LABEL_138;
    }
  }

  else if ((v10 & 0x800000) != 0)
  {
    goto LABEL_138;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v10 & 0x1000000) != 0)
    {
      if (self->_isTddFdd)
      {
        if (*(equalCopy + 117))
        {
LABEL_136:
          v12 = 1;
          goto LABEL_139;
        }
      }

      else if (!*(equalCopy + 117))
      {
        goto LABEL_136;
      }
    }

LABEL_138:
    v12 = 0;
    goto LABEL_139;
  }

  v12 = (v10 & 0x1000000) == 0;
LABEL_139:

  return v12;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    v34 = 2654435761 * self->_pscellDlBand;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = 0;
    if ((*&has & 0x100000) != 0)
    {
LABEL_3:
      v33 = 2654435761 * self->_secondUlBand;
      goto LABEL_6;
    }
  }

  v33 = 0;
LABEL_6:
  v32 = [(NSString *)self->_configuredBandCombo hash];
  v4 = self->_has;
  if ((*&v4 & 4) != 0)
  {
    v30 = 2654435761 * self->_dlConfiguredAggregatedBwMhz;
    if ((*&v4 & 0x200000) != 0)
    {
LABEL_8:
      v5 = 2654435761 * self->_ulConfiguredAggregatedBwMhz;
      if ((*&v4 & 8) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v30 = 0;
    if ((*&v4 & 0x200000) != 0)
    {
      goto LABEL_8;
    }
  }

  v5 = 0;
  if ((*&v4 & 8) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_dlConfiguredAggregatedCcCount;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_ulConfiguredAggregatedCcCount;
    if (*&v4)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if (*&v4)
  {
LABEL_11:
    v8 = 2654435761 * self->_configuredAggregatedDlMimoLayers;
    if ((*&v4 & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((*&v4 & 2) != 0)
  {
LABEL_12:
    v9 = 2654435761 * self->_configuredAggregatedUlMimoLayers;
    if ((*&v4 & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    v10 = 0;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_20:
  v9 = 0;
  if ((*&v4 & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  v10 = 2654435761 * self->_maxConfiguredPerCcDlMimoLayers;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_14:
    v11 = 2654435761 * self->_maxConfiguredPerCcUlMimoLayers;
    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
LABEL_23:
  v12 = [(NSString *)self->_maxScheduledDlBandCombo hash];
  v13 = self->_has;
  if ((*&v13 & 0x400) != 0)
  {
    v14 = 2654435761 * self->_maxScheduledAggregatedDlBwMhz;
    if ((*&v13 & 0x800) != 0)
    {
LABEL_25:
      v15 = 2654435761 * self->_maxScheduledAggregatedDlCcCount;
      if ((*&v13 & 0x1000) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x800) != 0)
    {
      goto LABEL_25;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x1000) != 0)
  {
LABEL_26:
    v16 = 2654435761 * self->_maxScheduledAggregatedDlMimoLayers;
    if ((*&v13 & 0x2000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

LABEL_41:
  v16 = 0;
  if ((*&v13 & 0x2000) != 0)
  {
LABEL_27:
    v17 = 2654435761 * self->_maxScheduledAggregatedUlMimoLayers;
    if ((*&v13 & 0x4000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_43;
  }

LABEL_42:
  v17 = 0;
  if ((*&v13 & 0x4000) != 0)
  {
LABEL_28:
    v18 = 2654435761 * self->_maxScheduledPerCcDlMimoLayers;
    if ((*&v13 & 0x8000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = 0;
  if ((*&v13 & 0x8000) != 0)
  {
LABEL_29:
    v19 = 2654435761 * self->_maxScheduledPerCcUlMimoLayers;
    if ((*&v13 & 0x40) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = 0;
  if ((*&v13 & 0x40) != 0)
  {
LABEL_30:
    v20 = 2654435761 * self->_maxDlModulation;
    if ((*&v13 & 0x40000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = 0;
  if ((*&v13 & 0x40000) != 0)
  {
LABEL_31:
    v21 = 2654435761 * self->_maxUlModulation;
    if ((*&v13 & 0x20000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = 0;
  if ((*&v13 & 0x20000) != 0)
  {
LABEL_32:
    v22 = 2654435761 * self->_maxUeRank;
    if ((*&v13 & 0x80) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = 0;
  if ((*&v13 & 0x80) != 0)
  {
LABEL_33:
    v23 = 2654435761 * self->_maxPerCcRxAnt;
    if ((*&v13 & 0x200) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = 0;
  if ((*&v13 & 0x200) != 0)
  {
LABEL_34:
    v24 = 2654435761 * self->_maxRxAnt;
    if ((*&v13 & 0x100) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = 0;
  if ((*&v13 & 0x100) != 0)
  {
LABEL_35:
    v25 = 2654435761 * self->_maxPerCcTxAnt;
    if ((*&v13 & 0x10000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = 0;
  if ((*&v13 & 0x10000) != 0)
  {
LABEL_36:
    v26 = 2654435761 * self->_maxTxAnt;
    if ((*&v13 & 0x800000) != 0)
    {
      goto LABEL_37;
    }

LABEL_52:
    v27 = 0;
    if ((*&v13 & 0x1000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_53:
    v28 = 0;
    return v33 ^ v34 ^ v31 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v32 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_51:
  v26 = 0;
  if ((*&v13 & 0x800000) == 0)
  {
    goto LABEL_52;
  }

LABEL_37:
  v27 = 2654435761 * self->_hasBwpSwitch;
  if ((*&v13 & 0x1000000) == 0)
  {
    goto LABEL_53;
  }

LABEL_38:
  v28 = 2654435761 * self->_isTddFdd;
  return v33 ^ v34 ^ v31 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v32 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x80000) != 0)
  {
    self->_pscellDlBand = *(fromCopy + 25);
    *&self->_has |= 0x80000u;
    v5 = *(fromCopy + 30);
  }

  if ((v5 & 0x100000) != 0)
  {
    self->_secondUlBand = *(fromCopy + 26);
    *&self->_has |= 0x100000u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ConnStats *)self setConfiguredBandCombo:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 30);
  if ((v6 & 4) != 0)
  {
    self->_dlConfiguredAggregatedBwMhz = *(fromCopy + 6);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 30);
    if ((v6 & 0x200000) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 0x200000) == 0)
  {
    goto LABEL_9;
  }

  self->_ulConfiguredAggregatedBwMhz = *(fromCopy + 27);
  *&self->_has |= 0x200000u;
  v6 = *(fromCopy + 30);
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_dlConfiguredAggregatedCcCount = *(fromCopy + 7);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 30);
  if ((v6 & 0x400000) == 0)
  {
LABEL_11:
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_ulConfiguredAggregatedCcCount = *(fromCopy + 28);
  *&self->_has |= 0x400000u;
  v6 = *(fromCopy + 30);
  if ((v6 & 1) == 0)
  {
LABEL_12:
    if ((v6 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_configuredAggregatedDlMimoLayers = *(fromCopy + 2);
  *&self->_has |= 1u;
  v6 = *(fromCopy + 30);
  if ((v6 & 2) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_configuredAggregatedUlMimoLayers = *(fromCopy + 3);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 30);
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_43:
  self->_maxConfiguredPerCcDlMimoLayers = *(fromCopy + 8);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 30) & 0x20) != 0)
  {
LABEL_15:
    self->_maxConfiguredPerCcUlMimoLayers = *(fromCopy + 9);
    *&self->_has |= 0x20u;
  }

LABEL_16:
  if (*(fromCopy + 9))
  {
    [(ConnStats *)self setMaxScheduledDlBandCombo:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 30);
  if ((v7 & 0x400) != 0)
  {
    self->_maxScheduledAggregatedDlBwMhz = *(fromCopy + 14);
    *&self->_has |= 0x400u;
    v7 = *(fromCopy + 30);
    if ((v7 & 0x800) == 0)
    {
LABEL_20:
      if ((v7 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_47;
    }
  }

  else if ((v7 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  self->_maxScheduledAggregatedDlCcCount = *(fromCopy + 15);
  *&self->_has |= 0x800u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x1000) == 0)
  {
LABEL_21:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_maxScheduledAggregatedDlMimoLayers = *(fromCopy + 16);
  *&self->_has |= 0x1000u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x2000) == 0)
  {
LABEL_22:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_maxScheduledAggregatedUlMimoLayers = *(fromCopy + 17);
  *&self->_has |= 0x2000u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x4000) == 0)
  {
LABEL_23:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_maxScheduledPerCcDlMimoLayers = *(fromCopy + 20);
  *&self->_has |= 0x4000u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x8000) == 0)
  {
LABEL_24:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_maxScheduledPerCcUlMimoLayers = *(fromCopy + 21);
  *&self->_has |= 0x8000u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x40) == 0)
  {
LABEL_25:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_maxDlModulation = *(fromCopy + 10);
  *&self->_has |= 0x40u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x40000) == 0)
  {
LABEL_26:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_maxUlModulation = *(fromCopy + 24);
  *&self->_has |= 0x40000u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x20000) == 0)
  {
LABEL_27:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_maxUeRank = *(fromCopy + 23);
  *&self->_has |= 0x20000u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x80) == 0)
  {
LABEL_28:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_maxPerCcRxAnt = *(fromCopy + 11);
  *&self->_has |= 0x80u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x200) == 0)
  {
LABEL_29:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_maxRxAnt = *(fromCopy + 13);
  *&self->_has |= 0x200u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x100) == 0)
  {
LABEL_30:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_maxPerCcTxAnt = *(fromCopy + 12);
  *&self->_has |= 0x100u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x10000) == 0)
  {
LABEL_31:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_maxTxAnt = *(fromCopy + 22);
  *&self->_has |= 0x10000u;
  v7 = *(fromCopy + 30);
  if ((v7 & 0x800000) == 0)
  {
LABEL_32:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_58:
  self->_hasBwpSwitch = *(fromCopy + 116);
  *&self->_has |= 0x800000u;
  if ((*(fromCopy + 30) & 0x1000000) != 0)
  {
LABEL_33:
    self->_isTddFdd = *(fromCopy + 117);
    *&self->_has |= 0x1000000u;
  }

LABEL_34:
}

@end