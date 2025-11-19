@interface CTMobileEquipmentInfo
- (BOOL)isEqual:(id)a3;
- (CTMobileEquipmentInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTMobileEquipmentInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", slotID=%s", CTSubscriptionSlotAsString(-[CTMobileEquipmentInfo slotId](self, "slotId"))];
  v4 = [(CTMobileEquipmentInfo *)self currentMobileId];
  [v3 appendFormat:@", currentMobileId=%@", v4];

  v5 = [(CTMobileEquipmentInfo *)self currentSubscriberId];
  [v3 appendFormat:@", currentSubscriberId=%@", v5];

  v6 = [(CTMobileEquipmentInfo *)self IMEI];
  [v3 appendFormat:@", IMEI=%@", v6];

  v7 = [(CTMobileEquipmentInfo *)self ICCID];
  [v3 appendFormat:@", ICCID=%@", v7];

  v8 = [(CTMobileEquipmentInfo *)self IMSI];
  [v3 appendFormat:@", IMSI=%@", v8];

  v9 = [(CTMobileEquipmentInfo *)self cdmaIMSI];
  [v3 appendFormat:@", CDMA IMSI=%@", v9];

  v10 = [(CTMobileEquipmentInfo *)self MEID];
  [v3 appendFormat:@", CDMA MEID=%@", v10];

  v11 = [(CTMobileEquipmentInfo *)self EUIMID];
  [v3 appendFormat:@", CDMA EUIMID=%@", v11];

  v12 = [(CTMobileEquipmentInfo *)self PRLVersion];
  [v3 appendFormat:@", CDMA PRL Version=%@", v12];

  v13 = [(CTMobileEquipmentInfo *)self ERIVersion];
  [v3 appendFormat:@", CDMA ERI Version=%@", v13];

  v14 = [(CTMobileEquipmentInfo *)self MIN];
  [v3 appendFormat:@", CDMA MIN=%@", v14];

  v15 = [(CTMobileEquipmentInfo *)self NAI];
  [v3 appendFormat:@", CDMA NAI=%@", v15];

  v16 = [(CTMobileEquipmentInfo *)self baseVersion];
  [v3 appendFormat:@", baseVersion=%@", v16];

  v17 = [(CTMobileEquipmentInfo *)self baseId];
  [v3 appendFormat:@", baseId=%@", v17];

  v18 = [(CTMobileEquipmentInfo *)self baseProfile];
  [v3 appendFormat:@", baseProfile=%@", v18];

  v19 = [(CTMobileEquipmentInfo *)self effectiveICCID];
  [v3 appendFormat:@", effectiveICCID=%@", v19];

  v20 = [(CTMobileEquipmentInfo *)self CSN];
  [v3 appendFormat:@", CSN=%@", v20];

  v21 = [(CTMobileEquipmentInfo *)self displayCSN];
  [v3 appendFormat:@", displayCSN=%@", v21];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_65;
  }

  slotId = self->_slotId;
  if (slotId != [v4 slotId])
  {
    goto LABEL_65;
  }

  currentMobileId = self->_currentMobileId;
  v7 = [v4 currentMobileId];
  v8 = v7;
  if (currentMobileId == v7)
  {
  }

  else
  {
    v9 = self->_currentMobileId;
    v10 = [v4 currentMobileId];
    LODWORD(v9) = [(NSString *)v9 isEqualToString:v10];

    if (!v9)
    {
      goto LABEL_65;
    }
  }

  currentSubscriberId = self->_currentSubscriberId;
  v12 = [v4 currentSubscriberId];
  v13 = v12;
  if (currentSubscriberId == v12)
  {
  }

  else
  {
    v14 = self->_currentSubscriberId;
    v15 = [v4 currentSubscriberId];
    LODWORD(v14) = [(NSString *)v14 isEqualToString:v15];

    if (!v14)
    {
      goto LABEL_65;
    }
  }

  IMEI = self->_IMEI;
  v17 = [v4 IMEI];
  v18 = v17;
  if (IMEI == v17)
  {
  }

  else
  {
    v19 = self->_IMEI;
    v20 = [v4 IMEI];
    LODWORD(v19) = [(NSString *)v19 isEqualToString:v20];

    if (!v19)
    {
      goto LABEL_65;
    }
  }

  ICCID = self->_ICCID;
  v22 = [v4 ICCID];
  v23 = v22;
  if (ICCID == v22)
  {
  }

  else
  {
    v24 = self->_ICCID;
    v25 = [v4 ICCID];
    LODWORD(v24) = [(NSString *)v24 isEqualToString:v25];

    if (!v24)
    {
      goto LABEL_65;
    }
  }

  IMSI = self->_IMSI;
  v27 = [v4 IMSI];
  v28 = v27;
  if (IMSI == v27)
  {
  }

  else
  {
    v29 = self->_IMSI;
    v30 = [v4 IMSI];
    LODWORD(v29) = [(NSString *)v29 isEqualToString:v30];

    if (!v29)
    {
      goto LABEL_65;
    }
  }

  cdmaIMSI = self->_cdmaIMSI;
  v32 = [v4 cdmaIMSI];
  v33 = v32;
  if (cdmaIMSI == v32)
  {
  }

  else
  {
    v34 = self->_cdmaIMSI;
    v35 = [v4 cdmaIMSI];
    LODWORD(v34) = [(NSString *)v34 isEqualToString:v35];

    if (!v34)
    {
      goto LABEL_65;
    }
  }

  EUIMID = self->_EUIMID;
  v37 = [v4 EUIMID];
  v38 = v37;
  if (EUIMID == v37)
  {
  }

  else
  {
    v39 = self->_EUIMID;
    v40 = [v4 EUIMID];
    LODWORD(v39) = [(NSString *)v39 isEqualToString:v40];

    if (!v39)
    {
      goto LABEL_65;
    }
  }

  PRLVersion = self->_PRLVersion;
  v42 = [v4 PRLVersion];
  v43 = v42;
  if (PRLVersion == v42)
  {
  }

  else
  {
    v44 = self->_PRLVersion;
    v45 = [v4 PRLVersion];
    LODWORD(v44) = [(NSNumber *)v44 isEqual:v45];

    if (!v44)
    {
      goto LABEL_65;
    }
  }

  ERIVersion = self->_ERIVersion;
  v47 = [v4 ERIVersion];
  v48 = v47;
  if (ERIVersion == v47)
  {
  }

  else
  {
    v49 = self->_ERIVersion;
    v50 = [v4 ERIVersion];
    LODWORD(v49) = [(NSNumber *)v49 isEqual:v50];

    if (!v49)
    {
      goto LABEL_65;
    }
  }

  MIN = self->_MIN;
  v52 = [v4 MIN];
  v53 = v52;
  if (MIN == v52)
  {
  }

  else
  {
    v54 = self->_MIN;
    v55 = [v4 MIN];
    LODWORD(v54) = [(NSString *)v54 isEqualToString:v55];

    if (!v54)
    {
      goto LABEL_65;
    }
  }

  NAI = self->_NAI;
  v57 = [v4 NAI];
  v58 = v57;
  if (NAI == v57)
  {
  }

  else
  {
    v59 = self->_NAI;
    v60 = [v4 NAI];
    LODWORD(v59) = [(NSString *)v59 isEqualToString:v60];

    if (!v59)
    {
      goto LABEL_65;
    }
  }

  baseVersion = self->_baseVersion;
  v62 = [v4 baseVersion];
  v63 = v62;
  if (baseVersion == v62)
  {
  }

  else
  {
    v64 = self->_baseVersion;
    v65 = [v4 baseVersion];
    LODWORD(v64) = [(NSString *)v64 isEqualToString:v65];

    if (!v64)
    {
      goto LABEL_65;
    }
  }

  baseId = self->_baseId;
  v67 = [v4 baseId];
  v68 = v67;
  if (baseId == v67)
  {
  }

  else
  {
    v69 = self->_baseId;
    v70 = [v4 baseId];
    LODWORD(v69) = [(NSString *)v69 isEqualToString:v70];

    if (!v69)
    {
      goto LABEL_65;
    }
  }

  baseProfile = self->_baseProfile;
  v72 = [v4 baseProfile];
  v73 = v72;
  if (baseProfile == v72)
  {
  }

  else
  {
    v74 = self->_baseProfile;
    v75 = [v4 baseProfile];
    LODWORD(v74) = [(NSString *)v74 isEqualToString:v75];

    if (!v74)
    {
      goto LABEL_65;
    }
  }

  effectiveICCID = self->_effectiveICCID;
  v77 = [v4 effectiveICCID];
  v78 = v77;
  if (effectiveICCID == v77)
  {
  }

  else
  {
    v79 = self->_effectiveICCID;
    v80 = [v4 effectiveICCID];
    LODWORD(v79) = [(NSString *)v79 isEqualToString:v80];

    if (!v79)
    {
      goto LABEL_65;
    }
  }

  CSN = self->_CSN;
  v82 = [v4 CSN];
  v83 = v82;
  if (CSN == v82)
  {
  }

  else
  {
    v84 = self->_CSN;
    v85 = [v4 CSN];
    LODWORD(v84) = [(NSString *)v84 isEqualToString:v85];

    if (!v84)
    {
LABEL_65:
      v86 = 0;
      goto LABEL_66;
    }
  }

  displayCSN = self->_displayCSN;
  v89 = [v4 displayCSN];
  if (displayCSN == v89)
  {
    v86 = 1;
  }

  else
  {
    v90 = self->_displayCSN;
    v91 = [v4 displayCSN];
    v86 = [(NSString *)v90 isEqualToString:v91];
  }

