@interface CARSetupPassConfiguration
+ (id)passConfigurationFromDigitalCarKeyInfo:(id)info vehicleName:(id)name;
@end

@implementation CARSetupPassConfiguration

+ (id)passConfigurationFromDigitalCarKeyInfo:(id)info vehicleName:(id)name
{
  infoCopy = info;
  nameCopy = name;
  v7 = objc_alloc_init(PKAddCarKeyPassConfiguration);
  [v7 setReferralSource:3];
  if (nameCopy)
  {
    [v7 setVehicleName:nameCopy];
  }

  v46 = nameCopy;
  v8 = kCFACCProperties_Endpoint_DigitalCarKey_VehicleIdentifier;
  objc_opt_class();
  v9 = [infoCopy objectForKey:v8];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    [v7 setPairedReaderIdentifier:v10];
  }

  v45 = v10;
  objc_opt_class();
  v11 = [infoCopy objectForKey:kACCProperties_Endpoint_DigitalCarKey_CCCManufacturer];
  if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    [v7 setManufacturerIdentifier:v12];
  }

  v44 = v12;
  objc_opt_class();
  v13 = [infoCopy objectForKey:kACCProperties_Endpoint_DigitalCarKey_CCCBrand];
  if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    [v7 setIssuerIdentifier:v14];
  }

  v43 = v14;
  objc_opt_class();
  v15 = [infoCopy objectForKey:kACCProperties_Endpoint_DigitalCarKey_ProductPlanUID];
  if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    [v7 setProductPlanIdentifier:v16];
  }

  v42 = v16;
  objc_opt_class();
  v17 = [infoCopy objectForKey:kACCProperties_Endpoint_DigitalCarKey_SupportedRadioTechnologies];
  if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v47 = v7;
  v48 = infoCopy;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v50;
    v24 = kACCProperties_Endpoint_DigitalCarKey_RadioTechnology_NearFieldCommunication;
    v25 = kACCProperties_Endpoint_DigitalCarKey_RadioTechnology_Bluetooth;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v49 + 1) + 8 * i);
        objc_opt_class();
        v28 = v27;
        if (v28)
        {
          v29 = v28;
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          integerValue = [v30 integerValue];
          v32 = v22 | 2;
          if (integerValue != v25)
          {
            v32 = v22;
          }

          if (integerValue == v24)
          {
            v22 |= 1uLL;
          }

          else
          {
            v22 = v32;
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  [v47 setSupportedRadioTechnologies:v22];
  objc_opt_class();
  v33 = [v48 objectForKey:kACCProperties_Endpoint_DigitalCarKey_ProvisioningTemplate];
  if (v33 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v34)
  {
    [v47 setProvisioningTemplateIdentifier:v34];
  }

  objc_opt_class();
  v35 = [v48 objectForKey:kACCProperties_Endpoint_DigitalCarKey_OwnerKeyPairingAvailable];
  if (v35 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    [v47 setOwnerKeyPairingAvailable:{objc_msgSend(v36, "BOOLValue")}];
  }

  objc_opt_class();
  v37 = [v48 objectForKey:kACCProperties_Endpoint_DigitalCarKey_OnlineServicesActivated];
  if (v37 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    [v47 setOnlineServicesActivated:{objc_msgSend(v38, "BOOLValue")}];
  }

  objc_opt_class();
  v39 = [v48 objectForKey:kACCProperties_Endpoint_DigitalCarKey_ProofOfOwnershipPresent];
  if (v39 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {
    [v47 setProofOfOwnershipPresent:{objc_msgSend(v40, "BOOLValue")}];
  }

  return v47;
}

@end