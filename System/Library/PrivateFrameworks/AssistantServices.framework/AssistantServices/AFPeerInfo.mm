@interface AFPeerInfo
+ (id)newWithBuilder:(id)a3;
- (AFPeerInfo)initWithBuilder:(id)a3;
- (AFPeerInfo)initWithCoder:(id)a3;
- (AFPeerInfo)initWithDictionaryRepresentation:(id)a3;
- (AFPeerInfo)initWithIsDeviceOwnedByCurrentUser:(BOOL)a3 assistantIdentifier:(id)a4 sharedUserIdentifier:(id)a5 idsIdentifier:(id)a6 idsDeviceUniqueIdentifier:(id)a7 rapportEffectiveIdentifier:(id)a8 homeKitAccessoryIdentifier:(id)a9 mediaSystemIdentifier:(id)a10 mediaRouteIdentifier:(id)a11 isCommunalDevice:(BOOL)a12 roomName:(id)a13 name:(id)a14 productType:(id)a15 buildVersion:(id)a16 userInterfaceIdiom:(id)a17 aceVersion:(id)a18 isLocationSharingDevice:(BOOL)a19 isSiriCloudSyncEnabled:(BOOL)a20 myriadTrialTreatment:(id)a21;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFPeerInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceOwnedByCurrentUser];
  [v3 setObject:v4 forKey:@"isDeviceOwnedByCurrentUser"];

  assistantIdentifier = self->_assistantIdentifier;
  if (assistantIdentifier)
  {
    [v3 setObject:assistantIdentifier forKey:@"assistantIdentifier"];
  }

  sharedUserIdentifier = self->_sharedUserIdentifier;
  if (sharedUserIdentifier)
  {
    [v3 setObject:sharedUserIdentifier forKey:@"sharedUserIdentifier"];
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    [v3 setObject:idsIdentifier forKey:@"idsIdentifier"];
  }

  idsDeviceUniqueIdentifier = self->_idsDeviceUniqueIdentifier;
  if (idsDeviceUniqueIdentifier)
  {
    [v3 setObject:idsDeviceUniqueIdentifier forKey:@"idsDeviceUniqueIdentifier"];
  }

  rapportEffectiveIdentifier = self->_rapportEffectiveIdentifier;
  if (rapportEffectiveIdentifier)
  {
    [v3 setObject:rapportEffectiveIdentifier forKey:@"rapportEffectiveIdentifier"];
  }

  homeKitAccessoryIdentifier = self->_homeKitAccessoryIdentifier;
  if (homeKitAccessoryIdentifier)
  {
    [v3 setObject:homeKitAccessoryIdentifier forKey:@"homeKitAccessoryIdentifier"];
  }

  mediaSystemIdentifier = self->_mediaSystemIdentifier;
  if (mediaSystemIdentifier)
  {
    [v3 setObject:mediaSystemIdentifier forKey:@"mediaSystemIdentifier"];
  }

  mediaRouteIdentifier = self->_mediaRouteIdentifier;
  if (mediaRouteIdentifier)
  {
    [v3 setObject:mediaRouteIdentifier forKey:@"mediaRouteIdentifier"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCommunalDevice];
  [v3 setObject:v13 forKey:@"isCommunalDevice"];

  roomName = self->_roomName;
  if (roomName)
  {
    [v3 setObject:roomName forKey:@"roomName"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v3 setObject:productType forKey:@"productType"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v3 setObject:buildVersion forKey:@"buildVersion"];
  }

  userInterfaceIdiom = self->_userInterfaceIdiom;
  if (userInterfaceIdiom)
  {
    [v3 setObject:userInterfaceIdiom forKey:@"userInterfaceIdiom"];
  }

  aceVersion = self->_aceVersion;
  if (aceVersion)
  {
    [v3 setObject:aceVersion forKey:@"aceVersion"];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLocationSharingDevice];
  [v3 setObject:v20 forKey:@"isLocationSharingDevice"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSiriCloudSyncEnabled];
  [v3 setObject:v21 forKey:@"isSiriCloudSyncEnabled"];

  myriadTrialTreatment = self->_myriadTrialTreatment;
  if (myriadTrialTreatment)
  {
    [v3 setObject:myriadTrialTreatment forKey:@"myriadTrialTreatment"];
  }

  v23 = [v3 copy];

  return v23;
}

