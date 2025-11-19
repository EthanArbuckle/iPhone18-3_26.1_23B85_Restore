@interface CellularLteOtaMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChannelType:(id)a3;
- (int)StringAsDlCcchMsg:(id)a3;
- (int)StringAsDlDcchMsg:(id)a3;
- (int)StringAsMcchMsg:(id)a3;
- (int)StringAsUlCcchMsg:(id)a3;
- (int)StringAsUlDcchMsg:(id)a3;
- (int)channelType;
- (int)dlCcchMsg;
- (int)dlDcchMsg;
- (int)mcchMsg;
- (int)ulCcchMsg;
- (int)ulDcchMsg;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCellId:(BOOL)a3;
- (void)setHasChannelType:(BOOL)a3;
- (void)setHasDlBw:(BOOL)a3;
- (void)setHasDlCcchMsg:(BOOL)a3;
- (void)setHasDlDcchMsg:(BOOL)a3;
- (void)setHasFreq:(BOOL)a3;
- (void)setHasFreqBandInd:(BOOL)a3;
- (void)setHasLength:(BOOL)a3;
- (void)setHasMcchMsg:(BOOL)a3;
- (void)setHasMsgType:(BOOL)a3;
- (void)setHasNumMncDigits:(BOOL)a3;
- (void)setHasPhyCellId:(BOOL)a3;
- (void)setHasRbId:(BOOL)a3;
- (void)setHasScgEverConfigured:(BOOL)a3;
- (void)setHasSelPlmnMcc:(BOOL)a3;
- (void)setHasSelPlmnMnc:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTrackingAreaCode:(BOOL)a3;
- (void)setHasUlCcchMsg:(BOOL)a3;
- (void)setHasUlDcchMsg:(BOOL)a3;
- (void)setHasUpperLayerIndication:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularLteOtaMsg

- (void)setHasPhyCellId:(BOOL)a3
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

- (void)setHasFreq:(BOOL)a3
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

- (void)setHasRbId:(BOOL)a3
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

- (int)channelType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_channelType;
  }

  else
  {
    return 8;
  }
}

- (void)setHasChannelType:(BOOL)a3
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

- (int)StringAsChannelType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BCCH_BCH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"BCCH_DL_SCH"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"MCCH"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"PCCH"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"DL_CCCH"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"DL_DCCH"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"UL_CCCH"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"UL_DCCH"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 8;
  }

  return v4;
}

- (void)setHasMsgType:(BOOL)a3
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

- (void)setHasLength:(BOOL)a3
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

- (void)setHasDlBw:(BOOL)a3
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

- (void)setHasCellId:(BOOL)a3
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

- (void)setHasFreqBandInd:(BOOL)a3
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

- (void)setHasTrackingAreaCode:(BOOL)a3
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

- (void)setHasSelPlmnMcc:(BOOL)a3
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

- (void)setHasSelPlmnMnc:(BOOL)a3
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

- (void)setHasNumMncDigits:(BOOL)a3
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

- (void)setHasUpperLayerIndication:(BOOL)a3
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

- (void)setHasScgEverConfigured:(BOOL)a3
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

- (int)mcchMsg
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_mcchMsg;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMcchMsg:(BOOL)a3
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

- (int)StringAsMcchMsg:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"lte_rrc_MBSFNAreaConfiguration_r9"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"lte_rrc_MBMSCountingRequest_r10"];
  }

  return v4;
}

- (int)ulCcchMsg
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_ulCcchMsg;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUlCcchMsg:(BOOL)a3
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

- (int)StringAsUlCcchMsg:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"lte_rrc_rrcConnectionReestablishmentRequest"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"lte_rrc_rrcConnectionRequest"];
  }

  return v4;
}

