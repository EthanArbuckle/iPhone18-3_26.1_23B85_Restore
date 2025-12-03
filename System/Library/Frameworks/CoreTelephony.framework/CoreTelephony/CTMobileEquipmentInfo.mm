@interface CTMobileEquipmentInfo
- (BOOL)isEqual:(id)equal;
- (CTMobileEquipmentInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTMobileEquipmentInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", slotID=%s", CTSubscriptionSlotAsString(-[CTMobileEquipmentInfo slotId](self, "slotId"))];
  currentMobileId = [(CTMobileEquipmentInfo *)self currentMobileId];
  [v3 appendFormat:@", currentMobileId=%@", currentMobileId];

  currentSubscriberId = [(CTMobileEquipmentInfo *)self currentSubscriberId];
  [v3 appendFormat:@", currentSubscriberId=%@", currentSubscriberId];

  iMEI = [(CTMobileEquipmentInfo *)self IMEI];
  [v3 appendFormat:@", IMEI=%@", iMEI];

  iCCID = [(CTMobileEquipmentInfo *)self ICCID];
  [v3 appendFormat:@", ICCID=%@", iCCID];

  iMSI = [(CTMobileEquipmentInfo *)self IMSI];
  [v3 appendFormat:@", IMSI=%@", iMSI];

  cdmaIMSI = [(CTMobileEquipmentInfo *)self cdmaIMSI];
  [v3 appendFormat:@", CDMA IMSI=%@", cdmaIMSI];

  mEID = [(CTMobileEquipmentInfo *)self MEID];
  [v3 appendFormat:@", CDMA MEID=%@", mEID];

  eUIMID = [(CTMobileEquipmentInfo *)self EUIMID];
  [v3 appendFormat:@", CDMA EUIMID=%@", eUIMID];

  pRLVersion = [(CTMobileEquipmentInfo *)self PRLVersion];
  [v3 appendFormat:@", CDMA PRL Version=%@", pRLVersion];

  eRIVersion = [(CTMobileEquipmentInfo *)self ERIVersion];
  [v3 appendFormat:@", CDMA ERI Version=%@", eRIVersion];

  v14 = [(CTMobileEquipmentInfo *)self MIN];
  [v3 appendFormat:@", CDMA MIN=%@", v14];

  v15 = [(CTMobileEquipmentInfo *)self NAI];
  [v3 appendFormat:@", CDMA NAI=%@", v15];

  baseVersion = [(CTMobileEquipmentInfo *)self baseVersion];
  [v3 appendFormat:@", baseVersion=%@", baseVersion];

  baseId = [(CTMobileEquipmentInfo *)self baseId];
  [v3 appendFormat:@", baseId=%@", baseId];

  baseProfile = [(CTMobileEquipmentInfo *)self baseProfile];
  [v3 appendFormat:@", baseProfile=%@", baseProfile];

  effectiveICCID = [(CTMobileEquipmentInfo *)self effectiveICCID];
  [v3 appendFormat:@", effectiveICCID=%@", effectiveICCID];

  v20 = [(CTMobileEquipmentInfo *)self CSN];
  [v3 appendFormat:@", CSN=%@", v20];

  displayCSN = [(CTMobileEquipmentInfo *)self displayCSN];
  [v3 appendFormat:@", displayCSN=%@", displayCSN];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_65;
  }

  slotId = self->_slotId;
  if (slotId != [equalCopy slotId])
  {
    goto LABEL_65;
  }

  currentMobileId = self->_currentMobileId;
  currentMobileId = [equalCopy currentMobileId];
  v8 = currentMobileId;
  if (currentMobileId == currentMobileId)
  {
  }

  else
  {
    v9 = self->_currentMobileId;
    currentMobileId2 = [equalCopy currentMobileId];
    LODWORD(v9) = [(NSString *)v9 isEqualToString:currentMobileId2];

    if (!v9)
    {
      goto LABEL_65;
    }
  }

  currentSubscriberId = self->_currentSubscriberId;
  currentSubscriberId = [equalCopy currentSubscriberId];
  v13 = currentSubscriberId;
  if (currentSubscriberId == currentSubscriberId)
  {
  }

  else
  {
    v14 = self->_currentSubscriberId;
    currentSubscriberId2 = [equalCopy currentSubscriberId];
    LODWORD(v14) = [(NSString *)v14 isEqualToString:currentSubscriberId2];

    if (!v14)
    {
      goto LABEL_65;
    }
  }

  IMEI = self->_IMEI;
  iMEI = [equalCopy IMEI];
  v18 = iMEI;
  if (IMEI == iMEI)
  {
  }

  else
  {
    v19 = self->_IMEI;
    iMEI2 = [equalCopy IMEI];
    LODWORD(v19) = [(NSString *)v19 isEqualToString:iMEI2];

    if (!v19)
    {
      goto LABEL_65;
    }
  }

  ICCID = self->_ICCID;
  iCCID = [equalCopy ICCID];
  v23 = iCCID;
  if (ICCID == iCCID)
  {
  }

  else
  {
    v24 = self->_ICCID;
    iCCID2 = [equalCopy ICCID];
    LODWORD(v24) = [(NSString *)v24 isEqualToString:iCCID2];

    if (!v24)
    {
      goto LABEL_65;
    }
  }

  IMSI = self->_IMSI;
  iMSI = [equalCopy IMSI];
  v28 = iMSI;
  if (IMSI == iMSI)
  {
  }

  else
  {
    v29 = self->_IMSI;
    iMSI2 = [equalCopy IMSI];
    LODWORD(v29) = [(NSString *)v29 isEqualToString:iMSI2];

    if (!v29)
    {
      goto LABEL_65;
    }
  }

  cdmaIMSI = self->_cdmaIMSI;
  cdmaIMSI = [equalCopy cdmaIMSI];
  v33 = cdmaIMSI;
  if (cdmaIMSI == cdmaIMSI)
  {
  }

  else
  {
    v34 = self->_cdmaIMSI;
    cdmaIMSI2 = [equalCopy cdmaIMSI];
    LODWORD(v34) = [(NSString *)v34 isEqualToString:cdmaIMSI2];

    if (!v34)
    {
      goto LABEL_65;
    }
  }

  EUIMID = self->_EUIMID;
  eUIMID = [equalCopy EUIMID];
  v38 = eUIMID;
  if (EUIMID == eUIMID)
  {
  }

  else
  {
    v39 = self->_EUIMID;
    eUIMID2 = [equalCopy EUIMID];
    LODWORD(v39) = [(NSString *)v39 isEqualToString:eUIMID2];

    if (!v39)
    {
      goto LABEL_65;
    }
  }

  PRLVersion = self->_PRLVersion;
  pRLVersion = [equalCopy PRLVersion];
  v43 = pRLVersion;
  if (PRLVersion == pRLVersion)
  {
  }

  else
  {
    v44 = self->_PRLVersion;
    pRLVersion2 = [equalCopy PRLVersion];
    LODWORD(v44) = [(NSNumber *)v44 isEqual:pRLVersion2];

    if (!v44)
    {
      goto LABEL_65;
    }
  }

  ERIVersion = self->_ERIVersion;
  eRIVersion = [equalCopy ERIVersion];
  v48 = eRIVersion;
  if (ERIVersion == eRIVersion)
  {
  }

  else
  {
    v49 = self->_ERIVersion;
    eRIVersion2 = [equalCopy ERIVersion];
    LODWORD(v49) = [(NSNumber *)v49 isEqual:eRIVersion2];

    if (!v49)
    {
      goto LABEL_65;
    }
  }

  MIN = self->_MIN;
  v52 = [equalCopy MIN];
  v53 = v52;
  if (MIN == v52)
  {
  }

  else
  {
    v54 = self->_MIN;
    v55 = [equalCopy MIN];
    LODWORD(v54) = [(NSString *)v54 isEqualToString:v55];

    if (!v54)
    {
      goto LABEL_65;
    }
  }

  NAI = self->_NAI;
  v57 = [equalCopy NAI];
  v58 = v57;
  if (NAI == v57)
  {
  }

  else
  {
    v59 = self->_NAI;
    v60 = [equalCopy NAI];
    LODWORD(v59) = [(NSString *)v59 isEqualToString:v60];

    if (!v59)
    {
      goto LABEL_65;
    }
  }

  baseVersion = self->_baseVersion;
  baseVersion = [equalCopy baseVersion];
  v63 = baseVersion;
  if (baseVersion == baseVersion)
  {
  }

  else
  {
    v64 = self->_baseVersion;
    baseVersion2 = [equalCopy baseVersion];
    LODWORD(v64) = [(NSString *)v64 isEqualToString:baseVersion2];

    if (!v64)
    {
      goto LABEL_65;
    }
  }

  baseId = self->_baseId;
  baseId = [equalCopy baseId];
  v68 = baseId;
  if (baseId == baseId)
  {
  }

  else
  {
    v69 = self->_baseId;
    baseId2 = [equalCopy baseId];
    LODWORD(v69) = [(NSString *)v69 isEqualToString:baseId2];

    if (!v69)
    {
      goto LABEL_65;
    }
  }

  baseProfile = self->_baseProfile;
  baseProfile = [equalCopy baseProfile];
  v73 = baseProfile;
  if (baseProfile == baseProfile)
  {
  }

  else
  {
    v74 = self->_baseProfile;
    baseProfile2 = [equalCopy baseProfile];
    LODWORD(v74) = [(NSString *)v74 isEqualToString:baseProfile2];

    if (!v74)
    {
      goto LABEL_65;
    }
  }

  effectiveICCID = self->_effectiveICCID;
  effectiveICCID = [equalCopy effectiveICCID];
  v78 = effectiveICCID;
  if (effectiveICCID == effectiveICCID)
  {
  }

  else
  {
    v79 = self->_effectiveICCID;
    effectiveICCID2 = [equalCopy effectiveICCID];
    LODWORD(v79) = [(NSString *)v79 isEqualToString:effectiveICCID2];

    if (!v79)
    {
      goto LABEL_65;
    }
  }

  CSN = self->_CSN;
  v82 = [equalCopy CSN];
  v83 = v82;
  if (CSN == v82)
  {
  }

  else
  {
    v84 = self->_CSN;
    v85 = [equalCopy CSN];
    LODWORD(v84) = [(NSString *)v84 isEqualToString:v85];

    if (!v84)
    {
LABEL_65:
      v86 = 0;
      goto LABEL_66;
    }
  }

  displayCSN = self->_displayCSN;
  displayCSN = [equalCopy displayCSN];
  if (displayCSN == displayCSN)
  {
    v86 = 1;
  }

  else
  {
    v90 = self->_displayCSN;
    displayCSN2 = [equalCopy displayCSN];
    v86 = [(NSString *)v90 isEqualToString:displayCSN2];
  }

