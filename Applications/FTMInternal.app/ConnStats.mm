@interface ConnStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMaxDlModulation:(id)a3;
- (int)StringAsMaxUlModulation:(id)a3;
- (int)maxDlModulation;
- (int)maxUlModulation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConfiguredAggregatedUlMimoLayers:(BOOL)a3;
- (void)setHasDlConfiguredAggregatedBwMhz:(BOOL)a3;
- (void)setHasDlConfiguredAggregatedCcCount:(BOOL)a3;
- (void)setHasHasBwpSwitch:(BOOL)a3;
- (void)setHasIsTddFdd:(BOOL)a3;
- (void)setHasMaxConfiguredPerCcDlMimoLayers:(BOOL)a3;
- (void)setHasMaxConfiguredPerCcUlMimoLayers:(BOOL)a3;
- (void)setHasMaxDlModulation:(BOOL)a3;
- (void)setHasMaxPerCcRxAnt:(BOOL)a3;
- (void)setHasMaxPerCcTxAnt:(BOOL)a3;
- (void)setHasMaxRxAnt:(BOOL)a3;
- (void)setHasMaxScheduledAggregatedDlBwMhz:(BOOL)a3;
- (void)setHasMaxScheduledAggregatedDlCcCount:(BOOL)a3;
- (void)setHasMaxScheduledAggregatedDlMimoLayers:(BOOL)a3;
- (void)setHasMaxScheduledAggregatedUlMimoLayers:(BOOL)a3;
- (void)setHasMaxScheduledPerCcDlMimoLayers:(BOOL)a3;
- (void)setHasMaxScheduledPerCcUlMimoLayers:(BOOL)a3;
- (void)setHasMaxTxAnt:(BOOL)a3;
- (void)setHasMaxUeRank:(BOOL)a3;
- (void)setHasMaxUlModulation:(BOOL)a3;
- (void)setHasPscellDlBand:(BOOL)a3;
- (void)setHasSecondUlBand:(BOOL)a3;
- (void)setHasUlConfiguredAggregatedBwMhz:(BOOL)a3;
- (void)setHasUlConfiguredAggregatedCcCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ConnStats

