@interface ADDeviceCirclePeerData
+ (id)newWithBuilder:(id)builder;
- (ADDeviceCirclePeerData)initWithAceVersion:(id)version assistantIdentifier:(id)identifier buildVersion:(id)buildVersion productType:(id)type sharedUserIdentifier:(id)userIdentifier userAssignedDeviceName:(id)name userInterfaceIdiom:(id)idiom isLocationSharingDevice:(id)self0 homeAccessoryInfo:(id)self1 isSiriCloudSyncEnabled:(id)self2 myriadTrialTreatment:(id)self3;
- (ADDeviceCirclePeerData)initWithBuilder:(id)builder;
- (ADDeviceCirclePeerData)initWithCoder:(id)coder;
- (ADDeviceCirclePeerData)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
    buildDictionaryRepresentation = [(AFHomeAccessoryInfo *)homeAccessoryInfo buildDictionaryRepresentation];
    [v4 setObject:buildDictionaryRepresentation forKey:@"homeAccessoryInfo"];
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

- (ADDeviceCirclePeerData)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"aceVersion"];
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

- (void)encodeWithCoder:(id)coder
{
  aceVersion = self->_aceVersion;
  coderCopy = coder;
  [coderCopy encodeObject:aceVersion forKey:@"ADDeviceCirclePeerData::aceVersion"];
  [coderCopy encodeObject:self->_assistantIdentifier forKey:@"ADDeviceCirclePeerData::assistantIdentifier"];
  [coderCopy encodeObject:self->_buildVersion forKey:@"ADDeviceCirclePeerData::buildVersion"];
  [coderCopy encodeObject:self->_productType forKey:@"ADDeviceCirclePeerData::productType"];
  [coderCopy encodeObject:self->_sharedUserIdentifier forKey:@"ADDeviceCirclePeerData::sharedUserIdentifier"];
  [coderCopy encodeObject:self->_userAssignedDeviceName forKey:@"ADDeviceCirclePeerData::userAssignedDeviceName"];
  [coderCopy encodeObject:self->_userInterfaceIdiom forKey:@"ADDeviceCirclePeerData::userInterfaceIdiom"];
  [coderCopy encodeObject:self->_isLocationSharingDevice forKey:@"ADDeviceCirclePeerData::isLocationSharingDevice"];
  [coderCopy encodeObject:self->_homeAccessoryInfo forKey:@"ADDeviceCirclePeerData::homeAccessoryInfo"];
  [coderCopy encodeObject:self->_isSiriCloudSyncEnabled forKey:@"ADDeviceCirclePeerData::isSiriCloudSyncEnabled"];
  [coderCopy encodeObject:self->_myriadTrialTreatment forKey:@"ADDeviceCirclePeerData::myriadTrialTreatment"];
}