LABEL_66:
  return v86 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSlotId:{-[CTMobileEquipmentInfo slotId](self, "slotId")}];
  v5 = [(CTMobileEquipmentInfo *)self currentMobileId];
  v6 = [v5 copy];
  [v4 setCurrentMobileId:v6];

  v7 = [(CTMobileEquipmentInfo *)self currentSubscriberId];
  v8 = [v7 copy];
  [v4 setCurrentSubscriberId:v8];

  v9 = [(CTMobileEquipmentInfo *)self IMEI];
  v10 = [v9 copy];
  [v4 setIMEI:v10];

  v11 = [(CTMobileEquipmentInfo *)self ICCID];
  v12 = [v11 copy];
  [v4 setICCID:v12];

  v13 = [(CTMobileEquipmentInfo *)self IMSI];
  v14 = [v13 copy];
  [v4 setIMSI:v14];

  v15 = [(CTMobileEquipmentInfo *)self cdmaIMSI];
  v16 = [v15 copy];
  [v4 setCdmaIMSI:v16];

  v17 = [(CTMobileEquipmentInfo *)self MEID];
  v18 = [v17 copy];
  [v4 setMEID:v18];

  v19 = [(CTMobileEquipmentInfo *)self EUIMID];
  v20 = [v19 copy];
  [v4 setEUIMID:v20];

  v21 = [(CTMobileEquipmentInfo *)self PRLVersion];
  v22 = [v21 copy];
  [v4 setPRLVersion:v22];

  v23 = [(CTMobileEquipmentInfo *)self ERIVersion];
  v24 = [v23 copy];
  [v4 setERIVersion:v24];

  v25 = [(CTMobileEquipmentInfo *)self MIN];
  v26 = [v25 copy];
  [v4 setMIN:v26];

  v27 = [(CTMobileEquipmentInfo *)self NAI];
  v28 = [v27 copy];
  [v4 setNAI:v28];

  v29 = [(CTMobileEquipmentInfo *)self baseVersion];
  v30 = [v29 copy];
  [v4 setBaseVersion:v30];

  v31 = [(CTMobileEquipmentInfo *)self baseId];
  v32 = [v31 copy];
  [v4 setBaseId:v32];

  v33 = [(CTMobileEquipmentInfo *)self baseProfile];
  v34 = [v33 copy];
  [v4 setBaseProfile:v34];

  v35 = [(CTMobileEquipmentInfo *)self effectiveICCID];
  v36 = [v35 copy];
  [v4 setEffectiveICCID:v36];

  v37 = [(CTMobileEquipmentInfo *)self CSN];
  v38 = [v37 copy];
  [v4 setCSN:v38];

  v39 = [(CTMobileEquipmentInfo *)self displayCSN];
  v40 = [v39 copy];
  [v4 setDisplayCSN:v40];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CTMobileEquipmentInfo slotId](self forKey:{"slotId"), @"slotId"}];
  v5 = [(CTMobileEquipmentInfo *)self currentMobileId];
  [v4 encodeObject:v5 forKey:@"currentMobileId"];

  v6 = [(CTMobileEquipmentInfo *)self currentSubscriberId];
  [v4 encodeObject:v6 forKey:@"currentSubscriberId"];

  v7 = [(CTMobileEquipmentInfo *)self IMEI];
  [v4 encodeObject:v7 forKey:@"IMEI"];

  v8 = [(CTMobileEquipmentInfo *)self ICCID];
  [v4 encodeObject:v8 forKey:@"ICCID"];

  v9 = [(CTMobileEquipmentInfo *)self IMSI];
  [v4 encodeObject:v9 forKey:@"IMSI"];

  v10 = [(CTMobileEquipmentInfo *)self cdmaIMSI];
  [v4 encodeObject:v10 forKey:@"cdmaIMSI"];

  v11 = [(CTMobileEquipmentInfo *)self MEID];
  [v4 encodeObject:v11 forKey:@"MEID"];

  v12 = [(CTMobileEquipmentInfo *)self EUIMID];
  [v4 encodeObject:v12 forKey:@"EUIMID"];

  v13 = [(CTMobileEquipmentInfo *)self PRLVersion];
  [v4 encodeObject:v13 forKey:@"PRLVersion"];

  v14 = [(CTMobileEquipmentInfo *)self ERIVersion];
  [v4 encodeObject:v14 forKey:@"ERIVersion"];

  v15 = [(CTMobileEquipmentInfo *)self MIN];
  [v4 encodeObject:v15 forKey:@"MIN"];

  v16 = [(CTMobileEquipmentInfo *)self NAI];
  [v4 encodeObject:v16 forKey:@"NAI"];

  v17 = [(CTMobileEquipmentInfo *)self baseVersion];
  [v4 encodeObject:v17 forKey:@"baseVersion"];

  v18 = [(CTMobileEquipmentInfo *)self baseId];
  [v4 encodeObject:v18 forKey:@"baseId"];

  v19 = [(CTMobileEquipmentInfo *)self baseProfile];
  [v4 encodeObject:v19 forKey:@"baseProfile"];

  v20 = [(CTMobileEquipmentInfo *)self effectiveICCID];
  [v4 encodeObject:v20 forKey:@"effectiveICCID"];

  v21 = [(CTMobileEquipmentInfo *)self CSN];
  [v4 encodeObject:v21 forKey:@"CSN"];

  v22 = [(CTMobileEquipmentInfo *)self displayCSN];
  [v4 encodeObject:v22 forKey:@"displayCSN"];
}

