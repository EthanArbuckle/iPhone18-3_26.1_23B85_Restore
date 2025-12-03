@interface CellularRegAttempt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActiveRat:(id)rat;
- (int)StringAsRegServiceDomain:(id)domain;
- (int)StringAsServiceStatus:(id)status;
- (int)activeRat;
- (int)regServiceDomain;
- (int)serviceStatus;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActiveRat:(BOOL)rat;
- (void)setHasAttemptedPlmnCategory:(BOOL)category;
- (void)setHasCellId:(BOOL)id;
- (void)setHasDlFreq:(BOOL)freq;
- (void)setHasFreqBandInd:(BOOL)ind;
- (void)setHasHplmnScanAttemptsDisallowedDueToBl:(BOOL)bl;
- (void)setHasHplmnScanDuration:(BOOL)duration;
- (void)setHasHplmnScanNumOfAttempts:(BOOL)attempts;
- (void)setHasHplmnSearchPeriod:(BOOL)period;
- (void)setHasIsEhplmn:(BOOL)ehplmn;
- (void)setHasIsHplmn:(BOOL)hplmn;
- (void)setHasIsHplmnScanTriggered:(BOOL)triggered;
- (void)setHasIsPlmnForbiden:(BOOL)forbiden;
- (void)setHasIsRegAccepted:(BOOL)accepted;
- (void)setHasIsRoamingSteererPlmn:(BOOL)plmn;
- (void)setHasLac:(BOOL)lac;
- (void)setHasRegServiceDomain:(BOOL)domain;
- (void)setHasRejectCause:(BOOL)cause;
- (void)setHasRoamingDuration:(BOOL)duration;
- (void)setHasServiceStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation CellularRegAttempt

- (void)setHasCellId:(BOOL)id
{
  if (id)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasAttemptedPlmnCategory:(BOOL)category
{
  if (category)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (int)regServiceDomain
{
  if ((*(&self->_has + 1) & 8) != 0)
  {
    return self->_regServiceDomain;
  }

  else
  {
    return -1;
  }
}

- (void)setHasRegServiceDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (int)StringAsRegServiceDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:@"SYS_SRV_DOMAIN_NONE"])
  {
    v4 = -1;
  }

  else if ([domainCopy isEqualToString:@"SYS_SRV_DOMAIN_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([domainCopy isEqualToString:@"SYS_SRV_DOMAIN_CS_ONLY"])
  {
    v4 = 1;
  }

  else if ([domainCopy isEqualToString:@"SYS_SRV_DOMAIN_PS_ONLY"])
  {
    v4 = 2;
  }

  else if ([domainCopy isEqualToString:@"SYS_SRV_DOMAIN_CS_PS"])
  {
    v4 = 3;
  }

  else if ([domainCopy isEqualToString:@"SYS_SRV_DOMAIN_CAMPED"])
  {
    v4 = 4;
  }

  else if ([domainCopy isEqualToString:@"SYS_SRV_DOMAIN_MAX"])
  {
    v4 = 5;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)activeRat
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_activeRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasActiveRat:(BOOL)rat
{
  if (rat)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)StringAsActiveRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"SYS_RAT_GSM"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_UMTS"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_LTE"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_TDS"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_NR5G"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)serviceStatus
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_serviceStatus;
  }

  else
  {
    return -1;
  }
}

- (void)setHasServiceStatus:(BOOL)status
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