- (id)ad_shortDescription
{
  v15 = MEMORY[0x1E696AEC0];
  v17 = [(AFPeerInfo *)self assistantIdentifier];
  v3 = [v17 ad_shortDescription];
  v16 = [(AFPeerInfo *)self idsDeviceUniqueIdentifier];
  v4 = [v16 ad_shortDescription];
  v5 = [(AFPeerInfo *)self mediaSystemIdentifier];
  v6 = [v5 ad_shortDescription];
  v7 = [(AFPeerInfo *)self mediaRouteIdentifier];
  v8 = [v7 ad_shortDescription];
  v9 = [(AFPeerInfo *)self name];
  v10 = [(AFPeerInfo *)self roomName];
  v11 = [(AFPeerInfo *)self isCommunalDevice];
  v12 = [(AFPeerInfo *)self myriadTrialTreatment];
  v13 = [v15 stringWithFormat:@"(assistant=%@, ids=%@, media(s/r)=%@/%@, nm=%@, rm=%@, communal=%d, tt=%@)", v3, v4, v6, v8, v9, v10, v11, v12];

  return v13;
}

- (AFPeerInfo)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v46 = self;
    v6 = [v4 objectForKey:@"isDeviceOwnedByCurrentUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v45 = [v7 BOOLValue];
    v9 = [v5 objectForKey:@"assistantIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v9;
    }

    else
    {
      v52 = 0;
    }

    v10 = [v5 objectForKey:@"sharedUserIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = v10;
    }

    else
    {
      v51 = 0;
    }

    v11 = [v5 objectForKey:@"idsIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v11;
    }

    else
    {
      v44 = 0;
    }

    v12 = [v5 objectForKey:@"idsDeviceUniqueIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v12;
    }

    else
    {
      v43 = 0;
    }

    v13 = [v5 objectForKey:@"rapportEffectiveIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v13;
    }

    else
    {
      v42 = 0;
    }

    v14 = [v5 objectForKey:@"homeKitAccessoryIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = v14;
    }

    else
    {
      v50 = 0;
    }

    v15 = [v5 objectForKey:@"mediaSystemIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v15;
    }

    else
    {
      v49 = 0;
    }

    v16 = [v5 objectForKey:@"mediaRouteIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v16;
    }

    else
    {
      v48 = 0;
    }

    v17 = [v5 objectForKey:@"isCommunalDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v41 = [v18 BOOLValue];
    v19 = [v5 objectForKey:@"roomName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v19;
    }

    else
    {
      v47 = 0;
    }

    v20 = [v5 objectForKey:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v20;
    }

    else
    {
      v40 = 0;
    }

    v21 = [v5 objectForKey:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [v5 objectForKey:@"buildVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = [v5 objectForKey:@"userInterfaceIdiom"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = [v5 objectForKey:@"aceVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = [v5 objectForKey:@"isLocationSharingDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = [v30 BOOLValue];
    v32 = [v5 objectForKey:@"isSiriCloudSyncEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = [v33 BOOLValue];
    v35 = [v5 objectForKey:@"myriadTrialTreatment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    BYTE1(v39) = v34;
    LOBYTE(v39) = v31;
    LOBYTE(v38) = v41;
    self = [(AFPeerInfo *)v46 initWithIsDeviceOwnedByCurrentUser:v45 assistantIdentifier:v52 sharedUserIdentifier:v51 idsIdentifier:v44 idsDeviceUniqueIdentifier:v43 rapportEffectiveIdentifier:v42 homeKitAccessoryIdentifier:v50 mediaSystemIdentifier:v49 mediaRouteIdentifier:v48 isCommunalDevice:v38 roomName:v47 name:v40 productType:v22 buildVersion:v24 userInterfaceIdiom:v26 aceVersion:v28 isLocationSharingDevice:v39 isSiriCloudSyncEnabled:v36 myriadTrialTreatment:?];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  isDeviceOwnedByCurrentUser = self->_isDeviceOwnedByCurrentUser;
  v10 = a3;
  v6 = [v4 numberWithBool:isDeviceOwnedByCurrentUser];
  [v10 encodeObject:v6 forKey:@"AFPeerInfo::isDeviceOwnedByCurrentUser"];

  [v10 encodeObject:self->_assistantIdentifier forKey:@"AFPeerInfo::assistantIdentifier"];
  [v10 encodeObject:self->_sharedUserIdentifier forKey:@"AFPeerInfo::sharedUserIdentifier"];
  [v10 encodeObject:self->_idsIdentifier forKey:@"AFPeerInfo::idsIdentifier"];
  [v10 encodeObject:self->_idsDeviceUniqueIdentifier forKey:@"AFPeerInfo::idsDeviceUniqueIdentifier"];
  [v10 encodeObject:self->_rapportEffectiveIdentifier forKey:@"AFPeerInfo::rapportEffectiveIdentifier"];
  [v10 encodeObject:self->_homeKitAccessoryIdentifier forKey:@"AFPeerInfo::homeKitAccessoryIdentifier"];
  [v10 encodeObject:self->_mediaSystemIdentifier forKey:@"AFPeerInfo::mediaSystemIdentifier"];
  [v10 encodeObject:self->_mediaRouteIdentifier forKey:@"AFPeerInfo::mediaRouteIdentifier"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCommunalDevice];
  [v10 encodeObject:v7 forKey:@"AFPeerInfo::isCommunalDevice"];

  [v10 encodeObject:self->_roomName forKey:@"AFPeerInfo::roomName"];
  [v10 encodeObject:self->_name forKey:@"AFPeerInfo::name"];
  [v10 encodeObject:self->_productType forKey:@"AFPeerInfo::productType"];
  [v10 encodeObject:self->_buildVersion forKey:@"AFPeerInfo::buildVersion"];
  [v10 encodeObject:self->_userInterfaceIdiom forKey:@"AFPeerInfo::userInterfaceIdiom"];
  [v10 encodeObject:self->_aceVersion forKey:@"AFPeerInfo::aceVersion"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLocationSharingDevice];
  [v10 encodeObject:v8 forKey:@"AFPeerInfo::isLocationSharingDevice"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSiriCloudSyncEnabled];
  [v10 encodeObject:v9 forKey:@"AFPeerInfo::isSiriCloudSyncEnabled"];

  [v10 encodeObject:self->_myriadTrialTreatment forKey:@"AFPeerInfo::myriadTrialTreatment"];
}

- (AFPeerInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::isDeviceOwnedByCurrentUser"];
  v24 = [v4 BOOLValue];

  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::assistantIdentifier"];
  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::sharedUserIdentifier"];
  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::idsIdentifier"];
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::idsDeviceUniqueIdentifier"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::rapportEffectiveIdentifier"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::homeKitAccessoryIdentifier"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::mediaSystemIdentifier"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::mediaRouteIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::isCommunalDevice"];
  v22 = [v5 BOOLValue];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::roomName"];
  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::name"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::productType"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::buildVersion"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::userInterfaceIdiom"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::aceVersion"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::isLocationSharingDevice"];
  v11 = [v10 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::isSiriCloudSyncEnabled"];
  v13 = [v12 BOOLValue];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::myriadTrialTreatment"];

  BYTE1(v17) = v13;
  LOBYTE(v17) = v11;
  LOBYTE(v16) = v22;
  v26 = [(AFPeerInfo *)self initWithIsDeviceOwnedByCurrentUser:v24 assistantIdentifier:v31 sharedUserIdentifier:v30 idsIdentifier:v29 idsDeviceUniqueIdentifier:v28 rapportEffectiveIdentifier:v23 homeKitAccessoryIdentifier:v21 mediaSystemIdentifier:v20 mediaRouteIdentifier:v19 isCommunalDevice:v16 roomName:v18 name:v27 productType:v6 buildVersion:v7 userInterfaceIdiom:v8 aceVersion:v9 isLocationSharingDevice:v17 isSiriCloudSyncEnabled:v14 myriadTrialTreatment:?];

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v41 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isDeviceOwnedByCurrentUser = self->_isDeviceOwnedByCurrentUser;
      if (isDeviceOwnedByCurrentUser == [(AFPeerInfo *)v5 isDeviceOwnedByCurrentUser]&& (isCommunalDevice = self->_isCommunalDevice, isCommunalDevice == [(AFPeerInfo *)v5 isCommunalDevice]) && (isLocationSharingDevice = self->_isLocationSharingDevice, isLocationSharingDevice == [(AFPeerInfo *)v5 isLocationSharingDevice]) && (isSiriCloudSyncEnabled = self->_isSiriCloudSyncEnabled, isSiriCloudSyncEnabled == [(AFPeerInfo *)v5 isSiriCloudSyncEnabled]))
      {
        v10 = [(AFPeerInfo *)v5 assistantIdentifier];
        assistantIdentifier = self->_assistantIdentifier;
        if (assistantIdentifier == v10 || [(NSString *)assistantIdentifier isEqual:v10])
        {
          v12 = [(AFPeerInfo *)v5 sharedUserIdentifier];
          sharedUserIdentifier = self->_sharedUserIdentifier;
          if (sharedUserIdentifier == v12 || [(NSString *)sharedUserIdentifier isEqual:v12])
          {
            v14 = [(AFPeerInfo *)v5 idsIdentifier];
            idsIdentifier = self->_idsIdentifier;
            if (idsIdentifier == v14 || [(NSString *)idsIdentifier isEqual:v14])
            {
              v16 = [(AFPeerInfo *)v5 idsDeviceUniqueIdentifier];
              idsDeviceUniqueIdentifier = self->_idsDeviceUniqueIdentifier;
              if (idsDeviceUniqueIdentifier == v16 || [(NSString *)idsDeviceUniqueIdentifier isEqual:v16])
              {
                v18 = [(AFPeerInfo *)v5 rapportEffectiveIdentifier];
                rapportEffectiveIdentifier = self->_rapportEffectiveIdentifier;
                if (rapportEffectiveIdentifier == v18 || [(NSString *)rapportEffectiveIdentifier isEqual:v18])
                {
                  v20 = [(AFPeerInfo *)v5 homeKitAccessoryIdentifier];
                  homeKitAccessoryIdentifier = self->_homeKitAccessoryIdentifier;
                  if (homeKitAccessoryIdentifier == v20 || [(NSString *)homeKitAccessoryIdentifier isEqual:v20])
                  {
                    v22 = [(AFPeerInfo *)v5 mediaSystemIdentifier];
                    mediaSystemIdentifier = self->_mediaSystemIdentifier;
                    if (mediaSystemIdentifier == v22 || [(NSString *)mediaSystemIdentifier isEqual:v22])
                    {
                      v50 = v22;
                      v24 = [(AFPeerInfo *)v5 mediaRouteIdentifier];
                      mediaRouteIdentifier = self->_mediaRouteIdentifier;
                      if (mediaRouteIdentifier == v24 || [(NSString *)mediaRouteIdentifier isEqual:v24])
                      {
                        v49 = v24;
                        v26 = [(AFPeerInfo *)v5 roomName];
                        roomName = self->_roomName;
                        if (roomName == v26 || [(NSString *)roomName isEqual:v26])
                        {
                          v48 = v26;
                          v28 = [(AFPeerInfo *)v5 name];
                          name = self->_name;
                          if (name == v28 || [(NSString *)name isEqual:v28])
                          {
                            v46 = v28;
                            v30 = [(AFPeerInfo *)v5 productType];
                            productType = self->_productType;
                            v47 = v30;
                            if (productType == v30 || [(NSString *)productType isEqual:v30])
                            {
                              v32 = [(AFPeerInfo *)v5 buildVersion];
                              buildVersion = self->_buildVersion;
                              if (buildVersion == v32 || [(NSString *)buildVersion isEqual:v32])
                              {
                                v45 = v32;
                                v34 = [(AFPeerInfo *)v5 userInterfaceIdiom];
                                userInterfaceIdiom = self->_userInterfaceIdiom;
                                if (userInterfaceIdiom == v34 || [(NSString *)userInterfaceIdiom isEqual:v34])
                                {
                                  v36 = [(AFPeerInfo *)v5 aceVersion];
                                  aceVersion = self->_aceVersion;
                                  v44 = v36;
                                  if (aceVersion == v36 || [(NSString *)aceVersion isEqual:v36])
                                  {
                                    v38 = [(AFPeerInfo *)v5 myriadTrialTreatment];
                                    myriadTrialTreatment = self->_myriadTrialTreatment;
                                    v40 = v38;
                                    v41 = myriadTrialTreatment == v38 || [(NSString *)myriadTrialTreatment isEqual:v38];
                                  }

                                  else
                                  {
                                    v41 = 0;
                                  }

                                  v34 = v43;
                                }

                                else
                                {
                                  v41 = 0;
                                }

                                v32 = v45;
                              }

                              else
                              {
                                v41 = 0;
                              }
                            }

                            else
                            {
                              v41 = 0;
                            }

                            v28 = v46;
                          }

                          else
                          {
                            v41 = 0;
                          }

                          v26 = v48;
                        }

                        else
                        {
                          v41 = 0;
                        }

                        v24 = v49;
                      }

                      else
                      {
                        v41 = 0;
                      }

                      v22 = v50;
                    }

                    else
                    {
                      v41 = 0;
                    }
                  }

                  else
                  {
                    v41 = 0;
                  }
                }

                else
                {
                  v41 = 0;
                }
              }

              else
              {
                v41 = 0;
              }
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }
  }

  return v41;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceOwnedByCurrentUser];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_assistantIdentifier hash];
  v6 = v5 ^ [(NSString *)self->_sharedUserIdentifier hash];
  v7 = v6 ^ [(NSString *)self->_idsIdentifier hash]^ v4;
  v8 = [(NSString *)self->_idsDeviceUniqueIdentifier hash];
  v9 = v8 ^ [(NSString *)self->_rapportEffectiveIdentifier hash];
  v10 = v9 ^ [(NSString *)self->_homeKitAccessoryIdentifier hash];
  v11 = v7 ^ v10 ^ [(NSString *)self->_mediaSystemIdentifier hash];
  v12 = [(NSString *)self->_mediaRouteIdentifier hash];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCommunalDevice];
  v14 = v12 ^ [v13 hash];
  v15 = v11 ^ v14 ^ [(NSString *)self->_roomName hash];
  v16 = [(NSString *)self->_name hash];
  v17 = v16 ^ [(NSString *)self->_productType hash];
  v18 = v17 ^ [(NSString *)self->_buildVersion hash];
  v19 = v18 ^ [(NSString *)self->_userInterfaceIdiom hash];
  v20 = v19 ^ [(NSString *)self->_aceVersion hash];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLocationSharingDevice];
  v22 = v15 ^ v20 ^ [v21 hash];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSiriCloudSyncEnabled];
  v24 = [v23 hash];
  v25 = v24 ^ [(NSString *)self->_myriadTrialTreatment hash];

  return v22 ^ v25;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = AFPeerInfo;
  v5 = [(AFPeerInfo *)&v13 description];
  v6 = v5;
  v7 = @"NO";
  if (self->_isDeviceOwnedByCurrentUser)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_isCommunalDevice)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_isLocationSharingDevice)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_isSiriCloudSyncEnabled)
  {
    v7 = @"YES";
  }

  v11 = [v4 initWithFormat:@"%@ {isDeviceOwnedByCurrentUser = %@, assistantIdentifier = %@, sharedUserIdentifier = %@, idsIdentifier = %@, idsDeviceUniqueIdentifier = %@, rapportEffectiveIdentifier = %@, homeKitAccessoryIdentifier = %@, mediaSystemIdentifier = %@, mediaRouteIdentifier = %@, isCommunalDevice = %@, roomName = %@, name = %@, productType = %@, buildVersion = %@, userInterfaceIdiom = %@, aceVersion = %@, isLocationSharingDevice = %@, isSiriCloudSyncEnabled = %@, myriadTrialTreatment = %@}", v5, v8, *&self->_assistantIdentifier, *&self->_idsIdentifier, *&self->_rapportEffectiveIdentifier, self->_mediaSystemIdentifier, self->_mediaRouteIdentifier, v9, *&self->_roomName, *&self->_productType, self->_userInterfaceIdiom, self->_aceVersion, v10, v7, self->_myriadTrialTreatment];

  return v11;
}