- (CTMobileEquipmentInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = CTMobileEquipmentInfo;
  v5 = [(CTMobileEquipmentInfo *)&v43 init];
  if (v5)
  {
    v5->_slotId = [v4 decodeIntegerForKey:@"slotId"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentMobileId"];
    currentMobileId = v5->_currentMobileId;
    v5->_currentMobileId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentSubscriberId"];
    currentSubscriberId = v5->_currentSubscriberId;
    v5->_currentSubscriberId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IMEI"];
    IMEI = v5->_IMEI;
    v5->_IMEI = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICCID"];
    ICCID = v5->_ICCID;
    v5->_ICCID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IMSI"];
    IMSI = v5->_IMSI;
    v5->_IMSI = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cdmaIMSI"];
    cdmaIMSI = v5->_cdmaIMSI;
    v5->_cdmaIMSI = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MEID"];
    MEID = v5->_MEID;
    v5->_MEID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EUIMID"];
    EUIMID = v5->_EUIMID;
    v5->_EUIMID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PRLVersion"];
    PRLVersion = v5->_PRLVersion;
    v5->_PRLVersion = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ERIVersion"];
    ERIVersion = v5->_ERIVersion;
    v5->_ERIVersion = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MIN"];
    MIN = v5->_MIN;
    v5->_MIN = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NAI"];
    NAI = v5->_NAI;
    v5->_NAI = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseVersion"];
    baseVersion = v5->_baseVersion;
    v5->_baseVersion = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseId"];
    baseId = v5->_baseId;
    v5->_baseId = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseProfile"];
    baseProfile = v5->_baseProfile;
    v5->_baseProfile = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"effectiveICCID"];
    effectiveICCID = v5->_effectiveICCID;
    v5->_effectiveICCID = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSN"];
    CSN = v5->_CSN;
    v5->_CSN = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayCSN"];
    displayCSN = v5->_displayCSN;
    v5->_displayCSN = v40;
  }

  return v5;
}

@end