LABEL_66:
  return v86 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSlotId:{-[CTMobileEquipmentInfo slotId](self, "slotId")}];
  currentMobileId = [(CTMobileEquipmentInfo *)self currentMobileId];
  v6 = [currentMobileId copy];
  [v4 setCurrentMobileId:v6];

  currentSubscriberId = [(CTMobileEquipmentInfo *)self currentSubscriberId];
  v8 = [currentSubscriberId copy];
  [v4 setCurrentSubscriberId:v8];

  iMEI = [(CTMobileEquipmentInfo *)self IMEI];
  v10 = [iMEI copy];
  [v4 setIMEI:v10];

  iCCID = [(CTMobileEquipmentInfo *)self ICCID];
  v12 = [iCCID copy];
  [v4 setICCID:v12];

  iMSI = [(CTMobileEquipmentInfo *)self IMSI];
  v14 = [iMSI copy];
  [v4 setIMSI:v14];

  cdmaIMSI = [(CTMobileEquipmentInfo *)self cdmaIMSI];
  v16 = [cdmaIMSI copy];
  [v4 setCdmaIMSI:v16];

  mEID = [(CTMobileEquipmentInfo *)self MEID];
  v18 = [mEID copy];
  [v4 setMEID:v18];

  eUIMID = [(CTMobileEquipmentInfo *)self EUIMID];
  v20 = [eUIMID copy];
  [v4 setEUIMID:v20];

  pRLVersion = [(CTMobileEquipmentInfo *)self PRLVersion];
  v22 = [pRLVersion copy];
  [v4 setPRLVersion:v22];

  eRIVersion = [(CTMobileEquipmentInfo *)self ERIVersion];
  v24 = [eRIVersion copy];
  [v4 setERIVersion:v24];

  v25 = [(CTMobileEquipmentInfo *)self MIN];
  v26 = [v25 copy];
  [v4 setMIN:v26];

  v27 = [(CTMobileEquipmentInfo *)self NAI];
  v28 = [v27 copy];
  [v4 setNAI:v28];

  baseVersion = [(CTMobileEquipmentInfo *)self baseVersion];
  v30 = [baseVersion copy];
  [v4 setBaseVersion:v30];

  baseId = [(CTMobileEquipmentInfo *)self baseId];
  v32 = [baseId copy];
  [v4 setBaseId:v32];

  baseProfile = [(CTMobileEquipmentInfo *)self baseProfile];
  v34 = [baseProfile copy];
  [v4 setBaseProfile:v34];

  effectiveICCID = [(CTMobileEquipmentInfo *)self effectiveICCID];
  v36 = [effectiveICCID copy];
  [v4 setEffectiveICCID:v36];

  v37 = [(CTMobileEquipmentInfo *)self CSN];
  v38 = [v37 copy];
  [v4 setCSN:v38];

  displayCSN = [(CTMobileEquipmentInfo *)self displayCSN];
  v40 = [displayCSN copy];
  [v4 setDisplayCSN:v40];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTMobileEquipmentInfo slotId](self forKey:{"slotId"), @"slotId"}];
  currentMobileId = [(CTMobileEquipmentInfo *)self currentMobileId];
  [coderCopy encodeObject:currentMobileId forKey:@"currentMobileId"];

  currentSubscriberId = [(CTMobileEquipmentInfo *)self currentSubscriberId];
  [coderCopy encodeObject:currentSubscriberId forKey:@"currentSubscriberId"];

  iMEI = [(CTMobileEquipmentInfo *)self IMEI];
  [coderCopy encodeObject:iMEI forKey:@"IMEI"];

  iCCID = [(CTMobileEquipmentInfo *)self ICCID];
  [coderCopy encodeObject:iCCID forKey:@"ICCID"];

  iMSI = [(CTMobileEquipmentInfo *)self IMSI];
  [coderCopy encodeObject:iMSI forKey:@"IMSI"];

  cdmaIMSI = [(CTMobileEquipmentInfo *)self cdmaIMSI];
  [coderCopy encodeObject:cdmaIMSI forKey:@"cdmaIMSI"];

  mEID = [(CTMobileEquipmentInfo *)self MEID];
  [coderCopy encodeObject:mEID forKey:@"MEID"];

  eUIMID = [(CTMobileEquipmentInfo *)self EUIMID];
  [coderCopy encodeObject:eUIMID forKey:@"EUIMID"];

  pRLVersion = [(CTMobileEquipmentInfo *)self PRLVersion];
  [coderCopy encodeObject:pRLVersion forKey:@"PRLVersion"];

  eRIVersion = [(CTMobileEquipmentInfo *)self ERIVersion];
  [coderCopy encodeObject:eRIVersion forKey:@"ERIVersion"];

  v15 = [(CTMobileEquipmentInfo *)self MIN];
  [coderCopy encodeObject:v15 forKey:@"MIN"];

  v16 = [(CTMobileEquipmentInfo *)self NAI];
  [coderCopy encodeObject:v16 forKey:@"NAI"];

  baseVersion = [(CTMobileEquipmentInfo *)self baseVersion];
  [coderCopy encodeObject:baseVersion forKey:@"baseVersion"];

  baseId = [(CTMobileEquipmentInfo *)self baseId];
  [coderCopy encodeObject:baseId forKey:@"baseId"];

  baseProfile = [(CTMobileEquipmentInfo *)self baseProfile];
  [coderCopy encodeObject:baseProfile forKey:@"baseProfile"];

  effectiveICCID = [(CTMobileEquipmentInfo *)self effectiveICCID];
  [coderCopy encodeObject:effectiveICCID forKey:@"effectiveICCID"];

  v21 = [(CTMobileEquipmentInfo *)self CSN];
  [coderCopy encodeObject:v21 forKey:@"CSN"];

  displayCSN = [(CTMobileEquipmentInfo *)self displayCSN];
  [coderCopy encodeObject:displayCSN forKey:@"displayCSN"];
}

