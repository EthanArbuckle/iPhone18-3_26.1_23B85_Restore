@interface KCellularNrRrcNetworkConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChannelTypeDetails:(id)a3;
- (int)StringAsCollectionEndType:(id)a3;
- (int)StringAsEstablishmentCause:(id)a3;
- (int)StringAsMessageName:(id)a3;
- (int)StringAsRelaxErrorCode:(id)a3;
- (int)StringAsValidationType:(id)a3;
- (int)channelTypeDetails;
- (int)collectionEndType;
- (int)establishmentCause;
- (int)messageName;
- (int)relaxErrorCode;
- (int)validationType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBwpSwitchEver:(BOOL)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasChannelTypeDetails:(BOOL)a3;
- (void)setHasCollectionEndType:(BOOL)a3;
- (void)setHasDlBw:(BOOL)a3;
- (void)setHasEstablishmentCause:(BOOL)a3;
- (void)setHasFreq:(BOOL)a3;
- (void)setHasFreqBandInd:(BOOL)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasIsNrHst:(BOOL)a3;
- (void)setHasLastMessage:(BOOL)a3;
- (void)setHasLength:(BOOL)a3;
- (void)setHasMessageName:(BOOL)a3;
- (void)setHasMsgType:(BOOL)a3;
- (void)setHasNumMncDigits:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPhyCellId:(BOOL)a3;
- (void)setHasRelaxErrorCode:(BOOL)a3;
- (void)setHasRelaxErrorPresent:(BOOL)a3;
- (void)setHasSelPlmnMcc:(BOOL)a3;
- (void)setHasSelPlmnMnc:(BOOL)a3;
- (void)setHasSeqNum:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTimeDeltaPreviousMs:(BOOL)a3;
- (void)setHasTimeElapsedMs:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTrackingAreaCode:(BOOL)a3;
- (void)setHasValidationType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularNrRrcNetworkConfig

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasLength:(BOOL)a3
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

- (void)setHasSeqNum:(BOOL)a3
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

- (void)setHasLastMessage:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (int)collectionEndType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_collectionEndType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCollectionEndType:(BOOL)a3
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

- (int)StringAsCollectionEndType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RELEASE_INACTIVE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RELEASE_IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REESTABLISHMENT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RECONFIG_WITH_RAT_CHANGED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"REACH_TIME_LIMIT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"REACH_COUNT_LIMIT"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTimeDeltaPreviousMs:(BOOL)a3
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

- (void)setHasTimeElapsedMs:(BOOL)a3
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

- (int)establishmentCause
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_establishmentCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEstablishmentCause:(BOOL)a3
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

- (int)StringAsEstablishmentCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"EST_CAUSE_INVALID"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NR_EST_EMERGENCY"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"NR_EST_HIGH_PRIO_ACC"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"NR_EST_MT_ACC"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"NR_EST_MO_DATA"])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:@"NR_EST_MO_VOICE_CALL"])
  {
    v4 = 106;
  }

  else if ([v3 isEqualToString:@"NR_EST_MO_VIDEO_CALL"])
  {
    v4 = 107;
  }

  else if ([v3 isEqualToString:@"NR_EST_MPS_PRIO_ACC"])
  {
    v4 = 109;
  }

  else if ([v3 isEqualToString:@"NR_EST_MCS_PRIO_ACC"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"NR_REEST_RECFG_FAIL"])
  {
    v4 = 113;
  }

  else if ([v3 isEqualToString:@"NR_REEST_HO_FAIL"])
  {
    v4 = 114;
  }

  else if ([v3 isEqualToString:@"NR_REEST_OTHER_FAIL_INTEG_CHECK"])
  {
    v4 = 115;
  }

  else if ([v3 isEqualToString:@"NR_REEST_OTHER_FAIL_RADIO_LINK_FAILURE"])
  {
    v4 = 116;
  }

  else if ([v3 isEqualToString:@"NR_REEST_RES_FALLBACK_CONN_SETUP"])
  {
    v4 = 117;
  }

  else if ([v3 isEqualToString:@"NR_EST_SUCC_MOB_TO_NR"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"NR_REEST_ARB_CONN_TXRX_SUSPEND"])
  {
    v4 = 131;
  }

  else if ([v3 isEqualToString:@"NR_RESUME_MO_DATA"])
  {
    v4 = 155;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPhyCellId:(BOOL)a3
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

- (void)setHasFreq:(BOOL)a3
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

- (int)messageName
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    return self->_messageName;
  }

  else
  {
    return 1;
  }
}

- (void)setHasMessageName:(BOOL)a3
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

- (int)StringAsMessageName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RrcSetup"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RrcReconfiguration"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RrcRelease"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RrcReestablishment"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MobilityFromNRCommand"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasMsgType:(BOOL)a3
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

- (void)setHasDlBw:(BOOL)a3
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

- (void)setHasFreqBandInd:(BOOL)a3
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

- (void)setHasTrackingAreaCode:(BOOL)a3
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

- (void)setHasSelPlmnMcc:(BOOL)a3
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

- (void)setHasSelPlmnMnc:(BOOL)a3
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

- (void)setHasNumMncDigits:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasIsNrHst:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasBwpSwitchEver:(BOOL)a3
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

- (int)channelTypeDetails
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_channelTypeDetails;
  }

  else
  {
    return 1;
  }
}

