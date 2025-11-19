@interface HMSymptom
- (BOOL)isEqual:(id)a3;
- (HMSymptom)initWithCoder:(id)a3;
- (HMSymptom)initWithType:(int64_t)a3 infoDictionary:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMSymptom

- (unint64_t)hash
{
  v3 = [(HMSymptom *)self type];
  v4 = [(HMSymptom *)self infoDictionary];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMSymptom *)self infoDictionary];
      v8 = [(HMSymptom *)v6 infoDictionary];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(HMSymptom *)self infoDictionary];
        v10 = [(HMSymptom *)v6 infoDictionary];
        v11 = [v9 isEqual:v10];
      }

      v13 = [(HMSymptom *)self type];
      v12 = (v13 == [(HMSymptom *)v6 type]) & v11;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMSymptom type](self forKey:{"type"), @"HMS.type"}];
  v5 = [(HMSymptom *)self infoDictionary];
  [v4 encodeObject:v5 forKey:@"HMS.info"];
}

- (HMSymptom)initWithCoder:(id)a3
{
  v15[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSymptom *)self init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"HMS.type"];
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v15[4] = objc_opt_class();
    v15[5] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:6];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HMS.info"];
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
  v2 = [(HMSymptom *)self type];
  if (v2 > 99)
  {
    if (v2 > 111)
    {
      if (v2 <= 114)
      {
        if (v2 == 112)
        {
          v2 = @"HMSymptomTypeNetworkIssueDNSServerOutage";
        }

        else if (v2 == 113)
        {
          v2 = @"HMSymptomTypeNetworkIssueDHCPAcquisitionFailure";
        }

        else
        {
          v2 = @"HMSymptomTypeNetworkIssueInternetOutage";
        }

        goto LABEL_49;
      }

      if (v2 == 115)
      {
        v2 = @"HMSymptomTypeNetworkIssueWifiDisassociation";
        goto LABEL_49;
      }

      if (v2 == 999)
      {
        v2 = @"HMSymptomTypeNeedGeneralFix";
        goto LABEL_49;
      }

      if (v2 == 1000)
      {
        v2 = @"HMSymptomTypeFixInProgress";
        goto LABEL_49;
      }
    }

    else
    {
      if (v2 <= 102)
      {
        if (v2 == 100)
        {
          v2 = @"HMSymptomTypeNetworkMisconfigurationUnknown";
        }

        else if (v2 == 101)
        {
          v2 = @"HMSymptomTypeNetworkMisconfigurationPeerToPeer";
        }

        else
        {
          v2 = @"HMSymptomTypeNetworkMisconfigurationDoubleNAT";
        }

        goto LABEL_49;
      }

      if (v2 == 103)
      {
        v2 = @"HMSymptomTypeNetworkMisconfigurationMultipleNetworks";
        goto LABEL_49;
      }

      if (v2 == 110)
      {
        v2 = @"HMSymptomTypeNetworkIssueUnknown";
        goto LABEL_49;
      }

      if (v2 == 111)
      {
        v2 = @"HMSymptomTypeNetworkIssueRadioLinkCongestion";
        goto LABEL_49;
      }
    }

LABEL_48:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown symptom type: %ld>", v2];
    goto LABEL_49;
  }

  v3 = &v2[-1].length + 7;
  v2 = @"HMSymptomTypeNeediCloudCredential";
  switch(v3)
  {
    case 0uLL:
      break;
    case 1uLL:
      v2 = @"HMSymptomTypeNeediTunesCredential";
      break;
    case 2uLL:
      v2 = @"HMSymptomTypeNeedHomeKitFix";
      break;
    case 3uLL:
      v2 = @"HMSymptomTypeNeedWiFiFix";
      break;
    case 4uLL:
      v2 = @"HMSymptomTypeNeedWiFiPerformanceFix";
      break;
    case 5uLL:
      v2 = @"HMSymptomTypeNeedInternetFix";
      break;
    case 6uLL:
      v2 = @"HMSymptomTypeNeedHardwareFix";
      break;
    case 7uLL:
      v2 = @"HMSymptomTypeStereoVersionMismatch";
      break;
    case 8uLL:
      v2 = @"HMSymptomTypeStereoNotFound";
      break;
    case 9uLL:
      v2 = @"HMSymptomTypeStereoError";
      break;
    case 0xAuLL:
      v2 = @"HMSymptomTypeWiFiNetworkMismatch";
      break;
    case 0xBuLL:
      v2 = @"HMSymptomTypeNoConfiguredTargets";
      break;
    case 0xCuLL:
      v2 = @"HMSymptomTypeVPNProfileExpired";
      break;
    case 0xDuLL:
      v2 = @"HMSymptomTypeNeed8021xNetworkFix";
      break;
    case 0xEuLL:
      v2 = @"HMSymptomTypeNeedWiFiSecurityFix";
      break;
    case 0xFuLL:
      v2 = @"HMSymptomTypeNeedNetworkProfileFix";
      break;
    case 0x10uLL:
      v2 = @"HMSymptomTypeNeedNetworkProfileInstall";
      break;
    case 0x11uLL:
      v2 = @"HMSymptomTypeNetworkNotShareable";
      break;
    case 0x12uLL:
      v2 = @"HMSymptomTypeNeedCaptiveLeaseRenewal";
      break;
    case 0x13uLL:
      v2 = @"HMSymptomTypeNeedCDPFix";
      break;
    case 0x14uLL:
      v2 = @"HMSymptomTypePrimaryResidentUnreachable";
      break;
    default:
      goto LABEL_48;
  }

LABEL_49:

  return v2;
}

- (HMSymptom)initWithType:(int64_t)a3 infoDictionary:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMSymptom;
  v8 = [(HMSymptom *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_infoDictionary, a4);
  }

  return v9;
}

@end