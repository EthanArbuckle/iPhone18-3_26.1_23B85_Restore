@interface HMSymptom
- (BOOL)isEqual:(id)equal;
- (HMSymptom)initWithCoder:(id)coder;
- (HMSymptom)initWithType:(int64_t)type infoDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMSymptom

- (unint64_t)hash
{
  type = [(HMSymptom *)self type];
  infoDictionary = [(HMSymptom *)self infoDictionary];
  v5 = [infoDictionary hash];

  return v5 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      infoDictionary = [(HMSymptom *)self infoDictionary];
      infoDictionary2 = [(HMSymptom *)v6 infoDictionary];
      if (infoDictionary == infoDictionary2)
      {
        v11 = 1;
      }

      else
      {
        infoDictionary3 = [(HMSymptom *)self infoDictionary];
        infoDictionary4 = [(HMSymptom *)v6 infoDictionary];
        v11 = [infoDictionary3 isEqual:infoDictionary4];
      }

      type = [(HMSymptom *)self type];
      v12 = (type == [(HMSymptom *)v6 type]) & v11;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMSymptom type](self forKey:{"type"), @"HMS.type"}];
  infoDictionary = [(HMSymptom *)self infoDictionary];
  [coderCopy encodeObject:infoDictionary forKey:@"HMS.info"];
}

- (HMSymptom)initWithCoder:(id)coder
{
  v15[6] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(HMSymptom *)self init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"HMS.type"];
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v15[4] = objc_opt_class();
    v15[5] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:6];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HMS.info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    infoDictionary = v5->_infoDictionary;
    v5->_infoDictionary = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  type = [(HMSymptom *)self type];
  if (type > 99)
  {
    if (type > 111)
    {
      if (type <= 114)
      {
        if (type == 112)
        {
          type = @"HMSymptomTypeNetworkIssueDNSServerOutage";
        }

        else if (type == 113)
        {
          type = @"HMSymptomTypeNetworkIssueDHCPAcquisitionFailure";
        }

        else
        {
          type = @"HMSymptomTypeNetworkIssueInternetOutage";
        }

        goto LABEL_49;
      }

      if (type == 115)
      {
        type = @"HMSymptomTypeNetworkIssueWifiDisassociation";
        goto LABEL_49;
      }

      if (type == 999)
      {
        type = @"HMSymptomTypeNeedGeneralFix";
        goto LABEL_49;
      }

      if (type == 1000)
      {
        type = @"HMSymptomTypeFixInProgress";
        goto LABEL_49;
      }
    }

    else
    {
      if (type <= 102)
      {
        if (type == 100)
        {
          type = @"HMSymptomTypeNetworkMisconfigurationUnknown";
        }

        else if (type == 101)
        {
          type = @"HMSymptomTypeNetworkMisconfigurationPeerToPeer";
        }

        else
        {
          type = @"HMSymptomTypeNetworkMisconfigurationDoubleNAT";
        }

        goto LABEL_49;
      }

      if (type == 103)
      {
        type = @"HMSymptomTypeNetworkMisconfigurationMultipleNetworks";
        goto LABEL_49;
      }

      if (type == 110)
      {
        type = @"HMSymptomTypeNetworkIssueUnknown";
        goto LABEL_49;
      }

      if (type == 111)
      {
        type = @"HMSymptomTypeNetworkIssueRadioLinkCongestion";
        goto LABEL_49;
      }
    }

LABEL_48:
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown symptom type: %ld>", type];
    goto LABEL_49;
  }

  v3 = &type[-1].length + 7;
  type = @"HMSymptomTypeNeediCloudCredential";
  switch(v3)
  {
    case 0uLL:
      break;
    case 1uLL:
      type = @"HMSymptomTypeNeediTunesCredential";
      break;
    case 2uLL:
      type = @"HMSymptomTypeNeedHomeKitFix";
      break;
    case 3uLL:
      type = @"HMSymptomTypeNeedWiFiFix";
      break;
    case 4uLL:
      type = @"HMSymptomTypeNeedWiFiPerformanceFix";
      break;
    case 5uLL:
      type = @"HMSymptomTypeNeedInternetFix";
      break;
    case 6uLL:
      type = @"HMSymptomTypeNeedHardwareFix";
      break;
    case 7uLL:
      type = @"HMSymptomTypeStereoVersionMismatch";
      break;
    case 8uLL:
      type = @"HMSymptomTypeStereoNotFound";
      break;
    case 9uLL:
      type = @"HMSymptomTypeStereoError";
      break;
    case 0xAuLL:
      type = @"HMSymptomTypeWiFiNetworkMismatch";
      break;
    case 0xBuLL:
      type = @"HMSymptomTypeNoConfiguredTargets";
      break;
    case 0xCuLL:
      type = @"HMSymptomTypeVPNProfileExpired";
      break;
    case 0xDuLL:
      type = @"HMSymptomTypeNeed8021xNetworkFix";
      break;
    case 0xEuLL:
      type = @"HMSymptomTypeNeedWiFiSecurityFix";
      break;
    case 0xFuLL:
      type = @"HMSymptomTypeNeedNetworkProfileFix";
      break;
    case 0x10uLL:
      type = @"HMSymptomTypeNeedNetworkProfileInstall";
      break;
    case 0x11uLL:
      type = @"HMSymptomTypeNetworkNotShareable";
      break;
    case 0x12uLL:
      type = @"HMSymptomTypeNeedCaptiveLeaseRenewal";
      break;
    case 0x13uLL:
      type = @"HMSymptomTypeNeedCDPFix";
      break;
    case 0x14uLL:
      type = @"HMSymptomTypePrimaryResidentUnreachable";
      break;
    default:
      goto LABEL_48;
  }

LABEL_49:

  return type;
}

- (HMSymptom)initWithType:(int64_t)type infoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = HMSymptom;
  v8 = [(HMSymptom *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_infoDictionary, dictionary);
  }

  return v9;
}

@end