- (int)ulDcchMsg
{
  if ((*(&self->_has + 2) & 8) != 0)
  {
    return self->_ulDcchMsg;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUlDcchMsg:(BOOL)a3
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

- (int)StringAsUlDcchMsg:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"lte_rrc_csfbParametersRequestCDMA2000"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"lte_rrc_measurementReport"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"lte_rrc_rrcConnectionReconfigurationComplete"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"lte_rrc_rrcConnectionReestablishmentComplete"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"lte_rrc_rrcConnectionSetupComplete"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"lte_rrc_securityModeComplete"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"lte_rrc_securityModeFailure"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"lte_rrc_ueCapabilityInformation"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"lte_rrc_ulHandoverPreparationTransfer"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"lte_rrc_ulInformationTransfer"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"lte_rrc_counterCheckResponse"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"lte_rrc_ueInformationResponse_r9"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"lte_rrc_proximityIndication_r9"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"lte_rrc_rnReconfigurationComplete_r10"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"lte_rrc_mbmsCountingResponse_r10"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"lte_rrc_interFreqRSTDMeasurementIndication_r10"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"lte_rrc_ueAssistanceInformation_r11"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"lte_rrc_inDeviceCoexIndication_r11"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"lte_rrc_mbmsInterestIndication_r11"])
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)dlCcchMsg
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_dlCcchMsg;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDlCcchMsg:(BOOL)a3
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

- (int)StringAsDlCcchMsg:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"lte_rrc_rrcConnectionReestablishment"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"lte_rrc_rrcConnectionReestablishmentReject"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"lte_rrc_rrcConnectionReject"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"lte_rrc_rrcConnectionSetup"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)dlDcchMsg
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_dlDcchMsg;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDlDcchMsg:(BOOL)a3
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

