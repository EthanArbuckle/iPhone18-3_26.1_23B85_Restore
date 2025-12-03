@interface CellularRatLacSrvInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRoamStatus:(id)status;
- (int)roamStatus;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAsubsId:(BOOL)id;
- (void)setHasCellId2nd:(BOOL)id2nd;
- (void)setHasCellId:(BOOL)id;
- (void)setHasCompanionType:(BOOL)type;
- (void)setHasDynNr5gEnabling:(BOOL)enabling;
- (void)setHasElapsedMs:(BOOL)ms;
- (void)setHasGizmoMode:(BOOL)mode;
- (void)setHasHdrPersonality:(BOOL)personality;
- (void)setHasLac2nd:(BOOL)lac2nd;
- (void)setHasLac:(BOOL)lac;
- (void)setHasNid:(BOOL)nid;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasRoamStatus:(BOOL)status;
- (void)setHasScgEverConfigured:(BOOL)configured;
- (void)setHasSid:(BOOL)sid;
- (void)setHasSrvDomain2nd:(BOOL)domain2nd;
- (void)setHasSrvDomain:(BOOL)domain;
- (void)setHasSrvStatus2nd:(BOOL)status2nd;
- (void)setHasSrvStatus:(BOOL)status;
- (void)setHasStandbyPref:(BOOL)pref;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasSysMode2nd:(BOOL)mode2nd;
- (void)setHasSysMode:(BOOL)mode;
- (void)setHasUiNr5gSwitch:(BOOL)switch;
- (void)setHasUpperLayerIndication:(BOOL)indication;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CellularRatLacSrvInfo

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
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