- (AFPeerInfo)initWithIsDeviceOwnedByCurrentUser:(BOOL)a3 assistantIdentifier:(id)a4 sharedUserIdentifier:(id)a5 idsIdentifier:(id)a6 idsDeviceUniqueIdentifier:(id)a7 rapportEffectiveIdentifier:(id)a8 homeKitAccessoryIdentifier:(id)a9 mediaSystemIdentifier:(id)a10 mediaRouteIdentifier:(id)a11 isCommunalDevice:(BOOL)a12 roomName:(id)a13 name:(id)a14 productType:(id)a15 buildVersion:(id)a16 userInterfaceIdiom:(id)a17 aceVersion:(id)a18 isLocationSharingDevice:(BOOL)a19 isSiriCloudSyncEnabled:(BOOL)a20 myriadTrialTreatment:(id)a21
{
  v58 = a4;
  v57 = a5;
  v56 = a6;
  v55 = a7;
  v40 = a8;
  v41 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a13;
  v28 = a14;
  v43 = a15;
  v29 = a16;
  v30 = a17;
  v31 = a18;
  v32 = a21;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __381__AFPeerInfo_initWithIsDeviceOwnedByCurrentUser_assistantIdentifier_sharedUserIdentifier_idsIdentifier_idsDeviceUniqueIdentifier_rapportEffectiveIdentifier_homeKitAccessoryIdentifier_mediaSystemIdentifier_mediaRouteIdentifier_isCommunalDevice_roomName_name_productType_buildVersion_userInterfaceIdiom_aceVersion_isLocationSharingDevice_isSiriCloudSyncEnabled_myriadTrialTreatment___block_invoke;
  v59[3] = &unk_1E7349638;
  v75 = a3;
  v60 = v58;
  v61 = v57;
  v62 = v56;
  v63 = v55;
  v64 = v40;
  v65 = v41;
  v66 = v25;
  v67 = v26;
  v76 = a12;
  v68 = v27;
  v69 = v28;
  v70 = v43;
  v71 = v29;
  v72 = v30;
  v73 = v31;
  v77 = a19;
  v78 = a20;
  v74 = v32;
  v53 = v32;
  v52 = v31;
  v51 = v30;
  v50 = v29;
  v48 = v43;
  v47 = v28;
  v46 = v27;
  v45 = v26;
  v44 = v25;
  v42 = v41;
  v33 = v40;
  v34 = v55;
  v35 = v56;
  v36 = v57;
  v37 = v58;
  v38 = [(AFPeerInfo *)self initWithBuilder:v59];

  return v38;
}

