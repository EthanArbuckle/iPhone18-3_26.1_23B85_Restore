@interface ADDeviceCirclePeerData
+ (id)newWithBuilder:(id)a3;
- (ADDeviceCirclePeerData)initWithAceVersion:(id)a3 assistantIdentifier:(id)a4 buildVersion:(id)a5 productType:(id)a6 sharedUserIdentifier:(id)a7 userAssignedDeviceName:(id)a8 userInterfaceIdiom:(id)a9 isLocationSharingDevice:(id)a10 homeAccessoryInfo:(id)a11 isSiriCloudSyncEnabled:(id)a12 myriadTrialTreatment:(id)a13;
- (ADDeviceCirclePeerData)initWithBuilder:(id)a3;
- (ADDeviceCirclePeerData)initWithCoder:(id)a3;
- (ADDeviceCirclePeerData)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADDeviceCirclePeerData

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  aceVersion = self->_aceVersion;
  if (aceVersion)
  {
    [v3 setObject:aceVersion forKey:@"aceVersion"];
  }

  assistantIdentifier = self->_assistantIdentifier;
  if (assistantIdentifier)
  {
    [v4 setObject:assistantIdentifier forKey:@"assistantIdentifier"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"productType"];
  }

  sharedUserIdentifier = self->_sharedUserIdentifier;
  if (sharedUserIdentifier)
  {
    [v4 setObject:sharedUserIdentifier forKey:@"sharedUserIdentifier"];
  }

  userAssignedDeviceName = self->_userAssignedDeviceName;
  if (userAssignedDeviceName)
  {
    [v4 setObject:userAssignedDeviceName forKey:@"userAssignedDeviceName"];
  }

  userInterfaceIdiom = self->_userInterfaceIdiom;
  if (userInterfaceIdiom)
  {
    [v4 setObject:userInterfaceIdiom forKey:@"userInterfaceIdiom"];
  }

  isLocationSharingDevice = self->_isLocationSharingDevice;
  if (isLocationSharingDevice)
  {
    [v4 setObject:isLocationSharingDevice forKey:@"isLocationSharingDevice"];
  }

  homeAccessoryInfo = self->_homeAccessoryInfo;
  if (homeAccessoryInfo)
  {
    v14 = [(AFHomeAccessoryInfo *)homeAccessoryInfo buildDictionaryRepresentation];
    [v4 setObject:v14 forKey:@"homeAccessoryInfo"];
  }

  isSiriCloudSyncEnabled = self->_isSiriCloudSyncEnabled;
  if (isSiriCloudSyncEnabled)
  {
    [v4 setObject:isSiriCloudSyncEnabled forKey:@"isSiriCloudSyncEnabled"];
  }

  myriadTrialTreatment = self->_myriadTrialTreatment;
  if (myriadTrialTreatment)
  {
    [v4 setObject:myriadTrialTreatment forKey:@"myriadTrialTreatment"];
  }

  v17 = [v4 copy];

  return v17;
}

- (ADDeviceCirclePeerData)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"aceVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v6;
    }

    else
    {
      v30 = 0;
    }

    v8 = [v5 objectForKey:@"assistantIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v8;
    }

    else
    {
      v29 = 0;
    }

    v9 = [v5 objectForKey:@"buildVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v9;
    }

    else
    {
      v28 = 0;
    }

    v10 = [v5 objectForKey:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v10;
    }

    else
    {
      v27 = 0;
    }

    v11 = [v5 objectForKey:@"sharedUserIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v11;
    }

    else
    {
      v26 = 0;
    }

    v12 = [v5 objectForKey:@"userAssignedDeviceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 objectForKey:@"userInterfaceIdiom"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v5 objectForKey:@"isLocationSharingDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v5 objectForKey:@"homeAccessoryInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[AFHomeAccessoryInfo alloc] initWithDictionaryRepresentation:v18];
    }

    else
    {
      v19 = 0;
    }

    v20 = [v5 objectForKey:@"isSiriCloudSyncEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v5 objectForKey:@"myriadTrialTreatment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v25 = [(ADDeviceCirclePeerData *)self initWithAceVersion:v30 assistantIdentifier:v29 buildVersion:v28 productType:v27 sharedUserIdentifier:v26 userAssignedDeviceName:v13 userInterfaceIdiom:v15 isLocationSharingDevice:v17 homeAccessoryInfo:v19 isSiriCloudSyncEnabled:v21 myriadTrialTreatment:v23];
    self = v25;

    v7 = v25;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  aceVersion = self->_aceVersion;
  v5 = a3;
  [v5 encodeObject:aceVersion forKey:@"ADDeviceCirclePeerData::aceVersion"];
  [v5 encodeObject:self->_assistantIdentifier forKey:@"ADDeviceCirclePeerData::assistantIdentifier"];
  [v5 encodeObject:self->_buildVersion forKey:@"ADDeviceCirclePeerData::buildVersion"];
  [v5 encodeObject:self->_productType forKey:@"ADDeviceCirclePeerData::productType"];
  [v5 encodeObject:self->_sharedUserIdentifier forKey:@"ADDeviceCirclePeerData::sharedUserIdentifier"];
  [v5 encodeObject:self->_userAssignedDeviceName forKey:@"ADDeviceCirclePeerData::userAssignedDeviceName"];
  [v5 encodeObject:self->_userInterfaceIdiom forKey:@"ADDeviceCirclePeerData::userInterfaceIdiom"];
  [v5 encodeObject:self->_isLocationSharingDevice forKey:@"ADDeviceCirclePeerData::isLocationSharingDevice"];
  [v5 encodeObject:self->_homeAccessoryInfo forKey:@"ADDeviceCirclePeerData::homeAccessoryInfo"];
  [v5 encodeObject:self->_isSiriCloudSyncEnabled forKey:@"ADDeviceCirclePeerData::isSiriCloudSyncEnabled"];
  [v5 encodeObject:self->_myriadTrialTreatment forKey:@"ADDeviceCirclePeerData::myriadTrialTreatment"];
}

