@interface KCellularLteNrConnectionStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConfiguredUlGrantPeriodicity:(id)periodicity;
- (int)StringAsConfiguredUlGrantRepK:(id)k;
- (int)StringAsConfiguredUlGrantType:(id)type;
- (int)StringAsDeployment:(id)deployment;
- (int)StringAsEstablishmentCause:(id)cause;
- (int)StringAsEstablishmentProcedure:(id)procedure;
- (int)StringAsFlushReason:(id)reason;
- (int)StringAsMcgDuplexMode:(id)mode;
- (int)StringAsPreviousDeployment:(id)deployment;
- (int)StringAsPreviousFlushReason:(id)reason;
- (int)StringAsScgDuplexMode:(id)mode;
- (int)configuredUlGrantPeriodicity;
- (int)configuredUlGrantRepK;
- (int)configuredUlGrantType;
- (int)deployment;
- (int)establishmentCause;
- (int)establishmentProcedure;
- (int)flushReason;
- (int)mcgDuplexMode;
- (int)previousDeployment;
- (int)previousFlushReason;
- (int)scgDuplexMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConfiguredUlGrantActivatedDurationMs:(BOOL)ms;
- (void)setHasConfiguredUlGrantConfigDurationMs:(BOOL)ms;
- (void)setHasConfiguredUlGrantMcs:(BOOL)mcs;
- (void)setHasConfiguredUlGrantNofHarqProcesses:(BOOL)processes;
- (void)setHasConfiguredUlGrantPeriodicity:(BOOL)periodicity;
- (void)setHasConfiguredUlGrantRepK:(BOOL)k;
- (void)setHasConfiguredUlGrantTbs:(BOOL)tbs;
- (void)setHasConfiguredUlGrantType:(BOOL)type;
- (void)setHasDeployment:(BOOL)deployment;
- (void)setHasDlMcgScheduledPeakTput:(BOOL)tput;
- (void)setHasDlScgScheduledPeakTput:(BOOL)tput;
- (void)setHasDlTotalScheduledPeakTput:(BOOL)tput;
- (void)setHasDurationOfConnection:(BOOL)connection;
- (void)setHasEnergyPerBit:(BOOL)bit;
- (void)setHasEnergyPerBitDl:(BOOL)dl;
- (void)setHasEnergyPerBitUl:(BOOL)ul;
- (void)setHasEstablishmentCause:(BOOL)cause;
- (void)setHasEstablishmentProcedure:(BOOL)procedure;
- (void)setHasFlushReason:(BOOL)reason;
- (void)setHasHasConfiguredUlGrant:(BOOL)grant;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasIsGfnwPlmn:(BOOL)plmn;
- (void)setHasIsMcgHandover:(BOOL)handover;
- (void)setHasIsNetworkSliceEnabled:(BOOL)enabled;
- (void)setHasIsScgHandover:(BOOL)handover;
- (void)setHasIsVoiceCall:(BOOL)call;
- (void)setHasMcgDuplexMode:(BOOL)mode;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPreviousDeployment:(BOOL)deployment;
- (void)setHasPreviousFlushReason:(BOOL)reason;
- (void)setHasRrcConnectionCount:(BOOL)count;
- (void)setHasScgDuplexMode:(BOOL)mode;
- (void)setHasSegmentOrder:(BOOL)order;
- (void)setHasUlMcgScheduledPeakTput:(BOOL)tput;
- (void)setHasUlScgScheduledPeakTput:(BOOL)tput;
- (void)setHasUlTotalScheduledPeakTput:(BOOL)tput;
- (void)setHasUpperLayerIndication:(BOOL)indication;
- (void)writeTo:(id)to;
@end

@implementation KCellularLteNrConnectionStats

