@interface FMServingCell
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)gci;
- (id)init:(id)init subscriptionID:(id)d radioAccessTechnology:(id)technology cellID:(id)iD mnc:(id)mnc mcc:(id)mcc bandInfo:(id)info tacOrLac:(id)self0 arfcnOrUarfcn:(id)self1 bandwidth:(id)self2 pci:(id)self3 deploymentType:(id)self4;
- (unint64_t)hash;
@end

@implementation FMServingCell

- (id)init:(id)init subscriptionID:(id)d radioAccessTechnology:(id)technology cellID:(id)iD mnc:(id)mnc mcc:(id)mcc bandInfo:(id)info tacOrLac:(id)self0 arfcnOrUarfcn:(id)self1 bandwidth:(id)self2 pci:(id)self3 deploymentType:(id)self4
{
  initCopy = init;
  dCopy = d;
  dCopy2 = d;
  technologyCopy = technology;
  iDCopy = iD;
  iDCopy2 = iD;
  mncCopy = mnc;
  mccCopy = mcc;
  infoCopy = info;
  lacCopy = lac;
  uarfcnCopy = uarfcn;
  bandwidthCopy = bandwidth;
  pciCopy = pci;
  typeCopy = type;
  v39.receiver = self;
  v39.super_class = FMServingCell;
  v23 = [(FMServingCell *)&v39 init];
  p_isa = &v23->super.isa;
  if (v23)
  {
    objc_storeStrong(&v23->_timestamp, init);
    objc_storeStrong(p_isa + 2, dCopy);
    objc_storeStrong(p_isa + 3, technology);
    objc_storeStrong(p_isa + 4, iDCopy);
    objc_storeStrong(p_isa + 5, mnc);
    objc_storeStrong(p_isa + 6, mcc);
    objc_storeStrong(p_isa + 7, info);
    objc_storeStrong(p_isa + 8, lac);
    objc_storeStrong(p_isa + 9, uarfcn);
    objc_storeStrong(p_isa + 10, bandwidth);
    objc_storeStrong(p_isa + 11, pci);
    objc_storeStrong(p_isa + 12, type);
    v25 = p_isa;
  }

  return p_isa;
}

- (id)description
{
  timestamp = [(FMServingCell *)self timestamp];
  subscriptionID = [(FMServingCell *)self subscriptionID];
  radioAccessTechnology = [(FMServingCell *)self radioAccessTechnology];
  cellID = [(FMServingCell *)self cellID];
  v4 = [(FMServingCell *)self mnc];
  v5 = [(FMServingCell *)self mcc];
  bandInfo = [(FMServingCell *)self bandInfo];
  tacOrLac = [(FMServingCell *)self tacOrLac];
  arfcnOrUarfcn = [(FMServingCell *)self arfcnOrUarfcn];
  bandwidth = [(FMServingCell *)self bandwidth];
  v8 = [(FMServingCell *)self pci];
  deploymentType = [(FMServingCell *)self deploymentType];
  v10 = [NSString stringWithFormat:@"timestamp %@, subscriptionID %@, radioAccessTechnology %@, cellID %@, mnc %@, mcc %@, bandInfo %@, tacOrLac %@, arfcnOrUarfcn %@, bandwidth %@, pci %@, deploymentType %@", timestamp, subscriptionID, radioAccessTechnology, cellID, v4, v5, bandInfo, tacOrLac, arfcnOrUarfcn, bandwidth, v8, deploymentType];

  return v10;
}

