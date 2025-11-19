@interface KCellularNrTxRxHeartbeat
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFrequencyRange:(id)a3;
- (int)StringAsRxPanelUsed:(id)a3;
- (int)StringAsSnrRsUsed:(id)a3;
- (int)StringAsTxChannelType:(id)a3;
- (int)frequencyRange;
- (int)rxPanelUsed;
- (int)snrRsUsed;
- (int)txChannelType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBand:(BOOL)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasFrequencyRange:(BOOL)a3;
- (void)setHasIsApAwake:(BOOL)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasIsRx0Used:(BOOL)a3;
- (void)setHasIsRx1Used:(BOOL)a3;
- (void)setHasIsRx2Used:(BOOL)a3;
- (void)setHasIsRx3Used:(BOOL)a3;
- (void)setHasIsVoiceCall:(BOOL)a3;
- (void)setHasIsVoiceCallEnd:(BOOL)a3;
- (void)setHasMtpl:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPcMax:(BOOL)a3;
- (void)setHasRsrp0:(BOOL)a3;
- (void)setHasRsrp1:(BOOL)a3;
- (void)setHasRsrp2:(BOOL)a3;
- (void)setHasRsrp3:(BOOL)a3;
- (void)setHasRsrq0:(BOOL)a3;
- (void)setHasRsrq1:(BOOL)a3;
- (void)setHasRsrq2:(BOOL)a3;
- (void)setHasRsrq3:(BOOL)a3;
- (void)setHasRxPanelUsed:(BOOL)a3;
- (void)setHasScs:(BOOL)a3;
- (void)setHasSinr0:(BOOL)a3;
- (void)setHasSinr1:(BOOL)a3;
- (void)setHasSinr2:(BOOL)a3;
- (void)setHasSinr3:(BOOL)a3;
- (void)setHasSnrRsUsed:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTxChannelType:(BOOL)a3;
- (void)setHasTxPort0:(BOOL)a3;
- (void)setHasTxPort1:(BOOL)a3;
- (void)setHasTxPower:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularNrTxRxHeartbeat

- (void)dealloc
{
  [(KCellularNrTxRxHeartbeat *)self setPlmn:0];
  v3.receiver = self;
  v3.super_class = KCellularNrTxRxHeartbeat;
  [(KCellularNrTxRxHeartbeat *)&v3 dealloc];
}

- (void)setHasSubsId:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasBand:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (int)frequencyRange
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_frequencyRange;
  }

  else
  {
    return 1;
  }
}

- (void)setHasFrequencyRange:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (int)StringAsFrequencyRange:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"FR1"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"FR2"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasScs:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasConnectionType:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (int)txChannelType
{
  if (*(&self->_has + 3))
  {
    return self->_txChannelType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTxChannelType:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (int)StringAsTxChannelType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PUSCH"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"PUCCH"];
  }

  return v4;
}