void __381__AFPeerInfo_initWithIsDeviceOwnedByCurrentUser_assistantIdentifier_sharedUserIdentifier_idsIdentifier_idsDeviceUniqueIdentifier_rapportEffectiveIdentifier_homeKitAccessoryIdentifier_mediaSystemIdentifier_mediaRouteIdentifier_isCommunalDevice_roomName_name_productType_buildVersion_userInterfaceIdiom_aceVersion_isLocationSharingDevice_isSiriCloudSyncEnabled_myriadTrialTreatment___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 152);
  v4 = a2;
  [v4 setIsDeviceOwnedByCurrentUser:v3];
  [v4 setAssistantIdentifier:*(a1 + 32)];
  [v4 setSharedUserIdentifier:*(a1 + 40)];
  [v4 setIdsIdentifier:*(a1 + 48)];
  [v4 setIdsDeviceUniqueIdentifier:*(a1 + 56)];
  [v4 setRapportEffectiveIdentifier:*(a1 + 64)];
  [v4 setHomeKitAccessoryIdentifier:*(a1 + 72)];
  [v4 setMediaSystemIdentifier:*(a1 + 80)];
  [v4 setMediaRouteIdentifier:*(a1 + 88)];
  [v4 setIsCommunalDevice:*(a1 + 153)];
  [v4 setRoomName:*(a1 + 96)];
  [v4 setName:*(a1 + 104)];
  [v4 setProductType:*(a1 + 112)];
  [v4 setBuildVersion:*(a1 + 120)];
  [v4 setUserInterfaceIdiom:*(a1 + 128)];
  [v4 setAceVersion:*(a1 + 136)];
  [v4 setIsLocationSharingDevice:*(a1 + 154)];
  [v4 setIsSiriCloudSyncEnabled:*(a1 + 155)];
  [v4 setMyriadTrialTreatment:*(a1 + 144)];
}