- (CTMobileEquipmentInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = CTMobileEquipmentInfo;
  v5 = [(CTMobileEquipmentInfo *)&v43 init];
  if (v5)
  {
    v5->_slotId = [coderCopy decodeIntegerForKey:@"slotId"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentMobileId"];
    currentMobileId = v5->_currentMobileId;
    v5->_currentMobileId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentSubscriberId"];
    currentSubscriberId = v5->_currentSubscriberId;
    v5->_currentSubscriberId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMEI"];
    IMEI = v5->_IMEI;
    v5->_IMEI = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICCID"];
    ICCID = v5->_ICCID;
    v5->_ICCID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMSI"];
    IMSI = v5->_IMSI;
    v5->_IMSI = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cdmaIMSI"];
    cdmaIMSI = v5->_cdmaIMSI;
    v5->_cdmaIMSI = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MEID"];
    MEID = v5->_MEID;
    v5->_MEID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EUIMID"];
    EUIMID = v5->_EUIMID;
    v5->_EUIMID = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PRLVersion"];
    PRLVersion = v5->_PRLVersion;
    v5->_PRLVersion = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ERIVersion"];
    ERIVersion = v5->_ERIVersion;
    v5->_ERIVersion = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MIN"];
    MIN = v5->_MIN;
    v5->_MIN = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NAI"];
    NAI = v5->_NAI;
    v5->_NAI = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseVersion"];
    baseVersion = v5->_baseVersion;
    v5->_baseVersion = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseId"];
    baseId = v5->_baseId;
    v5->_baseId = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseProfile"];
    baseProfile = v5->_baseProfile;
    v5->_baseProfile = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectiveICCID"];
    effectiveICCID = v5->_effectiveICCID;
    v5->_effectiveICCID = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSN"];
    CSN = v5->_CSN;
    v5->_CSN = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayCSN"];
    displayCSN = v5->_displayCSN;
    v5->_displayCSN = v40;
  }

  return v5;
}

@end