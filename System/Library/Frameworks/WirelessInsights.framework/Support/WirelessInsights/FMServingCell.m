@interface FMServingCell
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)gci;
- (id)init:(id)a3 subscriptionID:(id)a4 radioAccessTechnology:(id)a5 cellID:(id)a6 mnc:(id)a7 mcc:(id)a8 bandInfo:(id)a9 tacOrLac:(id)a10 arfcnOrUarfcn:(id)a11 bandwidth:(id)a12 pci:(id)a13 deploymentType:(id)a14;
- (unint64_t)hash;
@end

@implementation FMServingCell

- (id)init:(id)a3 subscriptionID:(id)a4 radioAccessTechnology:(id)a5 cellID:(id)a6 mnc:(id)a7 mcc:(id)a8 bandInfo:(id)a9 tacOrLac:(id)a10 arfcnOrUarfcn:(id)a11 bandwidth:(id)a12 pci:(id)a13 deploymentType:(id)a14
{
  v38 = a3;
  v28 = a4;
  v37 = a4;
  v36 = a5;
  v29 = a6;
  v35 = a6;
  v34 = a7;
  v33 = a8;
  v32 = a9;
  v31 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v39.receiver = self;
  v39.super_class = FMServingCell;
  v23 = [(FMServingCell *)&v39 init];
  p_isa = &v23->super.isa;
  if (v23)
  {
    objc_storeStrong(&v23->_timestamp, a3);
    objc_storeStrong(p_isa + 2, v28);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, v29);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 6, a8);
    objc_storeStrong(p_isa + 7, a9);
    objc_storeStrong(p_isa + 8, a10);
    objc_storeStrong(p_isa + 9, a11);
    objc_storeStrong(p_isa + 10, a12);
    objc_storeStrong(p_isa + 11, a13);
    objc_storeStrong(p_isa + 12, a14);
    v25 = p_isa;
  }

  return p_isa;
}

- (id)description
{
  v15 = [(FMServingCell *)self timestamp];
  v3 = [(FMServingCell *)self subscriptionID];
  v14 = [(FMServingCell *)self radioAccessTechnology];
  v16 = [(FMServingCell *)self cellID];
  v4 = [(FMServingCell *)self mnc];
  v5 = [(FMServingCell *)self mcc];
  v6 = [(FMServingCell *)self bandInfo];
  v7 = [(FMServingCell *)self tacOrLac];
  v13 = [(FMServingCell *)self arfcnOrUarfcn];
  v12 = [(FMServingCell *)self bandwidth];
  v8 = [(FMServingCell *)self pci];
  v9 = [(FMServingCell *)self deploymentType];
  v10 = [NSString stringWithFormat:@"timestamp %@, subscriptionID %@, radioAccessTechnology %@, cellID %@, mnc %@, mcc %@, bandInfo %@, tacOrLac %@, arfcnOrUarfcn %@, bandwidth %@, pci %@, deploymentType %@", v15, v3, v14, v16, v4, v5, v6, v7, v13, v12, v8, v9];

  return v10;
}

- (id)gci
{
  v3 = [(FMServingCell *)self mcc];
  v4 = [v3 stringValue];
  v5 = [(FMServingCell *)self mnc];
  v6 = [v5 stringValue];
  v7 = [(FMServingCell *)self tacOrLac];
  v8 = [v7 stringValue];
  v9 = [(FMServingCell *)self cellID];
  v10 = [v9 stringValue];
  v11 = [NSString stringWithFormat:@"%@.%@.%@.%@", v4, v6, v8, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FMServingCell *)self subscriptionID];
    v7 = [v5 subscriptionID];
    if (![v6 isEqualToNumber:v7])
    {
      v13 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v8 = [(FMServingCell *)self radioAccessTechnology];
    v9 = [v5 radioAccessTechnology];
    if (![v8 isEqualToString:v9])
    {
      v13 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v10 = [(FMServingCell *)self cellID];
    v11 = [v5 cellID];
    if (![v10 isEqualToNumber:v11])
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

    v42 = [(FMServingCell *)self bandInfo];
    v41 = [v5 bandInfo];
    if (![v42 isEqualToNumber:?])
    {
      v13 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v40 = [(FMServingCell *)self tacOrLac];
    v39 = [v5 tacOrLac];
    if (![v40 isEqualToNumber:?])
    {
      v13 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v38 = [(FMServingCell *)self arfcnOrUarfcn];
    v37 = [v5 arfcnOrUarfcn];
    if (![v38 isEqualToNumber:?])
    {
      v13 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v36 = [(FMServingCell *)self bandwidth];
    if (v36)
    {
      v34 = [v5 bandwidth];
      if (v34)
      {
        v33 = [(FMServingCell *)self bandwidth];
        v31 = [v5 bandwidth];
        v35 = 1;
        if ([v33 isEqualToNumber:v31])
        {
          goto LABEL_42;
        }
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    v14 = [(FMServingCell *)self bandwidth];
    if (v14)
    {

      v13 = 0;
      if (!v35)
      {
LABEL_28:
        if (v36)
        {
        }

        goto LABEL_31;
      }

LABEL_27:

      goto LABEL_28;
    }

    v16 = [v5 bandwidth];
    if (v16)
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
    v26 = [(FMServingCell *)self deploymentType];
    if (v26)
    {
      v23 = [v5 deploymentType];
      if (v23)
      {
        v22 = [(FMServingCell *)self deploymentType];
        v21 = [v5 deploymentType];
        if ([v22 isEqualToNumber:v21])
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
        v23 = 0;
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v19 = [(FMServingCell *)self deploymentType];
    if (v19)
    {

      v13 = 0;
      if (!v24)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v20 = [v5 deploymentType];
      v13 = v20 == 0;

      if ((v24 & 1) == 0)
      {
LABEL_65:
        if (v26)
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
  v3 = [(FMServingCell *)self subscriptionID];
  v4 = [v3 hash];

  v5 = [(FMServingCell *)self radioAccessTechnology];
  v6 = [v5 hash];

  v7 = [(FMServingCell *)self cellID];
  v8 = [v7 hash];

  v9 = [(FMServingCell *)self mnc];
  v10 = [v9 hash];

  v11 = [(FMServingCell *)self mcc];
  v12 = [v11 hash];

  v13 = [(FMServingCell *)self bandInfo];
  v34 = [v13 hash];
  v35 = v12;
  v36 = v10;
  v14 = v6;

  v15 = [(FMServingCell *)self tacOrLac];
  v16 = [v15 hash];

  v17 = [(FMServingCell *)self arfcnOrUarfcn];
  v18 = [v17 hash];

  v19 = [(FMServingCell *)self bandwidth];
  if (v19)
  {
    v20 = [(FMServingCell *)self bandwidth];
    v21 = [v20 hash];
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

  v25 = [(FMServingCell *)self deploymentType];
  if (v25)
  {
    v26 = [(FMServingCell *)self deploymentType];
    v27 = [v26 hash];
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