- (AFPeerInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = AFPeerInfo;
  v5 = [(AFPeerInfo *)&v54 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFPeerInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFPeerInfoMutation *)v7 isDirty])
    {
      v6->_isDeviceOwnedByCurrentUser = [(_AFPeerInfoMutation *)v7 getIsDeviceOwnedByCurrentUser];
      v8 = [(_AFPeerInfoMutation *)v7 getAssistantIdentifier];
      v9 = [v8 copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v9;

      v11 = [(_AFPeerInfoMutation *)v7 getSharedUserIdentifier];
      v12 = [v11 copy];
      sharedUserIdentifier = v6->_sharedUserIdentifier;
      v6->_sharedUserIdentifier = v12;

      v14 = [(_AFPeerInfoMutation *)v7 getIdsIdentifier];
      v15 = [v14 copy];
      idsIdentifier = v6->_idsIdentifier;
      v6->_idsIdentifier = v15;

      v17 = [(_AFPeerInfoMutation *)v7 getIdsDeviceUniqueIdentifier];
      v18 = [v17 copy];
      idsDeviceUniqueIdentifier = v6->_idsDeviceUniqueIdentifier;
      v6->_idsDeviceUniqueIdentifier = v18;

      v20 = [(_AFPeerInfoMutation *)v7 getRapportEffectiveIdentifier];
      v21 = [v20 copy];
      rapportEffectiveIdentifier = v6->_rapportEffectiveIdentifier;
      v6->_rapportEffectiveIdentifier = v21;

      v23 = [(_AFPeerInfoMutation *)v7 getHomeKitAccessoryIdentifier];
      v24 = [v23 copy];
      homeKitAccessoryIdentifier = v6->_homeKitAccessoryIdentifier;
      v6->_homeKitAccessoryIdentifier = v24;

      v26 = [(_AFPeerInfoMutation *)v7 getMediaSystemIdentifier];
      v27 = [v26 copy];
      mediaSystemIdentifier = v6->_mediaSystemIdentifier;
      v6->_mediaSystemIdentifier = v27;

      v29 = [(_AFPeerInfoMutation *)v7 getMediaRouteIdentifier];
      v30 = [v29 copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v30;

      v6->_isCommunalDevice = [(_AFPeerInfoMutation *)v7 getIsCommunalDevice];
      v32 = [(_AFPeerInfoMutation *)v7 getRoomName];
      v33 = [v32 copy];
      roomName = v6->_roomName;
      v6->_roomName = v33;

      v35 = [(_AFPeerInfoMutation *)v7 getName];
      v36 = [v35 copy];
      name = v6->_name;
      v6->_name = v36;

      v38 = [(_AFPeerInfoMutation *)v7 getProductType];
      v39 = [v38 copy];
      productType = v6->_productType;
      v6->_productType = v39;

      v41 = [(_AFPeerInfoMutation *)v7 getBuildVersion];
      v42 = [v41 copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v42;

      v44 = [(_AFPeerInfoMutation *)v7 getUserInterfaceIdiom];
      v45 = [v44 copy];
      userInterfaceIdiom = v6->_userInterfaceIdiom;
      v6->_userInterfaceIdiom = v45;

      v47 = [(_AFPeerInfoMutation *)v7 getAceVersion];
      v48 = [v47 copy];
      aceVersion = v6->_aceVersion;
      v6->_aceVersion = v48;

      v6->_isLocationSharingDevice = [(_AFPeerInfoMutation *)v7 getIsLocationSharingDevice];
      v6->_isSiriCloudSyncEnabled = [(_AFPeerInfoMutation *)v7 getIsSiriCloudSyncEnabled];
      v50 = [(_AFPeerInfoMutation *)v7 getMyriadTrialTreatment];
      v51 = [v50 copy];
      myriadTrialTreatment = v6->_myriadTrialTreatment;
      v6->_myriadTrialTreatment = v51;
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
    v5 = [[_AFPeerInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFPeerInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFPeerInfo);
      v6->_isDeviceOwnedByCurrentUser = [(_AFPeerInfoMutation *)v5 getIsDeviceOwnedByCurrentUser];
      v7 = [(_AFPeerInfoMutation *)v5 getAssistantIdentifier];
      v8 = [v7 copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v8;

      v10 = [(_AFPeerInfoMutation *)v5 getSharedUserIdentifier];
      v11 = [v10 copy];
      sharedUserIdentifier = v6->_sharedUserIdentifier;
      v6->_sharedUserIdentifier = v11;

      v13 = [(_AFPeerInfoMutation *)v5 getIdsIdentifier];
      v14 = [v13 copy];
      idsIdentifier = v6->_idsIdentifier;
      v6->_idsIdentifier = v14;

      v16 = [(_AFPeerInfoMutation *)v5 getIdsDeviceUniqueIdentifier];
      v17 = [v16 copy];
      idsDeviceUniqueIdentifier = v6->_idsDeviceUniqueIdentifier;
      v6->_idsDeviceUniqueIdentifier = v17;

      v19 = [(_AFPeerInfoMutation *)v5 getRapportEffectiveIdentifier];
      v20 = [v19 copy];
      rapportEffectiveIdentifier = v6->_rapportEffectiveIdentifier;
      v6->_rapportEffectiveIdentifier = v20;

      v22 = [(_AFPeerInfoMutation *)v5 getHomeKitAccessoryIdentifier];
      v23 = [v22 copy];
      homeKitAccessoryIdentifier = v6->_homeKitAccessoryIdentifier;
      v6->_homeKitAccessoryIdentifier = v23;

      v25 = [(_AFPeerInfoMutation *)v5 getMediaSystemIdentifier];
      v26 = [v25 copy];
      mediaSystemIdentifier = v6->_mediaSystemIdentifier;
      v6->_mediaSystemIdentifier = v26;

      v28 = [(_AFPeerInfoMutation *)v5 getMediaRouteIdentifier];
      v29 = [v28 copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v29;

      v6->_isCommunalDevice = [(_AFPeerInfoMutation *)v5 getIsCommunalDevice];
      v31 = [(_AFPeerInfoMutation *)v5 getRoomName];
      v32 = [v31 copy];
      roomName = v6->_roomName;
      v6->_roomName = v32;

      v34 = [(_AFPeerInfoMutation *)v5 getName];
      v35 = [v34 copy];
      name = v6->_name;
      v6->_name = v35;

      v37 = [(_AFPeerInfoMutation *)v5 getProductType];
      v38 = [v37 copy];
      productType = v6->_productType;
      v6->_productType = v38;

      v40 = [(_AFPeerInfoMutation *)v5 getBuildVersion];
      v41 = [v40 copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v41;

      v43 = [(_AFPeerInfoMutation *)v5 getUserInterfaceIdiom];
      v44 = [v43 copy];
      userInterfaceIdiom = v6->_userInterfaceIdiom;
      v6->_userInterfaceIdiom = v44;

      v46 = [(_AFPeerInfoMutation *)v5 getAceVersion];
      v47 = [v46 copy];
      aceVersion = v6->_aceVersion;
      v6->_aceVersion = v47;

      v6->_isLocationSharingDevice = [(_AFPeerInfoMutation *)v5 getIsLocationSharingDevice];
      v6->_isSiriCloudSyncEnabled = [(_AFPeerInfoMutation *)v5 getIsSiriCloudSyncEnabled];
      v49 = [(_AFPeerInfoMutation *)v5 getMyriadTrialTreatment];
      v50 = [v49 copy];
      myriadTrialTreatment = v6->_myriadTrialTreatment;
      v6->_myriadTrialTreatment = v50;
    }

    else
    {
      v6 = [(AFPeerInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFPeerInfo *)self copy];
  }

  return v6;
}

@end