- (void)setHasPcMax:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasMtpl:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasTxPower:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasTxPort0:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasTxPort1:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasIsVoiceCall:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasIsVoiceCallEnd:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasIsRx0Used:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasIsRx1Used:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasIsRx2Used:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasIsRx3Used:(BOOL)a3
{
  v3 = &_mh_execute_header;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasRsrp0:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasRsrp1:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasRsrp2:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasRsrp3:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasRsrq0:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasRsrq1:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasRsrq2:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasRsrq3:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasSinr0:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasSinr1:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSinr2:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasSinr3:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (int)snrRsUsed
{
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    return self->_snrRsUsed;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSnrRsUsed:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (int)StringAsSnrRsUsed:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SNR_RS_USED_SSB"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SNR_RS_USED_CSI_RS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SNR_RS_USED_TRS"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rxPanelUsed
{
  if (*(&self->_has + 2))
  {
    return self->_rxPanelUsed;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRxPanelUsed:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (int)StringAsRxPanelUsed:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RX_PANEL_FR1"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"RX_PANEL_FR2"];
  }

  return v4;
}

- (void)setHasNumSubs:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasIsDataPreferred:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasIsApAwake:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularNrTxRxHeartbeat;
  v3 = [(KCellularNrTxRxHeartbeat *)&v7 description];
  v4 = [(KCellularNrTxRxHeartbeat *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v10 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  v11 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v11 forKey:@"subs_id"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  v12 = [NSNumber numberWithUnsignedInt:self->_band];
  [v3 setObject:v12 forKey:@"band"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_44:
  frequencyRange = self->_frequencyRange;
  if (frequencyRange == 1)
  {
    v14 = @"FR1";
  }

  else if (frequencyRange == 2)
  {
    v14 = @"FR2";
  }

  else
  {
    v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_frequencyRange];
  }

  [v3 setObject:v14 forKey:@"frequency_range"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = [NSNumber numberWithUnsignedInt:self->_scs];
  [v3 setObject:v15 forKey:@"scs"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v16 = [NSNumber numberWithUnsignedInt:self->_connectionType];
  [v3 setObject:v16 forKey:@"connection_type"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_52:
  txChannelType = self->_txChannelType;
  if (txChannelType)
  {
    if (txChannelType == 1)
    {
      v18 = @"PUCCH";
    }

    else
    {
      v18 = [NSString stringWithFormat:@"(unknown: %i)", self->_txChannelType];
    }
  }

  else
  {
    v18 = @"PUSCH";
  }

  [v3 setObject:v18 forKey:@"tx_channel_type"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  v19 = [NSNumber numberWithInt:self->_pcMax];
  [v3 setObject:v19 forKey:@"pc_max"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  v20 = [NSNumber numberWithInt:self->_mtpl];
  [v3 setObject:v20 forKey:@"mtpl"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  v21 = [NSNumber numberWithInt:self->_txPower];
  [v3 setObject:v21 forKey:@"tx_power"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  v22 = [NSNumber numberWithUnsignedInt:self->_txPort0];
  [v3 setObject:v22 forKey:@"tx_port0"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  v23 = [NSNumber numberWithUnsignedInt:self->_txPort1];
  [v3 setObject:v23 forKey:@"tx_port1"];

  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  v24 = [NSNumber numberWithBool:self->_isVoiceCall];
  [v3 setObject:v24 forKey:@"is_voice_call"];

  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  v25 = [NSNumber numberWithBool:self->_isVoiceCallEnd];
  [v3 setObject:v25 forKey:@"is_voice_call_end"];

  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  v26 = [NSNumber numberWithBool:self->_isRx0Used];
  [v3 setObject:v26 forKey:@"is_rx0_used"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27 = [NSNumber numberWithBool:self->_isRx1Used];
  [v3 setObject:v27 forKey:@"is_rx1_used"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28 = [NSNumber numberWithBool:self->_isRx2Used];
  [v3 setObject:v28 forKey:@"is_rx2_used"];

  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = [NSNumber numberWithBool:self->_isRx3Used];
  [v3 setObject:v29 forKey:@"is_rx3_used"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = [NSNumber numberWithInt:self->_rsrp0];
  [v3 setObject:v30 forKey:@"rsrp0"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  v31 = [NSNumber numberWithInt:self->_rsrp1];
  [v3 setObject:v31 forKey:@"rsrp1"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  v32 = [NSNumber numberWithInt:self->_rsrp2];
  [v3 setObject:v32 forKey:@"rsrp2"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  v33 = [NSNumber numberWithInt:self->_rsrp3];
  [v3 setObject:v33 forKey:@"rsrp3"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_24:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = [NSNumber numberWithInt:self->_rsrq0];
  [v3 setObject:v34 forKey:@"rsrq0"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = [NSNumber numberWithInt:self->_rsrq1];
  [v3 setObject:v35 forKey:@"rsrq1"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_26:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  v36 = [NSNumber numberWithInt:self->_rsrq2];
  [v3 setObject:v36 forKey:@"rsrq2"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_27:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = [NSNumber numberWithInt:self->_rsrq3];
  [v3 setObject:v37 forKey:@"rsrq3"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  v38 = [NSNumber numberWithInt:self->_sinr0];
  [v3 setObject:v38 forKey:@"sinr0"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_29:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = [NSNumber numberWithInt:self->_sinr1];
  [v3 setObject:v39 forKey:@"sinr1"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = [NSNumber numberWithInt:self->_sinr2];
  [v3 setObject:v40 forKey:@"sinr2"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = [NSNumber numberWithInt:self->_sinr3];
  [v3 setObject:v41 forKey:@"sinr3"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_32:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_81:
  snrRsUsed = self->_snrRsUsed;
  if (snrRsUsed >= 3)
  {
    v43 = [NSString stringWithFormat:@"(unknown: %i)", self->_snrRsUsed];
  }

  else
  {
    v43 = *(&off_1003179C0 + snrRsUsed);
  }

  [v3 setObject:v43 forKey:@"snr_rs_used"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_33:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_91;
  }

LABEL_85:
  rxPanelUsed = self->_rxPanelUsed;
  if (rxPanelUsed)
  {
    if (rxPanelUsed == 1)
    {
      v45 = @"RX_PANEL_FR2";
    }

    else
    {
      v45 = [NSString stringWithFormat:@"(unknown: %i)", self->_rxPanelUsed];
    }
  }

  else
  {
    v45 = @"RX_PANEL_FR1";
  }

  [v3 setObject:v45 forKey:@"rx_panel_used"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_34:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_91:
  v46 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v46 forKey:@"num_subs"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_35:
    v5 = [NSNumber numberWithUnsignedInt:self->_isDataPreferred];
    [v3 setObject:v5 forKey:@"is_data_preferred"];
  }

LABEL_36:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_isApAwake];
    [v3 setObject:v7 forKey:@"is_ap_awake"];
  }

  v8 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v40 = a3;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  band = self->_band;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  frequencyRange = self->_frequencyRange;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  scs = self->_scs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  txChannelType = self->_txChannelType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  pcMax = self->_pcMax;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  mtpl = self->_mtpl;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  txPower = self->_txPower;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  txPort0 = self->_txPort0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  txPort1 = self->_txPort1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  isVoiceCall = self->_isVoiceCall;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  isVoiceCallEnd = self->_isVoiceCallEnd;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  isRx0Used = self->_isRx0Used;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  isRx1Used = self->_isRx1Used;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  isRx2Used = self->_isRx2Used;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  isRx3Used = self->_isRx3Used;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  rsrp0 = self->_rsrp0;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  rsrp1 = self->_rsrp1;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  rsrp2 = self->_rsrp2;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  rsrp3 = self->_rsrp3;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_24:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  rsrq0 = self->_rsrq0;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  rsrq1 = self->_rsrq1;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_26:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  rsrq2 = self->_rsrq2;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_27:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  rsrq3 = self->_rsrq3;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  sinr0 = self->_sinr0;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_29:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  sinr1 = self->_sinr1;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  sinr2 = self->_sinr2;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  sinr3 = self->_sinr3;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_32:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  snrRsUsed = self->_snrRsUsed;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_33:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  rxPanelUsed = self->_rxPanelUsed;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_34:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_75:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_35:
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteUint32Field();
  }

LABEL_36:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    isApAwake = self->_isApAwake;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    v4[1] = self->_timestamp;
    v4[18] |= 1uLL;
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 29) = self->_subsId;
  v4[18] |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 4) = self->_band;
  v4[18] |= 2uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 6) = self->_frequencyRange;
  v4[18] |= 8uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 23) = self->_scs;
  v4[18] |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 5) = self->_connectionType;
  v4[18] |= 4uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 30) = self->_txChannelType;
  v4[18] |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 10) = self->_pcMax;
  v4[18] |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 8) = self->_mtpl;
  v4[18] |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 33) = self->_txPower;
  v4[18] |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 31) = self->_txPort0;
  v4[18] |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 32) = self->_txPort1;
  v4[18] |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 141) = self->_isVoiceCall;
  v4[18] |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 142) = self->_isVoiceCallEnd;
  v4[18] |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 137) = self->_isRx0Used;
  v4[18] |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 138) = self->_isRx1Used;
  v4[18] |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 139) = self->_isRx2Used;
  v4[18] |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 140) = self->_isRx3Used;
  v4[18] |= &_mh_execute_header;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 14) = self->_rsrp0;
  v4[18] |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 15) = self->_rsrp1;
  v4[18] |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 16) = self->_rsrp2;
  v4[18] |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v4 + 17) = self->_rsrp3;
  v4[18] |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_24:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v4 + 18) = self->_rsrq0;
  v4[18] |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v4 + 19) = self->_rsrq1;
  v4[18] |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_26:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 20) = self->_rsrq2;
  v4[18] |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_27:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 21) = self->_rsrq3;
  v4[18] |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 24) = self->_sinr0;
  v4[18] |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_29:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v4 + 25) = self->_sinr1;
  v4[18] |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v4 + 26) = self->_sinr2;
  v4[18] |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v4 + 27) = self->_sinr3;
  v4[18] |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_32:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v4 + 28) = self->_snrRsUsed;
  v4[18] |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_33:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v4 + 22) = self->_rxPanelUsed;
  v4[18] |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_34:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_75:
  *(v4 + 9) = self->_numSubs;
  v4[18] |= 0x40uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_35:
    *(v4 + 7) = self->_isDataPreferred;
    v4[18] |= 0x10uLL;
  }