- (void)setHasNumSubs:(BOOL)subs
{
  v3 = 0x200000;
  if (!subs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  v3 = 0x80000000;
  if (!preferred)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (int)deployment
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_deployment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeployment:(BOOL)deployment
{
  v3 = 512;
  if (!deployment)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (int)StringAsDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if ([deploymentCopy isEqualToString:@"DEPLOYMENT_SA"])
  {
    v4 = 0;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_NSA"])
  {
    v4 = 1;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_NRDC"])
  {
    v4 = 2;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_LTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUpperLayerIndication:(BOOL)indication
{
  v3 = 0x2000000000;
  if (!indication)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (int)mcgDuplexMode
{
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    return self->_mcgDuplexMode;
  }

  else
  {
    return 1;
  }
}

- (void)setHasMcgDuplexMode:(BOOL)mode
{
  v3 = 0x100000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (int)StringAsMcgDuplexMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"FDD"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"TDD"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"FDD_TDD"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)scgDuplexMode
{
  if ((*(&self->_has + 3) & 2) != 0)
  {
    return self->_scgDuplexMode;
  }

  else
  {
    return 1;
  }
}

- (void)setHasScgDuplexMode:(BOOL)mode
{
  v3 = 0x2000000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (int)StringAsScgDuplexMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"FDD"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"TDD"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"FDD_TDD"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)establishmentProcedure
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_establishmentProcedure;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEstablishmentProcedure:(BOOL)procedure
{
  v3 = 0x40000;
  if (!procedure)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (int)StringAsEstablishmentProcedure:(id)procedure
{
  procedureCopy = procedure;
  if ([procedureCopy isEqualToString:@"NO_ESTABLISH"])
  {
    v4 = 0;
  }

  else if ([procedureCopy isEqualToString:@"ESTABLISH"])
  {
    v4 = 1;
  }

  else if ([procedureCopy isEqualToString:@"REESTABLISH"])
  {
    v4 = 2;
  }

  else if ([procedureCopy isEqualToString:@"RESUME"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)establishmentCause
{
  if ((*(&self->_has + 2) & 2) != 0)
  {
    return self->_establishmentCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEstablishmentCause:(BOOL)cause
{
  v3 = 0x20000;
  if (!cause)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (int)StringAsEstablishmentCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"EST_CAUSE_INVALID"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_EMERGENCY"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_HIGH_PRIO_ACC"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_MT_ACC"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_MO_SIGNAL"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_MO_DATA"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_DELAY_TOL_ACC"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"LTE_REEST_RECFG_FAIL"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"LTE_REEST_HO_FAIL"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"LTE_REEST_OTHER_FAIL"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_SUCC_MOB_TO_EUTRAN"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_FAIL_NO_RESP_FROM_CELL"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_FAIL_REJ"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_FAIL_CELL_RESEL"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_FAIL_ABORTED"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"LTE_EST_FAIL_CELL_BARRED"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"LTE_REEST_OTHER_FAIL_T310_EXP"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"LTE_REEST_OTHER_FAIL_RND_ACC"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"LTE_REEST_OTHER_FAIL_MAX_RLC_RETX"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"LTE_REEST_OTHER_FAIL_INTEG_CHECK"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"LTE_REEST_OTHER_FAIL_T312_EXP"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"LTE_REEST_ARB_CONN_TXRX_SUSPEND"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_EMERGENCY"])
  {
    v4 = 101;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_HIGH_PRIO_ACC"])
  {
    v4 = 102;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_MT_ACC"])
  {
    v4 = 103;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_MO_SIGNAL"])
  {
    v4 = 104;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_MO_DATA"])
  {
    v4 = 105;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_MO_VOICE_CALL"])
  {
    v4 = 106;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_MO_VIDEO_CALL"])
  {
    v4 = 107;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_MO_SMS"])
  {
    v4 = 108;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_MPS_PRIO_ACC"])
  {
    v4 = 109;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_MCS_PRIO_ACC"])
  {
    v4 = 110;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_RNA_UPDATE"])
  {
    v4 = 111;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_DELAY_TOL_ACC"])
  {
    v4 = 112;
  }

  else if ([causeCopy isEqualToString:@"NR_REEST_RECFG_FAIL"])
  {
    v4 = 113;
  }

  else if ([causeCopy isEqualToString:@"NR_REEST_HO_FAIL"])
  {
    v4 = 114;
  }

  else if ([causeCopy isEqualToString:@"NR_REEST_OTHER_FAIL_INTEG_CHECK"])
  {
    v4 = 115;
  }

  else if ([causeCopy isEqualToString:@"NR_REEST_OTHER_FAIL_RADIO_LINK_FAILURE"])
  {
    v4 = 116;
  }

  else if ([causeCopy isEqualToString:@"NR_REEST_RES_FALLBACK_CONN_SETUP"])
  {
    v4 = 117;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_NO_RESP_FROM_CELL"])
  {
    v4 = 118;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_REJ"])
  {
    v4 = 119;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_CELL_RESEL"])
  {
    v4 = 120;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_INVALID_MSG"])
  {
    v4 = 121;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_ABORTED"])
  {
    v4 = 122;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_CELL_BARRED"])
  {
    v4 = 123;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_CN_PAGING"])
  {
    v4 = 124;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_INTEG_FAILURE"])
  {
    v4 = 125;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_RRC_ERROR"])
  {
    v4 = 126;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_CONN_RESUME"])
  {
    v4 = 127;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_CONN_REMAIN_INACTIVE"])
  {
    v4 = 128;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_FAIL_INVALID_PARAMS"])
  {
    v4 = 129;
  }

  else if ([causeCopy isEqualToString:@"NR_EST_SUCC_MOB_TO_NR"])
  {
    v4 = 130;
  }

  else if ([causeCopy isEqualToString:@"NR_REEST_ARB_CONN_TXRX_SUSPEND"])
  {
    v4 = 131;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_EMERGENCY"])
  {
    v4 = 151;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_HIGH_PRIO_ACC"])
  {
    v4 = 152;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_MT_ACC"])
  {
    v4 = 153;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_MO_SIGNAL"])
  {
    v4 = 154;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_MO_DATA"])
  {
    v4 = 155;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_MO_VOICE_CALL"])
  {
    v4 = 156;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_MO_VIDEO_CALL"])
  {
    v4 = 157;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_MO_SMS"])
  {
    v4 = 158;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_MPS_PRIO_ACC"])
  {
    v4 = 159;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_MCS_PRIO_ACC"])
  {
    v4 = 160;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_RNA_UPDATE"])
  {
    v4 = 161;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_DELAY_TOL_ACC"])
  {
    v4 = 162;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_NO_RESP_FROM_CELL"])
  {
    v4 = 168;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_REJ"])
  {
    v4 = 169;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_CELL_RESEL"])
  {
    v4 = 170;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_INVALID_MSG"])
  {
    v4 = 171;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_ABORTED"])
  {
    v4 = 172;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_CELL_BARRED"])
  {
    v4 = 173;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_CN_PAGING"])
  {
    v4 = 174;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_INTEG_FAILURE"])
  {
    v4 = 175;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_RRC_ERROR"])
  {
    v4 = 176;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_CONN_RESUME"])
  {
    v4 = 177;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_CONN_REMAIN_INACTIVE"])
  {
    v4 = 178;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_FAIL_INVALID_PARAMS"])
  {
    v4 = 179;
  }

  else if ([causeCopy isEqualToString:@"NR_RESUME_SUCC_MOB_TO_NR"])
  {
    v4 = 180;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)flushReason
{
  if ((*(&self->_has + 2) & 8) != 0)
  {
    return self->_flushReason;
  }

  else
  {
    return 1;
  }
}

- (void)setHasFlushReason:(BOOL)reason
{
  v3 = 0x80000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (int)StringAsFlushReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"VoLTE_START"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"VoLTE_END"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"VoNR_START"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"VoNR_END"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"HO"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"MOD"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"RELEASE"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"MAX_STATS"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIsMcgHandover:(BOOL)handover
{
  v3 = 0x200000000;
  if (!handover)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasIsScgHandover:(BOOL)handover
{
  v3 = 0x800000000;
  if (!handover)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasIsVoiceCall:(BOOL)call
{
  v3 = 0x1000000000;
  if (!call)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasSegmentOrder:(BOOL)order
{
  v3 = 0x4000000;
  if (!order)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasDurationOfConnection:(BOOL)connection
{
  v3 = 0x2000;
  if (!connection)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasRrcConnectionCount:(BOOL)count
{
  v3 = 0x1000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (int)previousDeployment
{
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    return self->_previousDeployment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPreviousDeployment:(BOOL)deployment
{
  v3 = 0x400000;
  if (!deployment)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (int)StringAsPreviousDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if ([deploymentCopy isEqualToString:@"DEPLOYMENT_SA"])
  {
    v4 = 0;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_NSA"])
  {
    v4 = 1;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_NRDC"])
  {
    v4 = 2;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_LTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)previousFlushReason
{
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    return self->_previousFlushReason;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPreviousFlushReason:(BOOL)reason
{
  v3 = 0x800000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (int)StringAsPreviousFlushReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"VoLTE_START"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"VoLTE_END"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"VoNR_START"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"VoNR_END"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"HO"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"MOD"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"RELEASE"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"MAX_STATS"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasHasConfiguredUlGrant:(BOOL)grant
{
  v3 = 0x40000000;
  if (!grant)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (int)configuredUlGrantType
{
  if (*(&self->_has + 1))
  {
    return self->_configuredUlGrantType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConfiguredUlGrantType:(BOOL)type
{
  v3 = 256;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (int)StringAsConfiguredUlGrantType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UL_GRANT_INVALID"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"UL_GRANT_TYPE1"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"UL_GRANT_TYPE2"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasConfiguredUlGrantNofHarqProcesses:(BOOL)processes
{
  v3 = 16;
  if (!processes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (int)configuredUlGrantRepK
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_configuredUlGrantRepK;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConfiguredUlGrantRepK:(BOOL)k
{
  v3 = 64;
  if (!k)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (int)StringAsConfiguredUlGrantRepK:(id)k
{
  kCopy = k;
  if ([kCopy isEqualToString:@"GRANT_REPK_N1"])
  {
    v4 = 0;
  }

  else if ([kCopy isEqualToString:@"GRANT_REPK_N2"])
  {
    v4 = 1;
  }

  else if ([kCopy isEqualToString:@"GRANT_REPK_N4"])
  {
    v4 = 2;
  }

  else if ([kCopy isEqualToString:@"GRANT_REPK_N8"])
  {
    v4 = 3;
  }

  else if ([kCopy isEqualToString:@"GRANT_REPK_INVALID"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)configuredUlGrantPeriodicity
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_configuredUlGrantPeriodicity;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConfiguredUlGrantPeriodicity:(BOOL)periodicity
{
  v3 = 32;
  if (!periodicity)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (int)StringAsConfiguredUlGrantPeriodicity:(id)periodicity
{
  periodicityCopy = periodicity;
  if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM2"])
  {
    v4 = 0;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM7"])
  {
    v4 = 1;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM1X14"])
  {
    v4 = 2;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM2X14"])
  {
    v4 = 3;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM4X14"])
  {
    v4 = 4;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM5X14"])
  {
    v4 = 5;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM8X14"])
  {
    v4 = 6;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM10X14"])
  {
    v4 = 7;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM16X14"])
  {
    v4 = 8;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM20X14"])
  {
    v4 = 9;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM32X14"])
  {
    v4 = 10;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM40X14"])
  {
    v4 = 11;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM64X14"])
  {
    v4 = 12;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM80X14"])
  {
    v4 = 13;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM128X14"])
  {
    v4 = 14;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM160X14"])
  {
    v4 = 15;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM256X14"])
  {
    v4 = 16;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM320X14"])
  {
    v4 = 17;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM512X14"])
  {
    v4 = 18;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM640X14"])
  {
    v4 = 19;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM1024X14"])
  {
    v4 = 20;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM1280X14"])
  {
    v4 = 21;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM2560X14"])
  {
    v4 = 22;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM5120X14"])
  {
    v4 = 23;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM6"])
  {
    v4 = 24;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM1X12"])
  {
    v4 = 25;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM2X12"])
  {
    v4 = 26;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM4X12"])
  {
    v4 = 27;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM5X12"])
  {
    v4 = 28;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM8X12"])
  {
    v4 = 29;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM10X12"])
  {
    v4 = 30;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM16X12"])
  {
    v4 = 31;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM20X12"])
  {
    v4 = 32;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM32X12"])
  {
    v4 = 33;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM40X12"])
  {
    v4 = 34;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM64X12"])
  {
    v4 = 35;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM80X12"])
  {
    v4 = 36;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM128X12"])
  {
    v4 = 37;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM160X12"])
  {
    v4 = 38;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM256X12"])
  {
    v4 = 39;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM320X12"])
  {
    v4 = 40;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM512X12"])
  {
    v4 = 41;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM640X12"])
  {
    v4 = 42;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM1280X12"])
  {
    v4 = 43;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_SYM2560X12"])
  {
    v4 = 44;
  }

  else if ([periodicityCopy isEqualToString:@"GRANT_PERIODICITY_INVALID"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasConfiguredUlGrantConfigDurationMs:(BOOL)ms
{
  v3 = 4;
  if (!ms)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasDlMcgScheduledPeakTput:(BOOL)tput
{
  v3 = 1024;
  if (!tput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasDlScgScheduledPeakTput:(BOOL)tput
{
  v3 = 2048;
  if (!tput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasDlTotalScheduledPeakTput:(BOOL)tput
{
  v3 = 4096;
  if (!tput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasUlMcgScheduledPeakTput:(BOOL)tput
{
  v3 = 0x8000000;
  if (!tput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasUlScgScheduledPeakTput:(BOOL)tput
{
  v3 = 0x10000000;
  if (!tput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasUlTotalScheduledPeakTput:(BOOL)tput
{
  v3 = 0x20000000;
  if (!tput)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasEnergyPerBitDl:(BOOL)dl
{
  v3 = 0x8000;
  if (!dl)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasEnergyPerBitUl:(BOOL)ul
{
  v3 = 0x10000;
  if (!ul)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasEnergyPerBit:(BOOL)bit
{
  v3 = 0x4000;
  if (!bit)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasIsNetworkSliceEnabled:(BOOL)enabled
{
  v3 = 0x400000000;
  if (!enabled)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasIsGfnwPlmn:(BOOL)plmn
{
  v3 = &_mh_execute_header;
  if (!plmn)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasConfiguredUlGrantActivatedDurationMs:(BOOL)ms
{
  v3 = 2;
  if (!ms)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasConfiguredUlGrantTbs:(BOOL)tbs
{
  v3 = 128;
  if (!tbs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasConfiguredUlGrantMcs:(BOOL)mcs
{
  v3 = 8;
  if (!mcs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularLteNrConnectionStats;
  v3 = [(KCellularLteNrConnectionStats *)&v7 description];
  dictionaryRepresentation = [(KCellularLteNrConnectionStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x200000) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&has & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  v6 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v6 forKey:@"num_subs"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = [NSNumber numberWithBool:self->_isDataPreferred];
  [v3 setObject:v7 forKey:@"is_data_preferred"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_12:
  deployment = self->_deployment;
  if (deployment < 5 && ((0x17u >> deployment) & 1) != 0)
  {
    v9 = *(&off_100317750 + deployment);
  }

  else
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_deployment];
  }

  [v3 setObject:v9 forKey:@"deployment"];

  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [NSNumber numberWithBool:self->_upperLayerIndication];
  [v3 setObject:v10 forKey:@"upper_layer_indication"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_18:
  v11 = self->_mcgDuplexMode - 1;
  if (v11 >= 3)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_mcgDuplexMode];
  }

  else
  {
    v12 = *(&off_100317718 + v11);
  }

  [v3 setObject:v12 forKey:@"mcg_duplex_mode"];

  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_22:
    v13 = self->_scgDuplexMode - 1;
    if (v13 >= 3)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_scgDuplexMode];
    }

    else
    {
      v14 = *(&off_100317718 + v13);
    }

    [v3 setObject:v14 forKey:@"scg_duplex_mode"];
  }

LABEL_26:
  mcgScgConnStats = self->_mcgScgConnStats;
  if (mcgScgConnStats)
  {
    dictionaryRepresentation = [mcgScgConnStats dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"mcg_scg_conn_stats"];
  }

  mcgConnStats = self->_mcgConnStats;
  if (mcgConnStats)
  {
    dictionaryRepresentation2 = [mcgConnStats dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"mcg_conn_stats"];
  }

  scgConnStats = self->_scgConnStats;
  if (scgConnStats)
  {
    dictionaryRepresentation3 = [scgConnStats dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"scg_conn_stats"];
  }

  v21 = self->_has;
  if ((*&v21 & 0x40000) != 0)
  {
    establishmentProcedure = self->_establishmentProcedure;
    if (establishmentProcedure >= 4)
    {
      v36 = [NSString stringWithFormat:@"(unknown: %i)", self->_establishmentProcedure];
    }

    else
    {
      v36 = *(&off_100317730 + establishmentProcedure);
    }

    [v3 setObject:v36 forKey:@"establishment_procedure"];

    v21 = self->_has;
    if ((*&v21 & 0x20000) == 0)
    {
LABEL_34:
      if ((*&v21 & 0x80000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_166;
    }
  }

  else if ((*&v21 & 0x20000) == 0)
  {
    goto LABEL_34;
  }

  v44 = @"EST_CAUSE_INVALID";
  switch(self->_establishmentCause)
  {
    case 0:
      break;
    case 1:
      v44 = @"LTE_EST_EMERGENCY";
      break;
    case 2:
      v44 = @"LTE_EST_HIGH_PRIO_ACC";
      break;
    case 3:
      v44 = @"LTE_EST_MT_ACC";
      break;
    case 4:
      v44 = @"LTE_EST_MO_SIGNAL";
      break;
    case 5:
      v44 = @"LTE_EST_MO_DATA";
      break;
    case 6:
      v44 = @"LTE_EST_DELAY_TOL_ACC";
      break;
    case 7:
      v44 = @"LTE_REEST_RECFG_FAIL";
      break;
    case 8:
      v44 = @"LTE_REEST_HO_FAIL";
      break;
    case 9:
      v44 = @"LTE_REEST_OTHER_FAIL";
      break;
    case 0xA:
      v44 = @"LTE_EST_SUCC_MOB_TO_EUTRAN";
      break;
    case 0xB:
      v44 = @"LTE_EST_FAIL_NO_RESP_FROM_CELL";
      break;
    case 0xC:
      v44 = @"LTE_EST_FAIL_REJ";
      break;
    case 0xD:
      v44 = @"LTE_EST_FAIL_CELL_RESEL";
      break;
    case 0xE:
      v44 = @"LTE_EST_FAIL_ABORTED";
      break;
    case 0xF:
      v44 = @"LTE_EST_FAIL_CELL_BARRED";
      break;
    case 0x10:
      v44 = @"LTE_REEST_OTHER_FAIL_T310_EXP";
      break;
    case 0x11:
      v44 = @"LTE_REEST_OTHER_FAIL_RND_ACC";
      break;
    case 0x12:
      v44 = @"LTE_REEST_OTHER_FAIL_MAX_RLC_RETX";
      break;
    case 0x13:
      v44 = @"LTE_REEST_OTHER_FAIL_INTEG_CHECK";
      break;
    case 0x14:
      v44 = @"LTE_REEST_OTHER_FAIL_T312_EXP";
      break;
    case 0x15:
      v44 = @"LTE_REEST_ARB_CONN_TXRX_SUSPEND";
      break;
    case 0x65:
      v44 = @"NR_EST_EMERGENCY";
      break;
    case 0x66:
      v44 = @"NR_EST_HIGH_PRIO_ACC";
      break;
    case 0x67:
      v44 = @"NR_EST_MT_ACC";
      break;
    case 0x68:
      v44 = @"NR_EST_MO_SIGNAL";
      break;
    case 0x69:
      v44 = @"NR_EST_MO_DATA";
      break;
    case 0x6A:
      v44 = @"NR_EST_MO_VOICE_CALL";
      break;
    case 0x6B:
      v44 = @"NR_EST_MO_VIDEO_CALL";
      break;
    case 0x6C:
      v44 = @"NR_EST_MO_SMS";
      break;
    case 0x6D:
      v44 = @"NR_EST_MPS_PRIO_ACC";
      break;
    case 0x6E:
      v44 = @"NR_EST_MCS_PRIO_ACC";
      break;
    case 0x6F:
      v44 = @"NR_EST_RNA_UPDATE";
      break;
    case 0x70:
      v44 = @"NR_EST_DELAY_TOL_ACC";
      break;
    case 0x71:
      v44 = @"NR_REEST_RECFG_FAIL";
      break;
    case 0x72:
      v44 = @"NR_REEST_HO_FAIL";
      break;
    case 0x73:
      v44 = @"NR_REEST_OTHER_FAIL_INTEG_CHECK";
      break;
    case 0x74:
      v44 = @"NR_REEST_OTHER_FAIL_RADIO_LINK_FAILURE";
      break;
    case 0x75:
      v44 = @"NR_REEST_RES_FALLBACK_CONN_SETUP";
      break;
    case 0x76:
      v44 = @"NR_EST_FAIL_NO_RESP_FROM_CELL";
      break;
    case 0x77:
      v44 = @"NR_EST_FAIL_REJ";
      break;
    case 0x78:
      v44 = @"NR_EST_FAIL_CELL_RESEL";
      break;
    case 0x79:
      v44 = @"NR_EST_FAIL_INVALID_MSG";
      break;
    case 0x7A:
      v44 = @"NR_EST_FAIL_ABORTED";
      break;
    case 0x7B:
      v44 = @"NR_EST_FAIL_CELL_BARRED";
      break;
    case 0x7C:
      v44 = @"NR_EST_FAIL_CN_PAGING";
      break;
    case 0x7D:
      v44 = @"NR_EST_FAIL_INTEG_FAILURE";
      break;
    case 0x7E:
      v44 = @"NR_EST_FAIL_RRC_ERROR";
      break;
    case 0x7F:
      v44 = @"NR_EST_FAIL_CONN_RESUME";
      break;
    case 0x80:
      v44 = @"NR_EST_FAIL_CONN_REMAIN_INACTIVE";
      break;
    case 0x81:
      v44 = @"NR_EST_FAIL_INVALID_PARAMS";
      break;
    case 0x82:
      v44 = @"NR_EST_SUCC_MOB_TO_NR";
      break;
    case 0x83:
      v44 = @"NR_REEST_ARB_CONN_TXRX_SUSPEND";
      break;
    case 0x97:
      v44 = @"NR_RESUME_EMERGENCY";
      break;
    case 0x98:
      v44 = @"NR_RESUME_HIGH_PRIO_ACC";
      break;
    case 0x99:
      v44 = @"NR_RESUME_MT_ACC";
      break;
    case 0x9A:
      v44 = @"NR_RESUME_MO_SIGNAL";
      break;
    case 0x9B:
      v44 = @"NR_RESUME_MO_DATA";
      break;
    case 0x9C:
      v44 = @"NR_RESUME_MO_VOICE_CALL";
      break;
    case 0x9D:
      v44 = @"NR_RESUME_MO_VIDEO_CALL";
      break;
    case 0x9E:
      v44 = @"NR_RESUME_MO_SMS";
      break;
    case 0x9F:
      v44 = @"NR_RESUME_MPS_PRIO_ACC";
      break;
    case 0xA0:
      v44 = @"NR_RESUME_MCS_PRIO_ACC";
      break;
    case 0xA1:
      v44 = @"NR_RESUME_RNA_UPDATE";
      break;
    case 0xA2:
      v44 = @"NR_RESUME_DELAY_TOL_ACC";
      break;
    case 0xA8:
      v44 = @"NR_RESUME_FAIL_NO_RESP_FROM_CELL";
      break;
    case 0xA9:
      v44 = @"NR_RESUME_FAIL_REJ";
      break;
    case 0xAA:
      v44 = @"NR_RESUME_FAIL_CELL_RESEL";
      break;
    case 0xAB:
      v44 = @"NR_RESUME_FAIL_INVALID_MSG";
      break;
    case 0xAC:
      v44 = @"NR_RESUME_FAIL_ABORTED";
      break;
    case 0xAD:
      v44 = @"NR_RESUME_FAIL_CELL_BARRED";
      break;
    case 0xAE:
      v44 = @"NR_RESUME_FAIL_CN_PAGING";
      break;
    case 0xAF:
      v44 = @"NR_RESUME_FAIL_INTEG_FAILURE";
      break;
    case 0xB0:
      v44 = @"NR_RESUME_FAIL_RRC_ERROR";
      break;
    case 0xB1:
      v44 = @"NR_RESUME_FAIL_CONN_RESUME";
      break;
    case 0xB2:
      v44 = @"NR_RESUME_FAIL_CONN_REMAIN_INACTIVE";
      break;
    case 0xB3:
      v44 = @"NR_RESUME_FAIL_INVALID_PARAMS";
      break;
    case 0xB4:
      v44 = @"NR_RESUME_SUCC_MOB_TO_NR";
      break;
    default:
      v44 = [NSString stringWithFormat:@"(unknown: %i)", self->_establishmentCause];
      break;
  }

  [v3 setObject:v44 forKey:@"establishment_cause"];

  v21 = self->_has;
  if ((*&v21 & 0x80000) == 0)
  {
LABEL_35:
    if ((*&v21 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_170;
  }

LABEL_166:
  v45 = self->_flushReason - 1;
  if (v45 >= 8)
  {
    v46 = [NSString stringWithFormat:@"(unknown: %i)", self->_flushReason];
  }

  else
  {
    v46 = *(&off_100317778 + v45);
  }

  [v3 setObject:v46 forKey:@"flush_reason"];

  v21 = self->_has;
  if ((*&v21 & 0x200000000) == 0)
  {
LABEL_36:
    if ((*&v21 & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_171;
  }

LABEL_170:
  v47 = [NSNumber numberWithBool:self->_isMcgHandover];
  [v3 setObject:v47 forKey:@"is_mcg_handover"];

  v21 = self->_has;
  if ((*&v21 & 0x800000000) == 0)
  {
LABEL_37:
    if ((*&v21 & 0x1000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_172;
  }

LABEL_171:
  v48 = [NSNumber numberWithBool:self->_isScgHandover];
  [v3 setObject:v48 forKey:@"is_scg_handover"];

  v21 = self->_has;
  if ((*&v21 & 0x1000000000) == 0)
  {
LABEL_38:
    if ((*&v21 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_173;
  }

LABEL_172:
  v49 = [NSNumber numberWithBool:self->_isVoiceCall];
  [v3 setObject:v49 forKey:@"is_voice_call"];

  v21 = self->_has;
  if ((*&v21 & 0x4000000) == 0)
  {
LABEL_39:
    if ((*&v21 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_174;
  }

LABEL_173:
  v50 = [NSNumber numberWithUnsignedInt:self->_segmentOrder];
  [v3 setObject:v50 forKey:@"segment_order"];

  v21 = self->_has;
  if ((*&v21 & 0x2000) == 0)
  {
LABEL_40:
    if ((*&v21 & 0x1000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_175;
  }

LABEL_174:
  v51 = [NSNumber numberWithUnsignedInt:self->_durationOfConnection];
  [v3 setObject:v51 forKey:@"duration_of_connection"];

  v21 = self->_has;
  if ((*&v21 & 0x1000000) == 0)
  {
LABEL_41:
    if ((*&v21 & 0x400000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_176;
  }

LABEL_175:
  v52 = [NSNumber numberWithUnsignedInt:self->_rrcConnectionCount];
  [v3 setObject:v52 forKey:@"rrc_connection_count"];

  v21 = self->_has;
  if ((*&v21 & 0x400000) == 0)
  {
LABEL_42:
    if ((*&v21 & 0x800000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_181;
  }

LABEL_176:
  previousDeployment = self->_previousDeployment;
  if (previousDeployment < 5 && ((0x17u >> previousDeployment) & 1) != 0)
  {
    v54 = *(&off_100317750 + previousDeployment);
  }

  else
  {
    v54 = [NSString stringWithFormat:@"(unknown: %i)", self->_previousDeployment];
  }

  [v3 setObject:v54 forKey:@"previous_deployment"];

  v21 = self->_has;
  if ((*&v21 & 0x800000) == 0)
  {
LABEL_43:
    if ((*&v21 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_185;
  }

LABEL_181:
  v55 = self->_previousFlushReason - 1;
  if (v55 >= 8)
  {
    v56 = [NSString stringWithFormat:@"(unknown: %i)", self->_previousFlushReason];
  }

  else
  {
    v56 = *(&off_100317778 + v55);
  }

  [v3 setObject:v56 forKey:@"previous_flush_reason"];

  v21 = self->_has;
  if ((*&v21 & 0x40000000) == 0)
  {
LABEL_44:
    if ((*&v21 & 0x100) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_186;
  }

LABEL_185:
  v57 = [NSNumber numberWithBool:self->_hasConfiguredUlGrant];
  [v3 setObject:v57 forKey:@"has_configured_ul_grant"];

  v21 = self->_has;
  if ((*&v21 & 0x100) == 0)
  {
LABEL_45:
    if ((*&v21 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_190;
  }

LABEL_186:
  configuredUlGrantType = self->_configuredUlGrantType;
  if (configuredUlGrantType >= 3)
  {
    v59 = [NSString stringWithFormat:@"(unknown: %i)", self->_configuredUlGrantType];
  }

  else
  {
    v59 = *(&off_1003177B8 + configuredUlGrantType);
  }

  [v3 setObject:v59 forKey:@"configured_ul_grant_type"];

  v21 = self->_has;
  if ((*&v21 & 0x10) == 0)
  {
LABEL_46:
    if ((*&v21 & 0x40) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_191;
  }

LABEL_190:
  v60 = [NSNumber numberWithUnsignedInt:self->_configuredUlGrantNofHarqProcesses];
  [v3 setObject:v60 forKey:@"configured_ul_grant_nof_harq_processes"];

  v21 = self->_has;
  if ((*&v21 & 0x40) == 0)
  {
LABEL_47:
    if ((*&v21 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_195;
  }

LABEL_191:
  configuredUlGrantRepK = self->_configuredUlGrantRepK;
  if (configuredUlGrantRepK >= 5)
  {
    v62 = [NSString stringWithFormat:@"(unknown: %i)", self->_configuredUlGrantRepK];
  }

  else
  {
    v62 = *(&off_1003177D0 + configuredUlGrantRepK);
  }

  [v3 setObject:v62 forKey:@"configured_ul_grant_repK"];

  v21 = self->_has;
  if ((*&v21 & 0x20) == 0)
  {
LABEL_48:
    if ((*&v21 & 4) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_244;
  }

LABEL_195:
  configuredUlGrantPeriodicity = self->_configuredUlGrantPeriodicity;
  v64 = @"GRANT_PERIODICITY_SYM2";
  switch(configuredUlGrantPeriodicity)
  {
    case 0:
      break;
    case 1:
      v64 = @"GRANT_PERIODICITY_SYM7";
      break;
    case 2:
      v64 = @"GRANT_PERIODICITY_SYM1X14";
      break;
    case 3:
      v64 = @"GRANT_PERIODICITY_SYM2X14";
      break;
    case 4:
      v64 = @"GRANT_PERIODICITY_SYM4X14";
      break;
    case 5:
      v64 = @"GRANT_PERIODICITY_SYM5X14";
      break;
    case 6:
      v64 = @"GRANT_PERIODICITY_SYM8X14";
      break;
    case 7:
      v64 = @"GRANT_PERIODICITY_SYM10X14";
      break;
    case 8:
      v64 = @"GRANT_PERIODICITY_SYM16X14";
      break;
    case 9:
      v64 = @"GRANT_PERIODICITY_SYM20X14";
      break;
    case 10:
      v64 = @"GRANT_PERIODICITY_SYM32X14";
      break;
    case 11:
      v64 = @"GRANT_PERIODICITY_SYM40X14";
      break;
    case 12:
      v64 = @"GRANT_PERIODICITY_SYM64X14";
      break;
    case 13:
      v64 = @"GRANT_PERIODICITY_SYM80X14";
      break;
    case 14:
      v64 = @"GRANT_PERIODICITY_SYM128X14";
      break;
    case 15:
      v64 = @"GRANT_PERIODICITY_SYM160X14";
      break;
    case 16:
      v64 = @"GRANT_PERIODICITY_SYM256X14";
      break;
    case 17:
      v64 = @"GRANT_PERIODICITY_SYM320X14";
      break;
    case 18:
      v64 = @"GRANT_PERIODICITY_SYM512X14";
      break;
    case 19:
      v64 = @"GRANT_PERIODICITY_SYM640X14";
      break;
    case 20:
      v64 = @"GRANT_PERIODICITY_SYM1024X14";
      break;
    case 21:
      v64 = @"GRANT_PERIODICITY_SYM1280X14";
      break;
    case 22:
      v64 = @"GRANT_PERIODICITY_SYM2560X14";
      break;
    case 23:
      v64 = @"GRANT_PERIODICITY_SYM5120X14";
      break;
    case 24:
      v64 = @"GRANT_PERIODICITY_SYM6";
      break;
    case 25:
      v64 = @"GRANT_PERIODICITY_SYM1X12";
      break;
    case 26:
      v64 = @"GRANT_PERIODICITY_SYM2X12";
      break;
    case 27:
      v64 = @"GRANT_PERIODICITY_SYM4X12";
      break;
    case 28:
      v64 = @"GRANT_PERIODICITY_SYM5X12";
      break;
    case 29:
      v64 = @"GRANT_PERIODICITY_SYM8X12";
      break;
    case 30:
      v64 = @"GRANT_PERIODICITY_SYM10X12";
      break;
    case 31:
      v64 = @"GRANT_PERIODICITY_SYM16X12";
      break;
    case 32:
      v64 = @"GRANT_PERIODICITY_SYM20X12";
      break;
    case 33:
      v64 = @"GRANT_PERIODICITY_SYM32X12";
      break;
    case 34:
      v64 = @"GRANT_PERIODICITY_SYM40X12";
      break;
    case 35:
      v64 = @"GRANT_PERIODICITY_SYM64X12";
      break;
    case 36:
      v64 = @"GRANT_PERIODICITY_SYM80X12";
      break;
    case 37:
      v64 = @"GRANT_PERIODICITY_SYM128X12";
      break;
    case 38:
      v64 = @"GRANT_PERIODICITY_SYM160X12";
      break;
    case 39:
      v64 = @"GRANT_PERIODICITY_SYM256X12";
      break;
    case 40:
      v64 = @"GRANT_PERIODICITY_SYM320X12";
      break;
    case 41:
      v64 = @"GRANT_PERIODICITY_SYM512X12";
      break;
    case 42:
      v64 = @"GRANT_PERIODICITY_SYM640X12";
      break;
    case 43:
      v64 = @"GRANT_PERIODICITY_SYM1280X12";
      break;
    case 44:
      v64 = @"GRANT_PERIODICITY_SYM2560X12";
      break;
    default:
      if (configuredUlGrantPeriodicity == 255)
      {
        v64 = @"GRANT_PERIODICITY_INVALID";
      }

      else
      {
        v64 = [NSString stringWithFormat:@"(unknown: %i)", self->_configuredUlGrantPeriodicity];
      }

      break;
  }

  [v3 setObject:v64 forKey:@"configured_ul_grant_periodicity"];

  v21 = self->_has;
  if ((*&v21 & 4) == 0)
  {
LABEL_49:
    if ((*&v21 & 0x400) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_245;
  }

LABEL_244:
  v65 = [NSNumber numberWithUnsignedInt:self->_configuredUlGrantConfigDurationMs];
  [v3 setObject:v65 forKey:@"configured_ul_grant_config_duration_ms"];

  v21 = self->_has;
  if ((*&v21 & 0x400) == 0)
  {
LABEL_50:
    if ((*&v21 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_246;
  }

LABEL_245:
  v66 = [NSNumber numberWithUnsignedInt:self->_dlMcgScheduledPeakTput];
  [v3 setObject:v66 forKey:@"dl_mcg_scheduled_peak_tput"];

  v21 = self->_has;
  if ((*&v21 & 0x800) == 0)
  {
LABEL_51:
    if ((*&v21 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_247;
  }

LABEL_246:
  v67 = [NSNumber numberWithUnsignedInt:self->_dlScgScheduledPeakTput];
  [v3 setObject:v67 forKey:@"dl_scg_scheduled_peak_tput"];

  v21 = self->_has;
  if ((*&v21 & 0x1000) == 0)
  {
LABEL_52:
    if ((*&v21 & 0x8000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_248;
  }

LABEL_247:
  v68 = [NSNumber numberWithUnsignedInt:self->_dlTotalScheduledPeakTput];
  [v3 setObject:v68 forKey:@"dl_total_scheduled_peak_tput"];

  v21 = self->_has;
  if ((*&v21 & 0x8000000) == 0)
  {
LABEL_53:
    if ((*&v21 & 0x10000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_249;
  }

LABEL_248:
  v69 = [NSNumber numberWithUnsignedInt:self->_ulMcgScheduledPeakTput];
  [v3 setObject:v69 forKey:@"ul_mcg_scheduled_peak_tput"];

  v21 = self->_has;
  if ((*&v21 & 0x10000000) == 0)
  {
LABEL_54:
    if ((*&v21 & 0x20000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_249:
  v70 = [NSNumber numberWithUnsignedInt:self->_ulScgScheduledPeakTput];
  [v3 setObject:v70 forKey:@"ul_scg_scheduled_peak_tput"];

  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_55:
    v22 = [NSNumber numberWithUnsignedInt:self->_ulTotalScheduledPeakTput];
    [v3 setObject:v22 forKey:@"ul_total_scheduled_peak_tput"];
  }

LABEL_56:
  bbPmic = self->_bbPmic;
  if (bbPmic)
  {
    dictionaryRepresentation4 = [(ComponentPowerStats *)bbPmic dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"bb_pmic"];
  }

  et1 = self->_et1;
  if (et1)
  {
    dictionaryRepresentation5 = [(ComponentPowerStats *)et1 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"et1"];
  }

  et2 = self->_et2;
  if (et2)
  {
    dictionaryRepresentation6 = [(ComponentPowerStats *)et2 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation6 forKey:@"et2"];
  }

  overall = self->_overall;
  if (overall)
  {
    dictionaryRepresentation7 = [(ComponentPowerStats *)overall dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation7 forKey:@"overall"];
  }

  v31 = self->_has;
  if ((*&v31 & 0x8000) != 0)
  {
    v37 = [NSNumber numberWithUnsignedInt:self->_energyPerBitDl];
    [v3 setObject:v37 forKey:@"energy_per_bit_dl"];

    v31 = self->_has;
    if ((*&v31 & 0x10000) == 0)
    {
LABEL_66:
      if ((*&v31 & 0x4000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_78;
    }
  }

  else if ((*&v31 & 0x10000) == 0)
  {
    goto LABEL_66;
  }

  v38 = [NSNumber numberWithUnsignedInt:self->_energyPerBitUl];
  [v3 setObject:v38 forKey:@"energy_per_bit_ul"];

  v31 = self->_has;
  if ((*&v31 & 0x4000) == 0)
  {
LABEL_67:
    if ((*&v31 & 0x400000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = [NSNumber numberWithUnsignedInt:self->_energyPerBit];
  [v3 setObject:v39 forKey:@"energy_per_bit"];

  v31 = self->_has;
  if ((*&v31 & 0x400000000) == 0)
  {
LABEL_68:
    if ((*&v31 & 0x100000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = [NSNumber numberWithBool:self->_isNetworkSliceEnabled];
  [v3 setObject:v40 forKey:@"is_network_slice_enabled"];

  v31 = self->_has;
  if ((*&v31 & 0x100000000) == 0)
  {
LABEL_69:
    if ((*&v31 & 2) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = [NSNumber numberWithBool:self->_isGfnwPlmn];
  [v3 setObject:v41 forKey:@"is_gfnw_plmn"];

  v31 = self->_has;
  if ((*&v31 & 2) == 0)
  {
LABEL_70:
    if ((*&v31 & 0x80) == 0)
    {
      goto LABEL_71;
    }

LABEL_82:
    v43 = [NSNumber numberWithUnsignedInt:self->_configuredUlGrantTbs];
    [v3 setObject:v43 forKey:@"configured_ul_grant_tbs"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_81:
  v42 = [NSNumber numberWithUnsignedInt:self->_configuredUlGrantActivatedDurationMs];
  [v3 setObject:v42 forKey:@"configured_ul_grant_activated_duration_ms"];

  v31 = self->_has;
  if ((*&v31 & 0x80) != 0)
  {
    goto LABEL_82;
  }

LABEL_71:
  if ((*&v31 & 8) != 0)
  {
LABEL_72:
    v32 = [NSNumber numberWithUnsignedInt:self->_configuredUlGrantMcs];
    [v3 setObject:v32 forKey:@"configured_ul_grant_mcs"];
  }

LABEL_73:
  v33 = v3;

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
      if ((*&has & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_61;
    }
  }

  else if ((*&has & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

LABEL_61:
  isDataPreferred = self->_isDataPreferred;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_63;
  }

LABEL_62:
  deployment = self->_deployment;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_63:
  upperLayerIndication = self->_upperLayerIndication;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_64:
  mcgDuplexMode = self->_mcgDuplexMode;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_8:
    scgDuplexMode = self->_scgDuplexMode;
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
  if (self->_mcgScgConnStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_mcgConnStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_scgConnStats)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((*&v6 & 0x40000) != 0)
  {
    establishmentProcedure = self->_establishmentProcedure;
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
    if ((*&v6 & 0x20000) == 0)
    {
LABEL_17:
      if ((*&v6 & 0x80000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_68;
    }
  }

  else if ((*&v6 & 0x20000) == 0)
  {
    goto LABEL_17;
  }

  establishmentCause = self->_establishmentCause;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x200000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  flushReason = self->_flushReason;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x200000000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x800000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  isMcgHandover = self->_isMcgHandover;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x800000000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x1000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  isScgHandover = self->_isScgHandover;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x1000000000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  isVoiceCall = self->_isVoiceCall;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  segmentOrder = self->_segmentOrder;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  durationOfConnection = self->_durationOfConnection;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  rrcConnectionCount = self->_rrcConnectionCount;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  previousDeployment = self->_previousDeployment;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  previousFlushReason = self->_previousFlushReason;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40000000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  hasConfiguredUlGrant = self->_hasConfiguredUlGrant;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  configuredUlGrantType = self->_configuredUlGrantType;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_79:
  configuredUlGrantNofHarqProcesses = self->_configuredUlGrantNofHarqProcesses;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_81;
  }

LABEL_80:
  configuredUlGrantRepK = self->_configuredUlGrantRepK;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_31:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_82;
  }

LABEL_81:
  configuredUlGrantPeriodicity = self->_configuredUlGrantPeriodicity;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_82:
  configuredUlGrantConfigDurationMs = self->_configuredUlGrantConfigDurationMs;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_84;
  }

LABEL_83:
  dlMcgScheduledPeakTput = self->_dlMcgScheduledPeakTput;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_85;
  }

LABEL_84:
  dlScgScheduledPeakTput = self->_dlScgScheduledPeakTput;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_86;
  }

LABEL_85:
  dlTotalScheduledPeakTput = self->_dlTotalScheduledPeakTput;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_87;
  }

LABEL_86:
  ulMcgScheduledPeakTput = self->_ulMcgScheduledPeakTput;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x10000000) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_87:
  ulScgScheduledPeakTput = self->_ulScgScheduledPeakTput;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_38:
    ulTotalScheduledPeakTput = self->_ulTotalScheduledPeakTput;
    PBDataWriterWriteUint32Field();
  }

LABEL_39:
  if (self->_bbPmic)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_et1)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_et2)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_overall)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = self->_has;
  if ((*&v8 & 0x8000) != 0)
  {
    energyPerBitDl = self->_energyPerBitDl;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((*&v8 & 0x10000) == 0)
    {
LABEL_49:
      if ((*&v8 & 0x4000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_91;
    }
  }

  else if ((*&v8 & 0x10000) == 0)
  {
    goto LABEL_49;
  }

  energyPerBitUl = self->_energyPerBitUl;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_50:
    if ((*&v8 & 0x400000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_92;
  }

LABEL_91:
  energyPerBit = self->_energyPerBit;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x400000000) == 0)
  {
LABEL_51:
    if ((*&v8 & 0x100000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_93;
  }

LABEL_92:
  isNetworkSliceEnabled = self->_isNetworkSliceEnabled;
  PBDataWriterWriteBOOLField();
  v8 = self->_has;
  if ((*&v8 & 0x100000000) == 0)
  {
LABEL_52:
    if ((*&v8 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_94;
  }

LABEL_93:
  isGfnwPlmn = self->_isGfnwPlmn;
  PBDataWriterWriteBOOLField();
  v8 = self->_has;
  if ((*&v8 & 2) == 0)
  {
LABEL_53:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_95;
  }

LABEL_94:
  configuredUlGrantActivatedDurationMs = self->_configuredUlGrantActivatedDurationMs;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_54:
    if ((*&v8 & 8) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_95:
  configuredUlGrantTbs = self->_configuredUlGrantTbs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_55:
    configuredUlGrantMcs = self->_configuredUlGrantMcs;
    PBDataWriterWriteUint32Field();
  }

LABEL_56:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 212) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x200000) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_61;
    }
  }

  else if ((*&has & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 36) = self->_numSubs;
  *(toCopy + 212) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(toCopy + 205) = self->_isDataPreferred;
  *(toCopy + 212) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(toCopy + 14) = self->_deployment;
  *(toCopy + 212) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(toCopy + 211) = self->_upperLayerIndication;
  *(toCopy + 212) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_64:
  *(toCopy + 32) = self->_mcgDuplexMode;
  *(toCopy + 212) |= 0x100000uLL;
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_8:
    *(toCopy + 46) = self->_scgDuplexMode;
    *(toCopy + 212) |= 0x2000000uLL;
  }

LABEL_9:
  v8 = toCopy;
  if (self->_mcgScgConnStats)
  {
    [toCopy setMcgScgConnStats:?];
    toCopy = v8;
  }

  if (self->_mcgConnStats)
  {
    [v8 setMcgConnStats:?];
    toCopy = v8;
  }

  if (self->_scgConnStats)
  {
    [v8 setScgConnStats:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((*&v6 & 0x40000) != 0)
  {
    *(toCopy + 23) = self->_establishmentProcedure;
    *(toCopy + 212) |= 0x40000uLL;
    v6 = self->_has;
    if ((*&v6 & 0x20000) == 0)
    {
LABEL_17:
      if ((*&v6 & 0x80000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_68;
    }
  }

  else if ((*&v6 & 0x20000) == 0)
  {
    goto LABEL_17;
  }

  *(toCopy + 22) = self->_establishmentCause;
  *(toCopy + 212) |= 0x20000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x200000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(toCopy + 28) = self->_flushReason;
  *(toCopy + 212) |= 0x80000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200000000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x800000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(toCopy + 207) = self->_isMcgHandover;
  *(toCopy + 212) |= 0x200000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800000000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x1000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(toCopy + 209) = self->_isScgHandover;
  *(toCopy + 212) |= 0x800000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000000000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(toCopy + 210) = self->_isVoiceCall;
  *(toCopy + 212) |= 0x1000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(toCopy + 47) = self->_segmentOrder;
  *(toCopy + 212) |= 0x4000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(toCopy + 18) = self->_durationOfConnection;
  *(toCopy + 212) |= 0x2000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(toCopy + 42) = self->_rrcConnectionCount;
  *(toCopy + 212) |= 0x1000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(toCopy + 40) = self->_previousDeployment;
  *(toCopy + 212) |= 0x400000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(toCopy + 41) = self->_previousFlushReason;
  *(toCopy + 212) |= 0x800000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40000000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(toCopy + 204) = self->_hasConfiguredUlGrant;
  *(toCopy + 212) |= 0x40000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(toCopy + 13) = self->_configuredUlGrantType;
  *(toCopy + 212) |= 0x100uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(toCopy + 9) = self->_configuredUlGrantNofHarqProcesses;
  *(toCopy + 212) |= 0x10uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(toCopy + 11) = self->_configuredUlGrantRepK;
  *(toCopy + 212) |= 0x40uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_31:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(toCopy + 10) = self->_configuredUlGrantPeriodicity;
  *(toCopy + 212) |= 0x20uLL;
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(toCopy + 7) = self->_configuredUlGrantConfigDurationMs;
  *(toCopy + 212) |= 4uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(toCopy + 15) = self->_dlMcgScheduledPeakTput;
  *(toCopy + 212) |= 0x400uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(toCopy + 16) = self->_dlScgScheduledPeakTput;
  *(toCopy + 212) |= 0x800uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(toCopy + 17) = self->_dlTotalScheduledPeakTput;
  *(toCopy + 212) |= 0x1000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(toCopy + 48) = self->_ulMcgScheduledPeakTput;
  *(toCopy + 212) |= 0x8000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10000000) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_87:
  *(toCopy + 49) = self->_ulScgScheduledPeakTput;
  *(toCopy + 212) |= 0x10000000uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_38:
    *(toCopy + 50) = self->_ulTotalScheduledPeakTput;
    *(toCopy + 212) |= 0x20000000uLL;
  }

LABEL_39:
  if (self->_bbPmic)
  {
    [v8 setBbPmic:?];
    toCopy = v8;
  }

  if (self->_et1)
  {
    [v8 setEt1:?];
    toCopy = v8;
  }

  if (self->_et2)
  {
    [v8 setEt2:?];
    toCopy = v8;
  }

  if (self->_overall)
  {
    [v8 setOverall:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((*&v7 & 0x8000) != 0)
  {
    *(toCopy + 20) = self->_energyPerBitDl;
    *(toCopy + 212) |= 0x8000uLL;
    v7 = self->_has;
    if ((*&v7 & 0x10000) == 0)
    {
LABEL_49:
      if ((*&v7 & 0x4000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_91;
    }
  }

  else if ((*&v7 & 0x10000) == 0)
  {
    goto LABEL_49;
  }

  *(toCopy + 21) = self->_energyPerBitUl;
  *(toCopy + 212) |= 0x10000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_50:
    if ((*&v7 & 0x400000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(toCopy + 19) = self->_energyPerBit;
  *(toCopy + 212) |= 0x4000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x400000000) == 0)
  {
LABEL_51:
    if ((*&v7 & 0x100000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(toCopy + 208) = self->_isNetworkSliceEnabled;
  *(toCopy + 212) |= 0x400000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x100000000) == 0)
  {
LABEL_52:
    if ((*&v7 & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(toCopy + 206) = self->_isGfnwPlmn;
  *(toCopy + 212) |= &_mh_execute_header;
  v7 = self->_has;
  if ((*&v7 & 2) == 0)
  {
LABEL_53:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(toCopy + 6) = self->_configuredUlGrantActivatedDurationMs;
  *(toCopy + 212) |= 2uLL;
  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_54:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_95:
  *(toCopy + 12) = self->_configuredUlGrantTbs;
  *(toCopy + 212) |= 0x80uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_55:
    *(toCopy + 8) = self->_configuredUlGrantMcs;
    *(toCopy + 212) |= 8uLL;
  }

LABEL_56:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 212) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x200000) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 36) = self->_numSubs;
  *(v5 + 212) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 205) = self->_isDataPreferred;
  *(v5 + 212) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 14) = self->_deployment;
  *(v5 + 212) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 211) = self->_upperLayerIndication;
  *(v5 + 212) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_48:
  *(v5 + 32) = self->_mcgDuplexMode;
  *(v5 + 212) |= 0x100000uLL;
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_8:
    *(v5 + 46) = self->_scgDuplexMode;
    *(v5 + 212) |= 0x2000000uLL;
  }

LABEL_9:
  v8 = [self->_mcgScgConnStats copyWithZone:zone];
  v9 = v6[17];
  v6[17] = v8;

  v10 = [self->_mcgConnStats copyWithZone:zone];
  v11 = v6[15];
  v6[15] = v10;

  v12 = [self->_scgConnStats copyWithZone:zone];
  v13 = v6[22];
  v6[22] = v12;

  v14 = self->_has;
  if ((*&v14 & 0x40000) != 0)
  {
    *(v6 + 23) = self->_establishmentProcedure;
    *(v6 + 212) |= 0x40000uLL;
    v14 = self->_has;
    if ((*&v14 & 0x20000) == 0)
    {
LABEL_11:
      if ((*&v14 & 0x80000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v14 & 0x20000) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 22) = self->_establishmentCause;
  *(v6 + 212) |= 0x20000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x80000) == 0)
  {
LABEL_12:
    if ((*&v14 & 0x200000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 28) = self->_flushReason;
  *(v6 + 212) |= 0x80000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x200000000) == 0)
  {
LABEL_13:
    if ((*&v14 & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 207) = self->_isMcgHandover;
  *(v6 + 212) |= 0x200000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x800000000) == 0)
  {
LABEL_14:
    if ((*&v14 & 0x1000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 209) = self->_isScgHandover;
  *(v6 + 212) |= 0x800000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x1000000000) == 0)
  {
LABEL_15:
    if ((*&v14 & 0x4000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 210) = self->_isVoiceCall;
  *(v6 + 212) |= 0x1000000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x4000000) == 0)
  {
LABEL_16:
    if ((*&v14 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 47) = self->_segmentOrder;
  *(v6 + 212) |= 0x4000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x2000) == 0)
  {
LABEL_17:
    if ((*&v14 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 18) = self->_durationOfConnection;
  *(v6 + 212) |= 0x2000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x1000000) == 0)
  {
LABEL_18:
    if ((*&v14 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 42) = self->_rrcConnectionCount;
  *(v6 + 212) |= 0x1000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x400000) == 0)
  {
LABEL_19:
    if ((*&v14 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v6 + 40) = self->_previousDeployment;
  *(v6 + 212) |= 0x400000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x800000) == 0)
  {
LABEL_20:
    if ((*&v14 & 0x40000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v6 + 41) = self->_previousFlushReason;
  *(v6 + 212) |= 0x800000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x40000000) == 0)
  {
LABEL_21:
    if ((*&v14 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v6 + 204) = self->_hasConfiguredUlGrant;
  *(v6 + 212) |= 0x40000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x100) == 0)
  {
LABEL_22:
    if ((*&v14 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v6 + 13) = self->_configuredUlGrantType;
  *(v6 + 212) |= 0x100uLL;
  v14 = self->_has;
  if ((*&v14 & 0x10) == 0)
  {
LABEL_23:
    if ((*&v14 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v6 + 9) = self->_configuredUlGrantNofHarqProcesses;
  *(v6 + 212) |= 0x10uLL;
  v14 = self->_has;
  if ((*&v14 & 0x40) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v6 + 11) = self->_configuredUlGrantRepK;
  *(v6 + 212) |= 0x40uLL;
  v14 = self->_has;
  if ((*&v14 & 0x20) == 0)
  {
LABEL_25:
    if ((*&v14 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v6 + 10) = self->_configuredUlGrantPeriodicity;
  *(v6 + 212) |= 0x20uLL;
  v14 = self->_has;
  if ((*&v14 & 4) == 0)
  {
LABEL_26:
    if ((*&v14 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v6 + 7) = self->_configuredUlGrantConfigDurationMs;
  *(v6 + 212) |= 4uLL;
  v14 = self->_has;
  if ((*&v14 & 0x400) == 0)
  {
LABEL_27:
    if ((*&v14 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v6 + 15) = self->_dlMcgScheduledPeakTput;
  *(v6 + 212) |= 0x400uLL;
  v14 = self->_has;
  if ((*&v14 & 0x800) == 0)
  {
LABEL_28:
    if ((*&v14 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v6 + 16) = self->_dlScgScheduledPeakTput;
  *(v6 + 212) |= 0x800uLL;
  v14 = self->_has;
  if ((*&v14 & 0x1000) == 0)
  {
LABEL_29:
    if ((*&v14 & 0x8000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v6 + 17) = self->_dlTotalScheduledPeakTput;
  *(v6 + 212) |= 0x1000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x8000000) == 0)
  {
LABEL_30:
    if ((*&v14 & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v6 + 48) = self->_ulMcgScheduledPeakTput;
  *(v6 + 212) |= 0x8000000uLL;
  v14 = self->_has;
  if ((*&v14 & 0x10000000) == 0)
  {
LABEL_31:
    if ((*&v14 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_71:
  *(v6 + 49) = self->_ulScgScheduledPeakTput;
  *(v6 + 212) |= 0x10000000uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_32:
    *(v6 + 50) = self->_ulTotalScheduledPeakTput;
    *(v6 + 212) |= 0x20000000uLL;
  }

LABEL_33:
  v15 = [(ComponentPowerStats *)self->_bbPmic copyWithZone:zone];
  v16 = v6[2];
  v6[2] = v15;

  v17 = [(ComponentPowerStats *)self->_et1 copyWithZone:zone];
  v18 = v6[12];
  v6[12] = v17;

  v19 = [(ComponentPowerStats *)self->_et2 copyWithZone:zone];
  v20 = v6[13];
  v6[13] = v19;

  v21 = [(ComponentPowerStats *)self->_overall copyWithZone:zone];
  v22 = v6[19];
  v6[19] = v21;

  v23 = self->_has;
  if ((*&v23 & 0x8000) != 0)
  {
    *(v6 + 20) = self->_energyPerBitDl;
    *(v6 + 212) |= 0x8000uLL;
    v23 = self->_has;
    if ((*&v23 & 0x10000) == 0)
    {
LABEL_35:
      if ((*&v23 & 0x4000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_75;
    }
  }

  else if ((*&v23 & 0x10000) == 0)
  {
    goto LABEL_35;
  }

  *(v6 + 21) = self->_energyPerBitUl;
  *(v6 + 212) |= 0x10000uLL;
  v23 = self->_has;
  if ((*&v23 & 0x4000) == 0)
  {
LABEL_36:
    if ((*&v23 & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v6 + 19) = self->_energyPerBit;
  *(v6 + 212) |= 0x4000uLL;
  v23 = self->_has;
  if ((*&v23 & 0x400000000) == 0)
  {
LABEL_37:
    if ((*&v23 & 0x100000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v6 + 208) = self->_isNetworkSliceEnabled;
  *(v6 + 212) |= 0x400000000uLL;
  v23 = self->_has;
  if ((*&v23 & 0x100000000) == 0)
  {
LABEL_38:
    if ((*&v23 & 2) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v6 + 206) = self->_isGfnwPlmn;
  *(v6 + 212) |= &_mh_execute_header;
  v23 = self->_has;
  if ((*&v23 & 2) == 0)
  {
LABEL_39:
    if ((*&v23 & 0x80) == 0)
    {
      goto LABEL_40;
    }

LABEL_79:
    *(v6 + 12) = self->_configuredUlGrantTbs;
    *(v6 + 212) |= 0x80uLL;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_78:
  *(v6 + 6) = self->_configuredUlGrantActivatedDurationMs;
  *(v6 + 212) |= 2uLL;
  v23 = self->_has;
  if ((*&v23 & 0x80) != 0)
  {
    goto LABEL_79;
  }

LABEL_40:
  if ((*&v23 & 8) != 0)
  {
LABEL_41:
    *(v6 + 8) = self->_configuredUlGrantMcs;
    *(v6 + 212) |= 8uLL;
  }

LABEL_42:
  v24 = v6;

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_230;
  }

  has = self->_has;
  v6 = *(equalCopy + 212);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_230;
    }
  }

  else if (v6)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_numSubs != *(equalCopy + 36))
    {
      goto LABEL_230;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_230;
    }

    v7 = equalCopy[205];
    if (self->_isDataPreferred)
    {
      if ((equalCopy[205] & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (equalCopy[205])
    {
      goto LABEL_230;
    }
  }

  else if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_deployment != *(equalCopy + 14))
    {
      goto LABEL_230;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_230;
    }

    v8 = equalCopy[211];
    if (self->_upperLayerIndication)
    {
      if ((equalCopy[211] & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (equalCopy[211])
    {
      goto LABEL_230;
    }
  }

  else if ((v6 & 0x2000000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_mcgDuplexMode != *(equalCopy + 32))
    {
      goto LABEL_230;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_scgDuplexMode != *(equalCopy + 46))
    {
      goto LABEL_230;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_230;
  }

  mcgScgConnStats = self->_mcgScgConnStats;
  if (mcgScgConnStats | *(equalCopy + 17) && ![mcgScgConnStats isEqual:?])
  {
    goto LABEL_230;
  }

  mcgConnStats = self->_mcgConnStats;
  if (mcgConnStats | *(equalCopy + 15))
  {
    if (![mcgConnStats isEqual:?])
    {
      goto LABEL_230;
    }
  }

  scgConnStats = self->_scgConnStats;
  if (scgConnStats | *(equalCopy + 22))
  {
    if (![scgConnStats isEqual:?])
    {
      goto LABEL_230;
    }
  }

  v12 = self->_has;
  v13 = *(equalCopy + 212);
  if ((*&v12 & 0x40000) != 0)
  {
    if ((v13 & 0x40000) == 0 || self->_establishmentProcedure != *(equalCopy + 23))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x40000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x20000) != 0)
  {
    if ((v13 & 0x20000) == 0 || self->_establishmentCause != *(equalCopy + 22))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x20000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x80000) != 0)
  {
    if ((v13 & 0x80000) == 0 || self->_flushReason != *(equalCopy + 28))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x80000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x200000000) != 0)
  {
    if ((v13 & 0x200000000) == 0)
    {
      goto LABEL_230;
    }

    v14 = equalCopy[207];
    if (self->_isMcgHandover)
    {
      if ((equalCopy[207] & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (equalCopy[207])
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x200000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x800000000) != 0)
  {
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_230;
    }

    v15 = equalCopy[209];
    if (self->_isScgHandover)
    {
      if ((equalCopy[209] & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (equalCopy[209])
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x800000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x1000000000) != 0)
  {
    if ((v13 & 0x1000000000) == 0)
    {
      goto LABEL_230;
    }

    v16 = equalCopy[210];
    if (self->_isVoiceCall)
    {
      if ((equalCopy[210] & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (equalCopy[210])
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x1000000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x4000000) != 0)
  {
    if ((v13 & 0x4000000) == 0 || self->_segmentOrder != *(equalCopy + 47))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x4000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x2000) != 0)
  {
    if ((v13 & 0x2000) == 0 || self->_durationOfConnection != *(equalCopy + 18))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x2000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x1000000) != 0)
  {
    if ((v13 & 0x1000000) == 0 || self->_rrcConnectionCount != *(equalCopy + 42))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x1000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x400000) != 0)
  {
    if ((v13 & 0x400000) == 0 || self->_previousDeployment != *(equalCopy + 40))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x400000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x800000) != 0)
  {
    if ((v13 & 0x800000) == 0 || self->_previousFlushReason != *(equalCopy + 41))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x800000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x40000000) != 0)
  {
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_230;
    }

    v17 = equalCopy[204];
    if (self->_hasConfiguredUlGrant)
    {
      if ((equalCopy[204] & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (equalCopy[204])
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x100) != 0)
  {
    if ((v13 & 0x100) == 0 || self->_configuredUlGrantType != *(equalCopy + 13))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x100) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_configuredUlGrantNofHarqProcesses != *(equalCopy + 9))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x40) != 0)
  {
    if ((v13 & 0x40) == 0 || self->_configuredUlGrantRepK != *(equalCopy + 11))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x40) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0 || self->_configuredUlGrantPeriodicity != *(equalCopy + 10))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x20) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 4) != 0)
  {
    if ((v13 & 4) == 0 || self->_configuredUlGrantConfigDurationMs != *(equalCopy + 7))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 4) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x400) != 0)
  {
    if ((v13 & 0x400) == 0 || self->_dlMcgScheduledPeakTput != *(equalCopy + 15))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x400) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x800) != 0)
  {
    if ((v13 & 0x800) == 0 || self->_dlScgScheduledPeakTput != *(equalCopy + 16))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x800) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x1000) != 0)
  {
    if ((v13 & 0x1000) == 0 || self->_dlTotalScheduledPeakTput != *(equalCopy + 17))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x1000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x8000000) != 0)
  {
    if ((v13 & 0x8000000) == 0 || self->_ulMcgScheduledPeakTput != *(equalCopy + 48))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x8000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x10000000) != 0)
  {
    if ((v13 & 0x10000000) == 0 || self->_ulScgScheduledPeakTput != *(equalCopy + 49))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x10000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v12 & 0x20000000) != 0)
  {
    if ((v13 & 0x20000000) == 0 || self->_ulTotalScheduledPeakTput != *(equalCopy + 50))
    {
      goto LABEL_230;
    }
  }

  else if ((v13 & 0x20000000) != 0)
  {
    goto LABEL_230;
  }

  bbPmic = self->_bbPmic;
  if (bbPmic | *(equalCopy + 2) && ![(ComponentPowerStats *)bbPmic isEqual:?])
  {
    goto LABEL_230;
  }

  et1 = self->_et1;
  if (et1 | *(equalCopy + 12))
  {
    if (![(ComponentPowerStats *)et1 isEqual:?])
    {
      goto LABEL_230;
    }
  }

  et2 = self->_et2;
  if (et2 | *(equalCopy + 13))
  {
    if (![(ComponentPowerStats *)et2 isEqual:?])
    {
      goto LABEL_230;
    }
  }

  overall = self->_overall;
  if (overall | *(equalCopy + 19))
  {
    if (![(ComponentPowerStats *)overall isEqual:?])
    {
      goto LABEL_230;
    }
  }

  v22 = self->_has;
  v23 = *(equalCopy + 212);
  if ((*&v22 & 0x8000) != 0)
  {
    if ((v23 & 0x8000) == 0 || self->_energyPerBitDl != *(equalCopy + 20))
    {
      goto LABEL_230;
    }
  }

  else if ((v23 & 0x8000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v22 & 0x10000) != 0)
  {
    if ((v23 & 0x10000) == 0 || self->_energyPerBitUl != *(equalCopy + 21))
    {
      goto LABEL_230;
    }
  }

  else if ((v23 & 0x10000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v22 & 0x4000) != 0)
  {
    if ((v23 & 0x4000) == 0 || self->_energyPerBit != *(equalCopy + 19))
    {
      goto LABEL_230;
    }
  }

  else if ((v23 & 0x4000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v22 & 0x400000000) != 0)
  {
    if ((v23 & 0x400000000) == 0)
    {
      goto LABEL_230;
    }

    v24 = equalCopy[208];
    if (self->_isNetworkSliceEnabled)
    {
      if ((equalCopy[208] & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (equalCopy[208])
    {
      goto LABEL_230;
    }
  }

  else if ((v23 & 0x400000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v22 & 0x100000000) != 0)
  {
    if ((v23 & 0x100000000) != 0)
    {
      v25 = equalCopy[206];
      if (self->_isGfnwPlmn)
      {
        if ((equalCopy[206] & 1) == 0)
        {
          goto LABEL_230;
        }

        goto LABEL_215;
      }

      if ((equalCopy[206] & 1) == 0)
      {
        goto LABEL_215;
      }
    }

LABEL_230:
    v26 = 0;
    goto LABEL_231;
  }

  if ((v23 & 0x100000000) != 0)
  {
    goto LABEL_230;
  }

LABEL_215:
  if ((*&v22 & 2) != 0)
  {
    if ((v23 & 2) == 0 || self->_configuredUlGrantActivatedDurationMs != *(equalCopy + 6))
    {
      goto LABEL_230;
    }
  }

  else if ((v23 & 2) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v22 & 0x80) != 0)
  {
    if ((v23 & 0x80) == 0 || self->_configuredUlGrantTbs != *(equalCopy + 12))
    {
      goto LABEL_230;
    }
  }

  else if ((v23 & 0x80) != 0)
  {
    goto LABEL_230;
  }

  if ((*&v22 & 8) != 0)
  {
    if ((v23 & 8) == 0 || self->_configuredUlGrantMcs != *(equalCopy + 8))
    {
      goto LABEL_230;
    }

    v26 = 1;
  }

  else
  {
    v26 = (*(equalCopy + 212) & 8) == 0;
  }

LABEL_231:

  return v26;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v52 = 2654435761u * self->_timestamp;
    if ((*&has & 0x200000) != 0)
    {
LABEL_3:
      v51 = 2654435761 * self->_numSubs;
      if ((*&has & 0x80000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v52 = 0;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_3;
    }
  }

  v51 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_4:
    v50 = 2654435761 * self->_isDataPreferred;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v50 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_5:
    v49 = 2654435761 * self->_deployment;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v49 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_6:
    v48 = 2654435761 * self->_upperLayerIndication;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v47 = 0;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v48 = 0;
  if ((*&has & 0x100000) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v47 = 2654435761 * self->_mcgDuplexMode;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_8:
    v46 = 2654435761 * self->_scgDuplexMode;
    goto LABEL_16;
  }

LABEL_15:
  v46 = 0;
LABEL_16:
  v45 = [self->_mcgScgConnStats hash];
  v44 = [self->_mcgConnStats hash];
  v43 = [self->_scgConnStats hash];
  v4 = self->_has;
  if ((*&v4 & 0x40000) != 0)
  {
    v42 = 2654435761 * self->_establishmentProcedure;
    if ((*&v4 & 0x20000) != 0)
    {
LABEL_18:
      v41 = 2654435761 * self->_establishmentCause;
      if ((*&v4 & 0x80000) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v42 = 0;
    if ((*&v4 & 0x20000) != 0)
    {
      goto LABEL_18;
    }
  }

  v41 = 0;
  if ((*&v4 & 0x80000) != 0)
  {
LABEL_19:
    v40 = 2654435761 * self->_flushReason;
    if ((*&v4 & 0x200000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v40 = 0;
  if ((*&v4 & 0x200000000) != 0)
  {
LABEL_20:
    v39 = 2654435761 * self->_isMcgHandover;
    if ((*&v4 & 0x800000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v39 = 0;
  if ((*&v4 & 0x800000000) != 0)
  {
LABEL_21:
    v38 = 2654435761 * self->_isScgHandover;
    if ((*&v4 & 0x1000000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v38 = 0;
  if ((*&v4 & 0x1000000000) != 0)
  {
LABEL_22:
    v37 = 2654435761 * self->_isVoiceCall;
    if ((*&v4 & 0x4000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  v37 = 0;
  if ((*&v4 & 0x4000000) != 0)
  {
LABEL_23:
    v36 = 2654435761 * self->_segmentOrder;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  v36 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_24:
    v35 = 2654435761 * self->_durationOfConnection;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  v35 = 0;
  if ((*&v4 & 0x1000000) != 0)
  {
LABEL_25:
    v34 = 2654435761 * self->_rrcConnectionCount;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  v34 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_26:
    v33 = 2654435761 * self->_previousDeployment;
    if ((*&v4 & 0x800000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

LABEL_49:
  v33 = 0;
  if ((*&v4 & 0x800000) != 0)
  {
LABEL_27:
    v32 = 2654435761 * self->_previousFlushReason;
    if ((*&v4 & 0x40000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_50:
  v32 = 0;
  if ((*&v4 & 0x40000000) != 0)
  {
LABEL_28:
    v31 = 2654435761 * self->_hasConfiguredUlGrant;
    if ((*&v4 & 0x100) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

LABEL_51:
  v31 = 0;
  if ((*&v4 & 0x100) != 0)
  {
LABEL_29:
    v30 = 2654435761 * self->_configuredUlGrantType;
    if ((*&v4 & 0x10) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_52:
  v30 = 0;
  if ((*&v4 & 0x10) != 0)
  {
LABEL_30:
    v29 = 2654435761 * self->_configuredUlGrantNofHarqProcesses;
    if ((*&v4 & 0x40) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_54;
  }

LABEL_53:
  v29 = 0;
  if ((*&v4 & 0x40) != 0)
  {
LABEL_31:
    v28 = 2654435761 * self->_configuredUlGrantRepK;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_55;
  }

LABEL_54:
  v28 = 0;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_32:
    v27 = 2654435761 * self->_configuredUlGrantPeriodicity;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_56;
  }

LABEL_55:
  v27 = 0;
  if ((*&v4 & 4) != 0)
  {
LABEL_33:
    v26 = 2654435761 * self->_configuredUlGrantConfigDurationMs;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_57;
  }

LABEL_56:
  v26 = 0;
  if ((*&v4 & 0x400) != 0)
  {
LABEL_34:
    v25 = 2654435761 * self->_dlMcgScheduledPeakTput;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_58;
  }

LABEL_57:
  v25 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_35:
    v23 = 2654435761 * self->_dlScgScheduledPeakTput;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_59;
  }

LABEL_58:
  v23 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_36:
    v5 = 2654435761 * self->_dlTotalScheduledPeakTput;
    if ((*&v4 & 0x8000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_60;
  }

LABEL_59:
  v5 = 0;
  if ((*&v4 & 0x8000000) != 0)
  {
LABEL_37:
    v6 = 2654435761 * self->_ulMcgScheduledPeakTput;
    if ((*&v4 & 0x10000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_61:
    v7 = 0;
    if ((*&v4 & 0x20000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_62;
  }

LABEL_60:
  v6 = 0;
  if ((*&v4 & 0x10000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_38:
  v7 = 2654435761 * self->_ulScgScheduledPeakTput;
  if ((*&v4 & 0x20000000) != 0)
  {
LABEL_39:
    v8 = 2654435761 * self->_ulTotalScheduledPeakTput;
    goto LABEL_63;
  }

LABEL_62:
  v8 = 0;
LABEL_63:
  v9 = [(ComponentPowerStats *)self->_bbPmic hash];
  v10 = [(ComponentPowerStats *)self->_et1 hash];
  v11 = [(ComponentPowerStats *)self->_et2 hash];
  v12 = [(ComponentPowerStats *)self->_overall hash];
  v13 = self->_has;
  if ((*&v13 & 0x8000) != 0)
  {
    v14 = 2654435761 * self->_energyPerBitDl;
    if ((*&v13 & 0x10000) != 0)
    {
LABEL_65:
      v15 = 2654435761 * self->_energyPerBitUl;
      if ((*&v13 & 0x4000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_74;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x10000) != 0)
    {
      goto LABEL_65;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x4000) != 0)
  {
LABEL_66:
    v16 = 2654435761 * self->_energyPerBit;
    if ((*&v13 & 0x400000000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_75;
  }

LABEL_74:
  v16 = 0;
  if ((*&v13 & 0x400000000) != 0)
  {
LABEL_67:
    v17 = 2654435761 * self->_isNetworkSliceEnabled;
    if ((*&v13 & 0x100000000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_76;
  }

LABEL_75:
  v17 = 0;
  if ((*&v13 & 0x100000000) != 0)
  {
LABEL_68:
    v18 = 2654435761 * self->_isGfnwPlmn;
    if ((*&v13 & 2) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_77;
  }

LABEL_76:
  v18 = 0;
  if ((*&v13 & 2) != 0)
  {
LABEL_69:
    v19 = 2654435761 * self->_configuredUlGrantActivatedDurationMs;
    if ((*&v13 & 0x80) != 0)
    {
      goto LABEL_70;
    }

LABEL_78:
    v20 = 0;
    if ((*&v13 & 8) != 0)
    {
      goto LABEL_71;
    }

LABEL_79:
    v21 = 0;
    return v51 ^ v52 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
  }

LABEL_77:
  v19 = 0;
  if ((*&v13 & 0x80) == 0)
  {
    goto LABEL_78;
  }

LABEL_70:
  v20 = 2654435761 * self->_configuredUlGrantTbs;
  if ((*&v13 & 8) == 0)
  {
    goto LABEL_79;
  }

LABEL_71:
  v21 = 2654435761 * self->_configuredUlGrantMcs;
  return v51 ^ v52 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 212);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1uLL;
    v6 = *(fromCopy + 212);
    if ((v6 & 0x200000) == 0)
    {
LABEL_3:
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  self->_numSubs = *(fromCopy + 36);
  *&self->_has |= 0x200000uLL;
  v6 = *(fromCopy + 212);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_isDataPreferred = fromCopy[205];
  *&self->_has |= 0x80000000uLL;
  v6 = *(fromCopy + 212);
  if ((v6 & 0x200) == 0)
  {
LABEL_5:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_deployment = *(fromCopy + 14);
  *&self->_has |= 0x200uLL;
  v6 = *(fromCopy + 212);
  if ((v6 & 0x2000000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_upperLayerIndication = fromCopy[211];
  *&self->_has |= 0x2000000000uLL;
  v6 = *(fromCopy + 212);
  if ((v6 & 0x100000) == 0)
  {
LABEL_7:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_mcgDuplexMode = *(fromCopy + 32);
  *&self->_has |= 0x100000uLL;
  if ((*(fromCopy + 212) & 0x2000000) != 0)
  {
LABEL_8:
    self->_scgDuplexMode = *(fromCopy + 46);
    *&self->_has |= 0x2000000uLL;
  }

LABEL_9:
  mcgScgConnStats = self->_mcgScgConnStats;
  v8 = *(v5 + 17);
  v23 = v5;
  if (mcgScgConnStats)
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    [mcgScgConnStats mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    [(KCellularLteNrConnectionStats *)self setMcgScgConnStats:?];
  }

  v5 = v23;
LABEL_22:
  mcgConnStats = self->_mcgConnStats;
  v10 = *(v5 + 15);
  if (mcgConnStats)
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    [mcgConnStats mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    [(KCellularLteNrConnectionStats *)self setMcgConnStats:?];
  }

  v5 = v23;
LABEL_28:
  scgConnStats = self->_scgConnStats;
  v12 = *(v5 + 22);
  if (scgConnStats)
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    [scgConnStats mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    [(KCellularLteNrConnectionStats *)self setScgConnStats:?];
  }

  v5 = v23;
LABEL_34:
  v13 = *(v5 + 212);
  if ((v13 & 0x40000) != 0)
  {
    self->_establishmentProcedure = *(v5 + 23);
    *&self->_has |= 0x40000uLL;
    v13 = *(v5 + 212);
    if ((v13 & 0x20000) == 0)
    {
LABEL_36:
      if ((v13 & 0x80000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  self->_establishmentCause = *(v5 + 22);
  *&self->_has |= 0x20000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x80000) == 0)
  {
LABEL_37:
    if ((v13 & 0x200000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_flushReason = *(v5 + 28);
  *&self->_has |= 0x80000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x200000000) == 0)
  {
LABEL_38:
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_isMcgHandover = v5[207];
  *&self->_has |= 0x200000000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x800000000) == 0)
  {
LABEL_39:
    if ((v13 & 0x1000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_isScgHandover = v5[209];
  *&self->_has |= 0x800000000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x1000000000) == 0)
  {
LABEL_40:
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_isVoiceCall = v5[210];
  *&self->_has |= 0x1000000000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_41:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_segmentOrder = *(v5 + 47);
  *&self->_has |= 0x4000000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x2000) == 0)
  {
LABEL_42:
    if ((v13 & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_durationOfConnection = *(v5 + 18);
  *&self->_has |= 0x2000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x1000000) == 0)
  {
LABEL_43:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_rrcConnectionCount = *(v5 + 42);
  *&self->_has |= 0x1000000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x400000) == 0)
  {
LABEL_44:
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_previousDeployment = *(v5 + 40);
  *&self->_has |= 0x400000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x800000) == 0)
  {
LABEL_45:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_previousFlushReason = *(v5 + 41);
  *&self->_has |= 0x800000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x40000000) == 0)
  {
LABEL_46:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_hasConfiguredUlGrant = v5[204];
  *&self->_has |= 0x40000000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x100) == 0)
  {
LABEL_47:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_configuredUlGrantType = *(v5 + 13);
  *&self->_has |= 0x100uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x10) == 0)
  {
LABEL_48:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_configuredUlGrantNofHarqProcesses = *(v5 + 9);
  *&self->_has |= 0x10uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x40) == 0)
  {
LABEL_49:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_configuredUlGrantRepK = *(v5 + 11);
  *&self->_has |= 0x40uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x20) == 0)
  {
LABEL_50:
    if ((v13 & 4) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_configuredUlGrantPeriodicity = *(v5 + 10);
  *&self->_has |= 0x20uLL;
  v13 = *(v5 + 212);
  if ((v13 & 4) == 0)
  {
LABEL_51:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_configuredUlGrantConfigDurationMs = *(v5 + 7);
  *&self->_has |= 4uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x400) == 0)
  {
LABEL_52:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_dlMcgScheduledPeakTput = *(v5 + 15);
  *&self->_has |= 0x400uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x800) == 0)
  {
LABEL_53:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_dlScgScheduledPeakTput = *(v5 + 16);
  *&self->_has |= 0x800uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x1000) == 0)
  {
LABEL_54:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_dlTotalScheduledPeakTput = *(v5 + 17);
  *&self->_has |= 0x1000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_55:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_ulMcgScheduledPeakTput = *(v5 + 48);
  *&self->_has |= 0x8000000uLL;
  v13 = *(v5 + 212);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_56:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_82:
  self->_ulScgScheduledPeakTput = *(v5 + 49);
  *&self->_has |= 0x10000000uLL;
  if ((*(v5 + 212) & 0x20000000) != 0)
  {
LABEL_57:
    self->_ulTotalScheduledPeakTput = *(v5 + 50);
    *&self->_has |= 0x20000000uLL;
  }

LABEL_58:
  bbPmic = self->_bbPmic;
  v15 = *(v5 + 2);
  if (bbPmic)
  {
    if (!v15)
    {
      goto LABEL_87;
    }

    [(ComponentPowerStats *)bbPmic mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_87;
    }

    [(KCellularLteNrConnectionStats *)self setBbPmic:?];
  }

  v5 = v23;
LABEL_87:
  et1 = self->_et1;
  v17 = *(v5 + 12);
  if (et1)
  {
    if (!v17)
    {
      goto LABEL_93;
    }

    [(ComponentPowerStats *)et1 mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_93;
    }

    [(KCellularLteNrConnectionStats *)self setEt1:?];
  }

  v5 = v23;
LABEL_93:
  et2 = self->_et2;
  v19 = *(v5 + 13);
  if (et2)
  {
    if (!v19)
    {
      goto LABEL_99;
    }

    [(ComponentPowerStats *)et2 mergeFrom:?];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_99;
    }

    [(KCellularLteNrConnectionStats *)self setEt2:?];
  }

  v5 = v23;
LABEL_99:
  overall = self->_overall;
  v21 = *(v5 + 19);
  if (overall)
  {
    if (!v21)
    {
      goto LABEL_105;
    }

    [(ComponentPowerStats *)overall mergeFrom:?];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_105;
    }

    [(KCellularLteNrConnectionStats *)self setOverall:?];
  }

  v5 = v23;
LABEL_105:
  v22 = *(v5 + 212);
  if ((v22 & 0x8000) != 0)
  {
    self->_energyPerBitDl = *(v5 + 20);
    *&self->_has |= 0x8000uLL;
    v22 = *(v5 + 212);
    if ((v22 & 0x10000) == 0)
    {
LABEL_107:
      if ((v22 & 0x4000) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_119;
    }
  }

  else if ((v22 & 0x10000) == 0)
  {
    goto LABEL_107;
  }

  self->_energyPerBitUl = *(v5 + 21);
  *&self->_has |= 0x10000uLL;
  v22 = *(v5 + 212);
  if ((v22 & 0x4000) == 0)
  {
LABEL_108:
    if ((v22 & 0x400000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_120;
  }

LABEL_119:
  self->_energyPerBit = *(v5 + 19);
  *&self->_has |= 0x4000uLL;
  v22 = *(v5 + 212);
  if ((v22 & 0x400000000) == 0)
  {
LABEL_109:
    if ((v22 & 0x100000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_121;
  }

LABEL_120:
  self->_isNetworkSliceEnabled = v5[208];
  *&self->_has |= 0x400000000uLL;
  v22 = *(v5 + 212);
  if ((v22 & 0x100000000) == 0)
  {
LABEL_110:
    if ((v22 & 2) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_122;
  }

LABEL_121:
  self->_isGfnwPlmn = v5[206];
  *&self->_has |= &_mh_execute_header;
  v22 = *(v5 + 212);
  if ((v22 & 2) == 0)
  {
LABEL_111:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_123;
  }

LABEL_122:
  self->_configuredUlGrantActivatedDurationMs = *(v5 + 6);
  *&self->_has |= 2uLL;
  v22 = *(v5 + 212);
  if ((v22 & 0x80) == 0)
  {
LABEL_112:
    if ((v22 & 8) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_123:
  self->_configuredUlGrantTbs = *(v5 + 12);
  *&self->_has |= 0x80uLL;
  if ((*(v5 + 212) & 8) != 0)
  {
LABEL_113:
    self->_configuredUlGrantMcs = *(v5 + 8);
    *&self->_has |= 8uLL;
  }

LABEL_114:

  _objc_release_x1();
}

@end