- (int)StringAsDlDcchMsg:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"lte_rrc_csfbParametersResponseCDMA2000"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"lte_rrc_dlInformationTransfer"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"lte_rrc_handoverFromEUTRAPreparationRequest"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"lte_rrc_mobilityFromEUTRACommand"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"lte_rrc_rrcConnectionReconfiguration"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"lte_rrc_rrcConnectionRelease"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"lte_rrc_securityModeCommand"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"lte_rrc_ueCapabilityEnquiry"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"lte_rrc_counterCheck"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"lte_rrc_ueInformationRequest_r9"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"lte_rrc_loggedMeasurementConfiguration_r10"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteOtaMsg;
  v3 = [(CellularLteOtaMsg *)&v7 description];
  v4 = [(CellularLteOtaMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v12 = [NSNumber numberWithUnsignedInt:self->_phyCellId];
  [v3 setObject:v12 forKey:@"phy_cell_id"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = [NSNumber numberWithUnsignedInt:self->_freq];
  [v3 setObject:v13 forKey:@"freq"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = [NSNumber numberWithUnsignedInt:self->_rbId];
  [v3 setObject:v14 forKey:@"rb_id"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_32:
  v15 = self->_channelType - 8;
  if (v15 >= 8)
  {
    v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_channelType];
  }

  else
  {
    v16 = off_100319018[v15];
  }

  [v3 setObject:v16 forKey:@"channel_type"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_48:
  v28 = [NSNumber numberWithUnsignedInt:self->_msgType];
  [v3 setObject:v28 forKey:@"msg_type"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v5 = [NSNumber numberWithUnsignedInt:self->_length];
    [v3 setObject:v5 forKey:@"length"];
  }

LABEL_9:
  content = self->_content;
  if (content)
  {
    [v3 setObject:content forKey:@"content"];
  }

  v7 = self->_has;
  if ((*&v7 & 8) != 0)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_dlBw];
    [v3 setObject:v17 forKey:@"dl_bw"];

    v7 = self->_has;
    if ((*&v7 & 2) == 0)
    {
LABEL_13:
      if ((*&v7 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_36;
    }
  }

  else if ((*&v7 & 2) == 0)
  {
    goto LABEL_13;
  }

  v18 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v18 forKey:@"cell_id"];

  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
  [v3 setObject:v19 forKey:@"freq_band_ind"];

  v7 = self->_has;
  if ((*&v7 & 0x20000) == 0)
  {
LABEL_15:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v20 = [NSNumber numberWithUnsignedInt:self->_trackingAreaCode];
  [v3 setObject:v20 forKey:@"tracking_area_code"];

  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_16:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v21 = [NSNumber numberWithUnsignedInt:self->_selPlmnMcc];
  [v3 setObject:v21 forKey:@"sel_plmn_mcc"];

  v7 = self->_has;
  if ((*&v7 & 0x8000) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = [NSNumber numberWithUnsignedInt:self->_selPlmnMnc];
  [v3 setObject:v22 forKey:@"sel_plmn_mnc"];

  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v23 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
  [v3 setObject:v23 forKey:@"num_mnc_digits"];

  v7 = self->_has;
  if ((*&v7 & 0x200000) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v24 = [NSNumber numberWithBool:self->_upperLayerIndication];
  [v3 setObject:v24 forKey:@"upper_layer_indication"];

  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v25 = [NSNumber numberWithBool:self->_scgEverConfigured];
  [v3 setObject:v25 forKey:@"scg_ever_configured"];

  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_43:
  mcchMsg = self->_mcchMsg;
  if (mcchMsg)
  {
    if (mcchMsg == 1)
    {
      v27 = @"lte_rrc_MBMSCountingRequest_r10";
    }

    else
    {
      v27 = [NSString stringWithFormat:@"(unknown: %i)", self->_mcchMsg];
    }
  }

  else
  {
    v27 = @"lte_rrc_MBSFNAreaConfiguration_r9";
  }

  [v3 setObject:v27 forKey:@"mcch_msg"];

  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_53:
  ulCcchMsg = self->_ulCcchMsg;
  if (ulCcchMsg)
  {
    if (ulCcchMsg == 1)
    {
      v30 = @"lte_rrc_rrcConnectionRequest";
    }

    else
    {
      v30 = [NSString stringWithFormat:@"(unknown: %i)", self->_ulCcchMsg];
    }
  }

  else
  {
    v30 = @"lte_rrc_rrcConnectionReestablishmentRequest";
  }

  [v3 setObject:v30 forKey:@"ul_ccch_msg"];

  v7 = self->_has;
  if ((*&v7 & 0x80000) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_59:
  ulDcchMsg = self->_ulDcchMsg;
  if (ulDcchMsg >= 0x13)
  {
    v32 = [NSString stringWithFormat:@"(unknown: %i)", self->_ulDcchMsg];
  }

  else
  {
    v32 = off_100319058[ulDcchMsg];
  }

  [v3 setObject:v32 forKey:@"ul_dcch_msg"];

  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_25;
    }

LABEL_67:
    dlDcchMsg = self->_dlDcchMsg;
    if (dlDcchMsg >= 0xB)
    {
      v36 = [NSString stringWithFormat:@"(unknown: %i)", self->_dlDcchMsg];
    }

    else
    {
      v36 = off_100319110[dlDcchMsg];
    }

    [v3 setObject:v36 forKey:@"dl_dcch_msg"];

    if ((*&self->_has & 0x10000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

LABEL_63:
  dlCcchMsg = self->_dlCcchMsg;
  if (dlCcchMsg >= 4)
  {
    v34 = [NSString stringWithFormat:@"(unknown: %i)", self->_dlCcchMsg];
  }

  else
  {
    v34 = off_1003190F0[dlCcchMsg];
  }

  [v3 setObject:v34 forKey:@"dl_ccch_msg"];

  v7 = self->_has;
  if ((*&v7 & 0x20) != 0)
  {
    goto LABEL_67;
  }

LABEL_25:
  if ((*&v7 & 0x10000) != 0)
  {
LABEL_26:
    v8 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v8 forKey:@"subs_id"];
  }

LABEL_27:
  v9 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v28 = a3;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  phyCellId = self->_phyCellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  freq = self->_freq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  rbId = self->_rbId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  channelType = self->_channelType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_36:
  msgType = self->_msgType;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    length = self->_length;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
  if (self->_content)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
    dlBw = self->_dlBw;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((*&v6 & 2) == 0)
    {
LABEL_14:
      if ((*&v6 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_40;
    }
  }

  else if ((*&v6 & 2) == 0)
  {
    goto LABEL_14;
  }

  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  freqBandInd = self->_freqBandInd;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  trackingAreaCode = self->_trackingAreaCode;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  selPlmnMcc = self->_selPlmnMcc;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  selPlmnMnc = self->_selPlmnMnc;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  upperLayerIndication = self->_upperLayerIndication;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  scgEverConfigured = self->_scgEverConfigured;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  mcchMsg = self->_mcchMsg;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  ulCcchMsg = self->_ulCcchMsg;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  ulDcchMsg = self->_ulDcchMsg;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_50:
  dlCcchMsg = self->_dlCcchMsg;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_26:
    dlDcchMsg = self->_dlDcchMsg;
    PBDataWriterWriteInt32Field();
  }

LABEL_27:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 26) |= 1u;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 21) = self->_subsId;
  *(v4 + 26) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 17) = self->_phyCellId;
  *(v4 + 26) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 11) = self->_freq;
  *(v4 + 26) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 18) = self->_rbId;
  *(v4 + 26) |= 0x2000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 5) = self->_channelType;
  *(v4 + 26) |= 4u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_36:
  *(v4 + 15) = self->_msgType;
  *(v4 + 26) |= 0x400u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    *(v4 + 13) = self->_length;
    *(v4 + 26) |= 0x100u;
  }

LABEL_10:
  if (self->_content)
  {
    v7 = v4;
    [v4 setContent:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
    *(v4 + 8) = self->_dlBw;
    *(v4 + 26) |= 8u;
    v6 = self->_has;
    if ((*&v6 & 2) == 0)
    {
LABEL_14:
      if ((*&v6 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_40;
    }
  }

  else if ((*&v6 & 2) == 0)
  {
    goto LABEL_14;
  }

  *(v4 + 4) = self->_cellId;
  *(v4 + 26) |= 2u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 12) = self->_freqBandInd;
  *(v4 + 26) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 22) = self->_trackingAreaCode;
  *(v4 + 26) |= 0x20000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 19) = self->_selPlmnMcc;
  *(v4 + 26) |= 0x4000u;
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 20) = self->_selPlmnMnc;
  *(v4 + 26) |= 0x8000u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 16) = self->_numMncDigits;
  *(v4 + 26) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 101) = self->_upperLayerIndication;
  *(v4 + 26) |= 0x200000u;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 100) = self->_scgEverConfigured;
  *(v4 + 26) |= 0x100000u;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 14) = self->_mcchMsg;
  *(v4 + 26) |= 0x200u;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 23) = self->_ulCcchMsg;
  *(v4 + 26) |= 0x40000u;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 24) = self->_ulDcchMsg;
  *(v4 + 26) |= 0x80000u;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_50:
  *(v4 + 9) = self->_dlCcchMsg;
  *(v4 + 26) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_26:
    *(v4 + 10) = self->_dlDcchMsg;
    *(v4 + 26) |= 0x20u;
  }