LABEL_36:
  if (self->_plmn)
  {
    v6 = v4;
    [v4 setPlmn:?];
    v4 = v6;
  }

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    *(v4 + 136) = self->_isApAwake;
    v4[18] |= 0x10000000uLL;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    v5[18] |= 1uLL;
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 29) = self->_subsId;
  v5[18] |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 4) = self->_band;
  v5[18] |= 2uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 6) = self->_frequencyRange;
  v5[18] |= 8uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 23) = self->_scs;
  v5[18] |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 5) = self->_connectionType;
  v5[18] |= 4uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 30) = self->_txChannelType;
  v5[18] |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 10) = self->_pcMax;
  v5[18] |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 8) = self->_mtpl;
  v5[18] |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 33) = self->_txPower;
  v5[18] |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 31) = self->_txPort0;
  v5[18] |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 32) = self->_txPort1;
  v5[18] |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 141) = self->_isVoiceCall;
  v5[18] |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 142) = self->_isVoiceCallEnd;
  v5[18] |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 137) = self->_isRx0Used;
  v5[18] |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 138) = self->_isRx1Used;
  v5[18] |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 139) = self->_isRx2Used;
  v5[18] |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 140) = self->_isRx3Used;
  v5[18] |= &_mh_execute_header;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 14) = self->_rsrp0;
  v5[18] |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 15) = self->_rsrp1;
  v5[18] |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 16) = self->_rsrp2;
  v5[18] |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 17) = self->_rsrp3;
  v5[18] |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_24:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 18) = self->_rsrq0;
  v5[18] |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 19) = self->_rsrq1;
  v5[18] |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_26:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 20) = self->_rsrq2;
  v5[18] |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_27:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 21) = self->_rsrq3;
  v5[18] |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 24) = self->_sinr0;
  v5[18] |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_29:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 25) = self->_sinr1;
  v5[18] |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 26) = self->_sinr2;
  v5[18] |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 27) = self->_sinr3;
  v5[18] |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_32:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 28) = self->_snrRsUsed;
  v5[18] |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_33:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 22) = self->_rxPanelUsed;
  v5[18] |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_34:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_71:
  *(v5 + 9) = self->_numSubs;
  v5[18] |= 0x40uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_35:
    *(v5 + 7) = self->_isDataPreferred;
    v5[18] |= 0x10uLL;
  }