- (void)setHasStandbyPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasSid:(BOOL)sid
{
  if (sid)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasNid:(BOOL)nid
{
  if (nid)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasCellId:(BOOL)id
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

- (void)setHasLac:(BOOL)lac
{
  if (lac)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasGizmoMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasCompanionType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasSysMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasSrvStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasSrvDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (int)roamStatus
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_roamStatus;
  }

  else
  {
    return -1;
  }
}

- (void)setHasRoamStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (int)StringAsRoamStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_NONE"])
  {
    v4 = -1;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_OFF"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_ON"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_BLINK"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_OUT_OF_NEIGHBORHOOD"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_OUT_OF_BLDG"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_PREF_SYS"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_AVAIL_SYS"])
  {
    v4 = 6;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_ALLIANCE_PARTNER"])
  {
    v4 = 7;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_PREMIUM_PARTNER"])
  {
    v4 = 8;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_FULL_SVC"])
  {
    v4 = 9;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_PARTIAL_SVC"])
  {
    v4 = 10;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_BANNER_ON"])
  {
    v4 = 11;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_BANNER_OFF"])
  {
    v4 = 12;
  }

  else if ([statusCopy isEqualToString:@"SYS_ROAM_STATUS_HOME_SYSTEM"])
  {
    v4 = 64;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasAsubsId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasLac2nd:(BOOL)lac2nd
{
  if (lac2nd)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasSysMode2nd:(BOOL)mode2nd
{
  if (mode2nd)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasSrvStatus2nd:(BOOL)status2nd
{
  if (status2nd)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasSrvDomain2nd:(BOOL)domain2nd
{
  if (domain2nd)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasCellId2nd:(BOOL)id2nd
{
  if (id2nd)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasHdrPersonality:(BOOL)personality
{
  if (personality)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasElapsedMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasUpperLayerIndication:(BOOL)indication
{
  if (indication)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasScgEverConfigured:(BOOL)configured
{
  if (configured)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasUiNr5gSwitch:(BOOL)switch
{
  if (switch)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasDynNr5gEnabling:(BOOL)enabling
{
  if (enabling)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularRatLacSrvInfo;
  v3 = [(CellularRatLacSrvInfo *)&v7 description];
  dictionaryRepresentation = [(CellularRatLacSrvInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v17 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v17 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  v18 = [NSNumber numberWithUnsignedInt:self->_version];
  [v3 setObject:v18 forKey:@"version"];

  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_5:
  simHplmn = self->_simHplmn;
  if (simHplmn)
  {
    [v3 setObject:simHplmn forKey:@"sim_hplmn"];
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_standbyPref];
    [v3 setObject:v7 forKey:@"standby_pref"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v9 = self->_has;
  if ((*&v9 & 0x8000) != 0)
  {
    v19 = [NSNumber numberWithUnsignedInt:self->_sid];
    [v3 setObject:v19 forKey:@"sid"];

    v9 = self->_has;
    if ((*&v9 & 0x800) == 0)
    {
LABEL_13:
      if ((*&v9 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_47;
    }
  }

  else if ((*&v9 & 0x800) == 0)
  {
    goto LABEL_13;
  }

  v20 = [NSNumber numberWithUnsignedInt:self->_nid];
  [v3 setObject:v20 forKey:@"nid"];

  v9 = self->_has;
  if ((*&v9 & 4) == 0)
  {
LABEL_14:
    if ((*&v9 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = [NSNumber numberWithUnsignedInt:self->_cellId];
  [v3 setObject:v21 forKey:@"cell_id"];

  v9 = self->_has;
  if ((*&v9 & 0x200) == 0)
  {
LABEL_15:
    if ((*&v9 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = [NSNumber numberWithUnsignedInt:self->_lac];
  [v3 setObject:v22 forKey:@"lac"];

  v9 = self->_has;
  if ((*&v9 & 0x80) == 0)
  {
LABEL_16:
    if ((*&v9 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = [NSNumber numberWithUnsignedInt:self->_gizmoMode];
  [v3 setObject:v23 forKey:@"gizmo_mode"];

  v9 = self->_has;
  if ((*&v9 & 0x10) == 0)
  {
LABEL_17:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = [NSNumber numberWithUnsignedInt:self->_companionType];
  [v3 setObject:v24 forKey:@"companion_type"];

  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_18:
    if ((*&v9 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v25 = [NSNumber numberWithInt:self->_sysMode];
  [v3 setObject:v25 forKey:@"sys_mode"];

  v9 = self->_has;
  if ((*&v9 & 0x40000) == 0)
  {
LABEL_19:
    if ((*&v9 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v26 = [NSNumber numberWithInt:self->_srvStatus];
  [v3 setObject:v26 forKey:@"srv_status"];

  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_20:
    if ((*&v9 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v27 = [NSNumber numberWithInt:self->_srvDomain];
  [v3 setObject:v27 forKey:@"srv_domain"];

  v9 = self->_has;
  if ((*&v9 & 0x4000) == 0)
  {
LABEL_21:
    if ((*&v9 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_54:
  roamStatus = self->_roamStatus;
  v29 = @"SYS_ROAM_STATUS_NONE";
  switch(roamStatus)
  {
    case -1:
      break;
    case 0:
      v29 = @"SYS_ROAM_STATUS_OFF";
      break;
    case 1:
      v29 = @"SYS_ROAM_STATUS_ON";
      break;
    case 2:
      v29 = @"SYS_ROAM_STATUS_BLINK";
      break;
    case 3:
      v29 = @"SYS_ROAM_STATUS_OUT_OF_NEIGHBORHOOD";
      break;
    case 4:
      v29 = @"SYS_ROAM_STATUS_OUT_OF_BLDG";
      break;
    case 5:
      v29 = @"SYS_ROAM_STATUS_PREF_SYS";
      break;
    case 6:
      v29 = @"SYS_ROAM_STATUS_AVAIL_SYS";
      break;
    case 7:
      v29 = @"SYS_ROAM_STATUS_ALLIANCE_PARTNER";
      break;
    case 8:
      v29 = @"SYS_ROAM_STATUS_PREMIUM_PARTNER";
      break;
    case 9:
      v29 = @"SYS_ROAM_STATUS_FULL_SVC";
      break;
    case 10:
      v29 = @"SYS_ROAM_STATUS_PARTIAL_SVC";
      break;
    case 11:
      v29 = @"SYS_ROAM_STATUS_BANNER_ON";
      break;
    case 12:
      v29 = @"SYS_ROAM_STATUS_BANNER_OFF";
      break;
    default:
      if (roamStatus == 64)
      {
        v29 = @"SYS_ROAM_STATUS_HOME_SYSTEM";
      }

      else
      {
        v29 = [NSString stringWithFormat:@"(unknown: %i)", self->_roamStatus];
      }

      break;
  }

  [v3 setObject:v29 forKey:@"roam_status"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_22:
    v10 = [NSNumber numberWithUnsignedInt:self->_asubsId];
    [v3 setObject:v10 forKey:@"asubs_id"];
  }

LABEL_23:
  simPlmn = self->_simPlmn;
  if (simPlmn)
  {
    [v3 setObject:simPlmn forKey:@"sim_plmn"];
  }

  plmn2nd = self->_plmn2nd;
  if (plmn2nd)
  {
    [v3 setObject:plmn2nd forKey:@"plmn_2nd"];
  }

  v13 = self->_has;
  if ((*&v13 & 0x400) != 0)
  {
    v30 = [NSNumber numberWithUnsignedInt:self->_lac2nd];
    [v3 setObject:v30 forKey:@"lac_2nd"];

    v13 = self->_has;
    if ((*&v13 & 0x800000) == 0)
    {
LABEL_29:
      if ((*&v13 & 0x80000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v13 & 0x800000) == 0)
  {
    goto LABEL_29;
  }

  v31 = [NSNumber numberWithInt:self->_sysMode2nd];
  [v3 setObject:v31 forKey:@"sys_mode_2nd"];

  v13 = self->_has;
  if ((*&v13 & 0x80000) == 0)
  {
LABEL_30:
    if ((*&v13 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

LABEL_58:
  v32 = [NSNumber numberWithInt:self->_srvStatus2nd];
  [v3 setObject:v32 forKey:@"srv_status_2nd"];

  v13 = self->_has;
  if ((*&v13 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v13 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

LABEL_59:
  v33 = [NSNumber numberWithInt:self->_srvDomain2nd];
  [v3 setObject:v33 forKey:@"srv_domain_2nd"];

  v13 = self->_has;
  if ((*&v13 & 8) == 0)
  {
LABEL_32:
    if ((*&v13 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_61;
  }

LABEL_60:
  v34 = [NSNumber numberWithUnsignedInt:self->_cellId2nd];
  [v3 setObject:v34 forKey:@"cell_id_2nd"];

  v13 = self->_has;
  if ((*&v13 & 0x100) == 0)
  {
LABEL_33:
    if ((*&v13 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_62;
  }

LABEL_61:
  v35 = [NSNumber numberWithInt:self->_hdrPersonality];
  [v3 setObject:v35 forKey:@"hdr_personality"];

  v13 = self->_has;
  if ((*&v13 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v13 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_63;
  }

LABEL_62:
  v36 = [NSNumber numberWithUnsignedInt:self->_elapsedMs];
  [v3 setObject:v36 forKey:@"elapsed_ms"];

  v13 = self->_has;
  if ((*&v13 & 0x1000) == 0)
  {
LABEL_35:
    if ((*&v13 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_64;
  }

LABEL_63:
  v37 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v37 forKey:@"num_subs"];

  v13 = self->_has;
  if ((*&v13 & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&v13 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

LABEL_64:
  v38 = [NSNumber numberWithBool:self->_upperLayerIndication];
  [v3 setObject:v38 forKey:@"upper_layer_indication"];

  v13 = self->_has;
  if ((*&v13 & 0x4000000) == 0)
  {
LABEL_37:
    if ((*&v13 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_66;
  }

LABEL_65:
  v39 = [NSNumber numberWithBool:self->_scgEverConfigured];
  [v3 setObject:v39 forKey:@"scg_ever_configured"];

  v13 = self->_has;
  if ((*&v13 & 0x2000) == 0)
  {
LABEL_38:
    if ((*&v13 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_67:
    v41 = [NSNumber numberWithUnsignedInt:self->_uiNr5gSwitch];
    [v3 setObject:v41 forKey:@"ui_nr5g_switch"];

    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_66:
  v40 = [NSNumber numberWithUnsignedInt:self->_psPref];
  [v3 setObject:v40 forKey:@"ps_pref"];

  v13 = self->_has;
  if ((*&v13 & 0x1000000) != 0)
  {
    goto LABEL_67;
  }

LABEL_39:
  if ((*&v13 & 0x20) != 0)
  {
LABEL_40:
    v14 = [NSNumber numberWithUnsignedInt:self->_dynNr5gEnabling];
    [v3 setObject:v14 forKey:@"dyn_nr5g_enabling"];
  }

LABEL_41:
  v15 = v3;

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
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  version = self->_version;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_4:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  if (self->_simHplmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    standbyPref = self->_standbyPref;
    PBDataWriterWriteInt32Field();
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x8000) != 0)
  {
    sid = self->_sid;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((*&v7 & 0x800) == 0)
    {
LABEL_13:
      if ((*&v7 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_49;
    }
  }

  else if ((*&v7 & 0x800) == 0)
  {
    goto LABEL_13;
  }

  nid = self->_nid;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 4) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  cellId = self->_cellId;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_15:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  lac = self->_lac;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_16:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  gizmoMode = self->_gizmoMode;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  companionType = self->_companionType;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 0x400000) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  sysMode = self->_sysMode;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  srvStatus = self->_srvStatus;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((*&v7 & 0x10000) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  srvDomain = self->_srvDomain;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_21:
    if ((*&v7 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_56:
  roamStatus = self->_roamStatus;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_22:
    asubsId = self->_asubsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_23:
  if (self->_simPlmn)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_plmn2nd)
  {
    PBDataWriterWriteDataField();
  }

  v9 = self->_has;
  if ((*&v9 & 0x400) != 0)
  {
    lac2nd = self->_lac2nd;
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
    if ((*&v9 & 0x800000) == 0)
    {
LABEL_29:
      if ((*&v9 & 0x80000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_60;
    }
  }

  else if ((*&v9 & 0x800000) == 0)
  {
    goto LABEL_29;
  }

  sysMode2nd = self->_sysMode2nd;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  srvStatus2nd = self->_srvStatus2nd;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v9 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  srvDomain2nd = self->_srvDomain2nd;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_32:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  cellId2nd = self->_cellId2nd;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_33:
    if ((*&v9 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  hdrPersonality = self->_hdrPersonality;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v9 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  elapsedMs = self->_elapsedMs;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x1000) == 0)
  {
LABEL_35:
    if ((*&v9 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&v9 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  upperLayerIndication = self->_upperLayerIndication;
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x4000000) == 0)
  {
LABEL_37:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_68;
  }

LABEL_67:
  scgEverConfigured = self->_scgEverConfigured;
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_38:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

LABEL_68:
  psPref = self->_psPref;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_39:
    if ((*&v9 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_69:
  uiNr5gSwitch = self->_uiNr5gSwitch;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_40:
    dynNr5gEnabling = self->_dynNr5gEnabling;
    PBDataWriterWriteUint32Field();
  }

LABEL_41:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 39) |= 1u;
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 37) = self->_version;
  *(toCopy + 39) |= 0x2000000u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_4:
    *(toCopy + 33) = self->_subsId;
    *(toCopy + 39) |= 0x200000u;
  }

LABEL_5:
  v8 = toCopy;
  if (self->_simHplmn)
  {
    [toCopy setSimHplmn:?];
    toCopy = v8;
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    *(toCopy + 32) = self->_standbyPref;
    *(toCopy + 39) |= 0x100000u;
  }

  if (self->_plmn)
  {
    [v8 setPlmn:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((*&v6 & 0x8000) != 0)
  {
    *(toCopy + 22) = self->_sid;
    *(toCopy + 39) |= 0x8000u;
    v6 = self->_has;
    if ((*&v6 & 0x800) == 0)
    {
LABEL_13:
      if ((*&v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_49;
    }
  }

  else if ((*&v6 & 0x800) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 14) = self->_nid;
  *(toCopy + 39) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_14:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 5) = self->_cellId;
  *(toCopy + 39) |= 4u;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 12) = self->_lac;
  *(toCopy + 39) |= 0x200u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 10) = self->_gizmoMode;
  *(toCopy + 39) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 7) = self->_companionType;
  *(toCopy + 39) |= 0x10u;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 34) = self->_sysMode;
  *(toCopy + 39) |= 0x400000u;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(toCopy + 30) = self->_srvStatus;
  *(toCopy + 39) |= 0x40000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(toCopy + 28) = self->_srvDomain;
  *(toCopy + 39) |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_21:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_56:
  *(toCopy + 21) = self->_roamStatus;
  *(toCopy + 39) |= 0x4000u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_22:
    *(toCopy + 4) = self->_asubsId;
    *(toCopy + 39) |= 2u;
  }

LABEL_23:
  if (self->_simPlmn)
  {
    [v8 setSimPlmn:?];
    toCopy = v8;
  }

  if (self->_plmn2nd)
  {
    [v8 setPlmn2nd:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((*&v7 & 0x400) != 0)
  {
    *(toCopy + 13) = self->_lac2nd;
    *(toCopy + 39) |= 0x400u;
    v7 = self->_has;
    if ((*&v7 & 0x800000) == 0)
    {
LABEL_29:
      if ((*&v7 & 0x80000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_60;
    }
  }

  else if ((*&v7 & 0x800000) == 0)
  {
    goto LABEL_29;
  }

  *(toCopy + 35) = self->_sysMode2nd;
  *(toCopy + 39) |= 0x800000u;
  v7 = self->_has;
  if ((*&v7 & 0x80000) == 0)
  {
LABEL_30:
    if ((*&v7 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(toCopy + 31) = self->_srvStatus2nd;
  *(toCopy + 39) |= 0x80000u;
  v7 = self->_has;
  if ((*&v7 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(toCopy + 29) = self->_srvDomain2nd;
  *(toCopy + 39) |= 0x20000u;
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(toCopy + 6) = self->_cellId2nd;
  *(toCopy + 39) |= 8u;
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_33:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(toCopy + 11) = self->_hdrPersonality;
  *(toCopy + 39) |= 0x100u;
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(toCopy + 9) = self->_elapsedMs;
  *(toCopy + 39) |= 0x40u;
  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_35:
    if ((*&v7 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(toCopy + 15) = self->_numSubs;
  *(toCopy + 39) |= 0x1000u;
  v7 = self->_has;
  if ((*&v7 & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&v7 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(toCopy + 153) = self->_upperLayerIndication;
  *(toCopy + 39) |= 0x8000000u;
  v7 = self->_has;
  if ((*&v7 & 0x4000000) == 0)
  {
LABEL_37:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(toCopy + 152) = self->_scgEverConfigured;
  *(toCopy + 39) |= 0x4000000u;
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_38:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(toCopy + 20) = self->_psPref;
  *(toCopy + 39) |= 0x2000u;
  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_39:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_69:
  *(toCopy + 36) = self->_uiNr5gSwitch;
  *(toCopy + 39) |= 0x1000000u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_40:
    *(toCopy + 8) = self->_dynNr5gEnabling;
    *(toCopy + 39) |= 0x20u;
  }

LABEL_41:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 39) |= 1u;
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 37) = self->_version;
  *(v5 + 39) |= 0x2000000u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_4:
    *(v5 + 33) = self->_subsId;
    *(v5 + 39) |= 0x200000u;
  }

LABEL_5:
  v8 = [(NSData *)self->_simHplmn copyWithZone:zone];
  v9 = v6[12];
  v6[12] = v8;

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    *(v6 + 32) = self->_standbyPref;
    *(v6 + 39) |= 0x100000u;
  }

  v10 = [(NSData *)self->_plmn copyWithZone:zone];
  v11 = v6[8];
  v6[8] = v10;

  v12 = self->_has;
  if ((*&v12 & 0x8000) != 0)
  {
    *(v6 + 22) = self->_sid;
    *(v6 + 39) |= 0x8000u;
    v12 = self->_has;
    if ((*&v12 & 0x800) == 0)
    {
LABEL_9:
      if ((*&v12 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }
  }

  else if ((*&v12 & 0x800) == 0)
  {
    goto LABEL_9;
  }

  *(v6 + 14) = self->_nid;
  *(v6 + 39) |= 0x800u;
  v12 = self->_has;
  if ((*&v12 & 4) == 0)
  {
LABEL_10:
    if ((*&v12 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 5) = self->_cellId;
  *(v6 + 39) |= 4u;
  v12 = self->_has;
  if ((*&v12 & 0x200) == 0)
  {
LABEL_11:
    if ((*&v12 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 12) = self->_lac;
  *(v6 + 39) |= 0x200u;
  v12 = self->_has;
  if ((*&v12 & 0x80) == 0)
  {
LABEL_12:
    if ((*&v12 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 10) = self->_gizmoMode;
  *(v6 + 39) |= 0x80u;
  v12 = self->_has;
  if ((*&v12 & 0x10) == 0)
  {
LABEL_13:
    if ((*&v12 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 7) = self->_companionType;
  *(v6 + 39) |= 0x10u;
  v12 = self->_has;
  if ((*&v12 & 0x400000) == 0)
  {
LABEL_14:
    if ((*&v12 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 34) = self->_sysMode;
  *(v6 + 39) |= 0x400000u;
  v12 = self->_has;
  if ((*&v12 & 0x40000) == 0)
  {
LABEL_15:
    if ((*&v12 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 30) = self->_srvStatus;
  *(v6 + 39) |= 0x40000u;
  v12 = self->_has;
  if ((*&v12 & 0x10000) == 0)
  {
LABEL_16:
    if ((*&v12 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 28) = self->_srvDomain;
  *(v6 + 39) |= 0x10000u;
  v12 = self->_has;
  if ((*&v12 & 0x4000) == 0)
  {
LABEL_17:
    if ((*&v12 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_46:
  *(v6 + 21) = self->_roamStatus;
  *(v6 + 39) |= 0x4000u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    *(v6 + 4) = self->_asubsId;
    *(v6 + 39) |= 2u;
  }

LABEL_19:
  v13 = [(NSData *)self->_simPlmn copyWithZone:zone];
  v14 = v6[13];
  v6[13] = v13;

  v15 = [(NSData *)self->_plmn2nd copyWithZone:zone];
  v16 = v6[9];
  v6[9] = v15;

  v17 = self->_has;
  if ((*&v17 & 0x400) != 0)
  {
    *(v6 + 13) = self->_lac2nd;
    *(v6 + 39) |= 0x400u;
    v17 = self->_has;
    if ((*&v17 & 0x800000) == 0)
    {
LABEL_21:
      if ((*&v17 & 0x80000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_50;
    }
  }

  else if ((*&v17 & 0x800000) == 0)
  {
    goto LABEL_21;
  }

  *(v6 + 35) = self->_sysMode2nd;
  *(v6 + 39) |= 0x800000u;
  v17 = self->_has;
  if ((*&v17 & 0x80000) == 0)
  {
LABEL_22:
    if ((*&v17 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 31) = self->_srvStatus2nd;
  *(v6 + 39) |= 0x80000u;
  v17 = self->_has;
  if ((*&v17 & 0x20000) == 0)
  {
LABEL_23:
    if ((*&v17 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 29) = self->_srvDomain2nd;
  *(v6 + 39) |= 0x20000u;
  v17 = self->_has;
  if ((*&v17 & 8) == 0)
  {
LABEL_24:
    if ((*&v17 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 6) = self->_cellId2nd;
  *(v6 + 39) |= 8u;
  v17 = self->_has;
  if ((*&v17 & 0x100) == 0)
  {
LABEL_25:
    if ((*&v17 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 11) = self->_hdrPersonality;
  *(v6 + 39) |= 0x100u;
  v17 = self->_has;
  if ((*&v17 & 0x40) == 0)
  {
LABEL_26:
    if ((*&v17 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 9) = self->_elapsedMs;
  *(v6 + 39) |= 0x40u;
  v17 = self->_has;
  if ((*&v17 & 0x1000) == 0)
  {
LABEL_27:
    if ((*&v17 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 15) = self->_numSubs;
  *(v6 + 39) |= 0x1000u;
  v17 = self->_has;
  if ((*&v17 & 0x8000000) == 0)
  {
LABEL_28:
    if ((*&v17 & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 153) = self->_upperLayerIndication;
  *(v6 + 39) |= 0x8000000u;
  v17 = self->_has;
  if ((*&v17 & 0x4000000) == 0)
  {
LABEL_29:
    if ((*&v17 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 152) = self->_scgEverConfigured;
  *(v6 + 39) |= 0x4000000u;
  v17 = self->_has;
  if ((*&v17 & 0x2000) == 0)
  {
LABEL_30:
    if ((*&v17 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_59:
    *(v6 + 36) = self->_uiNr5gSwitch;
    *(v6 + 39) |= 0x1000000u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_32;
  }

LABEL_58:
  *(v6 + 20) = self->_psPref;
  *(v6 + 39) |= 0x2000u;
  v17 = self->_has;
  if ((*&v17 & 0x1000000) != 0)
  {
    goto LABEL_59;
  }

LABEL_31:
  if ((*&v17 & 0x20) != 0)
  {
LABEL_32:
    *(v6 + 8) = self->_dynNr5gEnabling;
    *(v6 + 39) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_158;
  }

  has = self->_has;
  v6 = *(equalCopy + 39);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_158;
    }
  }

  else if (v6)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_version != *(equalCopy + 37))
    {
      goto LABEL_158;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_subsId != *(equalCopy + 33))
    {
      goto LABEL_158;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_158;
  }

  simHplmn = self->_simHplmn;
  if (simHplmn | *(equalCopy + 12))
  {
    if (![(NSData *)simHplmn isEqual:?])
    {
      goto LABEL_158;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 39);
  if ((*&has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0 || self->_standbyPref != *(equalCopy + 32))
    {
      goto LABEL_158;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_158;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 8))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_158;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 39);
  if ((*&has & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || self->_sid != *(equalCopy + 22))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v10 & 0x800) == 0 || self->_nid != *(equalCopy + 14))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 0x800) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_cellId != *(equalCopy + 5))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v10 & 0x200) == 0 || self->_lac != *(equalCopy + 12))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 0x200) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_gizmoMode != *(equalCopy + 10))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_companionType != *(equalCopy + 7))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || self->_sysMode != *(equalCopy + 34))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 0x400000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v10 & 0x40000) == 0 || self->_srvStatus != *(equalCopy + 30))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 0x40000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || self->_srvDomain != *(equalCopy + 28))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0 || self->_roamStatus != *(equalCopy + 21))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 0x4000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_asubsId != *(equalCopy + 4))
    {
      goto LABEL_158;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_158;
  }

  simPlmn = self->_simPlmn;
  if (simPlmn | *(equalCopy + 13) && ![(NSData *)simPlmn isEqual:?])
  {
    goto LABEL_158;
  }

  plmn2nd = self->_plmn2nd;
  if (plmn2nd | *(equalCopy + 9))
  {
    if (![(NSData *)plmn2nd isEqual:?])
    {
      goto LABEL_158;
    }
  }

  v13 = self->_has;
  v14 = *(equalCopy + 39);
  if ((*&v13 & 0x400) != 0)
  {
    if ((v14 & 0x400) == 0 || self->_lac2nd != *(equalCopy + 13))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x400) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x800000) != 0)
  {
    if ((v14 & 0x800000) == 0 || self->_sysMode2nd != *(equalCopy + 35))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x800000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x80000) != 0)
  {
    if ((v14 & 0x80000) == 0 || self->_srvStatus2nd != *(equalCopy + 31))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x80000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x20000) != 0)
  {
    if ((v14 & 0x20000) == 0 || self->_srvDomain2nd != *(equalCopy + 29))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x20000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_cellId2nd != *(equalCopy + 6))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x100) != 0)
  {
    if ((v14 & 0x100) == 0 || self->_hdrPersonality != *(equalCopy + 11))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x100) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x40) != 0)
  {
    if ((v14 & 0x40) == 0 || self->_elapsedMs != *(equalCopy + 9))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x40) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x1000) != 0)
  {
    if ((v14 & 0x1000) == 0 || self->_numSubs != *(equalCopy + 15))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x1000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x8000000) != 0)
  {
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_158;
    }

    v15 = *(equalCopy + 153);
    if (self->_upperLayerIndication)
    {
      if ((*(equalCopy + 153) & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    else if (*(equalCopy + 153))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x8000000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x4000000) == 0)
  {
    if ((v14 & 0x4000000) == 0)
    {
      goto LABEL_131;
    }

LABEL_158:
    v17 = 0;
    goto LABEL_159;
  }

  if ((v14 & 0x4000000) == 0)
  {
    goto LABEL_158;
  }

  v16 = *(equalCopy + 152);
  if (self->_scgEverConfigured)
  {
    if ((*(equalCopy + 152) & 1) == 0)
    {
      goto LABEL_158;
    }
  }

  else if (*(equalCopy + 152))
  {
    goto LABEL_158;
  }

LABEL_131:
  if ((*&v13 & 0x2000) != 0)
  {
    if ((v14 & 0x2000) == 0 || self->_psPref != *(equalCopy + 20))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x2000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x1000000) != 0)
  {
    if ((v14 & 0x1000000) == 0 || self->_uiNr5gSwitch != *(equalCopy + 36))
    {
      goto LABEL_158;
    }
  }

  else if ((v14 & 0x1000000) != 0)
  {
    goto LABEL_158;
  }

  if ((*&v13 & 0x20) != 0)
  {
    if ((v14 & 0x20) == 0 || self->_dynNr5gEnabling != *(equalCopy + 8))
    {
      goto LABEL_158;
    }

    v17 = 1;
  }

  else
  {
    v17 = (*(equalCopy + 39) & 0x20) == 0;
  }

LABEL_159:

  return v17;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 1) == 0)
  {
    v38 = 0;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v37 = 0;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v38 = 2654435761u * self->_timestamp;
  if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v37 = 2654435761 * self->_version;
  if ((*&has & 0x200000) != 0)
  {
LABEL_4:
    v36 = 2654435761 * self->_subsId;
    goto LABEL_8;
  }

LABEL_7:
  v36 = 0;
LABEL_8:
  v35 = [(NSData *)self->_simHplmn hash];
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    v34 = 2654435761 * self->_standbyPref;
  }

  else
  {
    v34 = 0;
  }

  v33 = [(NSData *)self->_plmn hash];
  v4 = self->_has;
  if ((*&v4 & 0x8000) != 0)
  {
    v32 = 2654435761 * self->_sid;
    if ((*&v4 & 0x800) != 0)
    {
LABEL_13:
      v31 = 2654435761 * self->_nid;
      if ((*&v4 & 4) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v32 = 0;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_13;
    }
  }

  v31 = 0;
  if ((*&v4 & 4) != 0)
  {
LABEL_14:
    v30 = 2654435761 * self->_cellId;
    if ((*&v4 & 0x200) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v30 = 0;
  if ((*&v4 & 0x200) != 0)
  {
LABEL_15:
    v29 = 2654435761 * self->_lac;
    if ((*&v4 & 0x80) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v29 = 0;
  if ((*&v4 & 0x80) != 0)
  {
LABEL_16:
    v28 = 2654435761 * self->_gizmoMode;
    if ((*&v4 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  v28 = 0;
  if ((*&v4 & 0x10) != 0)
  {
LABEL_17:
    v5 = 2654435761 * self->_companionType;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  v5 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_18:
    v6 = 2654435761 * self->_sysMode;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  v6 = 0;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_19:
    v7 = 2654435761 * self->_srvStatus;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_30:
  v7 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_20:
    v8 = 2654435761 * self->_srvDomain;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_21;
    }

LABEL_32:
    v9 = 0;
    if ((*&v4 & 2) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_31:
  v8 = 0;
  if ((*&v4 & 0x4000) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  v9 = 2654435761 * self->_roamStatus;
  if ((*&v4 & 2) != 0)
  {
LABEL_22:
    v10 = 2654435761 * self->_asubsId;
    goto LABEL_34;
  }

LABEL_33:
  v10 = 0;
LABEL_34:
  v11 = [(NSData *)self->_simPlmn hash];
  v12 = [(NSData *)self->_plmn2nd hash];
  v13 = self->_has;
  if ((*&v13 & 0x400) != 0)
  {
    v14 = 2654435761 * self->_lac2nd;
    if ((*&v13 & 0x800000) != 0)
    {
LABEL_36:
      v15 = 2654435761 * self->_sysMode2nd;
      if ((*&v13 & 0x80000) != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x800000) != 0)
    {
      goto LABEL_36;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x80000) != 0)
  {
LABEL_37:
    v16 = 2654435761 * self->_srvStatus2nd;
    if ((*&v13 & 0x20000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  v16 = 0;
  if ((*&v13 & 0x20000) != 0)
  {
LABEL_38:
    v17 = 2654435761 * self->_srvDomain2nd;
    if ((*&v13 & 8) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

LABEL_51:
  v17 = 0;
  if ((*&v13 & 8) != 0)
  {
LABEL_39:
    v18 = 2654435761 * self->_cellId2nd;
    if ((*&v13 & 0x100) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

LABEL_52:
  v18 = 0;
  if ((*&v13 & 0x100) != 0)
  {
LABEL_40:
    v19 = 2654435761 * self->_hdrPersonality;
    if ((*&v13 & 0x40) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

LABEL_53:
  v19 = 0;
  if ((*&v13 & 0x40) != 0)
  {
LABEL_41:
    v20 = 2654435761 * self->_elapsedMs;
    if ((*&v13 & 0x1000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_55;
  }

LABEL_54:
  v20 = 0;
  if ((*&v13 & 0x1000) != 0)
  {
LABEL_42:
    v21 = 2654435761 * self->_numSubs;
    if ((*&v13 & 0x8000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_56;
  }

LABEL_55:
  v21 = 0;
  if ((*&v13 & 0x8000000) != 0)
  {
LABEL_43:
    v22 = 2654435761 * self->_upperLayerIndication;
    if ((*&v13 & 0x4000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_57;
  }

LABEL_56:
  v22 = 0;
  if ((*&v13 & 0x4000000) != 0)
  {
LABEL_44:
    v23 = 2654435761 * self->_scgEverConfigured;
    if ((*&v13 & 0x2000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_57:
  v23 = 0;
  if ((*&v13 & 0x2000) != 0)
  {
LABEL_45:
    v24 = 2654435761 * self->_psPref;
    if ((*&v13 & 0x1000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_59:
    v25 = 0;
    if ((*&v13 & 0x20) != 0)
    {
      goto LABEL_47;
    }

LABEL_60:
    v26 = 0;
    return v37 ^ v38 ^ v36 ^ v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
  }

LABEL_58:
  v24 = 0;
  if ((*&v13 & 0x1000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_46:
  v25 = 2654435761 * self->_uiNr5gSwitch;
  if ((*&v13 & 0x20) == 0)
  {
    goto LABEL_60;
  }

LABEL_47:
  v26 = 2654435761 * self->_dynNr5gEnabling;
  return v37 ^ v38 ^ v36 ^ v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 39);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 39);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x200000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  self->_version = *(fromCopy + 37);
  *&self->_has |= 0x2000000u;
  if ((*(fromCopy + 39) & 0x200000) != 0)
  {
LABEL_4:
    self->_subsId = *(fromCopy + 33);
    *&self->_has |= 0x200000u;
  }

LABEL_5:
  v8 = fromCopy;
  if (*(fromCopy + 12))
  {
    [(CellularRatLacSrvInfo *)self setSimHplmn:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 158) & 0x10) != 0)
  {
    self->_standbyPref = *(fromCopy + 32);
    *&self->_has |= 0x100000u;
  }

  if (*(fromCopy + 8))
  {
    [(CellularRatLacSrvInfo *)self setPlmn:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 39);
  if ((v6 & 0x8000) != 0)
  {
    self->_sid = *(fromCopy + 22);
    *&self->_has |= 0x8000u;
    v6 = *(fromCopy + 39);
    if ((v6 & 0x800) == 0)
    {
LABEL_13:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_49;
    }
  }

  else if ((v6 & 0x800) == 0)
  {
    goto LABEL_13;
  }

  self->_nid = *(fromCopy + 14);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 39);
  if ((v6 & 4) == 0)
  {
LABEL_14:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_cellId = *(fromCopy + 5);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 39);
  if ((v6 & 0x200) == 0)
  {
LABEL_15:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_lac = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v6 = *(fromCopy + 39);
  if ((v6 & 0x80) == 0)
  {
LABEL_16:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_gizmoMode = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 39);
  if ((v6 & 0x10) == 0)
  {
LABEL_17:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_companionType = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 39);
  if ((v6 & 0x400000) == 0)
  {
LABEL_18:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_sysMode = *(fromCopy + 34);
  *&self->_has |= 0x400000u;
  v6 = *(fromCopy + 39);
  if ((v6 & 0x40000) == 0)
  {
LABEL_19:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_srvStatus = *(fromCopy + 30);
  *&self->_has |= 0x40000u;
  v6 = *(fromCopy + 39);
  if ((v6 & 0x10000) == 0)
  {
LABEL_20:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_srvDomain = *(fromCopy + 28);
  *&self->_has |= 0x10000u;
  v6 = *(fromCopy + 39);
  if ((v6 & 0x4000) == 0)
  {
LABEL_21:
    if ((v6 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_56:
  self->_roamStatus = *(fromCopy + 21);
  *&self->_has |= 0x4000u;
  if ((*(fromCopy + 39) & 2) != 0)
  {
LABEL_22:
    self->_asubsId = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_23:
  if (*(fromCopy + 13))
  {
    [(CellularRatLacSrvInfo *)self setSimPlmn:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 9))
  {
    [(CellularRatLacSrvInfo *)self setPlmn2nd:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 39);
  if ((v7 & 0x400) != 0)
  {
    self->_lac2nd = *(fromCopy + 13);
    *&self->_has |= 0x400u;
    v7 = *(fromCopy + 39);
    if ((v7 & 0x800000) == 0)
    {
LABEL_29:
      if ((v7 & 0x80000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_60;
    }
  }

  else if ((v7 & 0x800000) == 0)
  {
    goto LABEL_29;
  }

  self->_sysMode2nd = *(fromCopy + 35);
  *&self->_has |= 0x800000u;
  v7 = *(fromCopy + 39);
  if ((v7 & 0x80000) == 0)
  {
LABEL_30:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_srvStatus2nd = *(fromCopy + 31);
  *&self->_has |= 0x80000u;
  v7 = *(fromCopy + 39);
  if ((v7 & 0x20000) == 0)
  {
LABEL_31:
    if ((v7 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_srvDomain2nd = *(fromCopy + 29);
  *&self->_has |= 0x20000u;
  v7 = *(fromCopy + 39);
  if ((v7 & 8) == 0)
  {
LABEL_32:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_cellId2nd = *(fromCopy + 6);
  *&self->_has |= 8u;
  v7 = *(fromCopy + 39);
  if ((v7 & 0x100) == 0)
  {
LABEL_33:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_hdrPersonality = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v7 = *(fromCopy + 39);
  if ((v7 & 0x40) == 0)
  {
LABEL_34:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_elapsedMs = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v7 = *(fromCopy + 39);
  if ((v7 & 0x1000) == 0)
  {
LABEL_35:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_numSubs = *(fromCopy + 15);
  *&self->_has |= 0x1000u;
  v7 = *(fromCopy + 39);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_upperLayerIndication = *(fromCopy + 153);
  *&self->_has |= 0x8000000u;
  v7 = *(fromCopy + 39);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_scgEverConfigured = *(fromCopy + 152);
  *&self->_has |= 0x4000000u;
  v7 = *(fromCopy + 39);
  if ((v7 & 0x2000) == 0)
  {
LABEL_38:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_psPref = *(fromCopy + 20);
  *&self->_has |= 0x2000u;
  v7 = *(fromCopy + 39);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_39:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_69:
  self->_uiNr5gSwitch = *(fromCopy + 36);
  *&self->_has |= 0x1000000u;
  if ((*(fromCopy + 39) & 0x20) != 0)
  {
LABEL_40:
    self->_dynNr5gEnabling = *(fromCopy + 8);
    *&self->_has |= 0x20u;
  }

LABEL_41:
}

@end