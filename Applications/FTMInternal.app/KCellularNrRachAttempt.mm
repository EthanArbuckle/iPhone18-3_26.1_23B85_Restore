@interface KCellularNrRachAttempt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDcModeDetails:(id)details;
- (int)StringAsRachContentionDetails:(id)details;
- (int)StringAsRachReasonDetails:(id)details;
- (int)StringAsRachResultDetails:(id)details;
- (int)StringAsServingCellBeamInfoAntennaPanelIndexDetails:(id)details;
- (int)StringAsServingCellBeamInfoCellRsrpDetails:(id)details;
- (int)StringAsServingCellBeamInfoCellRsrqDetails:(id)details;
- (int)StringAsTxPowerDiffDetails:(id)details;
- (int)dcModeDetails;
- (int)rachContentionDetails;
- (int)rachReasonDetails;
- (int)rachResultDetails;
- (int)servingCellBeamInfoAntennaPanelIndexDetails;
- (int)servingCellBeamInfoCellRsrpDetails;
- (int)servingCellBeamInfoCellRsrqDetails;
- (int)txPowerDiffDetails;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAccbState:(BOOL)state;
- (void)setHasCsiRsId:(BOOL)id;
- (void)setHasDcModeDetails:(BOOL)details;
- (void)setHasFreqBandInd:(BOOL)ind;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasIsLteHst:(BOOL)hst;
- (void)setHasIsNrHst:(BOOL)hst;
- (void)setHasIsPowerLimited:(BOOL)limited;
- (void)setHasLastTxPower:(BOOL)power;
- (void)setHasMtplDbm10:(BOOL)dbm10;
- (void)setHasNumAttempt:(BOOL)attempt;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasRachContentionDetails:(BOOL)details;
- (void)setHasRachReasonDetails:(BOOL)details;
- (void)setHasRachResultDetails:(BOOL)details;
- (void)setHasServingCellBeamInfoAntennaPanelIndexDetails:(BOOL)details;
- (void)setHasServingCellBeamInfoCellRsrpDetails:(BOOL)details;
- (void)setHasServingCellBeamInfoCellRsrqDetails:(BOOL)details;
- (void)setHasServingCellBeamInfoNumDetectedTxBeams:(BOOL)beams;
- (void)setHasServingCellBeamInfoRxBeamId0:(BOOL)id0;
- (void)setHasServingCellBeamInfoRxBeamId1:(BOOL)id1;
- (void)setHasServingCellBeamInfoSsbIndex:(BOOL)index;
- (void)setHasSftToCellDelay:(BOOL)delay;
- (void)setHasSsbId:(BOOL)id;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTimeDefer:(BOOL)defer;
- (void)setHasTxPowerDiff:(BOOL)diff;
- (void)setHasTxPowerDiffDetails:(BOOL)details;
- (void)writeTo:(id)to;
@end

@implementation KCellularNrRachAttempt