- (void)setHasPscellDlBand:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasSecondUlBand:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasDlConfiguredAggregatedBwMhz:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasUlConfiguredAggregatedBwMhz:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasDlConfiguredAggregatedCcCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasUlConfiguredAggregatedCcCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasConfiguredAggregatedUlMimoLayers:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasMaxConfiguredPerCcDlMimoLayers:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasMaxConfiguredPerCcUlMimoLayers:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasMaxScheduledAggregatedDlBwMhz:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasMaxScheduledAggregatedDlCcCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasMaxScheduledAggregatedDlMimoLayers:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasMaxScheduledAggregatedUlMimoLayers:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasMaxScheduledPerCcDlMimoLayers:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasMaxScheduledPerCcUlMimoLayers:(BOOL)a3
{
  if (a3)
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

- (void)setHasMaxDlModulation:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (int)StringAsMaxDlModulation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MODULATION_BPSK"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MODULATION_QPSK"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MODULATION_16QAM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MODULATION_64QAM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MODULATION_256QAM"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MODULATION_1024QAM"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MODULATION_UNKOWN"])
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

- (void)setHasMaxUlModulation:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (int)StringAsMaxUlModulation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MODULATION_BPSK"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MODULATION_QPSK"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MODULATION_16QAM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MODULATION_64QAM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MODULATION_256QAM"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MODULATION_1024QAM"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MODULATION_UNKOWN"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMaxUeRank:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasMaxPerCcRxAnt:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasMaxRxAnt:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasMaxPerCcTxAnt:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasMaxTxAnt:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasHasBwpSwitch:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasIsTddFdd:(BOOL)a3
{
  if (a3)
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
  v4 = [(ConnStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v32 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    v4[25] = self->_pscellDlBand;
    v4[30] |= 0x80000u;
    has = self->_has;
  }

  if ((*&has & 0x100000) != 0)
  {
    v4[26] = self->_secondUlBand;
    v4[30] |= 0x100000u;
  }

  v8 = v4;
  if (self->_configuredBandCombo)
  {
    [v4 setConfiguredBandCombo:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((*&v6 & 4) != 0)
  {
    v4[6] = self->_dlConfiguredAggregatedBwMhz;
    v4[30] |= 4u;
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

  v4[27] = self->_ulConfiguredAggregatedBwMhz;
  v4[30] |= 0x200000u;
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
  v4[7] = self->_dlConfiguredAggregatedCcCount;
  v4[30] |= 8u;
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
  v4[28] = self->_ulConfiguredAggregatedCcCount;
  v4[30] |= 0x400000u;
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
  v4[2] = self->_configuredAggregatedDlMimoLayers;
  v4[30] |= 1u;
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
  v4[3] = self->_configuredAggregatedUlMimoLayers;
  v4[30] |= 2u;
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
  v4[8] = self->_maxConfiguredPerCcDlMimoLayers;
  v4[30] |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    v4[9] = self->_maxConfiguredPerCcUlMimoLayers;
    v4[30] |= 0x20u;
  }

LABEL_16:
  if (self->_maxScheduledDlBandCombo)
  {
    [v8 setMaxScheduledDlBandCombo:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((*&v7 & 0x400) != 0)
  {
    v4[14] = self->_maxScheduledAggregatedDlBwMhz;
    v4[30] |= 0x400u;
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

  v4[15] = self->_maxScheduledAggregatedDlCcCount;
  v4[30] |= 0x800u;
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
  v4[16] = self->_maxScheduledAggregatedDlMimoLayers;
  v4[30] |= 0x1000u;
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
  v4[17] = self->_maxScheduledAggregatedUlMimoLayers;
  v4[30] |= 0x2000u;
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
  v4[20] = self->_maxScheduledPerCcDlMimoLayers;
  v4[30] |= 0x4000u;
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
  v4[21] = self->_maxScheduledPerCcUlMimoLayers;
  v4[30] |= 0x8000u;
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
  v4[10] = self->_maxDlModulation;
  v4[30] |= 0x40u;
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
  v4[24] = self->_maxUlModulation;
  v4[30] |= 0x40000u;
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
  v4[23] = self->_maxUeRank;
  v4[30] |= 0x20000u;
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
  v4[11] = self->_maxPerCcRxAnt;
  v4[30] |= 0x80u;
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
  v4[13] = self->_maxRxAnt;
  v4[30] |= 0x200u;
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
  v4[12] = self->_maxPerCcTxAnt;
  v4[30] |= 0x100u;
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
  v4[22] = self->_maxTxAnt;
  v4[30] |= 0x10000u;
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
  *(v4 + 116) = self->_hasBwpSwitch;
  v4[30] |= 0x800000u;
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_33:
    *(v4 + 117) = self->_isTddFdd;
    v4[30] |= 0x1000000u;
  }

LABEL_34:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_configuredBandCombo copyWithZone:a3];
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
  v11 = [(NSString *)self->_maxScheduledDlBandCombo copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_138;
  }

  has = self->_has;
  v6 = *(v4 + 30);
  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_pscellDlBand != *(v4 + 25))
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
    if ((v6 & 0x100000) == 0 || self->_secondUlBand != *(v4 + 26))
    {
      goto LABEL_138;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_138;
  }

  configuredBandCombo = self->_configuredBandCombo;
  if (configuredBandCombo | *(v4 + 2))
  {
    if (![(NSString *)configuredBandCombo isEqual:?])
    {
      goto LABEL_138;
    }

    has = self->_has;
  }

  v8 = *(v4 + 30);
  if ((*&has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_dlConfiguredAggregatedBwMhz != *(v4 + 6))
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
    if ((v8 & 0x200000) == 0 || self->_ulConfiguredAggregatedBwMhz != *(v4 + 27))
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
    if ((v8 & 8) == 0 || self->_dlConfiguredAggregatedCcCount != *(v4 + 7))
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
    if ((v8 & 0x400000) == 0 || self->_ulConfiguredAggregatedCcCount != *(v4 + 28))
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
    if ((v8 & 1) == 0 || self->_configuredAggregatedDlMimoLayers != *(v4 + 2))
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
    if ((v8 & 2) == 0 || self->_configuredAggregatedUlMimoLayers != *(v4 + 3))
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
    if ((v8 & 0x10) == 0 || self->_maxConfiguredPerCcDlMimoLayers != *(v4 + 8))
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
    if ((v8 & 0x20) == 0 || self->_maxConfiguredPerCcUlMimoLayers != *(v4 + 9))
    {
      goto LABEL_138;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_138;
  }

  maxScheduledDlBandCombo = self->_maxScheduledDlBandCombo;
  if (maxScheduledDlBandCombo | *(v4 + 9))
  {
    if (![(NSString *)maxScheduledDlBandCombo isEqual:?])
    {
      goto LABEL_138;
    }

    has = self->_has;
  }

  v10 = *(v4 + 30);
  if ((*&has & 0x400) != 0)
  {
    if ((v10 & 0x400) == 0 || self->_maxScheduledAggregatedDlBwMhz != *(v4 + 14))
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
    if ((v10 & 0x800) == 0 || self->_maxScheduledAggregatedDlCcCount != *(v4 + 15))
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
    if ((v10 & 0x1000) == 0 || self->_maxScheduledAggregatedDlMimoLayers != *(v4 + 16))
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
    if ((v10 & 0x2000) == 0 || self->_maxScheduledAggregatedUlMimoLayers != *(v4 + 17))
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
    if ((v10 & 0x4000) == 0 || self->_maxScheduledPerCcDlMimoLayers != *(v4 + 20))
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
    if ((v10 & 0x8000) == 0 || self->_maxScheduledPerCcUlMimoLayers != *(v4 + 21))
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
    if ((v10 & 0x40) == 0 || self->_maxDlModulation != *(v4 + 10))
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
    if ((v10 & 0x40000) == 0 || self->_maxUlModulation != *(v4 + 24))
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
    if ((v10 & 0x20000) == 0 || self->_maxUeRank != *(v4 + 23))
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
    if ((v10 & 0x80) == 0 || self->_maxPerCcRxAnt != *(v4 + 11))
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
    if ((v10 & 0x200) == 0 || self->_maxRxAnt != *(v4 + 13))
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
    if ((v10 & 0x100) == 0 || self->_maxPerCcTxAnt != *(v4 + 12))
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
    if ((v10 & 0x10000) == 0 || self->_maxTxAnt != *(v4 + 22))
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

    v11 = *(v4 + 116);
    if (self->_hasBwpSwitch)
    {
      if ((*(v4 + 116) & 1) == 0)
      {
        goto LABEL_138;
      }
    }

    else if (*(v4 + 116))
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
        if (*(v4 + 117))
        {
LABEL_136:
          v12 = 1;
          goto LABEL_139;
        }
      }

      else if (!*(v4 + 117))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 30);
  if ((v5 & 0x80000) != 0)
  {
    self->_pscellDlBand = *(v4 + 25);
    *&self->_has |= 0x80000u;
    v5 = *(v4 + 30);
  }

  if ((v5 & 0x100000) != 0)
  {
    self->_secondUlBand = *(v4 + 26);
    *&self->_has |= 0x100000u;
  }

  v8 = v4;
  if (*(v4 + 2))
  {
    [(ConnStats *)self setConfiguredBandCombo:?];
    v4 = v8;
  }

  v6 = *(v4 + 30);
  if ((v6 & 4) != 0)
  {
    self->_dlConfiguredAggregatedBwMhz = *(v4 + 6);
    *&self->_has |= 4u;
    v6 = *(v4 + 30);
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

  self->_ulConfiguredAggregatedBwMhz = *(v4 + 27);
  *&self->_has |= 0x200000u;
  v6 = *(v4 + 30);
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
  self->_dlConfiguredAggregatedCcCount = *(v4 + 7);
  *&self->_has |= 8u;
  v6 = *(v4 + 30);
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
  self->_ulConfiguredAggregatedCcCount = *(v4 + 28);
  *&self->_has |= 0x400000u;
  v6 = *(v4 + 30);
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
  self->_configuredAggregatedDlMimoLayers = *(v4 + 2);
  *&self->_has |= 1u;
  v6 = *(v4 + 30);
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
  self->_configuredAggregatedUlMimoLayers = *(v4 + 3);
  *&self->_has |= 2u;
  v6 = *(v4 + 30);
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
  self->_maxConfiguredPerCcDlMimoLayers = *(v4 + 8);
  *&self->_has |= 0x10u;
  if ((*(v4 + 30) & 0x20) != 0)
  {
LABEL_15:
    self->_maxConfiguredPerCcUlMimoLayers = *(v4 + 9);
    *&self->_has |= 0x20u;
  }

LABEL_16:
  if (*(v4 + 9))
  {
    [(ConnStats *)self setMaxScheduledDlBandCombo:?];
    v4 = v8;
  }

  v7 = *(v4 + 30);
  if ((v7 & 0x400) != 0)
  {
    self->_maxScheduledAggregatedDlBwMhz = *(v4 + 14);
    *&self->_has |= 0x400u;
    v7 = *(v4 + 30);
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

  self->_maxScheduledAggregatedDlCcCount = *(v4 + 15);
  *&self->_has |= 0x800u;
  v7 = *(v4 + 30);
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
  self->_maxScheduledAggregatedDlMimoLayers = *(v4 + 16);
  *&self->_has |= 0x1000u;
  v7 = *(v4 + 30);
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
  self->_maxScheduledAggregatedUlMimoLayers = *(v4 + 17);
  *&self->_has |= 0x2000u;
  v7 = *(v4 + 30);
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
  self->_maxScheduledPerCcDlMimoLayers = *(v4 + 20);
  *&self->_has |= 0x4000u;
  v7 = *(v4 + 30);
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
  self->_maxScheduledPerCcUlMimoLayers = *(v4 + 21);
  *&self->_has |= 0x8000u;
  v7 = *(v4 + 30);
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
  self->_maxDlModulation = *(v4 + 10);
  *&self->_has |= 0x40u;
  v7 = *(v4 + 30);
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
  self->_maxUlModulation = *(v4 + 24);
  *&self->_has |= 0x40000u;
  v7 = *(v4 + 30);
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
  self->_maxUeRank = *(v4 + 23);
  *&self->_has |= 0x20000u;
  v7 = *(v4 + 30);
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
  self->_maxPerCcRxAnt = *(v4 + 11);
  *&self->_has |= 0x80u;
  v7 = *(v4 + 30);
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
  self->_maxRxAnt = *(v4 + 13);
  *&self->_has |= 0x200u;
  v7 = *(v4 + 30);
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
  self->_maxPerCcTxAnt = *(v4 + 12);
  *&self->_has |= 0x100u;
  v7 = *(v4 + 30);
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
  self->_maxTxAnt = *(v4 + 22);
  *&self->_has |= 0x10000u;
  v7 = *(v4 + 30);
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
  self->_hasBwpSwitch = *(v4 + 116);
  *&self->_has |= 0x800000u;
  if ((*(v4 + 30) & 0x1000000) != 0)
  {
LABEL_33:
    self->_isTddFdd = *(v4 + 117);
    *&self->_has |= 0x1000000u;
  }

LABEL_34:
}

@end