LABEL_27:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 26) |= 1u;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 21) = self->_subsId;
  *(v5 + 26) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 17) = self->_phyCellId;
  *(v5 + 26) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 11) = self->_freq;
  *(v5 + 26) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 18) = self->_rbId;
  *(v5 + 26) |= 0x2000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 5) = self->_channelType;
  *(v5 + 26) |= 4u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_32:
  *(v5 + 15) = self->_msgType;
  *(v5 + 26) |= 0x400u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    *(v5 + 13) = self->_length;
    *(v5 + 26) |= 0x100u;
  }

LABEL_10:
  v8 = [(NSData *)self->_content copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v10 = self->_has;
  if ((*&v10 & 8) != 0)
  {
    *(v6 + 8) = self->_dlBw;
    *(v6 + 26) |= 8u;
    v10 = self->_has;
    if ((*&v10 & 2) == 0)
    {
LABEL_12:
      if ((*&v10 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((*&v10 & 2) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 4) = self->_cellId;
  *(v6 + 26) |= 2u;
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_13:
    if ((*&v10 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v6 + 12) = self->_freqBandInd;
  *(v6 + 26) |= 0x80u;
  v10 = self->_has;
  if ((*&v10 & 0x20000) == 0)
  {
LABEL_14:
    if ((*&v10 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 22) = self->_trackingAreaCode;
  *(v6 + 26) |= 0x20000u;
  v10 = self->_has;
  if ((*&v10 & 0x4000) == 0)
  {
LABEL_15:
    if ((*&v10 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 19) = self->_selPlmnMcc;
  *(v6 + 26) |= 0x4000u;
  v10 = self->_has;
  if ((*&v10 & 0x8000) == 0)
  {
LABEL_16:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 20) = self->_selPlmnMnc;
  *(v6 + 26) |= 0x8000u;
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v10 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 16) = self->_numMncDigits;
  *(v6 + 26) |= 0x800u;
  v10 = self->_has;
  if ((*&v10 & 0x200000) == 0)
  {
LABEL_18:
    if ((*&v10 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 101) = self->_upperLayerIndication;
  *(v6 + 26) |= 0x200000u;
  v10 = self->_has;
  if ((*&v10 & 0x100000) == 0)
  {
LABEL_19:
    if ((*&v10 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 100) = self->_scgEverConfigured;
  *(v6 + 26) |= 0x100000u;
  v10 = self->_has;
  if ((*&v10 & 0x200) == 0)
  {
LABEL_20:
    if ((*&v10 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 14) = self->_mcchMsg;
  *(v6 + 26) |= 0x200u;
  v10 = self->_has;
  if ((*&v10 & 0x40000) == 0)
  {
LABEL_21:
    if ((*&v10 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 23) = self->_ulCcchMsg;
  *(v6 + 26) |= 0x40000u;
  v10 = self->_has;
  if ((*&v10 & 0x80000) == 0)
  {
LABEL_22:
    if ((*&v10 & 0x10) == 0)
    {
      goto LABEL_23;
    }

LABEL_46:
    *(v6 + 9) = self->_dlCcchMsg;
    *(v6 + 26) |= 0x10u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_24;
  }

LABEL_45:
  *(v6 + 24) = self->_ulDcchMsg;
  *(v6 + 26) |= 0x80000u;
  v10 = self->_has;
  if ((*&v10 & 0x10) != 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  if ((*&v10 & 0x20) != 0)
  {
LABEL_24:
    *(v6 + 10) = self->_dlDcchMsg;
    *(v6 + 26) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_121;
  }

  has = self->_has;
  v6 = *(v4 + 26);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_121;
    }
  }

  else if (v6)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_subsId != *(v4 + 21))
    {
      goto LABEL_121;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_phyCellId != *(v4 + 17))
    {
      goto LABEL_121;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_freq != *(v4 + 11))
    {
      goto LABEL_121;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_rbId != *(v4 + 18))
    {
      goto LABEL_121;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_channelType != *(v4 + 5))
    {
      goto LABEL_121;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_msgType != *(v4 + 15))
    {
      goto LABEL_121;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_length != *(v4 + 13))
    {
      goto LABEL_121;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_121;
  }

  content = self->_content;
  if (content | *(v4 + 3))
  {
    if (![(NSData *)content isEqual:?])
    {
      goto LABEL_121;
    }

    has = self->_has;
  }

  v8 = *(v4 + 26);
  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_dlBw != *(v4 + 8))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_cellId != *(v4 + 4))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_freqBandInd != *(v4 + 12))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_trackingAreaCode != *(v4 + 22))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0 || self->_selPlmnMcc != *(v4 + 19))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_selPlmnMnc != *(v4 + 20))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_numMncDigits != *(v4 + 16))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_121;
    }

    v9 = *(v4 + 101);
    if (self->_upperLayerIndication)
    {
      if ((*(v4 + 101) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 101))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x100000) == 0)
  {
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

LABEL_121:
    v11 = 0;
    goto LABEL_122;
  }

  if ((v8 & 0x100000) == 0)
  {
    goto LABEL_121;
  }

  v10 = *(v4 + 100);
  if (self->_scgEverConfigured)
  {
    if ((*(v4 + 100) & 1) == 0)
    {
      goto LABEL_121;
    }
  }

  else if (*(v4 + 100))
  {
    goto LABEL_121;
  }

LABEL_90:
  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_mcchMsg != *(v4 + 14))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_ulCcchMsg != *(v4 + 23))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_ulDcchMsg != *(v4 + 24))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_dlCcchMsg != *(v4 + 9))
    {
      goto LABEL_121;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_121;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_dlDcchMsg != *(v4 + 10))
    {
      goto LABEL_121;
    }

    v11 = 1;
  }

  else
  {
    v11 = (*(v4 + 26) & 0x20) == 0;
  }

LABEL_122:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v28 = 2654435761u * self->_timestamp;
    if ((*&has & 0x10000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_subsId;
      if ((*&has & 0x1000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v28 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_phyCellId;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_freq;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_rbId;
    if ((*&has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_channelType;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v8 = 0;
  if ((*&has & 0x400) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = 2654435761 * self->_msgType;
  if ((*&has & 0x100) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_length;
    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
LABEL_18:
  v11 = [(NSData *)self->_content hash];
  v12 = self->_has;
  if ((*&v12 & 8) != 0)
  {
    v13 = 2654435761 * self->_dlBw;
    if ((*&v12 & 2) != 0)
    {
LABEL_20:
      v14 = 2654435761 * self->_cellId;
      if ((*&v12 & 0x80) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 2) != 0)
    {
      goto LABEL_20;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x80) != 0)
  {
LABEL_21:
    v15 = 2654435761 * self->_freqBandInd;
    if ((*&v12 & 0x20000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = 0;
  if ((*&v12 & 0x20000) != 0)
  {
LABEL_22:
    v16 = 2654435761 * self->_trackingAreaCode;
    if ((*&v12 & 0x4000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = 0;
  if ((*&v12 & 0x4000) != 0)
  {
LABEL_23:
    v17 = 2654435761 * self->_selPlmnMcc;
    if ((*&v12 & 0x8000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  v17 = 0;
  if ((*&v12 & 0x8000) != 0)
  {
LABEL_24:
    v18 = 2654435761 * self->_selPlmnMnc;
    if ((*&v12 & 0x800) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_38:
  v18 = 0;
  if ((*&v12 & 0x800) != 0)
  {
LABEL_25:
    v19 = 2654435761 * self->_numMncDigits;
    if ((*&v12 & 0x200000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = 0;
  if ((*&v12 & 0x200000) != 0)
  {
LABEL_26:
    v20 = 2654435761 * self->_upperLayerIndication;
    if ((*&v12 & 0x100000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = 0;
  if ((*&v12 & 0x100000) != 0)
  {
LABEL_27:
    v21 = 2654435761 * self->_scgEverConfigured;
    if ((*&v12 & 0x200) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = 0;
  if ((*&v12 & 0x200) != 0)
  {
LABEL_28:
    v22 = 2654435761 * self->_mcchMsg;
    if ((*&v12 & 0x40000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = 0;
  if ((*&v12 & 0x40000) != 0)
  {
LABEL_29:
    v23 = 2654435761 * self->_ulCcchMsg;
    if ((*&v12 & 0x80000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_43:
  v23 = 0;
  if ((*&v12 & 0x80000) != 0)
  {
LABEL_30:
    v24 = 2654435761 * self->_ulDcchMsg;
    if ((*&v12 & 0x10) != 0)
    {
      goto LABEL_31;
    }

LABEL_45:
    v25 = 0;
    if ((*&v12 & 0x20) != 0)
    {
      goto LABEL_32;
    }

LABEL_46:
    v26 = 0;
    return v4 ^ v28 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v11 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
  }

LABEL_44:
  v24 = 0;
  if ((*&v12 & 0x10) == 0)
  {
    goto LABEL_45;
  }

LABEL_31:
  v25 = 2654435761 * self->_dlCcchMsg;
  if ((*&v12 & 0x20) == 0)
  {
    goto LABEL_46;
  }

LABEL_32:
  v26 = 2654435761 * self->_dlDcchMsg;
  return v4 ^ v28 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v11 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 26);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 26);
    if ((v5 & 0x10000) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(v4 + 21);
  *&self->_has |= 0x10000u;
  v5 = *(v4 + 26);
  if ((v5 & 0x1000) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_phyCellId = *(v4 + 17);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 26);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_freq = *(v4 + 11);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 26);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_rbId = *(v4 + 18);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 26);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_channelType = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 26);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_36:
  self->_msgType = *(v4 + 15);
  *&self->_has |= 0x400u;
  if ((*(v4 + 26) & 0x100) != 0)
  {
LABEL_9:
    self->_length = *(v4 + 13);
    *&self->_has |= 0x100u;
  }

LABEL_10:
  if (*(v4 + 3))
  {
    v7 = v4;
    [(CellularLteOtaMsg *)self setContent:?];
    v4 = v7;
  }

  v6 = *(v4 + 26);
  if ((v6 & 8) != 0)
  {
    self->_dlBw = *(v4 + 8);
    *&self->_has |= 8u;
    v6 = *(v4 + 26);
    if ((v6 & 2) == 0)
    {
LABEL_14:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_14;
  }

  self->_cellId = *(v4 + 4);
  *&self->_has |= 2u;
  v6 = *(v4 + 26);
  if ((v6 & 0x80) == 0)
  {
LABEL_15:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_freqBandInd = *(v4 + 12);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 26);
  if ((v6 & 0x20000) == 0)
  {
LABEL_16:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_trackingAreaCode = *(v4 + 22);
  *&self->_has |= 0x20000u;
  v6 = *(v4 + 26);
  if ((v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_selPlmnMcc = *(v4 + 19);
  *&self->_has |= 0x4000u;
  v6 = *(v4 + 26);
  if ((v6 & 0x8000) == 0)
  {
LABEL_18:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_selPlmnMnc = *(v4 + 20);
  *&self->_has |= 0x8000u;
  v6 = *(v4 + 26);
  if ((v6 & 0x800) == 0)
  {
LABEL_19:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_numMncDigits = *(v4 + 16);
  *&self->_has |= 0x800u;
  v6 = *(v4 + 26);
  if ((v6 & 0x200000) == 0)
  {
LABEL_20:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_upperLayerIndication = *(v4 + 101);
  *&self->_has |= 0x200000u;
  v6 = *(v4 + 26);
  if ((v6 & 0x100000) == 0)
  {
LABEL_21:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_scgEverConfigured = *(v4 + 100);
  *&self->_has |= 0x100000u;
  v6 = *(v4 + 26);
  if ((v6 & 0x200) == 0)
  {
LABEL_22:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_mcchMsg = *(v4 + 14);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 26);
  if ((v6 & 0x40000) == 0)
  {
LABEL_23:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_ulCcchMsg = *(v4 + 23);
  *&self->_has |= 0x40000u;
  v6 = *(v4 + 26);
  if ((v6 & 0x80000) == 0)
  {
LABEL_24:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_ulDcchMsg = *(v4 + 24);
  *&self->_has |= 0x80000u;
  v6 = *(v4 + 26);
  if ((v6 & 0x10) == 0)
  {
LABEL_25:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_50:
  self->_dlCcchMsg = *(v4 + 9);
  *&self->_has |= 0x10u;
  if ((*(v4 + 26) & 0x20) != 0)
  {
LABEL_26:
    self->_dlDcchMsg = *(v4 + 10);
    *&self->_has |= 0x20u;
  }

LABEL_27:
}

@end