- (void)dealloc
{
  [(KCellularNrRachAttempt *)self setPlmn:0];
  v3.receiver = self;
  v3.super_class = KCellularNrRachAttempt;
  [(KCellularNrRachAttempt *)&v3 dealloc];
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasNumAttempt:(BOOL)attempt
{
  if (attempt)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasSsbId:(BOOL)id
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

- (void)setHasCsiRsId:(BOOL)id
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
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
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

- (void)setHasTxPowerDiff:(BOOL)diff
{
  if (diff)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasFreqBandInd:(BOOL)ind
{
  if (ind)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasIsPowerLimited:(BOOL)limited
{
  if (limited)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasIsNrHst:(BOOL)hst
{
  if (hst)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasIsLteHst:(BOOL)hst
{
  if (hst)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  if (preferred)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasServingCellBeamInfoSsbIndex:(BOOL)index
{
  if (index)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasServingCellBeamInfoRxBeamId0:(BOOL)id0
{
  if (id0)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasServingCellBeamInfoRxBeamId1:(BOOL)id1
{
  if (id1)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasServingCellBeamInfoNumDetectedTxBeams:(BOOL)beams
{
  if (beams)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (int)rachResultDetails
{
  if ((*(&self->_has + 1) & 8) != 0)
  {
    return self->_rachResultDetails;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRachResultDetails:(BOOL)details
{
  if (details)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (int)StringAsRachResultDetails:(id)details
{
  detailsCopy = details;
  if ([detailsCopy isEqualToString:@"RACH_RESULT_SUCCESS"])
  {
    v4 = 0;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_FAILURE_MSG2_RA_TIMER_EXP"])
  {
    v4 = 1;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_FAILURE_MSG2_RAPID_MISMATCH"])
  {
    v4 = 2;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_FAILURE_MSG2_RAR_PRUNE"])
  {
    v4 = 3;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_BOI_ONLY_MSG2"])
  {
    v4 = 4;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_FAILURE_MSG4_CT_TIMER_EXPIRED"])
  {
    v4 = 5;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_FAILURE_CONT_RES_FAILED"])
  {
    v4 = 6;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_ABORTED"])
  {
    v4 = 7;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_SUSPENDED"])
  {
    v4 = 8;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_RESUMED"])
  {
    v4 = 9;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_BAD_CELL"])
  {
    v4 = 10;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_NO_CELL"])
  {
    v4 = 11;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_SINGLE_RECEIVE"])
  {
    v4 = 12;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_T304_EXPIRY"])
  {
    v4 = 13;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_T300_EXPIRY"])
  {
    v4 = 14;
  }

  else if ([detailsCopy isEqualToString:@"RACH_RESULT_FAILURE_OTHERS"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rachContentionDetails
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_rachContentionDetails;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRachContentionDetails:(BOOL)details
{
  if (details)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)StringAsRachContentionDetails:(id)details
{
  detailsCopy = details;
  if ([detailsCopy isEqualToString:@"RACH_CONTENTION_FREE"])
  {
    v4 = 0;
  }

  else if ([detailsCopy isEqualToString:@"RACH_CONTENTION_BASED"])
  {
    v4 = 1;
  }

  else if ([detailsCopy isEqualToString:@"RACH_CONTENTION_DL_MCE"])
  {
    v4 = 2;
  }

  else if ([detailsCopy isEqualToString:@"RACH_CONTENTION_UL_GRANT"])
  {
    v4 = 3;
  }

  else if ([detailsCopy isEqualToString:@"RACH_PDCCH_CRNTI"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rachReasonDetails
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    return self->_rachReasonDetails;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRachReasonDetails:(BOOL)details
{
  if (details)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (int)StringAsRachReasonDetails:(id)details
{
  detailsCopy = details;
  if ([detailsCopy isEqualToString:@"RACH_REASON_CONNECTION_REQUEST"])
  {
    v4 = 0;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_RADIO_LINK_FAILURE"])
  {
    v4 = 1;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_HANDOVER"])
  {
    v4 = 2;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_UL_DATA_ARRIVAL"])
  {
    v4 = 3;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_DL_DATA_ARRIVAL"])
  {
    v4 = 4;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_UNDEFINED"])
  {
    v4 = 5;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_BEAM_FAILURE"])
  {
    v4 = 6;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_ON_DEMAND_SI"])
  {
    v4 = 7;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_RESUME"])
  {
    v4 = 8;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_OOS_RECOVERY"])
  {
    v4 = 9;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_T300"])
  {
    v4 = 10;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_UL_SIGNALLING_IN_CONNECTED_MODE"])
  {
    v4 = 11;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_UL_SIGNALLING_IN_CONNECTED_MODE_WHILE_L1_CNF"])
  {
    v4 = 12;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_MCG_FAILURE"])
  {
    v4 = 13;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_ABORT_FOR_SON_REPORT"])
  {
    v4 = 14;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_CONNECTION_REQUEST_REESTAB"])
  {
    v4 = 15;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_HO_RECONF_WITH_SYNC"])
  {
    v4 = 16;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_ENDC_HO_RECONF_WITH_SYNC"])
  {
    v4 = 17;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_ENDC_SCG_CELL"])
  {
    v4 = 18;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_ENDC_PSCELL_CHANGE_OR_ADDITION"])
  {
    v4 = 19;
  }

  else if ([detailsCopy isEqualToString:@"RACH_REASON_NRDC_PSCELL_CHANGE_OR_ADDITION"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)txPowerDiffDetails
{
  if (*(&self->_has + 3))
  {
    return self->_txPowerDiffDetails;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTxPowerDiffDetails:(BOOL)details
{
  if (details)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (int)StringAsTxPowerDiffDetails:(id)details
{
  detailsCopy = details;
  if ([detailsCopy isEqualToString:@"NO_ERROR"])
  {
    v4 = 0;
  }

  else if ([detailsCopy isEqualToString:@"P_ERROR_1_TO_3"])
  {
    v4 = 1;
  }

  else if ([detailsCopy isEqualToString:@"P_ERROR_MORE_THAN_3"])
  {
    v4 = 2;
  }

  else if ([detailsCopy isEqualToString:@"BAD_PDET"])
  {
    v4 = 3;
  }

  else if ([detailsCopy isEqualToString:@"NO_VALUE"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)dcModeDetails
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_dcModeDetails;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDcModeDetails:(BOOL)details
{
  if (details)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (int)StringAsDcModeDetails:(id)details
{
  detailsCopy = details;
  if ([detailsCopy isEqualToString:@"DC_MODE_SA"])
  {
    v4 = 0;
  }

  else if ([detailsCopy isEqualToString:@"DC_MODE_ENDC"])
  {
    v4 = 1;
  }

  else if ([detailsCopy isEqualToString:@"DC_MODE_NRDC"])
  {
    v4 = 2;
  }

  else if ([detailsCopy isEqualToString:@"DC_MODE_NA"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)servingCellBeamInfoAntennaPanelIndexDetails
{
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    return self->_servingCellBeamInfoAntennaPanelIndexDetails;
  }

  else
  {
    return 0;
  }
}

- (void)setHasServingCellBeamInfoAntennaPanelIndexDetails:(BOOL)details
{
  if (details)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (int)StringAsServingCellBeamInfoAntennaPanelIndexDetails:(id)details
{
  detailsCopy = details;
  if ([detailsCopy isEqualToString:@"ANTENNA_PANEL_FR1"])
  {
    v4 = 0;
  }

  else if ([detailsCopy isEqualToString:@"ANTENNA_PANEL_BG"])
  {
    v4 = 1;
  }

  else if ([detailsCopy isEqualToString:@"ANTENNA_PANEL_CG"])
  {
    v4 = 2;
  }

  else if ([detailsCopy isEqualToString:@"ANTENNA_PANEL_SF"])
  {
    v4 = 3;
  }

  else if ([detailsCopy isEqualToString:@"ANTENNA_PANEL_BG1"])
  {
    v4 = 4;
  }

  else if ([detailsCopy isEqualToString:@"ANTENNA_PANEL_BG2"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)servingCellBeamInfoCellRsrpDetails
{
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    return self->_servingCellBeamInfoCellRsrpDetails;
  }

  else
  {
    return 0;
  }
}

- (void)setHasServingCellBeamInfoCellRsrpDetails:(BOOL)details
{
  if (details)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (int)StringAsServingCellBeamInfoCellRsrpDetails:(id)details
{
  detailsCopy = details;
  if ([detailsCopy isEqualToString:@"RSRP_STATE_BAD_RF"])
  {
    v4 = 0;
  }

  else if ([detailsCopy isEqualToString:@"RSRP_STATE_GOOD_RF"])
  {
    v4 = 1;
  }

  else if ([detailsCopy isEqualToString:@"RSRP_STATE_EXCELLENT_RF"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)servingCellBeamInfoCellRsrqDetails
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_servingCellBeamInfoCellRsrqDetails;
  }

  else
  {
    return 0;
  }
}

- (void)setHasServingCellBeamInfoCellRsrqDetails:(BOOL)details
{
  if (details)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (int)StringAsServingCellBeamInfoCellRsrqDetails:(id)details
{
  detailsCopy = details;
  if ([detailsCopy isEqualToString:@"RSRQ_STATE_BAD_RF"])
  {
    v4 = 0;
  }

  else if ([detailsCopy isEqualToString:@"RSRQ_STATE_GOOD_RF"])
  {
    v4 = 1;
  }

  else if ([detailsCopy isEqualToString:@"RSRQ_STATE_EXCELLENT_RF"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMtplDbm10:(BOOL)dbm10
{
  if (dbm10)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTimeDefer:(BOOL)defer
{
  if (defer)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasSftToCellDelay:(BOOL)delay
{
  if (delay)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularNrRachAttempt;
  v3 = [(KCellularNrRachAttempt *)&v7 description];
  dictionaryRepresentation = [(KCellularNrRachAttempt *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    if ((*&has & 0x200000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  v12 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v12 forKey:@"subs_id"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  v13 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v13 forKey:@"num_subs"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  v14 = [NSNumber numberWithUnsignedInt:self->_numAttempt];
  [v3 setObject:v14 forKey:@"num_attempt"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  v15 = [NSNumber numberWithUnsignedInt:self->_ssbId];
  [v3 setObject:v15 forKey:@"ssb_id"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  v16 = [NSNumber numberWithUnsignedInt:self->_csiRsId];
  [v3 setObject:v16 forKey:@"csi_rs_id"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v17 = [NSNumber numberWithInt:self->_lastTxPower];
  [v3 setObject:v17 forKey:@"last_tx_power"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v18 = [NSNumber numberWithUnsignedInt:self->_accbState];
  [v3 setObject:v18 forKey:@"accb_state"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  v19 = [NSNumber numberWithInt:self->_txPowerDiff];
  [v3 setObject:v19 forKey:@"tx_power_diff"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
  [v3 setObject:v20 forKey:@"freq_band_ind"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = [NSNumber numberWithBool:self->_isPowerLimited];
  [v3 setObject:v21 forKey:@"is_power_limited"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = [NSNumber numberWithBool:self->_isNrHst];
  [v3 setObject:v22 forKey:@"is_nr_hst"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_47:
  v23 = [NSNumber numberWithBool:self->_isLteHst];
  [v3 setObject:v23 forKey:@"is_lte_hst"];

  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_15:
    v5 = [NSNumber numberWithBool:self->_isDataPreferred];
    [v3 setObject:v5 forKey:@"is_data_preferred"];
  }

LABEL_16:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v7 = self->_has;
  if ((*&v7 & 0x40000) != 0)
  {
    v24 = [NSNumber numberWithUnsignedInt:self->_servingCellBeamInfoSsbIndex];
    [v3 setObject:v24 forKey:@"serving_cell_beam_info_ssb_index"];

    v7 = self->_has;
    if ((*&v7 & 0x10000) == 0)
    {
LABEL_20:
      if ((*&v7 & 0x20000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_51;
    }
  }

  else if ((*&v7 & 0x10000) == 0)
  {
    goto LABEL_20;
  }

  v25 = [NSNumber numberWithUnsignedInt:self->_servingCellBeamInfoRxBeamId0];
  [v3 setObject:v25 forKey:@"serving_cell_beam_info_rx_beam_id_0"];

  v7 = self->_has;
  if ((*&v7 & 0x20000) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = [NSNumber numberWithUnsignedInt:self->_servingCellBeamInfoRxBeamId1];
  [v3 setObject:v26 forKey:@"serving_cell_beam_info_rx_beam_id_1"];

  v7 = self->_has;
  if ((*&v7 & 0x8000) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v27 = [NSNumber numberWithUnsignedInt:self->_servingCellBeamInfoNumDetectedTxBeams];
  [v3 setObject:v27 forKey:@"serving_cell_beam_info_num_detected_tx_beams"];

  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_53:
  rachResultDetails = self->_rachResultDetails;
  if (rachResultDetails >= 0x10)
  {
    v29 = [NSString stringWithFormat:@"(unknown: %i)", self->_rachResultDetails];
  }

  else
  {
    v29 = *(&off_100317F08 + rachResultDetails);
  }

  [v3 setObject:v29 forKey:@"rach_result_details"];

  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_57:
  rachContentionDetails = self->_rachContentionDetails;
  if (rachContentionDetails >= 5)
  {
    v31 = [NSString stringWithFormat:@"(unknown: %i)", self->_rachContentionDetails];
  }

  else
  {
    v31 = *(&off_100317F88 + rachContentionDetails);
  }

  [v3 setObject:v31 forKey:@"rach_contention_details"];

  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_25:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_61:
  rachReasonDetails = self->_rachReasonDetails;
  if (rachReasonDetails >= 0x15)
  {
    v33 = [NSString stringWithFormat:@"(unknown: %i)", self->_rachReasonDetails];
  }

  else
  {
    v33 = *(&off_100317FB0 + rachReasonDetails);
  }

  [v3 setObject:v33 forKey:@"rach_reason_details"];

  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_26:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_65:
  txPowerDiffDetails = self->_txPowerDiffDetails;
  if (txPowerDiffDetails <= 1)
  {
    if (!txPowerDiffDetails)
    {
      v35 = @"NO_ERROR";
      goto LABEL_77;
    }

    if (txPowerDiffDetails == 1)
    {
      v35 = @"P_ERROR_1_TO_3";
      goto LABEL_77;
    }
  }

  else
  {
    switch(txPowerDiffDetails)
    {
      case 2:
        v35 = @"P_ERROR_MORE_THAN_3";
        goto LABEL_77;
      case 3:
        v35 = @"BAD_PDET";
        goto LABEL_77;
      case 255:
        v35 = @"NO_VALUE";
        goto LABEL_77;
    }
  }

  v35 = [NSString stringWithFormat:@"(unknown: %i)", self->_txPowerDiffDetails];
LABEL_77:
  [v3 setObject:v35 forKey:@"tx_power_diff_details"];

  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_27:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_78:
  dcModeDetails = self->_dcModeDetails;
  if (dcModeDetails >= 4)
  {
    v37 = [NSString stringWithFormat:@"(unknown: %i)", self->_dcModeDetails];
  }

  else
  {
    v37 = *(&off_100318058 + dcModeDetails);
  }

  [v3 setObject:v37 forKey:@"dc_mode_details"];

  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_86;
  }

LABEL_82:
  servingCellBeamInfoAntennaPanelIndexDetails = self->_servingCellBeamInfoAntennaPanelIndexDetails;
  if (servingCellBeamInfoAntennaPanelIndexDetails >= 6)
  {
    v39 = [NSString stringWithFormat:@"(unknown: %i)", self->_servingCellBeamInfoAntennaPanelIndexDetails];
  }

  else
  {
    v39 = *(&off_100318078 + servingCellBeamInfoAntennaPanelIndexDetails);
  }

  [v3 setObject:v39 forKey:@"serving_cell_beam_info_antenna_panel_index_details"];

  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_29:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_90;
  }

LABEL_86:
  servingCellBeamInfoCellRsrpDetails = self->_servingCellBeamInfoCellRsrpDetails;
  if (servingCellBeamInfoCellRsrpDetails >= 3)
  {
    v41 = [NSString stringWithFormat:@"(unknown: %i)", self->_servingCellBeamInfoCellRsrpDetails];
  }

  else
  {
    v41 = *(&off_1003180A8 + servingCellBeamInfoCellRsrpDetails);
  }

  [v3 setObject:v41 forKey:@"serving_cell_beam_info_cell_rsrp_details"];

  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_94;
  }

LABEL_90:
  servingCellBeamInfoCellRsrqDetails = self->_servingCellBeamInfoCellRsrqDetails;
  if (servingCellBeamInfoCellRsrqDetails >= 3)
  {
    v43 = [NSString stringWithFormat:@"(unknown: %i)", self->_servingCellBeamInfoCellRsrqDetails];
  }

  else
  {
    v43 = *(&off_1003180C0 + servingCellBeamInfoCellRsrqDetails);
  }

  [v3 setObject:v43 forKey:@"serving_cell_beam_info_cell_rsrq_details"];

  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_31:
    if ((*&v7 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

LABEL_95:
    v45 = [NSNumber numberWithUnsignedInt:self->_timeDefer];
    [v3 setObject:v45 forKey:@"time_defer"];

    if ((*&self->_has & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_94:
  v44 = [NSNumber numberWithInt:self->_mtplDbm10];
  [v3 setObject:v44 forKey:@"mtpl_dbm10"];

  v7 = self->_has;
  if ((*&v7 & 0x400000) != 0)
  {
    goto LABEL_95;
  }

LABEL_32:
  if ((*&v7 & 0x80000) != 0)
  {
LABEL_33:
    v8 = [NSNumber numberWithUnsignedInt:self->_sftToCellDelay];
    [v3 setObject:v8 forKey:@"sft_to_cell_delay"];
  }

LABEL_34:
  v9 = v3;

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
    if ((*&has & 0x200000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  numAttempt = self->_numAttempt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  ssbId = self->_ssbId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  csiRsId = self->_csiRsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  lastTxPower = self->_lastTxPower;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  accbState = self->_accbState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  txPowerDiff = self->_txPowerDiff;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  freqBandInd = self->_freqBandInd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  isPowerLimited = self->_isPowerLimited;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  isNrHst = self->_isNrHst;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_49:
  isLteHst = self->_isLteHst;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_15:
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }

LABEL_16:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x40000) != 0)
  {
    servingCellBeamInfoSsbIndex = self->_servingCellBeamInfoSsbIndex;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((*&v6 & 0x10000) == 0)
    {
LABEL_20:
      if ((*&v6 & 0x20000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_53;
    }
  }

  else if ((*&v6 & 0x10000) == 0)
  {
    goto LABEL_20;
  }

  servingCellBeamInfoRxBeamId0 = self->_servingCellBeamInfoRxBeamId0;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  servingCellBeamInfoRxBeamId1 = self->_servingCellBeamInfoRxBeamId1;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  servingCellBeamInfoNumDetectedTxBeams = self->_servingCellBeamInfoNumDetectedTxBeams;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  rachResultDetails = self->_rachResultDetails;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  rachContentionDetails = self->_rachContentionDetails;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  rachReasonDetails = self->_rachReasonDetails;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  txPowerDiffDetails = self->_txPowerDiffDetails;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  dcModeDetails = self->_dcModeDetails;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  servingCellBeamInfoAntennaPanelIndexDetails = self->_servingCellBeamInfoAntennaPanelIndexDetails;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  servingCellBeamInfoCellRsrpDetails = self->_servingCellBeamInfoCellRsrpDetails;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  servingCellBeamInfoCellRsrqDetails = self->_servingCellBeamInfoCellRsrqDetails;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  mtplDbm10 = self->_mtplDbm10;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_64:
  timeDefer = self->_timeDefer;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_33:
    sftToCellDelay = self->_sftToCellDelay;
    PBDataWriterWriteUint32Field();
  }

LABEL_34:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 31) |= 1u;
    has = self->_has;
    if ((*&has & 0x200000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 26) = self->_subsId;
  *(toCopy + 31) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 11) = self->_numSubs;
  *(toCopy + 31) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 10) = self->_numAttempt;
  *(toCopy + 31) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 25) = self->_ssbId;
  *(toCopy + 31) |= 0x100000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 5) = self->_csiRsId;
  *(toCopy + 31) |= 4u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 8) = self->_lastTxPower;
  *(toCopy + 31) |= 0x20u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 4) = self->_accbState;
  *(toCopy + 31) |= 2u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 28) = self->_txPowerDiff;
  *(toCopy + 31) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 7) = self->_freqBandInd;
  *(toCopy + 31) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 123) = self->_isPowerLimited;
  *(toCopy + 31) |= 0x10000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 122) = self->_isNrHst;
  *(toCopy + 31) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_49:
  *(toCopy + 121) = self->_isLteHst;
  *(toCopy + 31) |= 0x4000000u;
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_15:
    *(toCopy + 120) = self->_isDataPreferred;
    *(toCopy + 31) |= 0x2000000u;
  }

LABEL_16:
  if (self->_plmn)
  {
    v7 = toCopy;
    [toCopy setPlmn:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 0x40000) != 0)
  {
    *(toCopy + 23) = self->_servingCellBeamInfoSsbIndex;
    *(toCopy + 31) |= 0x40000u;
    v6 = self->_has;
    if ((*&v6 & 0x10000) == 0)
    {
LABEL_20:
      if ((*&v6 & 0x20000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_53;
    }
  }

  else if ((*&v6 & 0x10000) == 0)
  {
    goto LABEL_20;
  }

  *(toCopy + 21) = self->_servingCellBeamInfoRxBeamId0;
  *(toCopy + 31) |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 22) = self->_servingCellBeamInfoRxBeamId1;
  *(toCopy + 31) |= 0x20000u;
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(toCopy + 20) = self->_servingCellBeamInfoNumDetectedTxBeams;
  *(toCopy + 31) |= 0x8000u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(toCopy + 16) = self->_rachResultDetails;
  *(toCopy + 31) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(toCopy + 14) = self->_rachContentionDetails;
  *(toCopy + 31) |= 0x200u;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(toCopy + 15) = self->_rachReasonDetails;
  *(toCopy + 31) |= 0x400u;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(toCopy + 29) = self->_txPowerDiffDetails;
  *(toCopy + 31) |= 0x1000000u;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(toCopy + 6) = self->_dcModeDetails;
  *(toCopy + 31) |= 8u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(toCopy + 17) = self->_servingCellBeamInfoAntennaPanelIndexDetails;
  *(toCopy + 31) |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(toCopy + 18) = self->_servingCellBeamInfoCellRsrpDetails;
  *(toCopy + 31) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(toCopy + 19) = self->_servingCellBeamInfoCellRsrqDetails;
  *(toCopy + 31) |= 0x4000u;
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(toCopy + 9) = self->_mtplDbm10;
  *(toCopy + 31) |= 0x40u;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_64:
  *(toCopy + 27) = self->_timeDefer;
  *(toCopy + 31) |= 0x400000u;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_33:
    *(toCopy + 24) = self->_sftToCellDelay;
    *(toCopy + 31) |= 0x80000u;
  }

LABEL_34:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 31) |= 1u;
    has = self->_has;
    if ((*&has & 0x200000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 26) = self->_subsId;
  *(v5 + 31) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 11) = self->_numSubs;
  *(v5 + 31) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 10) = self->_numAttempt;
  *(v5 + 31) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 25) = self->_ssbId;
  *(v5 + 31) |= 0x100000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 5) = self->_csiRsId;
  *(v5 + 31) |= 4u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 8) = self->_lastTxPower;
  *(v5 + 31) |= 0x20u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 4) = self->_accbState;
  *(v5 + 31) |= 2u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 28) = self->_txPowerDiff;
  *(v5 + 31) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 7) = self->_freqBandInd;
  *(v5 + 31) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 123) = self->_isPowerLimited;
  *(v5 + 31) |= 0x10000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 122) = self->_isNrHst;
  *(v5 + 31) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_45:
  *(v5 + 121) = self->_isLteHst;
  *(v5 + 31) |= 0x4000000u;
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_15:
    *(v5 + 120) = self->_isDataPreferred;
    *(v5 + 31) |= 0x2000000u;
  }

LABEL_16:
  v8 = [(NSData *)self->_plmn copyWithZone:zone];
  v9 = v6[6];
  v6[6] = v8;

  v10 = self->_has;
  if ((*&v10 & 0x40000) != 0)
  {
    *(v6 + 23) = self->_servingCellBeamInfoSsbIndex;
    *(v6 + 31) |= 0x40000u;
    v10 = self->_has;
    if ((*&v10 & 0x10000) == 0)
    {
LABEL_18:
      if ((*&v10 & 0x20000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_49;
    }
  }

  else if ((*&v10 & 0x10000) == 0)
  {
    goto LABEL_18;
  }

  *(v6 + 21) = self->_servingCellBeamInfoRxBeamId0;
  *(v6 + 31) |= 0x10000u;
  v10 = self->_has;
  if ((*&v10 & 0x20000) == 0)
  {
LABEL_19:
    if ((*&v10 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v6 + 22) = self->_servingCellBeamInfoRxBeamId1;
  *(v6 + 31) |= 0x20000u;
  v10 = self->_has;
  if ((*&v10 & 0x8000) == 0)
  {
LABEL_20:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 20) = self->_servingCellBeamInfoNumDetectedTxBeams;
  *(v6 + 31) |= 0x8000u;
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_21:
    if ((*&v10 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 16) = self->_rachResultDetails;
  *(v6 + 31) |= 0x800u;
  v10 = self->_has;
  if ((*&v10 & 0x200) == 0)
  {
LABEL_22:
    if ((*&v10 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 14) = self->_rachContentionDetails;
  *(v6 + 31) |= 0x200u;
  v10 = self->_has;
  if ((*&v10 & 0x400) == 0)
  {
LABEL_23:
    if ((*&v10 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 15) = self->_rachReasonDetails;
  *(v6 + 31) |= 0x400u;
  v10 = self->_has;
  if ((*&v10 & 0x1000000) == 0)
  {
LABEL_24:
    if ((*&v10 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 29) = self->_txPowerDiffDetails;
  *(v6 + 31) |= 0x1000000u;
  v10 = self->_has;
  if ((*&v10 & 8) == 0)
  {
LABEL_25:
    if ((*&v10 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 6) = self->_dcModeDetails;
  *(v6 + 31) |= 8u;
  v10 = self->_has;
  if ((*&v10 & 0x1000) == 0)
  {
LABEL_26:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 17) = self->_servingCellBeamInfoAntennaPanelIndexDetails;
  *(v6 + 31) |= 0x1000u;
  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_27:
    if ((*&v10 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 18) = self->_servingCellBeamInfoCellRsrpDetails;
  *(v6 + 31) |= 0x2000u;
  v10 = self->_has;
  if ((*&v10 & 0x4000) == 0)
  {
LABEL_28:
    if ((*&v10 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 19) = self->_servingCellBeamInfoCellRsrqDetails;
  *(v6 + 31) |= 0x4000u;
  v10 = self->_has;
  if ((*&v10 & 0x40) == 0)
  {
LABEL_29:
    if ((*&v10 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    *(v6 + 27) = self->_timeDefer;
    *(v6 + 31) |= 0x400000u;
    if ((*&self->_has & 0x80000) == 0)
    {
      return v6;
    }

    goto LABEL_31;
  }

LABEL_59:
  *(v6 + 9) = self->_mtplDbm10;
  *(v6 + 31) |= 0x40u;
  v10 = self->_has;
  if ((*&v10 & 0x400000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((*&v10 & 0x80000) != 0)
  {
LABEL_31:
    *(v6 + 24) = self->_sftToCellDelay;
    *(v6 + 31) |= 0x80000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_162;
  }

  has = self->_has;
  v6 = *(equalCopy + 31);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_162;
    }
  }

  else if (v6)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_subsId != *(equalCopy + 26))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_numSubs != *(equalCopy + 11))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_numAttempt != *(equalCopy + 10))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_ssbId != *(equalCopy + 25))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_csiRsId != *(equalCopy + 5))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_lastTxPower != *(equalCopy + 8))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_accbState != *(equalCopy + 4))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_txPowerDiff != *(equalCopy + 28))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_freqBandInd != *(equalCopy + 7))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_162;
    }

    v9 = *(equalCopy + 123);
    if (self->_isPowerLimited)
    {
      if ((*(equalCopy + 123) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else if (*(equalCopy + 123))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_162;
    }

    v10 = *(equalCopy + 122);
    if (self->_isNrHst)
    {
      if ((*(equalCopy + 122) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else if (*(equalCopy + 122))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_162;
    }

    v11 = *(equalCopy + 121);
    if (self->_isLteHst)
    {
      if ((*(equalCopy + 121) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else if (*(equalCopy + 121))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_162;
    }

    v12 = *(equalCopy + 120);
    if (self->_isDataPreferred)
    {
      if ((*(equalCopy + 120) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else if (*(equalCopy + 120))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_162;
  }

  plmn = self->_plmn;
  if (!(plmn | *(equalCopy + 6)))
  {
    goto LABEL_63;
  }

  if (![(NSData *)plmn isEqual:?])
  {
LABEL_162:
    v13 = 0;
    goto LABEL_163;
  }

  has = self->_has;
LABEL_63:
  v8 = *(equalCopy + 31);
  if ((*&has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_servingCellBeamInfoSsbIndex != *(equalCopy + 23))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_servingCellBeamInfoRxBeamId0 != *(equalCopy + 21))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_servingCellBeamInfoRxBeamId1 != *(equalCopy + 22))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_servingCellBeamInfoNumDetectedTxBeams != *(equalCopy + 20))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_rachResultDetails != *(equalCopy + 16))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_rachContentionDetails != *(equalCopy + 14))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_rachReasonDetails != *(equalCopy + 15))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v8 & 0x1000000) == 0 || self->_txPowerDiffDetails != *(equalCopy + 29))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_dcModeDetails != *(equalCopy + 6))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || self->_servingCellBeamInfoAntennaPanelIndexDetails != *(equalCopy + 17))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_servingCellBeamInfoCellRsrpDetails != *(equalCopy + 18))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0 || self->_servingCellBeamInfoCellRsrqDetails != *(equalCopy + 19))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_mtplDbm10 != *(equalCopy + 9))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0 || self->_timeDefer != *(equalCopy + 27))
    {
      goto LABEL_162;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_sftToCellDelay != *(equalCopy + 24))
    {
      goto LABEL_162;
    }

    v13 = 1;
  }

  else
  {
    v13 = (v8 & 0x80000) == 0;
  }

LABEL_163:

  return v13;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v35 = 2654435761u * self->_timestamp;
    if ((*&has & 0x200000) != 0)
    {
LABEL_3:
      v34 = 2654435761 * self->_subsId;
      if ((*&has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v35 = 0;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_3;
    }
  }

  v34 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_4:
    v33 = 2654435761 * self->_numSubs;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v33 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_5:
    v32 = 2654435761 * self->_numAttempt;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v32 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_6:
    v31 = 2654435761 * self->_ssbId;
    if ((*&has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v31 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_7:
    v30 = 2654435761 * self->_csiRsId;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v30 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_8:
    v29 = 2654435761 * self->_lastTxPower;
    if ((*&has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v29 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_9:
    v4 = 2654435761 * self->_accbState;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_10:
    v5 = 2654435761 * self->_txPowerDiff;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_11:
    v6 = 2654435761 * self->_freqBandInd;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_12:
    v7 = 2654435761 * self->_isPowerLimited;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_13:
    v8 = 2654435761 * self->_isNrHst;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v9 = 0;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_27:
  v8 = 0;
  if ((*&has & 0x4000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v9 = 2654435761 * self->_isLteHst;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_15:
    v10 = 2654435761 * self->_isDataPreferred;
    goto LABEL_30;
  }

LABEL_29:
  v10 = 0;
LABEL_30:
  v11 = [(NSData *)self->_plmn hash];
  v12 = self->_has;
  if ((*&v12 & 0x40000) != 0)
  {
    v13 = 2654435761 * self->_servingCellBeamInfoSsbIndex;
    if ((*&v12 & 0x10000) != 0)
    {
LABEL_32:
      v14 = 2654435761 * self->_servingCellBeamInfoRxBeamId0;
      if ((*&v12 & 0x20000) != 0)
      {
        goto LABEL_33;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x10000) != 0)
    {
      goto LABEL_32;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x20000) != 0)
  {
LABEL_33:
    v15 = 2654435761 * self->_servingCellBeamInfoRxBeamId1;
    if ((*&v12 & 0x8000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_49;
  }

LABEL_48:
  v15 = 0;
  if ((*&v12 & 0x8000) != 0)
  {
LABEL_34:
    v16 = 2654435761 * self->_servingCellBeamInfoNumDetectedTxBeams;
    if ((*&v12 & 0x800) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

LABEL_49:
  v16 = 0;
  if ((*&v12 & 0x800) != 0)
  {
LABEL_35:
    v17 = 2654435761 * self->_rachResultDetails;
    if ((*&v12 & 0x200) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_51;
  }

LABEL_50:
  v17 = 0;
  if ((*&v12 & 0x200) != 0)
  {
LABEL_36:
    v18 = 2654435761 * self->_rachContentionDetails;
    if ((*&v12 & 0x400) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_52;
  }

LABEL_51:
  v18 = 0;
  if ((*&v12 & 0x400) != 0)
  {
LABEL_37:
    v19 = 2654435761 * self->_rachReasonDetails;
    if ((*&v12 & 0x1000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_53;
  }

LABEL_52:
  v19 = 0;
  if ((*&v12 & 0x1000000) != 0)
  {
LABEL_38:
    v20 = 2654435761 * self->_txPowerDiffDetails;
    if ((*&v12 & 8) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_54;
  }

LABEL_53:
  v20 = 0;
  if ((*&v12 & 8) != 0)
  {
LABEL_39:
    v21 = 2654435761 * self->_dcModeDetails;
    if ((*&v12 & 0x1000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_55;
  }

LABEL_54:
  v21 = 0;
  if ((*&v12 & 0x1000) != 0)
  {
LABEL_40:
    v22 = 2654435761 * self->_servingCellBeamInfoAntennaPanelIndexDetails;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_56;
  }

LABEL_55:
  v22 = 0;
  if ((*&v12 & 0x2000) != 0)
  {
LABEL_41:
    v23 = 2654435761 * self->_servingCellBeamInfoCellRsrpDetails;
    if ((*&v12 & 0x4000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_57;
  }

LABEL_56:
  v23 = 0;
  if ((*&v12 & 0x4000) != 0)
  {
LABEL_42:
    v24 = 2654435761 * self->_servingCellBeamInfoCellRsrqDetails;
    if ((*&v12 & 0x40) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_58;
  }

LABEL_57:
  v24 = 0;
  if ((*&v12 & 0x40) != 0)
  {
LABEL_43:
    v25 = 2654435761 * self->_mtplDbm10;
    if ((*&v12 & 0x400000) != 0)
    {
      goto LABEL_44;
    }

LABEL_59:
    v26 = 0;
    if ((*&v12 & 0x80000) != 0)
    {
      goto LABEL_45;
    }

LABEL_60:
    v27 = 0;
    return v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v11 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
  }

LABEL_58:
  v25 = 0;
  if ((*&v12 & 0x400000) == 0)
  {
    goto LABEL_59;
  }

LABEL_44:
  v26 = 2654435761 * self->_timeDefer;
  if ((*&v12 & 0x80000) == 0)
  {
    goto LABEL_60;
  }

LABEL_45:
  v27 = 2654435761 * self->_sftToCellDelay;
  return v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v11 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 31);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 31);
    if ((v5 & 0x200000) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(fromCopy + 26);
  *&self->_has |= 0x200000u;
  v5 = *(fromCopy + 31);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_numSubs = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 31);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_numAttempt = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 31);
  if ((v5 & 0x100000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_ssbId = *(fromCopy + 25);
  *&self->_has |= 0x100000u;
  v5 = *(fromCopy + 31);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_csiRsId = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 31);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_lastTxPower = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 31);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_accbState = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 31);
  if ((v5 & 0x800000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_txPowerDiff = *(fromCopy + 28);
  *&self->_has |= 0x800000u;
  v5 = *(fromCopy + 31);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_freqBandInd = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 31);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_isPowerLimited = *(fromCopy + 123);
  *&self->_has |= 0x10000000u;
  v5 = *(fromCopy + 31);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_isNrHst = *(fromCopy + 122);
  *&self->_has |= 0x8000000u;
  v5 = *(fromCopy + 31);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_49:
  self->_isLteHst = *(fromCopy + 121);
  *&self->_has |= 0x4000000u;
  if ((*(fromCopy + 31) & 0x2000000) != 0)
  {
LABEL_15:
    self->_isDataPreferred = *(fromCopy + 120);
    *&self->_has |= 0x2000000u;
  }

LABEL_16:
  if (*(fromCopy + 6))
  {
    v7 = fromCopy;
    [(KCellularNrRachAttempt *)self setPlmn:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 31);
  if ((v6 & 0x40000) != 0)
  {
    self->_servingCellBeamInfoSsbIndex = *(fromCopy + 23);
    *&self->_has |= 0x40000u;
    v6 = *(fromCopy + 31);
    if ((v6 & 0x10000) == 0)
    {
LABEL_20:
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_53;
    }
  }

  else if ((v6 & 0x10000) == 0)
  {
    goto LABEL_20;
  }

  self->_servingCellBeamInfoRxBeamId0 = *(fromCopy + 21);
  *&self->_has |= 0x10000u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x20000) == 0)
  {
LABEL_21:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_servingCellBeamInfoRxBeamId1 = *(fromCopy + 22);
  *&self->_has |= 0x20000u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x8000) == 0)
  {
LABEL_22:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_servingCellBeamInfoNumDetectedTxBeams = *(fromCopy + 20);
  *&self->_has |= 0x8000u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x800) == 0)
  {
LABEL_23:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_rachResultDetails = *(fromCopy + 16);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x200) == 0)
  {
LABEL_24:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_rachContentionDetails = *(fromCopy + 14);
  *&self->_has |= 0x200u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x400) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_rachReasonDetails = *(fromCopy + 15);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_txPowerDiffDetails = *(fromCopy + 29);
  *&self->_has |= 0x1000000u;
  v6 = *(fromCopy + 31);
  if ((v6 & 8) == 0)
  {
LABEL_27:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_dcModeDetails = *(fromCopy + 6);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x1000) == 0)
  {
LABEL_28:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_servingCellBeamInfoAntennaPanelIndexDetails = *(fromCopy + 17);
  *&self->_has |= 0x1000u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x2000) == 0)
  {
LABEL_29:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_servingCellBeamInfoCellRsrpDetails = *(fromCopy + 18);
  *&self->_has |= 0x2000u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x4000) == 0)
  {
LABEL_30:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_servingCellBeamInfoCellRsrqDetails = *(fromCopy + 19);
  *&self->_has |= 0x4000u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x40) == 0)
  {
LABEL_31:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_mtplDbm10 = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v6 = *(fromCopy + 31);
  if ((v6 & 0x400000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_64:
  self->_timeDefer = *(fromCopy + 27);
  *&self->_has |= 0x400000u;
  if ((*(fromCopy + 31) & 0x80000) != 0)
  {
LABEL_33:
    self->_sftToCellDelay = *(fromCopy + 24);
    *&self->_has |= 0x80000u;
  }

LABEL_34:
}

@end