- (ADDeviceCirclePeerData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::aceVersion"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::assistantIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::buildVersion"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::productType"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::sharedUserIdentifier"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::userAssignedDeviceName"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::userInterfaceIdiom"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::isLocationSharingDevice"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::homeAccessoryInfo"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::isSiriCloudSyncEnabled"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceCirclePeerData::myriadTrialTreatment"];

  v16 = [(ADDeviceCirclePeerData *)self initWithAceVersion:v4 assistantIdentifier:v5 buildVersion:v6 productType:v7 sharedUserIdentifier:v17 userAssignedDeviceName:v14 userInterfaceIdiom:v13 isLocationSharingDevice:v8 homeAccessoryInfo:v9 isSiriCloudSyncEnabled:v10 myriadTrialTreatment:v11];
  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      aceVersion = [(ADDeviceCirclePeerData *)v5 aceVersion];
      aceVersion = self->_aceVersion;
      if (aceVersion == aceVersion || [(NSString *)aceVersion isEqual:aceVersion])
      {
        assistantIdentifier = [(ADDeviceCirclePeerData *)v5 assistantIdentifier];
        assistantIdentifier = self->_assistantIdentifier;
        if (assistantIdentifier == assistantIdentifier || [(NSString *)assistantIdentifier isEqual:assistantIdentifier])
        {
          buildVersion = [(ADDeviceCirclePeerData *)v5 buildVersion];
          buildVersion = self->_buildVersion;
          if (buildVersion == buildVersion || [(NSString *)buildVersion isEqual:buildVersion])
          {
            productType = [(ADDeviceCirclePeerData *)v5 productType];
            productType = self->_productType;
            if (productType == productType || [(NSString *)productType isEqual:productType])
            {
              sharedUserIdentifier = [(ADDeviceCirclePeerData *)v5 sharedUserIdentifier];
              sharedUserIdentifier = self->_sharedUserIdentifier;
              if (sharedUserIdentifier == sharedUserIdentifier || [(NSString *)sharedUserIdentifier isEqual:sharedUserIdentifier])
              {
                userAssignedDeviceName = [(ADDeviceCirclePeerData *)v5 userAssignedDeviceName];
                userAssignedDeviceName = self->_userAssignedDeviceName;
                if (userAssignedDeviceName == userAssignedDeviceName || [(NSString *)userAssignedDeviceName isEqual:userAssignedDeviceName])
                {
                  userInterfaceIdiom = [(ADDeviceCirclePeerData *)v5 userInterfaceIdiom];
                  userInterfaceIdiom = self->_userInterfaceIdiom;
                  if (userInterfaceIdiom == userInterfaceIdiom || [(NSString *)userInterfaceIdiom isEqual:userInterfaceIdiom])
                  {
                    v34 = userInterfaceIdiom;
                    isLocationSharingDevice = [(ADDeviceCirclePeerData *)v5 isLocationSharingDevice];
                    isLocationSharingDevice = self->_isLocationSharingDevice;
                    if (isLocationSharingDevice == isLocationSharingDevice || [(NSNumber *)isLocationSharingDevice isEqual:isLocationSharingDevice])
                    {
                      v33 = isLocationSharingDevice;
                      homeAccessoryInfo = [(ADDeviceCirclePeerData *)v5 homeAccessoryInfo];
                      homeAccessoryInfo = self->_homeAccessoryInfo;
                      if (homeAccessoryInfo == homeAccessoryInfo || [(AFHomeAccessoryInfo *)homeAccessoryInfo isEqual:homeAccessoryInfo])
                      {
                        v32 = homeAccessoryInfo;
                        isSiriCloudSyncEnabled = [(ADDeviceCirclePeerData *)v5 isSiriCloudSyncEnabled];
                        isSiriCloudSyncEnabled = self->_isSiriCloudSyncEnabled;
                        if (isSiriCloudSyncEnabled == isSiriCloudSyncEnabled || [(NSNumber *)isSiriCloudSyncEnabled isEqual:isSiriCloudSyncEnabled])
                        {
                          myriadTrialTreatment = [(ADDeviceCirclePeerData *)v5 myriadTrialTreatment];
                          myriadTrialTreatment = self->_myriadTrialTreatment;
                          v30 = 1;
                          if (myriadTrialTreatment != myriadTrialTreatment)
                          {
                            v28 = myriadTrialTreatment;
                            v29 = [(NSString *)myriadTrialTreatment isEqual:myriadTrialTreatment];
                            myriadTrialTreatment = v28;
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

                        homeAccessoryInfo = v32;
                      }

                      else
                      {
                        v30 = 0;
                      }

                      isLocationSharingDevice = v33;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    userInterfaceIdiom = v34;
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceCirclePeerData;
  v5 = [(ADDeviceCirclePeerData *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {aceVersion = %@, assistantIdentifier = %@, buildVersion = %@, productType = %@, sharedUserIdentifier = %@, userAssignedDeviceName = %@, userInterfaceIdiom = %@, isLocationSharingDevice = %@, homeAccessoryInfo = %@, isSiriCloudSyncEnabled = %@, myriadTrialTreatment = %@}", v5, self->_aceVersion, self->_assistantIdentifier, self->_buildVersion, self->_productType, self->_sharedUserIdentifier, self->_userAssignedDeviceName, self->_userInterfaceIdiom, self->_isLocationSharingDevice, self->_homeAccessoryInfo, self->_isSiriCloudSyncEnabled, self->_myriadTrialTreatment];

  return v6;
}

- (ADDeviceCirclePeerData)initWithAceVersion:(id)version assistantIdentifier:(id)identifier buildVersion:(id)buildVersion productType:(id)type sharedUserIdentifier:(id)userIdentifier userAssignedDeviceName:(id)name userInterfaceIdiom:(id)idiom isLocationSharingDevice:(id)self0 homeAccessoryInfo:(id)self1 isSiriCloudSyncEnabled:(id)self2 myriadTrialTreatment:(id)self3
{
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10018335C;
  v32[3] = &unk_100514020;
  versionCopy = version;
  identifierCopy = identifier;
  buildVersionCopy = buildVersion;
  typeCopy = type;
  userIdentifierCopy = userIdentifier;
  nameCopy = name;
  idiomCopy = idiom;
  deviceCopy = device;
  infoCopy = info;
  enabledCopy = enabled;
  treatmentCopy = treatment;
  v30 = treatmentCopy;
  v29 = enabledCopy;
  v18 = infoCopy;
  v19 = deviceCopy;
  v20 = idiomCopy;
  v21 = nameCopy;
  v22 = userIdentifierCopy;
  v23 = typeCopy;
  v24 = buildVersionCopy;
  v25 = identifierCopy;
  v26 = versionCopy;
  v27 = [(ADDeviceCirclePeerData *)self initWithBuilder:v32];

  return v27;
}

- (ADDeviceCirclePeerData)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v42.receiver = self;
  v42.super_class = ADDeviceCirclePeerData;
  v5 = [(ADDeviceCirclePeerData *)&v42 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceCirclePeerDataMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceCirclePeerDataMutation *)v7 isDirty])
    {
      getAceVersion = [(_ADDeviceCirclePeerDataMutation *)v7 getAceVersion];
      v9 = [getAceVersion copy];
      aceVersion = v6->_aceVersion;
      v6->_aceVersion = v9;

      getAssistantIdentifier = [(_ADDeviceCirclePeerDataMutation *)v7 getAssistantIdentifier];
      v12 = [getAssistantIdentifier copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v12;

      getBuildVersion = [(_ADDeviceCirclePeerDataMutation *)v7 getBuildVersion];
      v15 = [getBuildVersion copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v15;

      getProductType = [(_ADDeviceCirclePeerDataMutation *)v7 getProductType];
      v18 = [getProductType copy];
      productType = v6->_productType;
      v6->_productType = v18;

      getSharedUserIdentifier = [(_ADDeviceCirclePeerDataMutation *)v7 getSharedUserIdentifier];
      v21 = [getSharedUserIdentifier copy];
      sharedUserIdentifier = v6->_sharedUserIdentifier;
      v6->_sharedUserIdentifier = v21;

      getUserAssignedDeviceName = [(_ADDeviceCirclePeerDataMutation *)v7 getUserAssignedDeviceName];
      v24 = [getUserAssignedDeviceName copy];
      userAssignedDeviceName = v6->_userAssignedDeviceName;
      v6->_userAssignedDeviceName = v24;

      getUserInterfaceIdiom = [(_ADDeviceCirclePeerDataMutation *)v7 getUserInterfaceIdiom];
      v27 = [getUserInterfaceIdiom copy];
      userInterfaceIdiom = v6->_userInterfaceIdiom;
      v6->_userInterfaceIdiom = v27;

      getIsLocationSharingDevice = [(_ADDeviceCirclePeerDataMutation *)v7 getIsLocationSharingDevice];
      v30 = [getIsLocationSharingDevice copy];
      isLocationSharingDevice = v6->_isLocationSharingDevice;
      v6->_isLocationSharingDevice = v30;

      getHomeAccessoryInfo = [(_ADDeviceCirclePeerDataMutation *)v7 getHomeAccessoryInfo];
      v33 = [getHomeAccessoryInfo copy];
      homeAccessoryInfo = v6->_homeAccessoryInfo;
      v6->_homeAccessoryInfo = v33;

      getIsSiriCloudSyncEnabled = [(_ADDeviceCirclePeerDataMutation *)v7 getIsSiriCloudSyncEnabled];
      v36 = [getIsSiriCloudSyncEnabled copy];
      isSiriCloudSyncEnabled = v6->_isSiriCloudSyncEnabled;
      v6->_isSiriCloudSyncEnabled = v36;

      getMyriadTrialTreatment = [(_ADDeviceCirclePeerDataMutation *)v7 getMyriadTrialTreatment];
      v39 = [getMyriadTrialTreatment copy];
      myriadTrialTreatment = v6->_myriadTrialTreatment;
      v6->_myriadTrialTreatment = v39;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_ADDeviceCirclePeerDataMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceCirclePeerDataMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceCirclePeerData);
      getAceVersion = [(_ADDeviceCirclePeerDataMutation *)v5 getAceVersion];
      v8 = [getAceVersion copy];
      aceVersion = v6->_aceVersion;
      v6->_aceVersion = v8;

      getAssistantIdentifier = [(_ADDeviceCirclePeerDataMutation *)v5 getAssistantIdentifier];
      v11 = [getAssistantIdentifier copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v11;

      getBuildVersion = [(_ADDeviceCirclePeerDataMutation *)v5 getBuildVersion];
      v14 = [getBuildVersion copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v14;

      getProductType = [(_ADDeviceCirclePeerDataMutation *)v5 getProductType];
      v17 = [getProductType copy];
      productType = v6->_productType;
      v6->_productType = v17;

      getSharedUserIdentifier = [(_ADDeviceCirclePeerDataMutation *)v5 getSharedUserIdentifier];
      v20 = [getSharedUserIdentifier copy];
      sharedUserIdentifier = v6->_sharedUserIdentifier;
      v6->_sharedUserIdentifier = v20;

      getUserAssignedDeviceName = [(_ADDeviceCirclePeerDataMutation *)v5 getUserAssignedDeviceName];
      v23 = [getUserAssignedDeviceName copy];
      userAssignedDeviceName = v6->_userAssignedDeviceName;
      v6->_userAssignedDeviceName = v23;

      getUserInterfaceIdiom = [(_ADDeviceCirclePeerDataMutation *)v5 getUserInterfaceIdiom];
      v26 = [getUserInterfaceIdiom copy];
      userInterfaceIdiom = v6->_userInterfaceIdiom;
      v6->_userInterfaceIdiom = v26;

      getIsLocationSharingDevice = [(_ADDeviceCirclePeerDataMutation *)v5 getIsLocationSharingDevice];
      v29 = [getIsLocationSharingDevice copy];
      isLocationSharingDevice = v6->_isLocationSharingDevice;
      v6->_isLocationSharingDevice = v29;

      getHomeAccessoryInfo = [(_ADDeviceCirclePeerDataMutation *)v5 getHomeAccessoryInfo];
      v32 = [getHomeAccessoryInfo copy];
      homeAccessoryInfo = v6->_homeAccessoryInfo;
      v6->_homeAccessoryInfo = v32;

      getIsSiriCloudSyncEnabled = [(_ADDeviceCirclePeerDataMutation *)v5 getIsSiriCloudSyncEnabled];
      v35 = [getIsSiriCloudSyncEnabled copy];
      isSiriCloudSyncEnabled = v6->_isSiriCloudSyncEnabled;
      v6->_isSiriCloudSyncEnabled = v35;

      getMyriadTrialTreatment = [(_ADDeviceCirclePeerDataMutation *)v5 getMyriadTrialTreatment];
      v38 = [getMyriadTrialTreatment copy];
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