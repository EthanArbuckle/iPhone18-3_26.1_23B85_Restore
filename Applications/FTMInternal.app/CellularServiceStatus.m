@interface CellularServiceStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRoamStatus:(id)a3;
- (int)StringAsSrvDomain:(id)a3;
- (int)StringAsSrvStatus:(id)a3;
- (int)StringAsSysMode:(id)a3;
- (int)roamStatus;
- (int)srvDomain;
- (int)srvStatus;
- (int)sysMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasRoamStatus:(BOOL)a3;
- (void)setHasSrvDomain:(BOOL)a3;
- (void)setHasSrvStatus:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasSysMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularServiceStatus

- (int)sysMode
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_sysMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSysMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsSysMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA_HDR"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)srvStatus
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_srvStatus;
  }

  else
  {
    return -1;
  }
}

- (void)setHasSrvStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)StringAsSrvStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_SRV_STATUS_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LIMITED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_SRV"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LIMITED_REGIONAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_PWR_SAVE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_MAX"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_LOW_POWER_MODE"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_STATUS_CMAS_ONLY_MODE"])
  {
    v4 = 101;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)srvDomain
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_srvDomain;
  }

  else
  {
    return -1;
  }
}

- (void)setHasSrvDomain:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)StringAsSrvDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_CS_ONLY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_PS_ONLY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_CS_PS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_CAMPED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_SRV_DOMAIN_MAX"])
  {
    v4 = 5;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)roamStatus
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_roamStatus;
  }

  else
  {
    return -1;
  }
}