- (int)StringAsServiceStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"SYS_SRV_STATUS_NONE"])
  {
    v4 = -1;
  }

  else if ([statusCopy isEqualToString:@"SYS_SRV_STATUS_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"SYS_SRV_STATUS_LIMITED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"SYS_SRV_STATUS_SRV"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"SYS_SRV_STATUS_LIMITED_REGIONAL"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"SYS_SRV_STATUS_PWR_SAVE"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"SYS_SRV_STATUS_MAX"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"SYS_SRV_STATUS_LOW_POWER_MODE"])
  {
    v4 = 100;
  }

  else if ([statusCopy isEqualToString:@"SYS_SRV_STATUS_CMAS_ONLY_MODE"])
  {
    v4 = 101;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasRejectCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasDlFreq:(BOOL)freq
{
  if (freq)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasFreqBandInd:(BOOL)ind
{
  if (ind)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasLac:(BOOL)lac
{
  if (lac)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasIsRegAccepted:(BOOL)accepted
{
  if (accepted)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasIsHplmn:(BOOL)hplmn
{
  if (hplmn)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasIsEhplmn:(BOOL)ehplmn
{
  if (ehplmn)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasIsPlmnForbiden:(BOOL)forbiden
{
  if (forbiden)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasIsRoamingSteererPlmn:(BOOL)plmn
{
  if (plmn)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasIsHplmnScanTriggered:(BOOL)triggered
{
  if (triggered)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasRoamingDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasHplmnScanDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasHplmnScanNumOfAttempts:(BOOL)attempts
{
  if (attempts)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasHplmnSearchPeriod:(BOOL)period
{
  if (period)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasHplmnScanAttemptsDisallowedDueToBl:(BOOL)bl
{
  if (bl)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularRegAttempt;
  v3 = [(CellularRegAttempt *)&v7 description];
  dictionaryRepresentation = [(CellularRegAttempt *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  hplmn = self->_hplmn;
  if (hplmn)
  {
    [v3 setObject:hplmn forKey:@"hplmn"];
  }

  attemptedPlmn = self->_attemptedPlmn;
  if (attemptedPlmn)
  {
    [v3 setObject:attemptedPlmn forKey:@"attempted_plmn"];
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:self->_cellId];
    [v3 setObject:v12 forKey:@"cell_id"];

    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_9:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_9;
  }

  v13 = [NSNumber numberWithUnsignedInt:self->_attemptedPlmnCategory];
  [v3 setObject:v13 forKey:@"attempted_plmn_category"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_35:
  v14 = self->_regServiceDomain + 1;
  if (v14 >= 7)
  {
    v15 = [NSString stringWithFormat:@"(unknown: %i)", self->_regServiceDomain];
  }

  else
  {
    v15 = *(&off_100317C38 + v14);
  }

  [v3 setObject:v15 forKey:@"reg_service_domain"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_39:
  activeRat = self->_activeRat;
  if (activeRat >= 5)
  {
    v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_activeRat];
  }

  else
  {
    v17 = *(&off_100317C70 + activeRat);
  }

  [v3 setObject:v17 forKey:@"active_rat"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_64;
  }

LABEL_43:
  serviceStatus = self->_serviceStatus;
  if (serviceStatus <= 2)
  {
    if (serviceStatus <= 0)
    {
      if (serviceStatus == -1)
      {
        v19 = @"SYS_SRV_STATUS_NONE";
        goto LABEL_63;
      }

      if (!serviceStatus)
      {
        v19 = @"SYS_SRV_STATUS_NO_SRV";
        goto LABEL_63;
      }

LABEL_62:
      v19 = [NSString stringWithFormat:@"(unknown: %i)", self->_serviceStatus];
      goto LABEL_63;
    }

    if (serviceStatus == 1)
    {
      v19 = @"SYS_SRV_STATUS_LIMITED";
    }

    else
    {
      v19 = @"SYS_SRV_STATUS_SRV";
    }
  }

  else
  {
    if (serviceStatus > 4)
    {
      switch(serviceStatus)
      {
        case 5:
          v19 = @"SYS_SRV_STATUS_MAX";
          goto LABEL_63;
        case 100:
          v19 = @"SYS_SRV_STATUS_LOW_POWER_MODE";
          goto LABEL_63;
        case 101:
          v19 = @"SYS_SRV_STATUS_CMAS_ONLY_MODE";
          goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (serviceStatus == 3)
    {
      v19 = @"SYS_SRV_STATUS_LIMITED_REGIONAL";
    }

    else
    {
      v19 = @"SYS_SRV_STATUS_PWR_SAVE";
    }
  }

LABEL_63:
  [v3 setObject:v19 forKey:@"service_status"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_64:
  v20 = [NSNumber numberWithUnsignedInt:self->_rejectCause];
  [v3 setObject:v20 forKey:@"reject_cause"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_65:
  v21 = [NSNumber numberWithUnsignedInt:self->_dlFreq];
  [v3 setObject:v21 forKey:@"dl_freq"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_67;
  }

LABEL_66:
  v22 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
  [v3 setObject:v22 forKey:@"freq_band_ind"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

LABEL_67:
  v23 = [NSNumber numberWithUnsignedInt:self->_lac];
  [v3 setObject:v23 forKey:@"lac"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  v24 = [NSNumber numberWithBool:self->_isRegAccepted];
  [v3 setObject:v24 forKey:@"is_reg_accepted"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  v25 = [NSNumber numberWithBool:self->_isHplmn];
  [v3 setObject:v25 forKey:@"is_hplmn"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  v26 = [NSNumber numberWithBool:self->_isEhplmn];
  [v3 setObject:v26 forKey:@"is_ehplmn"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  v27 = [NSNumber numberWithBool:self->_isPlmnForbiden];
  [v3 setObject:v27 forKey:@"is_plmn_forbiden"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  v28 = [NSNumber numberWithBool:self->_isRoamingSteererPlmn];
  [v3 setObject:v28 forKey:@"is_roaming_steerer_plmn"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  v29 = [NSNumber numberWithBool:self->_isHplmnScanTriggered];
  [v3 setObject:v29 forKey:@"is_hplmn_scan_triggered"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  v30 = [NSNumber numberWithUnsignedInt:self->_roamingDuration];
  [v3 setObject:v30 forKey:@"roaming_duration"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_24:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  v31 = [NSNumber numberWithUnsignedInt:self->_hplmnScanDuration];
  [v3 setObject:v31 forKey:@"hplmn_scan_duration"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_25:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  v32 = [NSNumber numberWithUnsignedInt:self->_hplmnScanNumOfAttempts];
  [v3 setObject:v32 forKey:@"hplmn_scan_num_of_attempts"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_26:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_77:
  v33 = [NSNumber numberWithUnsignedInt:self->_hplmnSearchPeriod];
  [v3 setObject:v33 forKey:@"hplmn_search_period"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_27:
    v8 = [NSNumber numberWithUnsignedInt:self->_hplmnScanAttemptsDisallowedDueToBl];
    [v3 setObject:v8 forKey:@"hplmn_scan_attempts_disallowed_due_to_bl"];
  }

LABEL_28:
  bdStat = self->_bdStat;
  if (bdStat)
  {
    dictionaryRepresentation = [(BorderDbStat *)bdStat dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"bd_stat"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v27 = toCopy;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v27;
  }

  if (self->_hplmn)
  {
    PBDataWriterWriteDataField();
    toCopy = v27;
  }

  if (self->_attemptedPlmn)
  {
    PBDataWriterWriteDataField();
    toCopy = v27;
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    cellId = self->_cellId;
    PBDataWriterWriteUint32Field();
    toCopy = v27;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_9:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_9;
  }

  attemptedPlmnCategory = self->_attemptedPlmnCategory;
  PBDataWriterWriteUint32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  regServiceDomain = self->_regServiceDomain;
  PBDataWriterWriteInt32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  activeRat = self->_activeRat;
  PBDataWriterWriteInt32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  serviceStatus = self->_serviceStatus;
  PBDataWriterWriteInt32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  rejectCause = self->_rejectCause;
  PBDataWriterWriteUint32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  dlFreq = self->_dlFreq;
  PBDataWriterWriteUint32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  freqBandInd = self->_freqBandInd;
  PBDataWriterWriteUint32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  lac = self->_lac;
  PBDataWriterWriteUint32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  isRegAccepted = self->_isRegAccepted;
  PBDataWriterWriteBOOLField();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  isHplmn = self->_isHplmn;
  PBDataWriterWriteBOOLField();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  isEhplmn = self->_isEhplmn;
  PBDataWriterWriteBOOLField();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  isPlmnForbiden = self->_isPlmnForbiden;
  PBDataWriterWriteBOOLField();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  isRoamingSteererPlmn = self->_isRoamingSteererPlmn;
  PBDataWriterWriteBOOLField();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  isHplmnScanTriggered = self->_isHplmnScanTriggered;
  PBDataWriterWriteBOOLField();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  roamingDuration = self->_roamingDuration;
  PBDataWriterWriteUint32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_24:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  hplmnScanDuration = self->_hplmnScanDuration;
  PBDataWriterWriteUint32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_25:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  hplmnScanNumOfAttempts = self->_hplmnScanNumOfAttempts;
  PBDataWriterWriteUint32Field();
  toCopy = v27;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_26:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_51:
  hplmnSearchPeriod = self->_hplmnSearchPeriod;
  PBDataWriterWriteUint32Field();
  toCopy = v27;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_27:
    hplmnScanAttemptsDisallowedDueToBl = self->_hplmnScanAttemptsDisallowedDueToBl;
    PBDataWriterWriteUint32Field();
    toCopy = v27;
  }

LABEL_28:
  if (self->_bdStat)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v27;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 29) |= 1u;
  }

  v6 = toCopy;
  if (self->_hplmn)
  {
    [toCopy setHplmn:?];
    toCopy = v6;
  }

  if (self->_attemptedPlmn)
  {
    [v6 setAttemptedPlmn:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(toCopy + 12) = self->_cellId;
    *(toCopy + 29) |= 8u;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_9:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 8) = self->_attemptedPlmnCategory;
  *(toCopy + 29) |= 4u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 23) = self->_regServiceDomain;
  *(toCopy + 29) |= 0x800u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 4) = self->_activeRat;
  *(toCopy + 29) |= 2u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 26) = self->_serviceStatus;
  *(toCopy + 29) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 24) = self->_rejectCause;
  *(toCopy + 29) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 13) = self->_dlFreq;
  *(toCopy + 29) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 14) = self->_freqBandInd;
  *(toCopy + 29) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 22) = self->_lac;
  *(toCopy + 29) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 112) = self->_isRegAccepted;
  *(toCopy + 29) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 109) = self->_isHplmn;
  *(toCopy + 29) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 108) = self->_isEhplmn;
  *(toCopy + 29) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 111) = self->_isPlmnForbiden;
  *(toCopy + 29) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 113) = self->_isRoamingSteererPlmn;
  *(toCopy + 29) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 110) = self->_isHplmnScanTriggered;
  *(toCopy + 29) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 25) = self->_roamingDuration;
  *(toCopy + 29) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_24:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 19) = self->_hplmnScanDuration;
  *(toCopy + 29) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_25:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 20) = self->_hplmnScanNumOfAttempts;
  *(toCopy + 29) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_26:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_51:
  *(toCopy + 21) = self->_hplmnSearchPeriod;
  *(toCopy + 29) |= 0x200u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_27:
    *(toCopy + 18) = self->_hplmnScanAttemptsDisallowedDueToBl;
    *(toCopy + 29) |= 0x40u;
  }

LABEL_28:
  if (self->_bdStat)
  {
    [v6 setBdStat:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 29) |= 1u;
  }

  v7 = [(NSData *)self->_hplmn copyWithZone:zone];
  v8 = v6[8];
  v6[8] = v7;

  v9 = [(NSData *)self->_attemptedPlmn copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v6 + 12) = self->_cellId;
    *(v6 + 29) |= 8u;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_5:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 8) = self->_attemptedPlmnCategory;
  *(v6 + 29) |= 4u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 23) = self->_regServiceDomain;
  *(v6 + 29) |= 0x800u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 4) = self->_activeRat;
  *(v6 + 29) |= 2u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 26) = self->_serviceStatus;
  *(v6 + 29) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v6 + 24) = self->_rejectCause;
  *(v6 + 29) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v6 + 13) = self->_dlFreq;
  *(v6 + 29) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v6 + 14) = self->_freqBandInd;
  *(v6 + 29) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v6 + 22) = self->_lac;
  *(v6 + 29) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v6 + 112) = self->_isRegAccepted;
  *(v6 + 29) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v6 + 109) = self->_isHplmn;
  *(v6 + 29) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v6 + 108) = self->_isEhplmn;
  *(v6 + 29) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 111) = self->_isPlmnForbiden;
  *(v6 + 29) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 113) = self->_isRoamingSteererPlmn;
  *(v6 + 29) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 110) = self->_isHplmnScanTriggered;
  *(v6 + 29) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 25) = self->_roamingDuration;
  *(v6 + 29) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_20:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 19) = self->_hplmnScanDuration;
  *(v6 + 29) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