- (id)gci
{
  v3 = [(FMServingCell *)self mcc];
  stringValue = [v3 stringValue];
  v5 = [(FMServingCell *)self mnc];
  stringValue2 = [v5 stringValue];
  tacOrLac = [(FMServingCell *)self tacOrLac];
  stringValue3 = [tacOrLac stringValue];
  cellID = [(FMServingCell *)self cellID];
  stringValue4 = [cellID stringValue];
  v11 = [NSString stringWithFormat:@"%@.%@.%@.%@", stringValue, stringValue2, stringValue3, stringValue4];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    subscriptionID = [(FMServingCell *)self subscriptionID];
    subscriptionID2 = [v5 subscriptionID];
    if (![subscriptionID isEqualToNumber:subscriptionID2])
    {
      v13 = 0;
LABEL_38:

      goto LABEL_39;
    }

    radioAccessTechnology = [(FMServingCell *)self radioAccessTechnology];
    radioAccessTechnology2 = [v5 radioAccessTechnology];
    if (![radioAccessTechnology isEqualToString:radioAccessTechnology2])
    {
      v13 = 0;
LABEL_37:

      goto LABEL_38;
    }

    cellID = [(FMServingCell *)self cellID];
    cellID2 = [v5 cellID];
    if (![cellID isEqualToNumber:cellID2])
    {
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v45 = [(FMServingCell *)self mnc];
    v12 = [v5 mnc];
    if (![v45 isEqualToNumber:v12])
    {
      v13 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v44 = [(FMServingCell *)self mcc];
    v43 = [v5 mcc];
    if (![v44 isEqualToNumber:?])
    {
      v13 = 0;
LABEL_34:

      goto LABEL_35;
    }

    bandInfo = [(FMServingCell *)self bandInfo];
    bandInfo2 = [v5 bandInfo];
    if (![bandInfo isEqualToNumber:?])
    {
      v13 = 0;
LABEL_33:

      goto LABEL_34;
    }

    tacOrLac = [(FMServingCell *)self tacOrLac];
    tacOrLac2 = [v5 tacOrLac];
    if (![tacOrLac isEqualToNumber:?])
    {
      v13 = 0;
LABEL_32:

      goto LABEL_33;
    }

    arfcnOrUarfcn = [(FMServingCell *)self arfcnOrUarfcn];
    arfcnOrUarfcn2 = [v5 arfcnOrUarfcn];
    if (![arfcnOrUarfcn isEqualToNumber:?])
    {
      v13 = 0;
LABEL_31:

      goto LABEL_32;
    }

    bandwidth = [(FMServingCell *)self bandwidth];
    if (bandwidth)
    {
      bandwidth2 = [v5 bandwidth];
      if (bandwidth2)
      {
        bandwidth3 = [(FMServingCell *)self bandwidth];
        bandwidth4 = [v5 bandwidth];
        v35 = 1;
        if ([bandwidth3 isEqualToNumber:bandwidth4])
        {
          goto LABEL_42;
        }
      }

      else
      {
        bandwidth2 = 0;
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    bandwidth5 = [(FMServingCell *)self bandwidth];
    if (bandwidth5)
    {

      v13 = 0;
      if (!v35)
      {
LABEL_28:
        if (bandwidth)
        {
        }

        goto LABEL_31;
      }

LABEL_27:

      goto LABEL_28;
    }

    bandwidth6 = [v5 bandwidth];
    if (bandwidth6)
    {

      v13 = 0;
      goto LABEL_73;
    }

LABEL_42:
    v32 = [(FMServingCell *)self pci];
    if (v32)
    {
      v29 = [v5 pci];
      if (v29)
      {
        v28 = [(FMServingCell *)self pci];
        v27 = [v5 pci];
        v30 = 1;
        if ([v28 isEqualToNumber:v27])
        {
          v25 = 0;
          goto LABEL_54;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v17 = [(FMServingCell *)self pci];
    if (v17)
    {

      v13 = 0;
      goto LABEL_68;
    }

    v18 = [v5 pci];
    if (v18)
    {
      v13 = 0;
LABEL_52:

      goto LABEL_68;
    }

    v25 = 1;
LABEL_54:
    deploymentType = [(FMServingCell *)self deploymentType];
    if (deploymentType)
    {
      deploymentType2 = [v5 deploymentType];
      if (deploymentType2)
      {
        deploymentType3 = [(FMServingCell *)self deploymentType];
        deploymentType4 = [v5 deploymentType];
        if ([deploymentType3 isEqualToNumber:deploymentType4])
        {

          if (v25)
          {
            v18 = 0;
            v13 = 1;
            goto LABEL_52;
          }

          v13 = 1;
LABEL_68:
          if ((v30 & 1) == 0)
          {
LABEL_70:
            if (v32)
            {
            }

LABEL_73:
            if ((v35 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

LABEL_69:

          goto LABEL_70;
        }

        v24 = 1;
      }

      else
      {
        deploymentType2 = 0;
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    deploymentType5 = [(FMServingCell *)self deploymentType];
    if (deploymentType5)
    {

      v13 = 0;
      if (!v24)
      {
        goto LABEL_65;
      }
    }

    else
    {
      deploymentType6 = [v5 deploymentType];
      v13 = deploymentType6 == 0;

      if ((v24 & 1) == 0)
      {
LABEL_65:
        if (deploymentType)
        {
        }

        if ((v25 & 1) == 0)
        {
          if (!v30)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        goto LABEL_68;
      }
    }

    goto LABEL_65;
  }

  v13 = 0;
LABEL_39:

  return v13;
}

- (unint64_t)hash
{
  subscriptionID = [(FMServingCell *)self subscriptionID];
  v4 = [subscriptionID hash];

  radioAccessTechnology = [(FMServingCell *)self radioAccessTechnology];
  v6 = [radioAccessTechnology hash];

  cellID = [(FMServingCell *)self cellID];
  v8 = [cellID hash];

  v9 = [(FMServingCell *)self mnc];
  v10 = [v9 hash];

  v11 = [(FMServingCell *)self mcc];
  v12 = [v11 hash];

  bandInfo = [(FMServingCell *)self bandInfo];
  v34 = [bandInfo hash];
  v35 = v12;
  v36 = v10;
  v14 = v6;

  tacOrLac = [(FMServingCell *)self tacOrLac];
  v16 = [tacOrLac hash];

  arfcnOrUarfcn = [(FMServingCell *)self arfcnOrUarfcn];
  v18 = [arfcnOrUarfcn hash];

  bandwidth = [(FMServingCell *)self bandwidth];
  if (bandwidth)
  {
    bandwidth2 = [(FMServingCell *)self bandwidth];
    v21 = [bandwidth2 hash];
  }

  else
  {
    v21 = 0;
  }

  v22 = [(FMServingCell *)self pci];
  if (v22)
  {
    v23 = [(FMServingCell *)self pci];
    v24 = [v23 hash];
  }

  else
  {
    v24 = 0;
  }

  deploymentType = [(FMServingCell *)self deploymentType];
  if (deploymentType)
  {
    deploymentType2 = [(FMServingCell *)self deploymentType];
    v27 = [deploymentType2 hash];
  }

  else
  {
    v27 = 0;
  }

  v28 = v8 + 1024 * v4 + 32 * (v14 - v4) - (v14 - v4) + -32 * v4;
  v29 = v35 - &v36[32 * v28 - v28] + 32 * &v36[32 * v28 - v28];
  v30 = v16 - &v34[32 * v29 - v29] + 32 * &v34[32 * v29 - v29];
  v31 = v21 - &v18[32 * v30 - v30] + 32 * &v18[32 * v30 - v30];
  v32 = v27 - &v24[32 * v31 - v31] + 32 * &v24[32 * v31 - v31];

  return v32 + 0x5A44E007B1A55FLL;
}

@end