- (ADDeviceCirclePeerData)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::aceVersion"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::assistantIdentifier"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::buildVersion"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::productType"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::sharedUserIdentifier"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::userAssignedDeviceName"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::userInterfaceIdiom"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::isLocationSharingDevice"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::homeAccessoryInfo"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::isSiriCloudSyncEnabled"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::myriadTrialTreatment"];

  v16 = [(ADDeviceCirclePeerData *)self initWithAceVersion:v4 assistantIdentifier:v5 buildVersion:v6 productType:v7 sharedUserIdentifier:v17 userAssignedDeviceName:v14 userInterfaceIdiom:v13 isLocationSharingDevice:v8 homeAccessoryInfo:v9 isSiriCloudSyncEnabled:v10 myriadTrialTreatment:v11];
  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ADDeviceCirclePeerData *)v5 aceVersion];
      aceVersion = self->_aceVersion;
      if (aceVersion == v6 || [(NSString *)aceVersion isEqual:v6])
      {
        v8 = [(ADDeviceCirclePeerData *)v5 assistantIdentifier];
        assistantIdentifier = self->_assistantIdentifier;
        if (assistantIdentifier == v8 || [(NSString *)assistantIdentifier isEqual:v8])
        {
          v10 = [(ADDeviceCirclePeerData *)v5 buildVersion];
          buildVersion = self->_buildVersion;
          if (buildVersion == v10 || [(NSString *)buildVersion isEqual:v10])
          {
            v12 = [(ADDeviceCirclePeerData *)v5 productType];
            productType = self->_productType;
            if (productType == v12 || [(NSString *)productType isEqual:v12])
            {
              v14 = [(ADDeviceCirclePeerData *)v5 sharedUserIdentifier];
              sharedUserIdentifier = self->_sharedUserIdentifier;
              if (sharedUserIdentifier == v14 || [(NSString *)sharedUserIdentifier isEqual:v14])
              {
                v16 = [(ADDeviceCirclePeerData *)v5 userAssignedDeviceName];
                userAssignedDeviceName = self->_userAssignedDeviceName;
                if (userAssignedDeviceName == v16 || [(NSString *)userAssignedDeviceName isEqual:v16])
                {
                  v18 = [(ADDeviceCirclePeerData *)v5 userInterfaceIdiom];
                  userInterfaceIdiom = self->_userInterfaceIdiom;
                  if (userInterfaceIdiom == v18 || [(NSString *)userInterfaceIdiom isEqual:v18])
                  {
                    v34 = v18;
                    v20 = [(ADDeviceCirclePeerData *)v5 isLocationSharingDevice];
                    isLocationSharingDevice = self->_isLocationSharingDevice;
                    if (isLocationSharingDevice == v20 || [(NSNumber *)isLocationSharingDevice isEqual:v20])
                    {
                      v33 = v20;
                      v22 = [(ADDeviceCirclePeerData *)v5 homeAccessoryInfo];
                      homeAccessoryInfo = self->_homeAccessoryInfo;
                      if (homeAccessoryInfo == v22 || [(AFHomeAccessoryInfo *)homeAccessoryInfo isEqual:v22])
                      {
                        v32 = v22;
                        v24 = [(ADDeviceCirclePeerData *)v5 isSiriCloudSyncEnabled];
                        isSiriCloudSyncEnabled = self->_isSiriCloudSyncEnabled;
                        if (isSiriCloudSyncEnabled == v24 || [(NSNumber *)isSiriCloudSyncEnabled isEqual:v24])
                        {
                          v26 = [(ADDeviceCirclePeerData *)v5 myriadTrialTreatment];
                          myriadTrialTreatment = self->_myriadTrialTreatment;
                          v30 = 1;
                          if (myriadTrialTreatment != v26)
                          {
                            v28 = v26;
                            v29 = [(NSString *)myriadTrialTreatment isEqual:v26];
                            v26 = v28;
                            if (!v29)
                            {
                              v30 = 0;
                            }
                          }
                        }

                        else
                        {
                          v30 = 0;
                        }

                        v22 = v32;
                      }

                      else
                      {
                        v30 = 0;
                      }

                      v20 = v33;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    v18 = v34;
                  }

                  else
                  {
                    v30 = 0;
                  }
                }

                else
                {
                  v30 = 0;
                }
              }

              else
              {
                v30 = 0;
              }
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_aceVersion hash];
  v4 = [(NSString *)self->_assistantIdentifier hash]^ v3;
  v5 = [(NSString *)self->_buildVersion hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_productType hash];
  v7 = [(NSString *)self->_sharedUserIdentifier hash];
  v8 = v7 ^ [(NSString *)self->_userAssignedDeviceName hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_userInterfaceIdiom hash];
  v10 = [(NSNumber *)self->_isLocationSharingDevice hash];
  v11 = v10 ^ [(AFHomeAccessoryInfo *)self->_homeAccessoryInfo hash];
  v12 = v11 ^ [(NSNumber *)self->_isSiriCloudSyncEnabled hash];
  return v9 ^ v12 ^ [(NSString *)self->_myriadTrialTreatment hash];
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceCirclePeerData;
  v5 = [(ADDeviceCirclePeerData *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {aceVersion = %@, assistantIdentifier = %@, buildVersion = %@, productType = %@, sharedUserIdentifier = %@, userAssignedDeviceName = %@, userInterfaceIdiom = %@, isLocationSharingDevice = %@, homeAccessoryInfo = %@, isSiriCloudSyncEnabled = %@, myriadTrialTreatment = %@}", v5, self->_aceVersion, self->_assistantIdentifier, self->_buildVersion, self->_productType, self->_sharedUserIdentifier, self->_userAssignedDeviceName, self->_userInterfaceIdiom, self->_isLocationSharingDevice, self->_homeAccessoryInfo, self->_isSiriCloudSyncEnabled, self->_myriadTrialTreatment];

  return v6;
}

- (ADDeviceCirclePeerData)initWithAceVersion:(id)a3 assistantIdentifier:(id)a4 buildVersion:(id)a5 productType:(id)a6 sharedUserIdentifier:(id)a7 userAssignedDeviceName:(id)a8 userInterfaceIdiom:(id)a9 isLocationSharingDevice:(id)a10 homeAccessoryInfo:(id)a11 isSiriCloudSyncEnabled:(id)a12 myriadTrialTreatment:(id)a13
{
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10018335C;
  v32[3] = &unk_100514020;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a9;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v30 = v43;
  v29 = v42;
  v18 = v41;
  v19 = v40;
  v20 = v39;
  v21 = v38;
  v22 = v37;
  v23 = v36;
  v24 = v35;
  v25 = v34;
  v26 = v33;
  v27 = [(ADDeviceCirclePeerData *)self initWithBuilder:v32];

  return v27;
}

- (ADDeviceCirclePeerData)initWithBuilder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = ADDeviceCirclePeerData;
  v5 = [(ADDeviceCirclePeerData *)&v42 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceCirclePeerDataMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceCirclePeerDataMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceCirclePeerDataMutation *)v7 getAceVersion];
      v9 = [v8 copy];
      aceVersion = v6->_aceVersion;
      v6->_aceVersion = v9;

      v11 = [(_ADDeviceCirclePeerDataMutation *)v7 getAssistantIdentifier];
      v12 = [v11 copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v12;

      v14 = [(_ADDeviceCirclePeerDataMutation *)v7 getBuildVersion];
      v15 = [v14 copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v15;

      v17 = [(_ADDeviceCirclePeerDataMutation *)v7 getProductType];
      v18 = [v17 copy];
      productType = v6->_productType;
      v6->_productType = v18;

      v20 = [(_ADDeviceCirclePeerDataMutation *)v7 getSharedUserIdentifier];
      v21 = [v20 copy];
      sharedUserIdentifier = v6->_sharedUserIdentifier;
      v6->_sharedUserIdentifier = v21;

      v23 = [(_ADDeviceCirclePeerDataMutation *)v7 getUserAssignedDeviceName];
      v24 = [v23 copy];
      userAssignedDeviceName = v6->_userAssignedDeviceName;
      v6->_userAssignedDeviceName = v24;

      v26 = [(_ADDeviceCirclePeerDataMutation *)v7 getUserInterfaceIdiom];
      v27 = [v26 copy];
      userInterfaceIdiom = v6->_userInterfaceIdiom;
      v6->_userInterfaceIdiom = v27;

      v29 = [(_ADDeviceCirclePeerDataMutation *)v7 getIsLocationSharingDevice];
      v30 = [v29 copy];
      isLocationSharingDevice = v6->_isLocationSharingDevice;
      v6->_isLocationSharingDevice = v30;

      v32 = [(_ADDeviceCirclePeerDataMutation *)v7 getHomeAccessoryInfo];
      v33 = [v32 copy];
      homeAccessoryInfo = v6->_homeAccessoryInfo;
      v6->_homeAccessoryInfo = v33;

      v35 = [(_ADDeviceCirclePeerDataMutation *)v7 getIsSiriCloudSyncEnabled];
      v36 = [v35 copy];
      isSiriCloudSyncEnabled = v6->_isSiriCloudSyncEnabled;
      v6->_isSiriCloudSyncEnabled = v36;

      v38 = [(_ADDeviceCirclePeerDataMutation *)v7 getMyriadTrialTreatment];
      v39 = [v38 copy];
      myriadTrialTreatment = v6->_myriadTrialTreatment;
      v6->_myriadTrialTreatment = v39;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_ADDeviceCirclePeerDataMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceCirclePeerDataMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceCirclePeerData);
      v7 = [(_ADDeviceCirclePeerDataMutation *)v5 getAceVersion];
      v8 = [v7 copy];
      aceVersion = v6->_aceVersion;
      v6->_aceVersion = v8;

      v10 = [(_ADDeviceCirclePeerDataMutation *)v5 getAssistantIdentifier];
      v11 = [v10 copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v11;

      v13 = [(_ADDeviceCirclePeerDataMutation *)v5 getBuildVersion];
      v14 = [v13 copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v14;

      v16 = [(_ADDeviceCirclePeerDataMutation *)v5 getProductType];
      v17 = [v16 copy];
      productType = v6->_productType;
      v6->_productType = v17;

      v19 = [(_ADDeviceCirclePeerDataMutation *)v5 getSharedUserIdentifier];
      v20 = [v19 copy];
      sharedUserIdentifier = v6->_sharedUserIdentifier;
      v6->_sharedUserIdentifier = v20;

      v22 = [(_ADDeviceCirclePeerDataMutation *)v5 getUserAssignedDeviceName];
      v23 = [v22 copy];
      userAssignedDeviceName = v6->_userAssignedDeviceName;
      v6->_userAssignedDeviceName = v23;

      v25 = [(_ADDeviceCirclePeerDataMutation *)v5 getUserInterfaceIdiom];
      v26 = [v25 copy];
      userInterfaceIdiom = v6->_userInterfaceIdiom;
      v6->_userInterfaceIdiom = v26;

      v28 = [(_ADDeviceCirclePeerDataMutation *)v5 getIsLocationSharingDevice];
      v29 = [v28 copy];
      isLocationSharingDevice = v6->_isLocationSharingDevice;
      v6->_isLocationSharingDevice = v29;

      v31 = [(_ADDeviceCirclePeerDataMutation *)v5 getHomeAccessoryInfo];
      v32 = [v31 copy];
      homeAccessoryInfo = v6->_homeAccessoryInfo;
      v6->_homeAccessoryInfo = v32;

      v34 = [(_ADDeviceCirclePeerDataMutation *)v5 getIsSiriCloudSyncEnabled];
      v35 = [v34 copy];
      isSiriCloudSyncEnabled = v6->_isSiriCloudSyncEnabled;
      v6->_isSiriCloudSyncEnabled = v35;

      v37 = [(_ADDeviceCirclePeerDataMutation *)v5 getMyriadTrialTreatment];
      v38 = [v37 copy];
      myriadTrialTreatment = v6->_myriadTrialTreatment;
      v6->_myriadTrialTreatment = v38;
    }

    else
    {
      v6 = [(ADDeviceCirclePeerData *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceCirclePeerData *)self copy];
  }

  return v6;
}

@end