LABEL_36:
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = v6[6];
  v6[6] = v8;

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    *(v6 + 136) = self->_isApAwake;
    v6[18] |= 0x10000000uLL;
  }

  v10 = v6;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_196;
  }

  has = self->_has;
  v6 = *(v4 + 18);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_196;
    }
  }

  else if (v6)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_subsId != *(v4 + 29))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_band != *(v4 + 4))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_frequencyRange != *(v4 + 6))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_scs != *(v4 + 23))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_connectionType != *(v4 + 5))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_txChannelType != *(v4 + 30))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_pcMax != *(v4 + 10))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_mtpl != *(v4 + 8))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_txPower != *(v4 + 33))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_txPort0 != *(v4 + 31))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_txPort1 != *(v4 + 32))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v6 & 0x200000000) == 0)
    {
      goto LABEL_196;
    }

    v7 = *(v4 + 141);
    if (self->_isVoiceCall)
    {
      if ((*(v4 + 141) & 1) == 0)
      {
        goto LABEL_196;
      }
    }

    else if (*(v4 + 141))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x200000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v6 & 0x400000000) == 0)
    {
      goto LABEL_196;
    }

    v8 = *(v4 + 142);
    if (self->_isVoiceCallEnd)
    {
      if ((*(v4 + 142) & 1) == 0)
      {
        goto LABEL_196;
      }
    }

    else if (*(v4 + 142))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x400000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_196;
    }

    v9 = *(v4 + 137);
    if (self->_isRx0Used)
    {
      if ((*(v4 + 137) & 1) == 0)
      {
        goto LABEL_196;
      }
    }

    else if (*(v4 + 137))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_196;
    }

    v10 = *(v4 + 138);
    if (self->_isRx1Used)
    {
      if ((*(v4 + 138) & 1) == 0)
      {
        goto LABEL_196;
      }
    }

    else if (*(v4 + 138))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    v11 = *(v4 + 139);
    if (self->_isRx2Used)
    {
      if ((*(v4 + 139) & 1) == 0)
      {
        goto LABEL_196;
      }
    }

    else if (*(v4 + 139))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_196;
    }

    v12 = *(v4 + 140);
    if (self->_isRx3Used)
    {
      if ((*(v4 + 140) & 1) == 0)
      {
        goto LABEL_196;
      }
    }

    else if (*(v4 + 140))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_rsrp0 != *(v4 + 14))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_rsrp1 != *(v4 + 15))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_rsrp2 != *(v4 + 16))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_rsrp3 != *(v4 + 17))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_rsrq0 != *(v4 + 18))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_rsrq1 != *(v4 + 19))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_rsrq2 != *(v4 + 20))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_rsrq3 != *(v4 + 21))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_sinr0 != *(v4 + 24))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_sinr1 != *(v4 + 25))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_sinr2 != *(v4 + 26))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_sinr3 != *(v4 + 27))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_snrRsUsed != *(v4 + 28))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_rxPanelUsed != *(v4 + 22))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_numSubs != *(v4 + 9))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_196;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_isDataPreferred != *(v4 + 7))
    {
      goto LABEL_196;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_196;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 6))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_196;
    }

    has = self->_has;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((*(v4 + 18) & 0x10000000) != 0)
    {
      if (self->_isApAwake)
      {
        if ((*(v4 + 136) & 1) == 0)
        {
          goto LABEL_196;
        }
      }

      else if (*(v4 + 136))
      {
        goto LABEL_196;
      }

      v14 = 1;
      goto LABEL_197;
    }