LABEL_43:
    *(v6 + 21) = self->_hplmnSearchPeriod;
    *(v6 + 29) |= 0x200u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_42:
  *(v6 + 20) = self->_hplmnScanNumOfAttempts;
  *(v6 + 29) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) != 0)
  {
    goto LABEL_43;
  }

LABEL_22:
  if ((*&has & 0x40) != 0)
  {
LABEL_23:
    *(v6 + 18) = self->_hplmnScanAttemptsDisallowedDueToBl;
    *(v6 + 29) |= 0x40u;
  }

LABEL_24:
  v12 = [(BorderDbStat *)self->_bdStat copyWithZone:zone];
  v13 = v6[5];
  v6[5] = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_131;
  }

  v5 = *(equalCopy + 29);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_131;
    }
  }

  else if (v5)
  {
    goto LABEL_131;
  }

  hplmn = self->_hplmn;
  if (hplmn | *(equalCopy + 8) && ![(NSData *)hplmn isEqual:?])
  {
    goto LABEL_131;
  }

  attemptedPlmn = self->_attemptedPlmn;
  if (attemptedPlmn | *(equalCopy + 3))
  {
    if (![(NSData *)attemptedPlmn isEqual:?])
    {
      goto LABEL_131;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 29);
  if ((*&has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_cellId != *(equalCopy + 12))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_attemptedPlmnCategory != *(equalCopy + 8))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v9 & 0x800) == 0 || self->_regServiceDomain != *(equalCopy + 23))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x800) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_activeRat != *(equalCopy + 4))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v9 & 0x4000) == 0 || self->_serviceStatus != *(equalCopy + 26))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x4000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v9 & 0x1000) == 0 || self->_rejectCause != *(equalCopy + 24))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x1000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_dlFreq != *(equalCopy + 13))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_freqBandInd != *(equalCopy + 14))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v9 & 0x400) == 0 || self->_lac != *(equalCopy + 22))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x400) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_131;
    }

    v10 = *(equalCopy + 112);
    if (self->_isRegAccepted)
    {
      if ((*(equalCopy + 112) & 1) == 0)
      {
        goto LABEL_131;
      }
    }

    else if (*(equalCopy + 112))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x80000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_131;
    }

    v11 = *(equalCopy + 109);
    if (self->_isHplmn)
    {
      if ((*(equalCopy + 109) & 1) == 0)
      {
        goto LABEL_131;
      }
    }

    else if (*(equalCopy + 109))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x10000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_131;
    }

    v12 = *(equalCopy + 108);
    if (self->_isEhplmn)
    {
      if ((*(equalCopy + 108) & 1) == 0)
      {
        goto LABEL_131;
      }
    }

    else if (*(equalCopy + 108))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x8000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_131;
    }

    v13 = *(equalCopy + 111);
    if (self->_isPlmnForbiden)
    {
      if ((*(equalCopy + 111) & 1) == 0)
      {
        goto LABEL_131;
      }
    }

    else if (*(equalCopy + 111))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x40000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    v14 = *(equalCopy + 113);
    if (self->_isRoamingSteererPlmn)
    {
      if ((*(equalCopy + 113) & 1) == 0)
      {
        goto LABEL_131;
      }
    }

    else if (*(equalCopy + 113))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x100000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v9 & 0x20000) != 0)
    {
      v15 = *(equalCopy + 110);
      if (self->_isHplmnScanTriggered)
      {
        if ((*(equalCopy + 110) & 1) == 0)
        {
          goto LABEL_131;
        }

        goto LABEL_104;
      }

      if ((*(equalCopy + 110) & 1) == 0)
      {
        goto LABEL_104;
      }
    }

