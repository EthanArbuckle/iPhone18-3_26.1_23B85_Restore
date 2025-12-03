@interface CellularCsCallGwlPageRespFail
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCause:(id)cause;
- (int)StringAsCsfbFailureEmmCause:(id)cause;
- (int)StringAsCsfbFailureLocalCause:(id)cause;
- (int)StringAsCsfbFailureType:(id)type;
- (int)StringAsPageRat:(id)rat;
- (int)cause;
- (int)csfbFailureEmmCause;
- (int)csfbFailureLocalCause;
- (int)csfbFailureType;
- (int)pageRat;
- (unint64_t)hash;
- (unsigned)redirArfcnAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAttemptArfcn:(BOOL)arfcn;
- (void)setHasAttemptCellId:(BOOL)id;
- (void)setHasAttemptLac:(BOOL)lac;
- (void)setHasCause:(BOOL)cause;
- (void)setHasCsfbAbnormalCause:(BOOL)cause;
- (void)setHasCsfbFailureEmmCause:(BOOL)cause;
- (void)setHasCsfbFailureLocalCause:(BOOL)cause;
- (void)setHasCsfbFailureType:(BOOL)type;
- (void)setHasCsfbIsLacMismatch:(BOOL)mismatch;
- (void)setHasIsAttemptBandPcs:(BOOL)pcs;
- (void)setHasIsImsiPage:(BOOL)page;
- (void)setHasIsRedirHighBandPcs:(BOOL)pcs;
- (void)setHasLteCellId:(BOOL)id;
- (void)setHasLteRegLac:(BOOL)lac;
- (void)setHasNumRedirFreq:(BOOL)freq;
- (void)setHasPageRat:(BOOL)rat;
- (void)setHasTac:(BOOL)tac;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CellularCsCallGwlPageRespFail

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CellularCsCallGwlPageRespFail;
  [(CellularCsCallGwlPageRespFail *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (int)pageRat
{
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    return self->_pageRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPageRat:(BOOL)rat
{
  if (rat)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (int)StringAsPageRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"PAGE_RAT_GSM"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"PAGE_RAT_WCDMA"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"PAGE_RAT_LTE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)cause
{
  if ((*&self->_has & 0x10) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (int)StringAsCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"MT_PAGING_IGNORED"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"MT_RRC_CONN_EST_FAIL"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"MT_RRC_CONN_LOST"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"MT_CS_DOMAIN_REL"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"MT_RR_REL"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"MT_CSFB_FAIL"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"MT_RR_REL_NW_REL"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"MT_CSFB_LOST_GSM"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"MT_CSFB_PEND_REJ"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsImsiPage:(BOOL)page
{
  if (page)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)csfbFailureType
{
  if (*(&self->_has + 1))
  {
    return self->_csfbFailureType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCsfbFailureType:(BOOL)type
{
  if (type)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (int)StringAsCsfbFailureType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"INVALID_REJECT_CAUSE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"OTA_REJECT_CAUSE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"AS_REJECT_CAUSE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"MM_REJECT_CAUSE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"CNM_MN_REJECT_CAUSE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"EMM_REJECT_CAUSE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ONEX_CSFB_REJECT_CAUSE"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)csfbFailureEmmCause
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_csfbFailureEmmCause;
  }

  else
  {
    return 2;
  }
}

- (void)setHasCsfbFailureEmmCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (int)StringAsCsfbFailureEmmCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"LTE_NAS_IMSI_UNKNOWN_IN_HSS"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_ILLEGAL_UE"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_IMEI_NOT_ACCEPTED"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_ILLEGAL_ME"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_EPS_SERVICES_NOT_ALLOWED"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_EPS_SERVICES_AND_NON_EPS_SERVICES_NOT_ALLOWED"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_UE_ID_CANNOT_BE_DERIVED_BY_NW"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_IMPLICITLY_DETACHED"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_PLMN_NOT_ALLOWED"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_TRACKING_AREA_NOT_ALLOWED"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_ROAMING_NOT_ALLOWED_IN_THIS_TRACKING_AREA"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_EPS_SERVICES_NOT_ALLOWED_IN_PLMN"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_NO_SUITABLE_CELLS_IN_TRACKING_AREA"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_MSC_TEMPORARILY_NOT_REACHABLE"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_NW_FAILURE"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_CS_DOMAIN_NOT_AVAILABLE"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_ESM_FAILURE"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_MAC_FAILURE"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_SYNCH_FAILURE"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_CONGESTION"])
  {
    v4 = 22;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_UE_SECURITY_CAPABILITIES_MISMATCH"])
  {
    v4 = 23;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_SECURITY_MODE_REJ_UNSPECIFIED"])
  {
    v4 = 24;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_NOT_AUTHORIZED_FOR_THIS_CSG"])
  {
    v4 = 25;
  }

  else if ([causeCopy isEqualToString:@"LTE_NON_EPS_AUTH_UNACCEPTABLE"])
  {
    v4 = 26;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_CS_FALLBACK_CALL_EST_NOT_ALLOWED"])
  {
    v4 = 38;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_CS_DOMAIN_TEMP_NOT_AVAILABLE"])
  {
    v4 = 39;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_NO_EPS_BEARER_CONTEXT_ACTIVATED"])
  {
    v4 = 40;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_SEMANTICALLY_INCORRECT_MSG"])
  {
    v4 = 95;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_INVALID_MANDATORY_INFO"])
  {
    v4 = 96;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_NON_EXISTENT_MSG_TYPE"])
  {
    v4 = 97;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_MSG_TYPE_INCOMPATIBLE_WITH_PROTOCOL_STATE"])
  {
    v4 = 98;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_NON_EXISTANT_INFO"])
  {
    v4 = 99;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_CONDITIONAL_IE_ERROR"])
  {
    v4 = 100;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_MSG_INCOMPATIBLE_WITH_PROTOCOL_STATE"])
  {
    v4 = 101;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_PROTOCOL_ERROR_UNSPECIFIED"])
  {
    v4 = 111;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_NO_FAILURE"])
  {
    v4 = 112;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (int)csfbFailureLocalCause
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_csfbFailureLocalCause;
  }

  else
  {
    return 3;
  }
}

- (void)setHasCsfbFailureLocalCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (int)StringAsCsfbFailureLocalCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"LTE_NAS_ILLEGAL_UE_LOCAL"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_ILLEGAL_ME_LOCAL"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_EPS_SERVICES_NOT_ALLOWED_LOCAL"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_UE_ID_CANNOT_BE_DERIVED_BY_NW_LOCAL"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_IMPLICITLY_DETACHED_LOCAL"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_PLMN_NOT_ALLOWED_LOCAL"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_TRACKING_AREA_NOT_ALLOWED_LOCAL"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_ROAMING_NOT_ALLOWED_IN_THIS_TRACKING_AREA_LOCAL"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_NO_SUITABLE_CELLS_IN_TRACKING_AREA_LOCAL"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_CS_DOMAIN_NOT_AVAILABLE_LOCAL"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_NOT_AUTHORIZED_FOR_THIS_CSG_LOCAL"])
  {
    v4 = 25;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_CS_FALLBACK_CALL_EST_NOT_ALLOWED_LOCAL"])
  {
    v4 = 38;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_CS_DOMAIN_TEMP_NOT_AVAILABLE_LOCAL"])
  {
    v4 = 39;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_ESM_UNKNOWN_EPS_BEARER_CONTEXT"])
  {
    v4 = 43;
  }

  else if ([causeCopy isEqualToString:@"DRB_RELEASED_AT_RRC"])
  {
    v4 = 256;
  }

  else if ([causeCopy isEqualToString:@"NAS_SIG_CONN_RELEASED"])
  {
    v4 = 257;
  }

  else if ([causeCopy isEqualToString:@"EMM_DETACHED"])
  {
    v4 = 258;
  }

  else if ([causeCopy isEqualToString:@"EMM_ATTACH_FAILED"])
  {
    v4 = 259;
  }

  else if ([causeCopy isEqualToString:@"EMM_ATTACH_STARTED"])
  {
    v4 = 260;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_SERVICE_REQ_FAILED"])
  {
    v4 = 261;
  }

  else if ([causeCopy isEqualToString:@"ESM_ACTIVE_DEDICATED_BEARER_REACTIVATED_BY_NW"])
  {
    v4 = 262;
  }

  else if ([causeCopy isEqualToString:@"ESM_LOWER_LAYER_FAILURE"])
  {
    v4 = 263;
  }

  else if ([causeCopy isEqualToString:@"ESM_SYNC_UP_WITH_NW"])
  {
    v4 = 264;
  }

  else if ([causeCopy isEqualToString:@"ESM_NW_ACTIVATED_DED_BEARER_WITH_ID_OF_DEF_BEARER"])
  {
    v4 = 265;
  }

  else if ([causeCopy isEqualToString:@"ESM_BAD_OTA_MESSAGE"])
  {
    v4 = 266;
  }

  else if ([causeCopy isEqualToString:@"ESM_DS_REJECTED_THE_CALL"])
  {
    v4 = 267;
  }

  else if ([causeCopy isEqualToString:@"ESM_CONTEXT_TRANSFERED_DUE_TO_IRAT"])
  {
    v4 = 268;
  }

  else if ([causeCopy isEqualToString:@"DS_EXPLICIT_DEACT"])
  {
    v4 = 269;
  }

  else if ([causeCopy isEqualToString:@"ESM_MSGR_FAILURE"])
  {
    v4 = 270;
  }

  else if ([causeCopy isEqualToString:@"ESM_LOCAL_CUASE_NONE"])
  {
    v4 = 271;
  }

  else if ([causeCopy isEqualToString:@"ESM_REJ_DUE_TO_CONNECTED_STATE"])
  {
    v4 = 272;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_SERVICE_REQ_FAILED_NO_THROTTLE"])
  {
    v4 = 273;
  }

  else if ([causeCopy isEqualToString:@"ACL_FAILURE"])
  {
    v4 = 274;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_SERVICE_REQ_FAILED_DS_DISALLOW"])
  {
    v4 = 275;
  }

  else if ([causeCopy isEqualToString:@"EMM_T3417_EXPIRED"])
  {
    v4 = 276;
  }

  else if ([causeCopy isEqualToString:@"EMM_T3417_EXT_EXPIRED"])
  {
    v4 = 277;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_TXN"])
  {
    v4 = 278;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_HO"])
  {
    v4 = 279;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_CONN_REL"])
  {
    v4 = 280;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_RLF"])
  {
    v4 = 281;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_CTRL_NOT_CONN"])
  {
    v4 = 282;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_SUCCESS"])
  {
    v4 = 283;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE"])
  {
    v4 = 284;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE_ABORTED"])
  {
    v4 = 285;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE_ACCESS_BARRED"])
  {
    v4 = 286;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE_CELL_RESEL"])
  {
    v4 = 287;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE_CONFIG_FAILURE"])
  {
    v4 = 288;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE_TIMER_EXPIRED"])
  {
    v4 = 289;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE_LINK_FAILURE"])
  {
    v4 = 290;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE_NOT_CAMPED"])
  {
    v4 = 291;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE_SI_FAILURE"])
  {
    v4 = 292;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_EST_FAILURE_CONN_REJECT"])
  {
    v4 = 293;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_REL_NORMAL"])
  {
    v4 = 294;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_REL_RLF"])
  {
    v4 = 295;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_REL_CRE_FAILURE"])
  {
    v4 = 296;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_REL_OOS_DURING_CRE"])
  {
    v4 = 297;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_REL_ABORTED"])
  {
    v4 = 298;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_REL_SIB_READ_ERROR"])
  {
    v4 = 299;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_LRRC_CONN_REL_ABORTED_IRAT_SUCCESS"])
  {
    v4 = 300;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_REJ_LRRC_RADIO_LINK_FAILURE"])
  {
    v4 = 301;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_SERVICE_REQ_FAILURE_LTE_NW_REJECT"])
  {
    v4 = 302;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_DETACH_WITH_REATTACH_LTE_NW_DETACH"])
  {
    v4 = 303;
  }

  else if ([causeCopy isEqualToString:@"LTE_NAS_DETACH_WITH_OUT_REATTACH_LTE_NW_DETACH"])
  {
    v4 = 304;
  }

  else if ([causeCopy isEqualToString:@"ESM_PROC_TIME_OUT"])
  {
    v4 = 305;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (void)setHasCsfbIsLacMismatch:(BOOL)mismatch
{
  if (mismatch)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasCsfbAbnormalCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasLteRegLac:(BOOL)lac
{
  if (lac)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTac:(BOOL)tac
{
  if (tac)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasLteCellId:(BOOL)id
{
  if (id)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasAttemptArfcn:(BOOL)arfcn
{
  if (arfcn)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasIsAttemptBandPcs:(BOOL)pcs
{
  if (pcs)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasAttemptLac:(BOOL)lac
{
  if (lac)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasAttemptCellId:(BOOL)id
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

- (void)setHasNumRedirFreq:(BOOL)freq
{
  if (freq)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasIsRedirHighBandPcs:(BOOL)pcs
{
  if (pcs)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (unsigned)redirArfcnAtIndex:(unint64_t)index
{
  p_redirArfcns = &self->_redirArfcns;
  count = self->_redirArfcns.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_redirArfcns->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularCsCallGwlPageRespFail;
  v3 = [(CellularCsCallGwlPageRespFail *)&v7 description];
  dictionaryRepresentation = [(CellularCsCallGwlPageRespFail *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_version];
  [v3 setObject:v10 forKey:@"version"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_24:
  pageRat = self->_pageRat;
  if (pageRat >= 3)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_pageRat];
  }

  else
  {
    v12 = off_100317380[pageRat];
  }

  [v3 setObject:v12 forKey:@"page_rat"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_28:
  cause = self->_cause;
  if (cause >= 9)
  {
    v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_cause];
  }

  else
  {
    v14 = off_100317398[cause];
  }

  [v3 setObject:v14 forKey:@"cause"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = [NSNumber numberWithUnsignedInt:self->_isImsiPage];
  [v3 setObject:v15 forKey:@"is_imsi_page"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_33:
  csfbFailureType = self->_csfbFailureType;
  if (csfbFailureType >= 7)
  {
    v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_csfbFailureType];
  }

  else
  {
    v17 = off_1003173E0[csfbFailureType];
  }

  [v3 setObject:v17 forKey:@"csfb_failure_type"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_85;
  }

LABEL_37:
  csfbFailureEmmCause = self->_csfbFailureEmmCause;
  if (csfbFailureEmmCause > 94)
  {
    if (csfbFailureEmmCause <= 98)
    {
      if (csfbFailureEmmCause > 96)
      {
        if (csfbFailureEmmCause == 97)
        {
          v19 = @"LTE_NAS_NON_EXISTENT_MSG_TYPE";
        }

        else
        {
          v19 = @"LTE_NAS_MSG_TYPE_INCOMPATIBLE_WITH_PROTOCOL_STATE";
        }
      }

      else if (csfbFailureEmmCause == 95)
      {
        v19 = @"LTE_NAS_SEMANTICALLY_INCORRECT_MSG";
      }

      else
      {
        v19 = @"LTE_NAS_INVALID_MANDATORY_INFO";
      }
    }

    else if (csfbFailureEmmCause <= 100)
    {
      if (csfbFailureEmmCause == 99)
      {
        v19 = @"LTE_NAS_NON_EXISTANT_INFO";
      }

      else
      {
        v19 = @"LTE_NAS_CONDITIONAL_IE_ERROR";
      }
    }

    else
    {
      switch(csfbFailureEmmCause)
      {
        case 'e':
          v19 = @"LTE_NAS_MSG_INCOMPATIBLE_WITH_PROTOCOL_STATE";
          break;
        case 'o':
          v19 = @"LTE_NAS_PROTOCOL_ERROR_UNSPECIFIED";
          break;
        case 'p':
          v19 = @"LTE_NAS_NO_FAILURE";
          break;
        default:
LABEL_83:
          v19 = [NSString stringWithFormat:@"(unknown: %i)", self->_csfbFailureEmmCause];
          break;
      }
    }
  }

  else
  {
    v19 = @"LTE_NAS_IMSI_UNKNOWN_IN_HSS";
    switch(csfbFailureEmmCause)
    {
      case 2:
        break;
      case 3:
        v19 = @"LTE_NAS_ILLEGAL_UE";
        break;
      case 5:
        v19 = @"LTE_NAS_IMEI_NOT_ACCEPTED";
        break;
      case 6:
        v19 = @"LTE_NAS_ILLEGAL_ME";
        break;
      case 7:
        v19 = @"LTE_NAS_EPS_SERVICES_NOT_ALLOWED";
        break;
      case 8:
        v19 = @"LTE_NAS_EPS_SERVICES_AND_NON_EPS_SERVICES_NOT_ALLOWED";
        break;
      case 9:
        v19 = @"LTE_NAS_UE_ID_CANNOT_BE_DERIVED_BY_NW";
        break;
      case 10:
        v19 = @"LTE_NAS_IMPLICITLY_DETACHED";
        break;
      case 11:
        v19 = @"LTE_NAS_PLMN_NOT_ALLOWED";
        break;
      case 12:
        v19 = @"LTE_NAS_TRACKING_AREA_NOT_ALLOWED";
        break;
      case 13:
        v19 = @"LTE_NAS_ROAMING_NOT_ALLOWED_IN_THIS_TRACKING_AREA";
        break;
      case 14:
        v19 = @"LTE_NAS_EPS_SERVICES_NOT_ALLOWED_IN_PLMN";
        break;
      case 15:
        v19 = @"LTE_NAS_NO_SUITABLE_CELLS_IN_TRACKING_AREA";
        break;
      case 16:
        v19 = @"LTE_NAS_MSC_TEMPORARILY_NOT_REACHABLE";
        break;
      case 17:
        v19 = @"LTE_NAS_NW_FAILURE";
        break;
      case 18:
        v19 = @"LTE_NAS_CS_DOMAIN_NOT_AVAILABLE";
        break;
      case 19:
        v19 = @"LTE_NAS_ESM_FAILURE";
        break;
      case 20:
        v19 = @"LTE_NAS_MAC_FAILURE";
        break;
      case 21:
        v19 = @"LTE_NAS_SYNCH_FAILURE";
        break;
      case 22:
        v19 = @"LTE_NAS_CONGESTION";
        break;
      case 23:
        v19 = @"LTE_NAS_UE_SECURITY_CAPABILITIES_MISMATCH";
        break;
      case 24:
        v19 = @"LTE_NAS_SECURITY_MODE_REJ_UNSPECIFIED";
        break;
      case 25:
        v19 = @"LTE_NAS_NOT_AUTHORIZED_FOR_THIS_CSG";
        break;
      case 26:
        v19 = @"LTE_NON_EPS_AUTH_UNACCEPTABLE";
        break;
      case 38:
        v19 = @"LTE_NAS_CS_FALLBACK_CALL_EST_NOT_ALLOWED";
        break;
      case 39:
        v19 = @"LTE_NAS_CS_DOMAIN_TEMP_NOT_AVAILABLE";
        break;
      case 40:
        v19 = @"LTE_NAS_NO_EPS_BEARER_CONTEXT_ACTIVATED";
        break;
      default:
        goto LABEL_83;
    }
  }

  [v3 setObject:v19 forKey:@"csfb_failure_emm_cause"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_169;
  }

LABEL_85:
  csfbFailureLocalCause = self->_csfbFailureLocalCause;
  if (csfbFailureLocalCause <= 38)
  {
    if (csfbFailureLocalCause > 11)
    {
      if (csfbFailureLocalCause > 17)
      {
        switch(csfbFailureLocalCause)
        {
          case 18:
            v21 = @"LTE_NAS_CS_DOMAIN_NOT_AVAILABLE_LOCAL";
            goto LABEL_168;
          case 25:
            v21 = @"LTE_NAS_NOT_AUTHORIZED_FOR_THIS_CSG_LOCAL";
            goto LABEL_168;
          case 38:
            v21 = @"LTE_NAS_CS_FALLBACK_CALL_EST_NOT_ALLOWED_LOCAL";
            goto LABEL_168;
        }
      }

      else
      {
        switch(csfbFailureLocalCause)
        {
          case 12:
            v21 = @"LTE_NAS_TRACKING_AREA_NOT_ALLOWED_LOCAL";
            goto LABEL_168;
          case 13:
            v21 = @"LTE_NAS_ROAMING_NOT_ALLOWED_IN_THIS_TRACKING_AREA_LOCAL";
            goto LABEL_168;
          case 15:
            v21 = @"LTE_NAS_NO_SUITABLE_CELLS_IN_TRACKING_AREA_LOCAL";
            goto LABEL_168;
        }
      }
    }

    else
    {
      if (csfbFailureLocalCause > 8)
      {
        if (csfbFailureLocalCause == 9)
        {
          v21 = @"LTE_NAS_UE_ID_CANNOT_BE_DERIVED_BY_NW_LOCAL";
        }

        else if (csfbFailureLocalCause == 10)
        {
          v21 = @"LTE_NAS_IMPLICITLY_DETACHED_LOCAL";
        }

        else
        {
          v21 = @"LTE_NAS_PLMN_NOT_ALLOWED_LOCAL";
        }

        goto LABEL_168;
      }

      switch(csfbFailureLocalCause)
      {
        case 3:
          v21 = @"LTE_NAS_ILLEGAL_UE_LOCAL";
          goto LABEL_168;
        case 6:
          v21 = @"LTE_NAS_ILLEGAL_ME_LOCAL";
          goto LABEL_168;
        case 7:
          v21 = @"LTE_NAS_EPS_SERVICES_NOT_ALLOWED_LOCAL";
          goto LABEL_168;
      }
    }

LABEL_117:
    v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_csfbFailureLocalCause];
    goto LABEL_168;
  }

  switch(csfbFailureLocalCause)
  {
    case 256:
      v21 = @"DRB_RELEASED_AT_RRC";
      break;
    case 257:
      v21 = @"NAS_SIG_CONN_RELEASED";
      break;
    case 258:
      v21 = @"EMM_DETACHED";
      break;
    case 259:
      v21 = @"EMM_ATTACH_FAILED";
      break;
    case 260:
      v21 = @"EMM_ATTACH_STARTED";
      break;
    case 261:
      v21 = @"LTE_NAS_SERVICE_REQ_FAILED";
      break;
    case 262:
      v21 = @"ESM_ACTIVE_DEDICATED_BEARER_REACTIVATED_BY_NW";
      break;
    case 263:
      v21 = @"ESM_LOWER_LAYER_FAILURE";
      break;
    case 264:
      v21 = @"ESM_SYNC_UP_WITH_NW";
      break;
    case 265:
      v21 = @"ESM_NW_ACTIVATED_DED_BEARER_WITH_ID_OF_DEF_BEARER";
      break;
    case 266:
      v21 = @"ESM_BAD_OTA_MESSAGE";
      break;
    case 267:
      v21 = @"ESM_DS_REJECTED_THE_CALL";
      break;
    case 268:
      v21 = @"ESM_CONTEXT_TRANSFERED_DUE_TO_IRAT";
      break;
    case 269:
      v21 = @"DS_EXPLICIT_DEACT";
      break;
    case 270:
      v21 = @"ESM_MSGR_FAILURE";
      break;
    case 271:
      v21 = @"ESM_LOCAL_CUASE_NONE";
      break;
    case 272:
      v21 = @"ESM_REJ_DUE_TO_CONNECTED_STATE";
      break;
    case 273:
      v21 = @"LTE_NAS_SERVICE_REQ_FAILED_NO_THROTTLE";
      break;
    case 274:
      v21 = @"ACL_FAILURE";
      break;
    case 275:
      v21 = @"LTE_NAS_SERVICE_REQ_FAILED_DS_DISALLOW";
      break;
    case 276:
      v21 = @"EMM_T3417_EXPIRED";
      break;
    case 277:
      v21 = @"EMM_T3417_EXT_EXPIRED";
      break;
    case 278:
      v21 = @"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_TXN";
      break;
    case 279:
      v21 = @"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_HO";
      break;
    case 280:
      v21 = @"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_CONN_REL";
      break;
    case 281:
      v21 = @"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_RLF";
      break;
    case 282:
      v21 = @"LTE_NAS_LRRC_UL_DATA_CNF_FAILURE_CTRL_NOT_CONN";
      break;
    case 283:
      v21 = @"LTE_NAS_LRRC_CONN_EST_SUCCESS";
      break;
    case 284:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE";
      break;
    case 285:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE_ABORTED";
      break;
    case 286:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE_ACCESS_BARRED";
      break;
    case 287:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE_CELL_RESEL";
      break;
    case 288:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE_CONFIG_FAILURE";
      break;
    case 289:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE_TIMER_EXPIRED";
      break;
    case 290:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE_LINK_FAILURE";
      break;
    case 291:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE_NOT_CAMPED";
      break;
    case 292:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE_SI_FAILURE";
      break;
    case 293:
      v21 = @"LTE_NAS_LRRC_CONN_EST_FAILURE_CONN_REJECT";
      break;
    case 294:
      v21 = @"LTE_NAS_LRRC_CONN_REL_NORMAL";
      break;
    case 295:
      v21 = @"LTE_NAS_LRRC_CONN_REL_RLF";
      break;
    case 296:
      v21 = @"LTE_NAS_LRRC_CONN_REL_CRE_FAILURE";
      break;
    case 297:
      v21 = @"LTE_NAS_LRRC_CONN_REL_OOS_DURING_CRE";
      break;
    case 298:
      v21 = @"LTE_NAS_LRRC_CONN_REL_ABORTED";
      break;
    case 299:
      v21 = @"LTE_NAS_LRRC_CONN_REL_SIB_READ_ERROR";
      break;
    case 300:
      v21 = @"LTE_NAS_LRRC_CONN_REL_ABORTED_IRAT_SUCCESS";
      break;
    case 301:
      v21 = @"LTE_NAS_REJ_LRRC_RADIO_LINK_FAILURE";
      break;
    case 302:
      v21 = @"LTE_NAS_SERVICE_REQ_FAILURE_LTE_NW_REJECT";
      break;
    case 303:
      v21 = @"LTE_NAS_DETACH_WITH_REATTACH_LTE_NW_DETACH";
      break;
    case 304:
      v21 = @"LTE_NAS_DETACH_WITH_OUT_REATTACH_LTE_NW_DETACH";
      break;
    case 305:
      v21 = @"ESM_PROC_TIME_OUT";
      break;
    default:
      if (csfbFailureLocalCause == 39)
      {
        v21 = @"LTE_NAS_CS_DOMAIN_TEMP_NOT_AVAILABLE_LOCAL";
      }

      else
      {
        if (csfbFailureLocalCause != 43)
        {
          goto LABEL_117;
        }

        v21 = @"LTE_NAS_ESM_UNKNOWN_EPS_BEARER_CONTEXT";
      }

      break;
  }

LABEL_168:
  [v3 setObject:v21 forKey:@"csfb_failure_local_cause"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_170;
  }

LABEL_169:
  v22 = [NSNumber numberWithBool:self->_csfbIsLacMismatch];
  [v3 setObject:v22 forKey:@"csfb_is_lac_mismatch"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_171;
  }

LABEL_170:
  v23 = [NSNumber numberWithUnsignedInt:self->_csfbAbnormalCause];
  [v3 setObject:v23 forKey:@"csfb_abnormal_cause"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_172;
  }

LABEL_171:
  v24 = [NSNumber numberWithUnsignedInt:self->_lteRegLac];
  [v3 setObject:v24 forKey:@"lte_reg_lac"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_173;
  }

LABEL_172:
  v25 = [NSNumber numberWithUnsignedInt:self->_tac];
  [v3 setObject:v25 forKey:@"tac"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_174;
  }

LABEL_173:
  v26 = [NSNumber numberWithUnsignedInt:self->_lteCellId];
  [v3 setObject:v26 forKey:@"lte_cell_id"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_175;
  }

LABEL_174:
  v27 = [NSNumber numberWithUnsignedInt:self->_attemptArfcn];
  [v3 setObject:v27 forKey:@"attempt_arfcn"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_176;
  }

LABEL_175:
  v28 = [NSNumber numberWithBool:self->_isAttemptBandPcs];
  [v3 setObject:v28 forKey:@"is_attempt_band_pcs"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_177;
  }

LABEL_176:
  v29 = [NSNumber numberWithUnsignedInt:self->_attemptLac];
  [v3 setObject:v29 forKey:@"attempt_lac"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

LABEL_178:
    v31 = [NSNumber numberWithUnsignedInt:self->_numRedirFreq];
    [v3 setObject:v31 forKey:@"num_redir_freq"];

    if ((*&self->_has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_177:
  v30 = [NSNumber numberWithUnsignedInt:self->_attemptCellId];
  [v3 setObject:v30 forKey:@"attempt_cell_id"];

  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    goto LABEL_178;
  }

LABEL_19:
  if ((*&has & 0x40000) != 0)
  {
LABEL_20:
    v5 = [NSNumber numberWithBool:self->_isRedirHighBandPcs];
    [v3 setObject:v5 forKey:@"is_redir_high_band_pcs"];
  }

LABEL_21:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"redir_arfcn"];

  v7 = v3;
  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v28 = toCopy;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v28;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  version = self->_version;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  pageRat = self->_pageRat;
  PBDataWriterWriteInt32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  cause = self->_cause;
  PBDataWriterWriteInt32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  isImsiPage = self->_isImsiPage;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  csfbFailureType = self->_csfbFailureType;
  PBDataWriterWriteInt32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  csfbFailureEmmCause = self->_csfbFailureEmmCause;
  PBDataWriterWriteInt32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  csfbFailureLocalCause = self->_csfbFailureLocalCause;
  PBDataWriterWriteInt32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  csfbIsLacMismatch = self->_csfbIsLacMismatch;
  PBDataWriterWriteBOOLField();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  csfbAbnormalCause = self->_csfbAbnormalCause;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  lteRegLac = self->_lteRegLac;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  tac = self->_tac;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  lteCellId = self->_lteCellId;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  attemptArfcn = self->_attemptArfcn;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  isAttemptBandPcs = self->_isAttemptBandPcs;
  PBDataWriterWriteBOOLField();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  attemptLac = self->_attemptLac;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  attemptCellId = self->_attemptCellId;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_44:
  numRedirFreq = self->_numRedirFreq;
  PBDataWriterWriteUint32Field();
  toCopy = v28;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_20:
    isRedirHighBandPcs = self->_isRedirHighBandPcs;
    PBDataWriterWriteBOOLField();
    toCopy = v28;
  }

LABEL_21:
  p_redirArfcns = &self->_redirArfcns;
  if (p_redirArfcns->count)
  {
    v8 = 0;
    do
    {
      v9 = p_redirArfcns->list[v8];
      PBDataWriterWriteUint32Field();
      toCopy = v28;
      ++v8;
    }

    while (v8 < p_redirArfcns->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[4] = self->_timestamp;
    *(toCopy + 26) |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 24) = self->_version;
  *(toCopy + 26) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(toCopy + 22) = self->_pageRat;
  *(toCopy + 26) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(toCopy + 13) = self->_cause;
  *(toCopy + 26) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 18) = self->_isImsiPage;
  *(toCopy + 26) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 17) = self->_csfbFailureType;
  *(toCopy + 26) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 15) = self->_csfbFailureEmmCause;
  *(toCopy + 26) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 16) = self->_csfbFailureLocalCause;
  *(toCopy + 26) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 100) = self->_csfbIsLacMismatch;
  *(toCopy + 26) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 14) = self->_csfbAbnormalCause;
  *(toCopy + 26) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 20) = self->_lteRegLac;
  *(toCopy + 26) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 23) = self->_tac;
  *(toCopy + 26) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 19) = self->_lteCellId;
  *(toCopy + 26) |= 0x400u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 10) = self->_attemptArfcn;
  *(toCopy + 26) |= 2u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 101) = self->_isAttemptBandPcs;
  *(toCopy + 26) |= 0x20000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 12) = self->_attemptLac;
  *(toCopy + 26) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

LABEL_45:
    *(toCopy + 21) = self->_numRedirFreq;
    *(toCopy + 26) |= 0x1000u;
    if ((*&self->_has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_44:
  *(toCopy + 11) = self->_attemptCellId;
  *(toCopy + 26) |= 4u;
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    goto LABEL_45;
  }

LABEL_19:
  if ((*&has & 0x40000) != 0)
  {
LABEL_20:
    *(toCopy + 102) = self->_isRedirHighBandPcs;
    *(toCopy + 26) |= 0x40000u;
  }

LABEL_21:
  v9 = toCopy;
  if ([(CellularCsCallGwlPageRespFail *)self redirArfcnsCount])
  {
    [v9 clearRedirArfcns];
    redirArfcnsCount = [(CellularCsCallGwlPageRespFail *)self redirArfcnsCount];
    if (redirArfcnsCount)
    {
      v7 = redirArfcnsCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addRedirArfcn:{-[CellularCsCallGwlPageRespFail redirArfcnAtIndex:](self, "redirArfcnAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if (*&has)
  {
    *(v4 + 4) = self->_timestamp;
    *(v4 + 26) |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 24) = self->_version;
  *(v4 + 26) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 22) = self->_pageRat;
  *(v4 + 26) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 13) = self->_cause;
  *(v4 + 26) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 18) = self->_isImsiPage;
  *(v4 + 26) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 17) = self->_csfbFailureType;
  *(v4 + 26) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 15) = self->_csfbFailureEmmCause;
  *(v4 + 26) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 16) = self->_csfbFailureLocalCause;
  *(v4 + 26) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 100) = self->_csfbIsLacMismatch;
  *(v4 + 26) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 14) = self->_csfbAbnormalCause;
  *(v4 + 26) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 20) = self->_lteRegLac;
  *(v4 + 26) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 23) = self->_tac;
  *(v4 + 26) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 19) = self->_lteCellId;
  *(v4 + 26) |= 0x400u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 10) = self->_attemptArfcn;
  *(v4 + 26) |= 2u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 101) = self->_isAttemptBandPcs;
  *(v4 + 26) |= 0x20000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 12) = self->_attemptLac;
  *(v4 + 26) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

LABEL_39:
    *(v4 + 21) = self->_numRedirFreq;
    *(v4 + 26) |= 0x1000u;
    if ((*&self->_has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_38:
  *(v4 + 11) = self->_attemptCellId;
  *(v4 + 26) |= 4u;
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  if ((*&has & 0x40000) != 0)
  {
LABEL_20:
    *(v4 + 102) = self->_isRedirHighBandPcs;
    *(v4 + 26) |= 0x40000u;
  }

LABEL_21:
  PBRepeatedUInt32Copy();
  return v5;
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
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 4))
    {
      goto LABEL_102;
    }
  }

  else if (v6)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_version != *(equalCopy + 24))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_pageRat != *(equalCopy + 22))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_cause != *(equalCopy + 13))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_isImsiPage != *(equalCopy + 18))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_csfbFailureType != *(equalCopy + 17))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_csfbFailureEmmCause != *(equalCopy + 15))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_csfbFailureLocalCause != *(equalCopy + 16))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_102;
    }

    v7 = *(equalCopy + 100);
    if (self->_csfbIsLacMismatch)
    {
      if ((*(equalCopy + 100) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else if (*(equalCopy + 100))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_csfbAbnormalCause != *(equalCopy + 14))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_lteRegLac != *(equalCopy + 20))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_tac != *(equalCopy + 23))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_lteCellId != *(equalCopy + 19))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_attemptArfcn != *(equalCopy + 10))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_102;
    }

    v8 = *(equalCopy + 101);
    if (self->_isAttemptBandPcs)
    {
      if ((*(equalCopy + 101) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else if (*(equalCopy + 101))
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
    if ((v6 & 8) == 0 || self->_attemptLac != *(equalCopy + 12))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_attemptCellId != *(equalCopy + 11))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_numRedirFreq != *(equalCopy + 21))
    {
      goto LABEL_102;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_102;
  }

  if ((*&has & 0x40000) == 0)
  {
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_100;
    }

LABEL_102:
    IsEqual = 0;
    goto LABEL_103;
  }

  if ((v6 & 0x40000) == 0)
  {
    goto LABEL_102;
  }

  v11 = *(equalCopy + 102);
  if (self->_isRedirHighBandPcs)
  {
    if ((*(equalCopy + 102) & 1) == 0)
    {
      goto LABEL_102;
    }
  }

  else if (*(equalCopy + 102))
  {
    goto LABEL_102;
  }

LABEL_100:
  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_103:

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&has & 0x8000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_version;
      if ((*&has & 0x2000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_pageRat;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_cause;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_isImsiPage;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_csfbFailureType;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_csfbFailureEmmCause;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_csfbFailureLocalCause;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_csfbIsLacMismatch;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_csfbAbnormalCause;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_lteRegLac;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_tac;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_lteCellId;
    if ((*&has & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_attemptArfcn;
  if ((*&has & 0x20000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_isAttemptBandPcs;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 8) != 0)
  {
    v18 = 2654435761 * self->_attemptLac;
    if ((*&has & 4) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_attemptCellId;
      if ((*&has & 0x1000) != 0)
      {
        goto LABEL_35;
      }

LABEL_39:
      v20 = 0;
      if ((*&has & 0x40000) != 0)
      {
        goto LABEL_36;
      }

LABEL_40:
      v21 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ PBRepeatedUInt32Hash();
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x1000) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v20 = 2654435761 * self->_numRedirFreq;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v21 = 2654435761 * self->_isRedirHighBandPcs;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 26);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 4);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 26);
    if ((v5 & 0x8000) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  self->_version = *(fromCopy + 24);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x2000) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_pageRat = *(fromCopy + 22);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_cause = *(fromCopy + 13);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_isImsiPage = *(fromCopy + 18);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_csfbFailureType = *(fromCopy + 17);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_csfbFailureEmmCause = *(fromCopy + 15);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_csfbFailureLocalCause = *(fromCopy + 16);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x10000) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_csfbIsLacMismatch = *(fromCopy + 100);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_csfbAbnormalCause = *(fromCopy + 14);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_lteRegLac = *(fromCopy + 20);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x4000) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_tac = *(fromCopy + 23);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_lteCellId = *(fromCopy + 19);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 26);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_attemptArfcn = *(fromCopy + 10);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x20000) == 0)
  {
LABEL_16:
    if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_isAttemptBandPcs = *(fromCopy + 101);
  *&self->_has |= 0x20000u;
  v5 = *(fromCopy + 26);
  if ((v5 & 8) == 0)
  {
LABEL_17:
    if ((v5 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_attemptLac = *(fromCopy + 12);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 26);
  if ((v5 & 4) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_attemptCellId = *(fromCopy + 11);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_44:
  self->_numRedirFreq = *(fromCopy + 21);
  *&self->_has |= 0x1000u;
  if ((*(fromCopy + 26) & 0x40000) != 0)
  {
LABEL_20:
    self->_isRedirHighBandPcs = *(fromCopy + 102);
    *&self->_has |= 0x40000u;
  }

LABEL_21:
  v9 = fromCopy;
  redirArfcnsCount = [fromCopy redirArfcnsCount];
  if (redirArfcnsCount)
  {
    v7 = redirArfcnsCount;
    for (i = 0; i != v7; ++i)
    {
      -[CellularCsCallGwlPageRespFail addRedirArfcn:](self, "addRedirArfcn:", [v9 redirArfcnAtIndex:i]);
    }
  }
}

@end