LABEL_196:
    v14 = 0;
    goto LABEL_197;
  }

  v14 = (*(v4 + 18) & 0x10000000) == 0;
LABEL_197:

  return v14;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v41 = 2654435761u * self->_timestamp;
    if ((*&has & 0x800000) != 0)
    {
LABEL_3:
      v40 = 2654435761 * self->_subsId;
      if ((*&has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v41 = 0;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_3;
    }
  }

  v40 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_4:
    v39 = 2654435761 * self->_band;
    if ((*&has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  v39 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_5:
    v38 = 2654435761 * self->_frequencyRange;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  v38 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_6:
    v37 = 2654435761 * self->_scs;
    if ((*&has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  v37 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_7:
    v36 = 2654435761 * self->_connectionType;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  v36 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_8:
    v35 = 2654435761 * self->_txChannelType;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  v35 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_9:
    v34 = 2654435761 * self->_pcMax;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  v34 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_10:
    v33 = 2654435761 * self->_mtpl;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  v33 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_11:
    v32 = 2654435761 * self->_txPower;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  v32 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_12:
    v31 = 2654435761 * self->_txPort0;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  v31 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_13:
    v30 = 2654435761 * self->_txPort1;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  v30 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_14:
    v29 = 2654435761 * self->_isVoiceCall;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  v29 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_15:
    v28 = 2654435761 * self->_isVoiceCallEnd;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  v28 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_16:
    v27 = 2654435761 * self->_isRx0Used;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  v27 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_17:
    v26 = 2654435761 * self->_isRx1Used;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_18:
    v25 = 2654435761 * self->_isRx2Used;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_19:
    v24 = 2654435761 * self->_isRx3Used;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  v24 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_20:
    v23 = 2654435761 * self->_rsrp0;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  v23 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_21:
    v22 = 2654435761 * self->_rsrp1;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  v22 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_22:
    v21 = 2654435761 * self->_rsrp2;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  v21 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_23:
    v20 = 2654435761 * self->_rsrp3;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  v20 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_24:
    v19 = 2654435761 * self->_rsrq0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  v19 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_25:
    v18 = 2654435761 * self->_rsrq1;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  v18 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_26:
    v17 = 2654435761 * self->_rsrq2;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  v17 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_27:
    v15 = 2654435761 * self->_rsrq3;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_28:
    v4 = 2654435761 * self->_sinr0;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  v4 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_29:
    v5 = 2654435761 * self->_sinr1;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  v5 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_30:
    v6 = 2654435761 * self->_sinr2;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  v6 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_31:
    v7 = 2654435761 * self->_sinr3;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

LABEL_65:
  v7 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_32:
    v8 = 2654435761 * self->_snrRsUsed;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  v8 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_33:
    v9 = 2654435761 * self->_rxPanelUsed;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_34;
    }

LABEL_68:
    v10 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_67:
  v9 = 0;
  if ((*&has & 0x40) == 0)
  {
    goto LABEL_68;
  }

LABEL_34:
  v10 = 2654435761 * self->_numSubs;
  if ((*&has & 0x10) != 0)
  {
LABEL_35:
    v11 = 2654435761 * self->_isDataPreferred;
    goto LABEL_70;
  }

LABEL_69:
  v11 = 0;
LABEL_70:
  v12 = [(NSData *)self->_plmn hash];
  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    v13 = 2654435761 * self->_isApAwake;
  }

  else
  {
    v13 = 0;
  }

  return v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 18);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1uLL;
    v5 = *(v4 + 18);
    if ((v5 & 0x800000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(v4 + 29);
  *&self->_has |= 0x800000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_band = *(v4 + 4);
  *&self->_has |= 2uLL;
  v5 = *(v4 + 18);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_frequencyRange = *(v4 + 6);
  *&self->_has |= 8uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x20000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_scs = *(v4 + 23);
  *&self->_has |= 0x20000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_connectionType = *(v4 + 5);
  *&self->_has |= 4uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_txChannelType = *(v4 + 30);
  *&self->_has |= 0x1000000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_pcMax = *(v4 + 10);
  *&self->_has |= 0x80uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_mtpl = *(v4 + 8);
  *&self->_has |= 0x20uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_txPower = *(v4 + 33);
  *&self->_has |= 0x8000000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_txPort0 = *(v4 + 31);
  *&self->_has |= 0x2000000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_txPort1 = *(v4 + 32);
  *&self->_has |= 0x4000000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_isVoiceCall = *(v4 + 141);
  *&self->_has |= 0x200000000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_isVoiceCallEnd = *(v4 + 142);
  *&self->_has |= 0x400000000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_isRx0Used = *(v4 + 137);
  *&self->_has |= 0x20000000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_isRx1Used = *(v4 + 138);
  *&self->_has |= 0x40000000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_isRx2Used = *(v4 + 139);
  *&self->_has |= 0x80000000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_isRx3Used = *(v4 + 140);
  *&self->_has |= &_mh_execute_header;
  v5 = *(v4 + 18);
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_rsrp0 = *(v4 + 14);
  *&self->_has |= 0x100uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_rsrp1 = *(v4 + 15);
  *&self->_has |= 0x200uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_rsrp2 = *(v4 + 16);
  *&self->_has |= 0x400uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x800) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_rsrp3 = *(v4 + 17);
  *&self->_has |= 0x800uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x1000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_rsrq0 = *(v4 + 18);
  *&self->_has |= 0x1000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x2000) == 0)
  {
LABEL_25:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_rsrq1 = *(v4 + 19);
  *&self->_has |= 0x2000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x4000) == 0)
  {
LABEL_26:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_rsrq2 = *(v4 + 20);
  *&self->_has |= 0x4000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x8000) == 0)
  {
LABEL_27:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_rsrq3 = *(v4 + 21);
  *&self->_has |= 0x8000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x40000) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_sinr0 = *(v4 + 24);
  *&self->_has |= 0x40000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_sinr1 = *(v4 + 25);
  *&self->_has |= 0x80000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x100000) == 0)
  {
LABEL_30:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_sinr2 = *(v4 + 26);
  *&self->_has |= 0x100000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x200000) == 0)
  {
LABEL_31:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_sinr3 = *(v4 + 27);
  *&self->_has |= 0x200000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x400000) == 0)
  {
LABEL_32:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_snrRsUsed = *(v4 + 28);
  *&self->_has |= 0x400000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x10000) == 0)
  {
LABEL_33:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_rxPanelUsed = *(v4 + 22);
  *&self->_has |= 0x10000uLL;
  v5 = *(v4 + 18);
  if ((v5 & 0x40) == 0)
  {
LABEL_34:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_75:
  self->_numSubs = *(v4 + 9);
  *&self->_has |= 0x40uLL;
  if ((*(v4 + 18) & 0x10) != 0)
  {
LABEL_35:
    self->_isDataPreferred = *(v4 + 7);
    *&self->_has |= 0x10uLL;
  }

LABEL_36:
  if (*(v4 + 6))
  {
    v6 = v4;
    [(KCellularNrTxRxHeartbeat *)self setPlmn:?];
    v4 = v6;
  }

  if ((*(v4 + 147) & 0x10) != 0)
  {
    self->_isApAwake = *(v4 + 136);
    *&self->_has |= 0x10000000uLL;
  }
}

@end