- (void)setHasRoamStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsRoamStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_ROAM_STATUS_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_OFF"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_ON"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_BLINK"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_OUT_OF_NEIGHBORHOOD"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_OUT_OF_BLDG"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_PREF_SYS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_AVAIL_SYS"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_ALLIANCE_PARTNER"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_PREMIUM_PARTNER"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_FULL_SVC"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_PARTIAL_SVC"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_BANNER_ON"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_BANNER_OFF"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_HOME_SYSTEM"])
  {
    v4 = 64;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasDurationMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumSubs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPsPref:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularServiceStatus;
  v3 = [(CellularServiceStatus *)&v7 description];
  v4 = [(CellularServiceStatus *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  sysMode = self->_sysMode;
  if (sysMode < 0x10 && ((0x9FFFu >> sysMode) & 1) != 0)
  {
    v13 = *(&off_1003179D8 + sysMode);
  }

  else
  {
    v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_sysMode];
  }

  [v3 setObject:v13 forKey:@"sys_mode"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_28:
  srvStatus = self->_srvStatus;
  if (srvStatus <= 2)
  {
    if (srvStatus <= 0)
    {
      if (srvStatus == -1)
      {
        v17 = @"SYS_SRV_STATUS_NONE";
        goto LABEL_48;
      }

      if (!srvStatus)
      {
        v17 = @"SYS_SRV_STATUS_NO_SRV";
        goto LABEL_48;
      }

LABEL_47:
      v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_srvStatus];
      goto LABEL_48;
    }

    if (srvStatus == 1)
    {
      v17 = @"SYS_SRV_STATUS_LIMITED";
    }

    else
    {
      v17 = @"SYS_SRV_STATUS_SRV";
    }
  }

  else
  {
    if (srvStatus > 4)
    {
      switch(srvStatus)
      {
        case 5:
          v17 = @"SYS_SRV_STATUS_MAX";
          goto LABEL_48;
        case 100:
          v17 = @"SYS_SRV_STATUS_LOW_POWER_MODE";
          goto LABEL_48;
        case 101:
          v17 = @"SYS_SRV_STATUS_CMAS_ONLY_MODE";
          goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (srvStatus == 3)
    {
      v17 = @"SYS_SRV_STATUS_LIMITED_REGIONAL";
    }

    else
    {
      v17 = @"SYS_SRV_STATUS_PWR_SAVE";
    }
  }

LABEL_48:
  [v3 setObject:v17 forKey:@"srv_status"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_49:
  v18 = self->_srvDomain + 1;
  if (v18 >= 7)
  {
    v19 = [NSString stringWithFormat:@"(unknown: %i)", self->_srvDomain];
  }

  else
  {
    v19 = *(&off_100317A58 + v18);
  }

  [v3 setObject:v19 forKey:@"srv_domain"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_53:
  roamStatus = self->_roamStatus;
  v21 = @"SYS_ROAM_STATUS_NONE";
  switch(roamStatus)
  {
    case -1:
      break;
    case 0:
      v21 = @"SYS_ROAM_STATUS_OFF";
      break;
    case 1:
      v21 = @"SYS_ROAM_STATUS_ON";
      break;
    case 2:
      v21 = @"SYS_ROAM_STATUS_BLINK";
      break;
    case 3:
      v21 = @"SYS_ROAM_STATUS_OUT_OF_NEIGHBORHOOD";
      break;
    case 4:
      v21 = @"SYS_ROAM_STATUS_OUT_OF_BLDG";
      break;
    case 5:
      v21 = @"SYS_ROAM_STATUS_PREF_SYS";
      break;
    case 6:
      v21 = @"SYS_ROAM_STATUS_AVAIL_SYS";
      break;
    case 7:
      v21 = @"SYS_ROAM_STATUS_ALLIANCE_PARTNER";
      break;
    case 8:
      v21 = @"SYS_ROAM_STATUS_PREMIUM_PARTNER";
      break;
    case 9:
      v21 = @"SYS_ROAM_STATUS_FULL_SVC";
      break;
    case 10:
      v21 = @"SYS_ROAM_STATUS_PARTIAL_SVC";
      break;
    case 11:
      v21 = @"SYS_ROAM_STATUS_BANNER_ON";
      break;
    case 12:
      v21 = @"SYS_ROAM_STATUS_BANNER_OFF";
      break;
    default:
      if (roamStatus == 64)
      {
        v21 = @"SYS_ROAM_STATUS_HOME_SYSTEM";
      }

      else
      {
        v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_roamStatus];
      }

      break;
  }

  [v3 setObject:v21 forKey:@"roam_status"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInt:self->_durationMs];
    [v3 setObject:v5 forKey:@"duration_ms"];
  }

LABEL_8:
  simHplmn = self->_simHplmn;
  if (simHplmn)
  {
    [v3 setObject:simHplmn forKey:@"sim_hplmn"];
  }

  v7 = self->_has;
  if ((v7 & 0x80) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v14 forKey:@"subs_id"];

    v7 = self->_has;
    if ((v7 & 4) == 0)
    {
LABEL_12:
      if ((v7 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_12;
  }

  v15 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v15 forKey:@"num_subs"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    v8 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v8 forKey:@"ps_pref"];
  }

LABEL_14:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v16 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v16;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  sysMode = self->_sysMode;
  PBDataWriterWriteInt32Field();
  v4 = v16;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  srvStatus = self->_srvStatus;
  PBDataWriterWriteInt32Field();
  v4 = v16;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  srvDomain = self->_srvDomain;
  PBDataWriterWriteInt32Field();
  v4 = v16;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_23:
  roamStatus = self->_roamStatus;
  PBDataWriterWriteInt32Field();
  v4 = v16;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    v4 = v16;
  }

LABEL_8:
  if (self->_simHplmn)
  {
    PBDataWriterWriteDataField();
    v4 = v16;
  }

  v7 = self->_has;
  if ((v7 & 0x80) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v4 = v16;
    v7 = self->_has;
    if ((v7 & 4) == 0)
    {
LABEL_12:
      if ((v7 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_12;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  v4 = v16;
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
    v4 = v16;
  }

LABEL_14:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
    v4 = v16;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 32) |= 1u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 15) = self->_sysMode;
  *(v4 + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 13) = self->_srvStatus;
  *(v4 + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 12) = self->_srvDomain;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_23:
  *(v4 + 9) = self->_roamStatus;
  *(v4 + 32) |= 0x10u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    *(v4 + 4) = self->_durationMs;
    *(v4 + 32) |= 2u;
  }

LABEL_8:
  v7 = v4;
  if (self->_simHplmn)
  {
    [v4 setSimHplmn:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x80) != 0)
  {
    *(v4 + 14) = self->_subsId;
    *(v4 + 32) |= 0x80u;
    v6 = self->_has;
    if ((v6 & 4) == 0)
    {
LABEL_12:
      if ((v6 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_12;
  }

  *(v4 + 5) = self->_numSubs;
  *(v4 + 32) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    *(v4 + 8) = self->_psPref;
    *(v4 + 32) |= 8u;
  }

LABEL_14:
  if (self->_plmn)
  {
    [v7 setPlmn:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 32) |= 1u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 15) = self->_sysMode;
  *(v5 + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 13) = self->_srvStatus;
  *(v5 + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 12) = self->_srvDomain;
  *(v5 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  *(v5 + 9) = self->_roamStatus;
  *(v5 + 32) |= 0x10u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    *(v5 + 4) = self->_durationMs;
    *(v5 + 32) |= 2u;
  }

LABEL_8:
  v8 = [(NSData *)self->_simHplmn copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v10 = self->_has;
  if ((v10 & 0x80) == 0)
  {
    if ((v10 & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    *(v6 + 5) = self->_numSubs;
    *(v6 + 32) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *(v6 + 14) = self->_subsId;
  *(v6 + 32) |= 0x80u;
  v10 = self->_has;
  if ((v10 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v10 & 8) != 0)
  {
LABEL_11:
    *(v6 + 8) = self->_psPref;
    *(v6 + 32) |= 8u;
  }

LABEL_12:
  v11 = [(NSData *)self->_plmn copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_52;
    }
  }

  else if (v6)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 32) & 0x100) == 0 || self->_sysMode != *(v4 + 15))
    {
      goto LABEL_52;
    }
  }

  else if ((*(v4 + 32) & 0x100) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_srvStatus != *(v4 + 13))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_srvDomain != *(v4 + 12))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_roamStatus != *(v4 + 9))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_durationMs != *(v4 + 4))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_52;
  }

  simHplmn = self->_simHplmn;
  if (simHplmn | *(v4 + 5))
  {
    if (![(NSData *)simHplmn isEqual:?])
    {
LABEL_52:
      v10 = 0;
      goto LABEL_53;
    }

    has = self->_has;
  }

  v8 = *(v4 + 32);
  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_subsId != *(v4 + 14))
    {
      goto LABEL_52;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_numSubs != *(v4 + 5))
    {
      goto LABEL_52;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_psPref != *(v4 + 8))
    {
      goto LABEL_52;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_52;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 3))
  {
    v10 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_53:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_sysMode;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_srvStatus;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_srvDomain;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_roamStatus;
  if ((has & 2) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_durationMs;
    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v10 = [(NSData *)self->_simHplmn hash];
  v11 = self->_has;
  if ((v11 & 0x80) == 0)
  {
    v12 = 0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v13 = 0;
    if ((v11 & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v14 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v12 ^ v13 ^ v14 ^ v10 ^ [(NSData *)self->_plmn hash];
  }

  v12 = 2654435761 * self->_subsId;
  if ((v11 & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v13 = 2654435761 * self->_numSubs;
  if ((v11 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v14 = 2654435761 * self->_psPref;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v12 ^ v13 ^ v14 ^ v10 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v4 + 32) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_sysMode = *(v4 + 15);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_srvStatus = *(v4 + 13);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_srvDomain = *(v4 + 12);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_23:
  self->_roamStatus = *(v4 + 9);
  *&self->_has |= 0x10u;
  if ((*(v4 + 32) & 2) != 0)
  {
LABEL_7:
    self->_durationMs = *(v4 + 4);
    *&self->_has |= 2u;
  }

LABEL_8:
  v7 = v4;
  if (*(v4 + 5))
  {
    [(CellularServiceStatus *)self setSimHplmn:?];
    v4 = v7;
  }

  v6 = *(v4 + 32);
  if ((v6 & 0x80) != 0)
  {
    self->_subsId = *(v4 + 14);
    *&self->_has |= 0x80u;
    v6 = *(v4 + 32);
    if ((v6 & 4) == 0)
    {
LABEL_12:
      if ((v6 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_12;
  }

  self->_numSubs = *(v4 + 5);
  *&self->_has |= 4u;
  if ((*(v4 + 32) & 8) != 0)
  {
LABEL_13:
    self->_psPref = *(v4 + 8);
    *&self->_has |= 8u;
  }

LABEL_14:
  if (*(v4 + 3))
  {
    [(CellularServiceStatus *)self setPlmn:?];
    v4 = v7;
  }
}

@end