LABEL_131:
    v17 = 0;
    goto LABEL_132;
  }

  if ((v9 & 0x20000) != 0)
  {
    goto LABEL_131;
  }

LABEL_104:
  if ((*&has & 0x2000) != 0)
  {
    if ((v9 & 0x2000) == 0 || self->_roamingDuration != *(equalCopy + 25))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x2000) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_hplmnScanDuration != *(equalCopy + 19))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v9 & 0x100) == 0 || self->_hplmnScanNumOfAttempts != *(equalCopy + 20))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x100) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v9 & 0x200) == 0 || self->_hplmnSearchPeriod != *(equalCopy + 21))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x200) != 0)
  {
    goto LABEL_131;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_hplmnScanAttemptsDisallowedDueToBl != *(equalCopy + 18))
    {
      goto LABEL_131;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_131;
  }

  bdStat = self->_bdStat;
  if (bdStat | *(equalCopy + 5))
  {
    v17 = [(BorderDbStat *)bdStat isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_132:

  return v17;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_hplmn hash];
  v5 = [(NSData *)self->_attemptedPlmn hash];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v7 = 2654435761 * self->_cellId;
    if ((*&has & 4) != 0)
    {
LABEL_6:
      v8 = 2654435761 * self->_attemptedPlmnCategory;
      if ((*&has & 0x800) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v7 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_regServiceDomain;
    if ((*&has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_8:
    v10 = 2654435761 * self->_activeRat;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_9:
    v11 = 2654435761 * self->_serviceStatus;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_10:
    v12 = 2654435761 * self->_rejectCause;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_11:
    v13 = 2654435761 * self->_dlFreq;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v13 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_12:
    v14 = 2654435761 * self->_freqBandInd;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_13:
    v15 = 2654435761 * self->_lac;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_14:
    v16 = 2654435761 * self->_isRegAccepted;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_15:
    v17 = 2654435761 * self->_isHplmn;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_16:
    v18 = 2654435761 * self->_isEhplmn;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_17:
    v19 = 2654435761 * self->_isPlmnForbiden;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_18:
    v20 = 2654435761 * self->_isRoamingSteererPlmn;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_19:
    v21 = 2654435761 * self->_isHplmnScanTriggered;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v21 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_20:
    v22 = 2654435761 * self->_roamingDuration;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v22 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_21:
    v23 = 2654435761 * self->_hplmnScanDuration;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v23 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_22:
    v24 = 2654435761 * self->_hplmnScanNumOfAttempts;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_23;
    }

LABEL_43:
    v25 = 0;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_24;
    }

LABEL_44:
    v26 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ [(BorderDbStat *)self->_bdStat hash];
  }

LABEL_42:
  v24 = 0;
  if ((*&has & 0x200) == 0)
  {
    goto LABEL_43;
  }

LABEL_23:
  v25 = 2654435761 * self->_hplmnSearchPeriod;
  if ((*&has & 0x40) == 0)
  {
    goto LABEL_44;
  }

LABEL_24:
  v26 = 2654435761 * self->_hplmnScanAttemptsDisallowedDueToBl;
  return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ [(BorderDbStat *)self->_bdStat hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 116))
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  v9 = fromCopy;
  if (fromCopy[8])
  {
    [(CellularRegAttempt *)self setHplmn:?];
    v5 = v9;
  }

  if (v5[3])
  {
    [(CellularRegAttempt *)self setAttemptedPlmn:?];
    v5 = v9;
  }

  v6 = *(v5 + 29);
  if ((v6 & 8) != 0)
  {
    self->_cellId = *(v5 + 12);
    *&self->_has |= 8u;
    v6 = *(v5 + 29);
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_attemptedPlmnCategory = *(v5 + 8);
  *&self->_has |= 4u;
  v6 = *(v5 + 29);
  if ((v6 & 0x800) == 0)
  {
LABEL_10:
    if ((v6 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_regServiceDomain = *(v5 + 23);
  *&self->_has |= 0x800u;
  v6 = *(v5 + 29);
  if ((v6 & 2) == 0)
  {
LABEL_11:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_activeRat = *(v5 + 4);
  *&self->_has |= 2u;
  v6 = *(v5 + 29);
  if ((v6 & 0x4000) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_serviceStatus = *(v5 + 26);
  *&self->_has |= 0x4000u;
  v6 = *(v5 + 29);
  if ((v6 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_rejectCause = *(v5 + 24);
  *&self->_has |= 0x1000u;
  v6 = *(v5 + 29);
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_dlFreq = *(v5 + 13);
  *&self->_has |= 0x10u;
  v6 = *(v5 + 29);
  if ((v6 & 0x20) == 0)
  {
LABEL_15:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_freqBandInd = *(v5 + 14);
  *&self->_has |= 0x20u;
  v6 = *(v5 + 29);
  if ((v6 & 0x400) == 0)
  {
LABEL_16:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_lac = *(v5 + 22);
  *&self->_has |= 0x400u;
  v6 = *(v5 + 29);
  if ((v6 & 0x80000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_isRegAccepted = *(v5 + 112);
  *&self->_has |= 0x80000u;
  v6 = *(v5 + 29);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_isHplmn = *(v5 + 109);
  *&self->_has |= 0x10000u;
  v6 = *(v5 + 29);
  if ((v6 & 0x8000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_isEhplmn = *(v5 + 108);
  *&self->_has |= 0x8000u;
  v6 = *(v5 + 29);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_isPlmnForbiden = *(v5 + 111);
  *&self->_has |= 0x40000u;
  v6 = *(v5 + 29);
  if ((v6 & 0x100000) == 0)
  {
LABEL_21:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_isRoamingSteererPlmn = *(v5 + 113);
  *&self->_has |= 0x100000u;
  v6 = *(v5 + 29);
  if ((v6 & 0x20000) == 0)
  {
LABEL_22:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_isHplmnScanTriggered = *(v5 + 110);
  *&self->_has |= 0x20000u;
  v6 = *(v5 + 29);
  if ((v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_roamingDuration = *(v5 + 25);
  *&self->_has |= 0x2000u;
  v6 = *(v5 + 29);
  if ((v6 & 0x80) == 0)
  {
LABEL_24:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_hplmnScanDuration = *(v5 + 19);
  *&self->_has |= 0x80u;
  v6 = *(v5 + 29);
  if ((v6 & 0x100) == 0)
  {
LABEL_25:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_hplmnScanNumOfAttempts = *(v5 + 20);
  *&self->_has |= 0x100u;
  v6 = *(v5 + 29);
  if ((v6 & 0x200) == 0)
  {
LABEL_26:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_49:
  self->_hplmnSearchPeriod = *(v5 + 21);
  *&self->_has |= 0x200u;
  if ((*(v5 + 29) & 0x40) != 0)
  {
LABEL_27:
    self->_hplmnScanAttemptsDisallowedDueToBl = *(v5 + 18);
    *&self->_has |= 0x40u;
  }

LABEL_28:
  bdStat = self->_bdStat;
  v8 = v5[5];
  if (bdStat)
  {
    if (v8)
    {
      [(BorderDbStat *)bdStat mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CellularRegAttempt *)self setBdStat:?];
  }

  _objc_release_x1();
}

@end