- (void)setHasChannelTypeDetails:(BOOL)a3
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

- (int)StringAsChannelTypeDetails:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BCCH_BCH"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"BCCH_DL_SCH"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DL_CCCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DL_DCCH"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PCCH"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"UL_CCCH"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"UL_CCCH1"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"UL_DCCH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CHANNEL_RRCReconfiguration"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CHANNEL_RadioBearerConfig"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 26;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasChannel:(BOOL)a3
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

- (void)setHasIsDataPreferred:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (int)validationType
{
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    return self->_validationType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasValidationType:(BOOL)a3
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

- (int)StringAsValidationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"FAILED"];
  }

  return v4;
}

- (void)setHasRelaxErrorPresent:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (int)relaxErrorCode
{
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    return self->_relaxErrorCode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRelaxErrorCode:(BOOL)a3
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

- (int)StringAsRelaxErrorCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"INVALID_RELAX_ERROR_CODE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SPCELL_INFO_MISSING_IN_CELL_GROUP_SORTED_LIST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MISSING_FIRST_ACTIVE_DL_BWP_IN_PHY_CONFIG"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MISSING_FIRST_ACTIVE_UL_BWP_IN_PHY_CONFIG"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GCF_DP_CONFIG_SRB2_WITH_MIN_1_DRB_IS_VIOLATED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SERV_CELL_INDEX_NOT_UNIQUE"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularNrRrcNetworkConfig;
  v3 = [(KCellularNrRrcNetworkConfig *)&v7 description];
  v4 = [(KCellularNrRrcNetworkConfig *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((*&has & 0x200) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_length];
    [v3 setObject:v6 forKey:@"length"];
  }

  content = self->_content;
  if (content)
  {
    [v3 setObject:content forKey:@"content"];
  }

  v8 = self->_has;
  if ((*&v8 & 0x40000) != 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:self->_seqNum];
    [v3 setObject:v12 forKey:@"seq_num"];

    v8 = self->_has;
    if ((*&v8 & 0x8000000) == 0)
    {
LABEL_9:
      if ((*&v8 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_40;
    }
  }

  else if ((*&v8 & 0x8000000) == 0)
  {
    goto LABEL_9;
  }

  v13 = [NSNumber numberWithBool:self->_lastMessage];
  [v3 setObject:v13 forKey:@"last_message"];

  v8 = self->_has;
  if ((*&v8 & 0x10) == 0)
  {
LABEL_10:
    if ((*&v8 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_40:
  collectionEndType = self->_collectionEndType;
  if (collectionEndType >= 6)
  {
    v15 = [NSString stringWithFormat:@"(unknown: %i)", self->_collectionEndType];
  }

  else
  {
    v15 = *(&off_1003177F8 + collectionEndType);
  }

  [v3 setObject:v15 forKey:@"collection_end_type"];

  v8 = self->_has;
  if ((*&v8 & 0x100000) == 0)
  {
LABEL_11:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  v19 = [NSNumber numberWithUnsignedInt:self->_timeDeltaPreviousMs];
  [v3 setObject:v19 forKey:@"time_delta_previous_ms"];

  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_12:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  v20 = [NSNumber numberWithUnsignedInt:self->_timeElapsedMs];
  [v3 setObject:v20 forKey:@"time_elapsed_ms"];

  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_13:
    if ((*&v8 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_81;
  }

LABEL_50:
  establishmentCause = self->_establishmentCause;
  switch(establishmentCause)
  {
    case 101:
      v22 = @"NR_EST_EMERGENCY";
      break;
    case 102:
      v22 = @"NR_EST_HIGH_PRIO_ACC";
      break;
    case 103:
      v22 = @"NR_EST_MT_ACC";
      break;
    case 104:
    case 108:
    case 111:
    case 112:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
      goto LABEL_64;
    case 105:
      v22 = @"NR_EST_MO_DATA";
      break;
    case 106:
      v22 = @"NR_EST_MO_VOICE_CALL";
      break;
    case 107:
      v22 = @"NR_EST_MO_VIDEO_CALL";
      break;
    case 109:
      v22 = @"NR_EST_MPS_PRIO_ACC";
      break;
    case 110:
      v22 = @"NR_EST_MCS_PRIO_ACC";
      break;
    case 113:
      v22 = @"NR_REEST_RECFG_FAIL";
      break;
    case 114:
      v22 = @"NR_REEST_HO_FAIL";
      break;
    case 115:
      v22 = @"NR_REEST_OTHER_FAIL_INTEG_CHECK";
      break;
    case 116:
      v22 = @"NR_REEST_OTHER_FAIL_RADIO_LINK_FAILURE";
      break;
    case 117:
      v22 = @"NR_REEST_RES_FALLBACK_CONN_SETUP";
      break;
    case 130:
      v22 = @"NR_EST_SUCC_MOB_TO_NR";
      break;
    case 131:
      v22 = @"NR_REEST_ARB_CONN_TXRX_SUSPEND";
      break;
    default:
      if (establishmentCause)
      {
        if (establishmentCause == 155)
        {
          v22 = @"NR_RESUME_MO_DATA";
        }

        else
        {
LABEL_64:
          v22 = [NSString stringWithFormat:@"(unknown: %i)", self->_establishmentCause];
        }
      }

      else
      {
        v22 = @"EST_CAUSE_INVALID";
      }

      break;
  }

  [v3 setObject:v22 forKey:@"establishment_cause"];

  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_14:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_82;
  }

LABEL_81:
  v28 = [NSNumber numberWithUnsignedInt:self->_phyCellId];
  [v3 setObject:v28 forKey:@"phy_cell_id"];

  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_15:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_83;
  }

LABEL_82:
  v29 = [NSNumber numberWithUnsignedInt:self->_freq];
  [v3 setObject:v29 forKey:@"freq"];

  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_16:
    if ((*&v8 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_88;
  }

LABEL_83:
  v30 = self->_messageName - 1;
  if (v30 < 0xA && ((0x21Bu >> v30) & 1) != 0)
  {
    v31 = *(&off_100317828 + v30);
  }

  else
  {
    v31 = [NSString stringWithFormat:@"(unknown: %i)", self->_messageName];
  }

  [v3 setObject:v31 forKey:@"message_name"];

  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_89;
  }

LABEL_88:
  v32 = [NSNumber numberWithUnsignedInt:self->_msgType];
  [v3 setObject:v32 forKey:@"msg_type"];

  v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_18:
    if ((*&v8 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_90;
  }

LABEL_89:
  v33 = [NSNumber numberWithUnsignedInt:self->_dlBw];
  [v3 setObject:v33 forKey:@"dl_bw"];

  v8 = self->_has;
  if ((*&v8 & 1) == 0)
  {
LABEL_19:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_91;
  }

LABEL_90:
  v34 = [NSNumber numberWithUnsignedLongLong:self->_cellId];
  [v3 setObject:v34 forKey:@"cell_id"];

  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_20:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_92;
  }

LABEL_91:
  v35 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
  [v3 setObject:v35 forKey:@"freq_band_ind"];

  v8 = self->_has;
  if ((*&v8 & 0x400000) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_93;
  }

LABEL_92:
  v36 = [NSNumber numberWithUnsignedInt:self->_trackingAreaCode];
  [v3 setObject:v36 forKey:@"tracking_area_code"];

  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_22:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_94;
  }

LABEL_93:
  v37 = [NSNumber numberWithUnsignedInt:self->_selPlmnMcc];
  [v3 setObject:v37 forKey:@"sel_plmn_mcc"];

  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_95;
  }

LABEL_94:
  v38 = [NSNumber numberWithUnsignedInt:self->_selPlmnMnc];
  [v3 setObject:v38 forKey:@"sel_plmn_mnc"];

  v8 = self->_has;
  if ((*&v8 & 0x1000) == 0)
  {
LABEL_24:
    if ((*&v8 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_96;
  }

LABEL_95:
  v39 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
  [v3 setObject:v39 forKey:@"num_mnc_digits"];

  v8 = self->_has;
  if ((*&v8 & 0x80000) == 0)
  {
LABEL_25:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_97;
  }

LABEL_96:
  v40 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v40 forKey:@"subs_id"];

  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_26:
    if ((*&v8 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_98;
  }

LABEL_97:
  v41 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v41 forKey:@"num_subs"];

  v8 = self->_has;
  if ((*&v8 & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_99;
  }

LABEL_98:
  v42 = [NSNumber numberWithBool:self->_isNrHst];
  [v3 setObject:v42 forKey:@"is_nr_hst"];

  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_28:
    if ((*&v8 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_100;
  }

LABEL_99:
  v43 = [NSNumber numberWithBool:self->_bwpSwitchEver];
  [v3 setObject:v43 forKey:@"bwp_switch_ever"];

  v8 = self->_has;
  if ((*&v8 & 8) == 0)
  {
LABEL_29:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_100:
  v44 = self->_channelTypeDetails - 1;
  if (v44 < 0x1A && ((0x30001FFu >> v44) & 1) != 0)
  {
    v45 = *(&off_100317878 + v44);
  }

  else
  {
    v45 = [NSString stringWithFormat:@"(unknown: %i)", self->_channelTypeDetails];
  }

  [v3 setObject:v45 forKey:@"channel_type_details"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_31;
  }

LABEL_30:
  v9 = [NSNumber numberWithUnsignedInt:self->_channel];
  [v3 setObject:v9 forKey:@"channel"];

LABEL_31:
  gci = self->_gci;
  if (gci)
  {
    [v3 setObject:gci forKey:@"gci"];
  }

  v11 = self->_has;
  if ((*&v11 & 0x2000000) != 0)
  {
    v16 = [NSNumber numberWithBool:self->_isDataPreferred];
    [v3 setObject:v16 forKey:@"is_data_preferred"];

    v11 = self->_has;
    if ((*&v11 & 0x800000) == 0)
    {
LABEL_35:
      if ((*&v11 & 0x10000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_55:
      v23 = [NSNumber numberWithBool:self->_relaxErrorPresent];
      [v3 setObject:v23 forKey:@"relax_error_present"];

      if ((*&self->_has & 0x8000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v11 & 0x800000) == 0)
  {
    goto LABEL_35;
  }

  validationType = self->_validationType;
  if (validationType)
  {
    if (validationType == 1)
    {
      v18 = @"FAILED";
    }

    else
    {
      v18 = [NSString stringWithFormat:@"(unknown: %i)", self->_validationType];
    }
  }

  else
  {
    v18 = @"SUCCESS";
  }

  [v3 setObject:v18 forKey:@"validation_type"];

  v11 = self->_has;
  if ((*&v11 & 0x10000000) != 0)
  {
    goto LABEL_55;
  }

LABEL_36:
  if ((*&v11 & 0x8000) == 0)
  {
    goto LABEL_60;
  }

LABEL_56:
  relaxErrorCode = self->_relaxErrorCode;
  if (relaxErrorCode >= 6)
  {
    v25 = [NSString stringWithFormat:@"(unknown: %i)", self->_relaxErrorCode];
  }

  else
  {
    v25 = *(&off_100317948 + relaxErrorCode);
  }

  [v3 setObject:v25 forKey:@"relax_error_code"];

LABEL_60:
  v26 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v36 = a3;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((*&has & 0x200) != 0)
  {
    length = self->_length;
    PBDataWriterWriteUint32Field();
  }

  if (self->_content)
  {
    PBDataWriterWriteDataField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x40000) != 0)
  {
    seqNum = self->_seqNum;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((*&v7 & 0x8000000) == 0)
    {
LABEL_9:
      if ((*&v7 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v7 & 0x8000000) == 0)
  {
    goto LABEL_9;
  }

  lastMessage = self->_lastMessage;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_10:
    if ((*&v7 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  collectionEndType = self->_collectionEndType;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_11:
    if ((*&v7 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  timeDeltaPreviousMs = self->_timeDeltaPreviousMs;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x200000) == 0)
  {
LABEL_12:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  timeElapsedMs = self->_timeElapsedMs;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_13:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  establishmentCause = self->_establishmentCause;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  phyCellId = self->_phyCellId;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_15:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  freq = self->_freq;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_16:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  messageName = self->_messageName;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  msgType = self->_msgType;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x20) == 0)
  {
LABEL_18:
    if ((*&v7 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  dlBw = self->_dlBw;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 1) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  cellId = self->_cellId;
  PBDataWriterWriteUint64Field();
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  freqBandInd = self->_freqBandInd;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x400000) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  trackingAreaCode = self->_trackingAreaCode;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x10000) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  selPlmnMcc = self->_selPlmnMcc;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x20000) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  selPlmnMnc = self->_selPlmnMnc;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  numMncDigits = self->_numMncDigits;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x80000) == 0)
  {
LABEL_25:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_26:
    if ((*&v7 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  isNrHst = self->_isNrHst;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_28:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  bwpSwitchEver = self->_bwpSwitchEver;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_29:
    if ((*&v7 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_62:
  channelTypeDetails = self->_channelTypeDetails;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_30:
    channel = self->_channel;
    PBDataWriterWriteUint32Field();
  }

LABEL_31:
  if (self->_gci)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((*&v9 & 0x2000000) != 0)
  {
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
    v9 = self->_has;
    if ((*&v9 & 0x800000) == 0)
    {
LABEL_35:
      if ((*&v9 & 0x10000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v9 & 0x800000) == 0)
  {
    goto LABEL_35;
  }

  validationType = self->_validationType;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x10000000) == 0)
  {
LABEL_36:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_66:
  relaxErrorPresent = self->_relaxErrorPresent;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_37:
    relaxErrorCode = self->_relaxErrorCode;
    PBDataWriterWriteInt32Field();
  }

LABEL_38:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 35) |= 2u;
    has = self->_has;
  }

  if ((*&has & 0x200) != 0)
  {
    *(v4 + 18) = self->_length;
    *(v4 + 35) |= 0x200u;
  }

  v8 = v4;
  if (self->_content)
  {
    [v4 setContent:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((*&v6 & 0x40000) != 0)
  {
    *(v4 + 27) = self->_seqNum;
    *(v4 + 35) |= 0x40000u;
    v6 = self->_has;
    if ((*&v6 & 0x8000000) == 0)
    {
LABEL_9:
      if ((*&v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v6 & 0x8000000) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 135) = self->_lastMessage;
  *(v4 + 35) |= 0x8000000u;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_10:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 8) = self->_collectionEndType;
  *(v4 + 35) |= 0x10u;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_11:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 29) = self->_timeDeltaPreviousMs;
  *(v4 + 35) |= 0x100000u;
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_12:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 30) = self->_timeElapsedMs;
  *(v4 + 35) |= 0x200000u;
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_13:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 13) = self->_establishmentCause;
  *(v4 + 35) |= 0x40u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_14:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 23) = self->_phyCellId;
  *(v4 + 35) |= 0x4000u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 14) = self->_freq;
  *(v4 + 35) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 19) = self->_messageName;
  *(v4 + 35) |= 0x400u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 20) = self->_msgType;
  *(v4 + 35) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_18:
    if ((*&v6 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 12) = self->_dlBw;
  *(v4 + 35) |= 0x20u;
  v6 = self->_has;
  if ((*&v6 & 1) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v4[1] = self->_cellId;
  *(v4 + 35) |= 1u;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 15) = self->_freqBandInd;
  *(v4 + 35) |= 0x100u;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 31) = self->_trackingAreaCode;
  *(v4 + 35) |= 0x400000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 25) = self->_selPlmnMcc;
  *(v4 + 35) |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 26) = self->_selPlmnMnc;
  *(v4 + 35) |= 0x20000u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 21) = self->_numMncDigits;
  *(v4 + 35) |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 28) = self->_subsId;
  *(v4 + 35) |= 0x80000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 22) = self->_numSubs;
  *(v4 + 35) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 134) = self->_isNrHst;
  *(v4 + 35) |= 0x4000000u;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_28:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 132) = self->_bwpSwitchEver;
  *(v4 + 35) |= 0x1000000u;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_29:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_62:
  *(v4 + 7) = self->_channelTypeDetails;
  *(v4 + 35) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_30:
    *(v4 + 6) = self->_channel;
    *(v4 + 35) |= 4u;
  }

LABEL_31:
  if (self->_gci)
  {
    [v8 setGci:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((*&v7 & 0x2000000) != 0)
  {
    *(v4 + 133) = self->_isDataPreferred;
    *(v4 + 35) |= 0x2000000u;
    v7 = self->_has;
    if ((*&v7 & 0x800000) == 0)
    {
LABEL_35:
      if ((*&v7 & 0x10000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v7 & 0x800000) == 0)
  {
    goto LABEL_35;
  }

  *(v4 + 32) = self->_validationType;
  *(v4 + 35) |= 0x800000u;
  v7 = self->_has;
  if ((*&v7 & 0x10000000) == 0)
  {
LABEL_36:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_66:
  *(v4 + 136) = self->_relaxErrorPresent;
  *(v4 + 35) |= 0x10000000u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_37:
    *(v4 + 24) = self->_relaxErrorCode;
    *(v4 + 35) |= 0x8000u;
  }

LABEL_38:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v5[2] = self->_timestamp;
    *(v5 + 35) |= 2u;
    has = self->_has;
  }

  if ((*&has & 0x200) != 0)
  {
    *(v5 + 18) = self->_length;
    *(v5 + 35) |= 0x200u;
  }

  v8 = [(NSData *)self->_content copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v10 = self->_has;
  if ((*&v10 & 0x40000) != 0)
  {
    *(v6 + 27) = self->_seqNum;
    *(v6 + 35) |= 0x40000u;
    v10 = self->_has;
    if ((*&v10 & 0x8000000) == 0)
    {
LABEL_7:
      if ((*&v10 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }
  }

  else if ((*&v10 & 0x8000000) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 135) = self->_lastMessage;
  *(v6 + 35) |= 0x8000000u;
  v10 = self->_has;
  if ((*&v10 & 0x10) == 0)
  {
LABEL_8:
    if ((*&v10 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 8) = self->_collectionEndType;
  *(v6 + 35) |= 0x10u;
  v10 = self->_has;
  if ((*&v10 & 0x100000) == 0)
  {
LABEL_9:
    if ((*&v10 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 29) = self->_timeDeltaPreviousMs;
  *(v6 + 35) |= 0x100000u;
  v10 = self->_has;
  if ((*&v10 & 0x200000) == 0)
  {
LABEL_10:
    if ((*&v10 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 30) = self->_timeElapsedMs;
  *(v6 + 35) |= 0x200000u;
  v10 = self->_has;
  if ((*&v10 & 0x40) == 0)
  {
LABEL_11:
    if ((*&v10 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 13) = self->_establishmentCause;
  *(v6 + 35) |= 0x40u;
  v10 = self->_has;
  if ((*&v10 & 0x4000) == 0)
  {
LABEL_12:
    if ((*&v10 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 23) = self->_phyCellId;
  *(v6 + 35) |= 0x4000u;
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_13:
    if ((*&v10 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 14) = self->_freq;
  *(v6 + 35) |= 0x80u;
  v10 = self->_has;
  if ((*&v10 & 0x400) == 0)
  {
LABEL_14:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 19) = self->_messageName;
  *(v6 + 35) |= 0x400u;
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_15:
    if ((*&v10 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 20) = self->_msgType;
  *(v6 + 35) |= 0x800u;
  v10 = self->_has;
  if ((*&v10 & 0x20) == 0)
  {
LABEL_16:
    if ((*&v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 12) = self->_dlBw;
  *(v6 + 35) |= 0x20u;
  v10 = self->_has;
  if ((*&v10 & 1) == 0)
  {
LABEL_17:
    if ((*&v10 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v6[1] = self->_cellId;
  *(v6 + 35) |= 1u;
  v10 = self->_has;
  if ((*&v10 & 0x100) == 0)
  {
LABEL_18:
    if ((*&v10 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 15) = self->_freqBandInd;
  *(v6 + 35) |= 0x100u;
  v10 = self->_has;
  if ((*&v10 & 0x400000) == 0)
  {
LABEL_19:
    if ((*&v10 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v6 + 31) = self->_trackingAreaCode;
  *(v6 + 35) |= 0x400000u;
  v10 = self->_has;
  if ((*&v10 & 0x10000) == 0)
  {
LABEL_20:
    if ((*&v10 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v6 + 25) = self->_selPlmnMcc;
  *(v6 + 35) |= 0x10000u;
  v10 = self->_has;
  if ((*&v10 & 0x20000) == 0)
  {
LABEL_21:
    if ((*&v10 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 26) = self->_selPlmnMnc;
  *(v6 + 35) |= 0x20000u;
  v10 = self->_has;
  if ((*&v10 & 0x1000) == 0)
  {
LABEL_22:
    if ((*&v10 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 21) = self->_numMncDigits;
  *(v6 + 35) |= 0x1000u;
  v10 = self->_has;
  if ((*&v10 & 0x80000) == 0)
  {
LABEL_23:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 28) = self->_subsId;
  *(v6 + 35) |= 0x80000u;
  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_24:
    if ((*&v10 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 22) = self->_numSubs;
  *(v6 + 35) |= 0x2000u;
  v10 = self->_has;
  if ((*&v10 & 0x4000000) == 0)
  {
LABEL_25:
    if ((*&v10 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 134) = self->_isNrHst;
  *(v6 + 35) |= 0x4000000u;
  v10 = self->_has;
  if ((*&v10 & 0x1000000) == 0)
  {
LABEL_26:
    if ((*&v10 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 132) = self->_bwpSwitchEver;
  *(v6 + 35) |= 0x1000000u;
  v10 = self->_has;
  if ((*&v10 & 8) == 0)
  {
LABEL_27:
    if ((*&v10 & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_56:
  *(v6 + 7) = self->_channelTypeDetails;
  *(v6 + 35) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_28:
    *(v6 + 6) = self->_channel;
    *(v6 + 35) |= 4u;
  }

LABEL_29:
  v11 = [(NSString *)self->_gci copyWithZone:a3];
  v12 = v6[8];
  v6[8] = v11;

  v13 = self->_has;
  if ((*&v13 & 0x2000000) != 0)
  {
    *(v6 + 133) = self->_isDataPreferred;
    *(v6 + 35) |= 0x2000000u;
    v13 = self->_has;
    if ((*&v13 & 0x800000) == 0)
    {
LABEL_31:
      if ((*&v13 & 0x10000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_60:
      *(v6 + 136) = self->_relaxErrorPresent;
      *(v6 + 35) |= 0x10000000u;
      if ((*&self->_has & 0x8000) == 0)
      {
        return v6;
      }

      goto LABEL_33;
    }
  }

  else if ((*&v13 & 0x800000) == 0)
  {
    goto LABEL_31;
  }

  *(v6 + 32) = self->_validationType;
  *(v6 + 35) |= 0x800000u;
  v13 = self->_has;
  if ((*&v13 & 0x10000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_32:
  if ((*&v13 & 0x8000) != 0)
  {
LABEL_33:
    *(v6 + 24) = self->_relaxErrorCode;
    *(v6 + 35) |= 0x8000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_168;
  }

  has = self->_has;
  v6 = *(v4 + 35);
  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_168;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_length != *(v4 + 18))
    {
      goto LABEL_168;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_168;
  }

  content = self->_content;
  if (content | *(v4 + 5))
  {
    if (![(NSData *)content isEqual:?])
    {
      goto LABEL_168;
    }

    has = self->_has;
  }

  v8 = *(v4 + 35);
  if ((*&has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_seqNum != *(v4 + 27))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_168;
    }

    v9 = *(v4 + 135);
    if (self->_lastMessage)
    {
      if ((*(v4 + 135) & 1) == 0)
      {
        goto LABEL_168;
      }
    }

    else if (*(v4 + 135))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x8000000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_collectionEndType != *(v4 + 8))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0 || self->_timeDeltaPreviousMs != *(v4 + 29))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0 || self->_timeElapsedMs != *(v4 + 30))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_establishmentCause != *(v4 + 13))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0 || self->_phyCellId != *(v4 + 23))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_freq != *(v4 + 14))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_messageName != *(v4 + 19))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_msgType != *(v4 + 20))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_dlBw != *(v4 + 12))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_168;
  }

  if (*&has)
  {
    if ((v8 & 1) == 0 || self->_cellId != *(v4 + 1))
    {
      goto LABEL_168;
    }
  }

  else if (v8)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0 || self->_freqBandInd != *(v4 + 15))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0 || self->_trackingAreaCode != *(v4 + 31))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_selPlmnMcc != *(v4 + 25))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_selPlmnMnc != *(v4 + 26))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || self->_numMncDigits != *(v4 + 21))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_subsId != *(v4 + 28))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_numSubs != *(v4 + 22))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_168;
    }

    v10 = *(v4 + 134);
    if (self->_isNrHst)
    {
      if ((*(v4 + 134) & 1) == 0)
      {
        goto LABEL_168;
      }
    }

    else if (*(v4 + 134))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x4000000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_168;
    }

    v11 = *(v4 + 132);
    if (self->_bwpSwitchEver)
    {
      if ((*(v4 + 132) & 1) == 0)
      {
        goto LABEL_168;
      }
    }

    else if (*(v4 + 132))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_channelTypeDetails != *(v4 + 7))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_channel != *(v4 + 6))
    {
      goto LABEL_168;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_168;
  }

  gci = self->_gci;
  if (gci | *(v4 + 8))
  {
    if (![(NSString *)gci isEqual:?])
    {
      goto LABEL_168;
    }

    has = self->_has;
  }

  v13 = *(v4 + 35);
  if ((*&has & 0x2000000) != 0)
  {
    if ((v13 & 0x2000000) == 0)
    {
      goto LABEL_168;
    }

    v14 = *(v4 + 133);
    if (self->_isDataPreferred)
    {
      if ((*(v4 + 133) & 1) == 0)
      {
        goto LABEL_168;
      }
    }

    else if (*(v4 + 133))
    {
      goto LABEL_168;
    }
  }

  else if ((v13 & 0x2000000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v13 & 0x800000) == 0 || self->_validationType != *(v4 + 32))
    {
      goto LABEL_168;
    }
  }

  else if ((v13 & 0x800000) != 0)
  {
    goto LABEL_168;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v13 & 0x10000000) != 0)
    {
      v15 = *(v4 + 136);
      if (self->_relaxErrorPresent)
      {
        if ((*(v4 + 136) & 1) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_163;
      }

      if ((*(v4 + 136) & 1) == 0)
      {
        goto LABEL_163;
      }
    }

LABEL_168:
    v16 = 0;
    goto LABEL_169;
  }

  if ((v13 & 0x10000000) != 0)
  {
    goto LABEL_168;
  }

LABEL_163:
  if ((*&has & 0x8000) != 0)
  {
    if ((v13 & 0x8000) == 0 || self->_relaxErrorCode != *(v4 + 24))
    {
      goto LABEL_168;
    }

    v16 = 1;
  }

  else
  {
    v16 = (*(v4 + 35) & 0x8000) == 0;
  }

LABEL_169:

  return v16;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v38 = 2654435761u * self->_timestamp;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = 0;
    if ((*&has & 0x200) != 0)
    {
LABEL_3:
      v37 = 2654435761 * self->_length;
      goto LABEL_6;
    }
  }

  v37 = 0;
LABEL_6:
  v36 = [(NSData *)self->_content hash];
  v4 = self->_has;
  if ((*&v4 & 0x40000) != 0)
  {
    v35 = 2654435761 * self->_seqNum;
    if ((*&v4 & 0x8000000) != 0)
    {
LABEL_8:
      v34 = 2654435761 * self->_lastMessage;
      if ((*&v4 & 0x10) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v35 = 0;
    if ((*&v4 & 0x8000000) != 0)
    {
      goto LABEL_8;
    }
  }

  v34 = 0;
  if ((*&v4 & 0x10) != 0)
  {
LABEL_9:
    v33 = 2654435761 * self->_collectionEndType;
    if ((*&v4 & 0x100000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v33 = 0;
  if ((*&v4 & 0x100000) != 0)
  {
LABEL_10:
    v32 = 2654435761 * self->_timeDeltaPreviousMs;
    if ((*&v4 & 0x200000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v32 = 0;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_11:
    v31 = 2654435761 * self->_timeElapsedMs;
    if ((*&v4 & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v31 = 0;
  if ((*&v4 & 0x40) != 0)
  {
LABEL_12:
    v30 = 2654435761 * self->_establishmentCause;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v30 = 0;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_13:
    v29 = 2654435761 * self->_phyCellId;
    if ((*&v4 & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v29 = 0;
  if ((*&v4 & 0x80) != 0)
  {
LABEL_14:
    v28 = 2654435761 * self->_freq;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v28 = 0;
  if ((*&v4 & 0x400) != 0)
  {
LABEL_15:
    v27 = 2654435761 * self->_messageName;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  v27 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_16:
    v26 = 2654435761 * self->_msgType;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  v26 = 0;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_17:
    v25 = 2654435761 * self->_dlBw;
    if (*&v4)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  v25 = 0;
  if (*&v4)
  {
LABEL_18:
    v24 = 2654435761u * self->_cellId;
    if ((*&v4 & 0x100) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  v24 = 0;
  if ((*&v4 & 0x100) != 0)
  {
LABEL_19:
    v23 = 2654435761 * self->_freqBandInd;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v23 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_20:
    v22 = 2654435761 * self->_trackingAreaCode;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v22 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_21:
    v21 = 2654435761 * self->_selPlmnMcc;
    if ((*&v4 & 0x20000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v21 = 0;
  if ((*&v4 & 0x20000) != 0)
  {
LABEL_22:
    v19 = 2654435761 * self->_selPlmnMnc;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_23:
    v5 = 2654435761 * self->_numMncDigits;
    if ((*&v4 & 0x80000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  v5 = 0;
  if ((*&v4 & 0x80000) != 0)
  {
LABEL_24:
    v6 = 2654435761 * self->_subsId;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  v6 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_25:
    v7 = 2654435761 * self->_numSubs;
    if ((*&v4 & 0x4000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  v7 = 0;
  if ((*&v4 & 0x4000000) != 0)
  {
LABEL_26:
    v8 = 2654435761 * self->_isNrHst;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

LABEL_49:
  v8 = 0;
  if ((*&v4 & 0x1000000) != 0)
  {
LABEL_27:
    v9 = 2654435761 * self->_bwpSwitchEver;
    if ((*&v4 & 8) != 0)
    {
      goto LABEL_28;
    }

LABEL_51:
    v10 = 0;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

LABEL_50:
  v9 = 0;
  if ((*&v4 & 8) == 0)
  {
    goto LABEL_51;
  }

LABEL_28:
  v10 = 2654435761 * self->_channelTypeDetails;
  if ((*&v4 & 4) != 0)
  {
LABEL_29:
    v11 = 2654435761 * self->_channel;
    goto LABEL_53;
  }

LABEL_52:
  v11 = 0;
LABEL_53:
  v12 = [(NSString *)self->_gci hash];
  v13 = self->_has;
  if ((*&v13 & 0x2000000) != 0)
  {
    v14 = 2654435761 * self->_isDataPreferred;
    if ((*&v13 & 0x800000) != 0)
    {
LABEL_55:
      v15 = 2654435761 * self->_validationType;
      if ((*&v13 & 0x10000000) != 0)
      {
        goto LABEL_56;
      }

LABEL_60:
      v16 = 0;
      if ((*&v13 & 0x8000) != 0)
      {
        goto LABEL_57;
      }

LABEL_61:
      v17 = 0;
      return v37 ^ v38 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v36 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x800000) != 0)
    {
      goto LABEL_55;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x10000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_56:
  v16 = 2654435761 * self->_relaxErrorPresent;
  if ((*&v13 & 0x8000) == 0)
  {
    goto LABEL_61;
  }

LABEL_57:
  v17 = 2654435761 * self->_relaxErrorCode;
  return v37 ^ v38 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v36 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 35);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 35);
  }

  if ((v5 & 0x200) != 0)
  {
    self->_length = *(v4 + 18);
    *&self->_has |= 0x200u;
  }

  v8 = v4;
  if (*(v4 + 5))
  {
    [(KCellularNrRrcNetworkConfig *)self setContent:?];
    v4 = v8;
  }

  v6 = *(v4 + 35);
  if ((v6 & 0x40000) != 0)
  {
    self->_seqNum = *(v4 + 27);
    *&self->_has |= 0x40000u;
    v6 = *(v4 + 35);
    if ((v6 & 0x8000000) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 0x8000000) == 0)
  {
    goto LABEL_9;
  }

  self->_lastMessage = *(v4 + 135);
  *&self->_has |= 0x8000000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_collectionEndType = *(v4 + 8);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 35);
  if ((v6 & 0x100000) == 0)
  {
LABEL_11:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_timeDeltaPreviousMs = *(v4 + 29);
  *&self->_has |= 0x100000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x200000) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_timeElapsedMs = *(v4 + 30);
  *&self->_has |= 0x200000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x40) == 0)
  {
LABEL_13:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_establishmentCause = *(v4 + 13);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 35);
  if ((v6 & 0x4000) == 0)
  {
LABEL_14:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_phyCellId = *(v4 + 23);
  *&self->_has |= 0x4000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x80) == 0)
  {
LABEL_15:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_freq = *(v4 + 14);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 35);
  if ((v6 & 0x400) == 0)
  {
LABEL_16:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_messageName = *(v4 + 19);
  *&self->_has |= 0x400u;
  v6 = *(v4 + 35);
  if ((v6 & 0x800) == 0)
  {
LABEL_17:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_msgType = *(v4 + 20);
  *&self->_has |= 0x800u;
  v6 = *(v4 + 35);
  if ((v6 & 0x20) == 0)
  {
LABEL_18:
    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_dlBw = *(v4 + 12);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 35);
  if ((v6 & 1) == 0)
  {
LABEL_19:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_cellId = *(v4 + 1);
  *&self->_has |= 1u;
  v6 = *(v4 + 35);
  if ((v6 & 0x100) == 0)
  {
LABEL_20:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_freqBandInd = *(v4 + 15);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 35);
  if ((v6 & 0x400000) == 0)
  {
LABEL_21:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_trackingAreaCode = *(v4 + 31);
  *&self->_has |= 0x400000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x10000) == 0)
  {
LABEL_22:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_selPlmnMcc = *(v4 + 25);
  *&self->_has |= 0x10000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x20000) == 0)
  {
LABEL_23:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_selPlmnMnc = *(v4 + 26);
  *&self->_has |= 0x20000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x1000) == 0)
  {
LABEL_24:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_numMncDigits = *(v4 + 21);
  *&self->_has |= 0x1000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x80000) == 0)
  {
LABEL_25:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_subsId = *(v4 + 28);
  *&self->_has |= 0x80000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x2000) == 0)
  {
LABEL_26:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_numSubs = *(v4 + 22);
  *&self->_has |= 0x2000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_isNrHst = *(v4 + 134);
  *&self->_has |= 0x4000000u;
  v6 = *(v4 + 35);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_28:
    if ((v6 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_bwpSwitchEver = *(v4 + 132);
  *&self->_has |= 0x1000000u;
  v6 = *(v4 + 35);
  if ((v6 & 8) == 0)
  {
LABEL_29:
    if ((v6 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_62:
  self->_channelTypeDetails = *(v4 + 7);
  *&self->_has |= 8u;
  if ((*(v4 + 35) & 4) != 0)
  {
LABEL_30:
    self->_channel = *(v4 + 6);
    *&self->_has |= 4u;
  }

LABEL_31:
  if (*(v4 + 8))
  {
    [(KCellularNrRrcNetworkConfig *)self setGci:?];
    v4 = v8;
  }

  v7 = *(v4 + 35);
  if ((v7 & 0x2000000) != 0)
  {
    self->_isDataPreferred = *(v4 + 133);
    *&self->_has |= 0x2000000u;
    v7 = *(v4 + 35);
    if ((v7 & 0x800000) == 0)
    {
LABEL_35:
      if ((v7 & 0x10000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_66;
    }
  }

  else if ((v7 & 0x800000) == 0)
  {
    goto LABEL_35;
  }

  self->_validationType = *(v4 + 32);
  *&self->_has |= 0x800000u;
  v7 = *(v4 + 35);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_66:
  self->_relaxErrorPresent = *(v4 + 136);
  *&self->_has |= 0x10000000u;
  if ((*(v4 + 35) & 0x8000) != 0)
  {
LABEL_37:
    self->_relaxErrorCode = *(v4 + 24);
    *&self->_has |= 0x8000u;
  }

LABEL_38:
}

@end