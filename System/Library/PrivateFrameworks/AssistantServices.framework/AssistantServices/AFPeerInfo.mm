@interface AFPeerInfo
+ (id)newWithBuilder:(id)builder;
- (AFPeerInfo)initWithBuilder:(id)builder;
- (AFPeerInfo)initWithCoder:(id)coder;
- (AFPeerInfo)initWithDictionaryRepresentation:(id)representation;
- (AFPeerInfo)initWithIsDeviceOwnedByCurrentUser:(BOOL)user assistantIdentifier:(id)identifier sharedUserIdentifier:(id)userIdentifier idsIdentifier:(id)idsIdentifier idsDeviceUniqueIdentifier:(id)uniqueIdentifier rapportEffectiveIdentifier:(id)effectiveIdentifier homeKitAccessoryIdentifier:(id)accessoryIdentifier mediaSystemIdentifier:(id)self0 mediaRouteIdentifier:(id)self1 isCommunalDevice:(BOOL)self2 roomName:(id)self3 name:(id)self4 productType:(id)self5 buildVersion:(id)self6 userInterfaceIdiom:(id)self7 aceVersion:(id)self8 isLocationSharingDevice:(BOOL)self9 isSiriCloudSyncEnabled:(BOOL)enabled myriadTrialTreatment:(id)treatment;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  assistantIdentifier = [(AFPeerInfo *)self assistantIdentifier];
  ad_shortDescription = [assistantIdentifier ad_shortDescription];
  idsDeviceUniqueIdentifier = [(AFPeerInfo *)self idsDeviceUniqueIdentifier];
  ad_shortDescription2 = [idsDeviceUniqueIdentifier ad_shortDescription];
  mediaSystemIdentifier = [(AFPeerInfo *)self mediaSystemIdentifier];
  ad_shortDescription3 = [mediaSystemIdentifier ad_shortDescription];
  mediaRouteIdentifier = [(AFPeerInfo *)self mediaRouteIdentifier];
  ad_shortDescription4 = [mediaRouteIdentifier ad_shortDescription];
  name = [(AFPeerInfo *)self name];
  roomName = [(AFPeerInfo *)self roomName];
  isCommunalDevice = [(AFPeerInfo *)self isCommunalDevice];
  myriadTrialTreatment = [(AFPeerInfo *)self myriadTrialTreatment];
  v13 = [v15 stringWithFormat:@"(assistant=%@, ids=%@, media(s/r)=%@/%@, nm=%@, rm=%@, communal=%d, tt=%@)", ad_shortDescription, ad_shortDescription2, ad_shortDescription3, ad_shortDescription4, name, roomName, isCommunalDevice, myriadTrialTreatment];

  return v13;
}

- (AFPeerInfo)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    selfCopy = self;
    v6 = [representationCopy objectForKey:@"isDeviceOwnedByCurrentUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    bOOLValue = [v7 BOOLValue];
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

    bOOLValue2 = [v18 BOOLValue];
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

    bOOLValue3 = [v30 BOOLValue];
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

    bOOLValue4 = [v33 BOOLValue];
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

    BYTE1(v39) = bOOLValue4;
    LOBYTE(v39) = bOOLValue3;
    LOBYTE(v38) = bOOLValue2;
    self = [(AFPeerInfo *)selfCopy initWithIsDeviceOwnedByCurrentUser:bOOLValue assistantIdentifier:v52 sharedUserIdentifier:v51 idsIdentifier:v44 idsDeviceUniqueIdentifier:v43 rapportEffectiveIdentifier:v42 homeKitAccessoryIdentifier:v50 mediaSystemIdentifier:v49 mediaRouteIdentifier:v48 isCommunalDevice:v38 roomName:v47 name:v40 productType:v22 buildVersion:v24 userInterfaceIdiom:v26 aceVersion:v28 isLocationSharingDevice:v39 isSiriCloudSyncEnabled:v36 myriadTrialTreatment:?];

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  isDeviceOwnedByCurrentUser = self->_isDeviceOwnedByCurrentUser;
  coderCopy = coder;
  v6 = [v4 numberWithBool:isDeviceOwnedByCurrentUser];
  [coderCopy encodeObject:v6 forKey:@"AFPeerInfo::isDeviceOwnedByCurrentUser"];

  [coderCopy encodeObject:self->_assistantIdentifier forKey:@"AFPeerInfo::assistantIdentifier"];
  [coderCopy encodeObject:self->_sharedUserIdentifier forKey:@"AFPeerInfo::sharedUserIdentifier"];
  [coderCopy encodeObject:self->_idsIdentifier forKey:@"AFPeerInfo::idsIdentifier"];
  [coderCopy encodeObject:self->_idsDeviceUniqueIdentifier forKey:@"AFPeerInfo::idsDeviceUniqueIdentifier"];
  [coderCopy encodeObject:self->_rapportEffectiveIdentifier forKey:@"AFPeerInfo::rapportEffectiveIdentifier"];
  [coderCopy encodeObject:self->_homeKitAccessoryIdentifier forKey:@"AFPeerInfo::homeKitAccessoryIdentifier"];
  [coderCopy encodeObject:self->_mediaSystemIdentifier forKey:@"AFPeerInfo::mediaSystemIdentifier"];
  [coderCopy encodeObject:self->_mediaRouteIdentifier forKey:@"AFPeerInfo::mediaRouteIdentifier"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCommunalDevice];
  [coderCopy encodeObject:v7 forKey:@"AFPeerInfo::isCommunalDevice"];

  [coderCopy encodeObject:self->_roomName forKey:@"AFPeerInfo::roomName"];
  [coderCopy encodeObject:self->_name forKey:@"AFPeerInfo::name"];
  [coderCopy encodeObject:self->_productType forKey:@"AFPeerInfo::productType"];
  [coderCopy encodeObject:self->_buildVersion forKey:@"AFPeerInfo::buildVersion"];
  [coderCopy encodeObject:self->_userInterfaceIdiom forKey:@"AFPeerInfo::userInterfaceIdiom"];
  [coderCopy encodeObject:self->_aceVersion forKey:@"AFPeerInfo::aceVersion"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLocationSharingDevice];
  [coderCopy encodeObject:v8 forKey:@"AFPeerInfo::isLocationSharingDevice"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSiriCloudSyncEnabled];
  [coderCopy encodeObject:v9 forKey:@"AFPeerInfo::isSiriCloudSyncEnabled"];

  [coderCopy encodeObject:self->_myriadTrialTreatment forKey:@"AFPeerInfo::myriadTrialTreatment"];
}

- (AFPeerInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::isDeviceOwnedByCurrentUser"];
  bOOLValue = [v4 BOOLValue];

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::assistantIdentifier"];
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::sharedUserIdentifier"];
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::idsIdentifier"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::idsDeviceUniqueIdentifier"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::rapportEffectiveIdentifier"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::homeKitAccessoryIdentifier"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::mediaSystemIdentifier"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::mediaRouteIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::isCommunalDevice"];
  bOOLValue2 = [v5 BOOLValue];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::roomName"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::productType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::buildVersion"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::userInterfaceIdiom"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::aceVersion"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::isLocationSharingDevice"];
  bOOLValue3 = [v10 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::isSiriCloudSyncEnabled"];
  bOOLValue4 = [v12 BOOLValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerInfo::myriadTrialTreatment"];

  BYTE1(v17) = bOOLValue4;
  LOBYTE(v17) = bOOLValue3;
  LOBYTE(v16) = bOOLValue2;
  v26 = [(AFPeerInfo *)self initWithIsDeviceOwnedByCurrentUser:bOOLValue assistantIdentifier:v31 sharedUserIdentifier:v30 idsIdentifier:v29 idsDeviceUniqueIdentifier:v28 rapportEffectiveIdentifier:v23 homeKitAccessoryIdentifier:v21 mediaSystemIdentifier:v20 mediaRouteIdentifier:v19 isCommunalDevice:v16 roomName:v18 name:v27 productType:v6 buildVersion:v7 userInterfaceIdiom:v8 aceVersion:v9 isLocationSharingDevice:v17 isSiriCloudSyncEnabled:v14 myriadTrialTreatment:?];

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v41 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isDeviceOwnedByCurrentUser = self->_isDeviceOwnedByCurrentUser;
      if (isDeviceOwnedByCurrentUser == [(AFPeerInfo *)v5 isDeviceOwnedByCurrentUser]&& (isCommunalDevice = self->_isCommunalDevice, isCommunalDevice == [(AFPeerInfo *)v5 isCommunalDevice]) && (isLocationSharingDevice = self->_isLocationSharingDevice, isLocationSharingDevice == [(AFPeerInfo *)v5 isLocationSharingDevice]) && (isSiriCloudSyncEnabled = self->_isSiriCloudSyncEnabled, isSiriCloudSyncEnabled == [(AFPeerInfo *)v5 isSiriCloudSyncEnabled]))
      {
        assistantIdentifier = [(AFPeerInfo *)v5 assistantIdentifier];
        assistantIdentifier = self->_assistantIdentifier;
        if (assistantIdentifier == assistantIdentifier || [(NSString *)assistantIdentifier isEqual:assistantIdentifier])
        {
          sharedUserIdentifier = [(AFPeerInfo *)v5 sharedUserIdentifier];
          sharedUserIdentifier = self->_sharedUserIdentifier;
          if (sharedUserIdentifier == sharedUserIdentifier || [(NSString *)sharedUserIdentifier isEqual:sharedUserIdentifier])
          {
            idsIdentifier = [(AFPeerInfo *)v5 idsIdentifier];
            idsIdentifier = self->_idsIdentifier;
            if (idsIdentifier == idsIdentifier || [(NSString *)idsIdentifier isEqual:idsIdentifier])
            {
              idsDeviceUniqueIdentifier = [(AFPeerInfo *)v5 idsDeviceUniqueIdentifier];
              idsDeviceUniqueIdentifier = self->_idsDeviceUniqueIdentifier;
              if (idsDeviceUniqueIdentifier == idsDeviceUniqueIdentifier || [(NSString *)idsDeviceUniqueIdentifier isEqual:idsDeviceUniqueIdentifier])
              {
                rapportEffectiveIdentifier = [(AFPeerInfo *)v5 rapportEffectiveIdentifier];
                rapportEffectiveIdentifier = self->_rapportEffectiveIdentifier;
                if (rapportEffectiveIdentifier == rapportEffectiveIdentifier || [(NSString *)rapportEffectiveIdentifier isEqual:rapportEffectiveIdentifier])
                {
                  homeKitAccessoryIdentifier = [(AFPeerInfo *)v5 homeKitAccessoryIdentifier];
                  homeKitAccessoryIdentifier = self->_homeKitAccessoryIdentifier;
                  if (homeKitAccessoryIdentifier == homeKitAccessoryIdentifier || [(NSString *)homeKitAccessoryIdentifier isEqual:homeKitAccessoryIdentifier])
                  {
                    mediaSystemIdentifier = [(AFPeerInfo *)v5 mediaSystemIdentifier];
                    mediaSystemIdentifier = self->_mediaSystemIdentifier;
                    if (mediaSystemIdentifier == mediaSystemIdentifier || [(NSString *)mediaSystemIdentifier isEqual:mediaSystemIdentifier])
                    {
                      v50 = mediaSystemIdentifier;
                      mediaRouteIdentifier = [(AFPeerInfo *)v5 mediaRouteIdentifier];
                      mediaRouteIdentifier = self->_mediaRouteIdentifier;
                      if (mediaRouteIdentifier == mediaRouteIdentifier || [(NSString *)mediaRouteIdentifier isEqual:mediaRouteIdentifier])
                      {
                        v49 = mediaRouteIdentifier;
                        roomName = [(AFPeerInfo *)v5 roomName];
                        roomName = self->_roomName;
                        if (roomName == roomName || [(NSString *)roomName isEqual:roomName])
                        {
                          v48 = roomName;
                          name = [(AFPeerInfo *)v5 name];
                          name = self->_name;
                          if (name == name || [(NSString *)name isEqual:name])
                          {
                            v46 = name;
                            productType = [(AFPeerInfo *)v5 productType];
                            productType = self->_productType;
                            v47 = productType;
                            if (productType == productType || [(NSString *)productType isEqual:productType])
                            {
                              buildVersion = [(AFPeerInfo *)v5 buildVersion];
                              buildVersion = self->_buildVersion;
                              if (buildVersion == buildVersion || [(NSString *)buildVersion isEqual:buildVersion])
                              {
                                v45 = buildVersion;
                                userInterfaceIdiom = [(AFPeerInfo *)v5 userInterfaceIdiom];
                                userInterfaceIdiom = self->_userInterfaceIdiom;
                                if (userInterfaceIdiom == userInterfaceIdiom || [(NSString *)userInterfaceIdiom isEqual:userInterfaceIdiom])
                                {
                                  aceVersion = [(AFPeerInfo *)v5 aceVersion];
                                  aceVersion = self->_aceVersion;
                                  v44 = aceVersion;
                                  if (aceVersion == aceVersion || [(NSString *)aceVersion isEqual:aceVersion])
                                  {
                                    myriadTrialTreatment = [(AFPeerInfo *)v5 myriadTrialTreatment];
                                    myriadTrialTreatment = self->_myriadTrialTreatment;
                                    v40 = myriadTrialTreatment;
                                    v41 = myriadTrialTreatment == myriadTrialTreatment || [(NSString *)myriadTrialTreatment isEqual:myriadTrialTreatment];
                                  }

                                  else
                                  {
                                    v41 = 0;
                                  }

                                  userInterfaceIdiom = v43;
                                }

                                else
                                {
                                  v41 = 0;
                                }

                                buildVersion = v45;
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

                            name = v46;
                          }

                          else
                          {
                            v41 = 0;
                          }

                          roomName = v48;
                        }

                        else
                        {
                          v41 = 0;
                        }

                        mediaRouteIdentifier = v49;
                      }

                      else
                      {
                        v41 = 0;
                      }

                      mediaSystemIdentifier = v50;
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFPeerInfo)initWithIsDeviceOwnedByCurrentUser:(BOOL)user assistantIdentifier:(id)identifier sharedUserIdentifier:(id)userIdentifier idsIdentifier:(id)idsIdentifier idsDeviceUniqueIdentifier:(id)uniqueIdentifier rapportEffectiveIdentifier:(id)effectiveIdentifier homeKitAccessoryIdentifier:(id)accessoryIdentifier mediaSystemIdentifier:(id)self0 mediaRouteIdentifier:(id)self1 isCommunalDevice:(BOOL)self2 roomName:(id)self3 name:(id)self4 productType:(id)self5 buildVersion:(id)self6 userInterfaceIdiom:(id)self7 aceVersion:(id)self8 isLocationSharingDevice:(BOOL)self9 isSiriCloudSyncEnabled:(BOOL)enabled myriadTrialTreatment:(id)treatment
{
  identifierCopy = identifier;
  userIdentifierCopy = userIdentifier;
  idsIdentifierCopy = idsIdentifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  effectiveIdentifierCopy = effectiveIdentifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  systemIdentifierCopy = systemIdentifier;
  routeIdentifierCopy = routeIdentifier;
  nameCopy = name;
  v28 = a14;
  typeCopy = type;
  versionCopy = version;
  idiomCopy = idiom;
  aceVersionCopy = aceVersion;
  treatmentCopy = treatment;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __381__AFPeerInfo_initWithIsDeviceOwnedByCurrentUser_assistantIdentifier_sharedUserIdentifier_idsIdentifier_idsDeviceUniqueIdentifier_rapportEffectiveIdentifier_homeKitAccessoryIdentifier_mediaSystemIdentifier_mediaRouteIdentifier_isCommunalDevice_roomName_name_productType_buildVersion_userInterfaceIdiom_aceVersion_isLocationSharingDevice_isSiriCloudSyncEnabled_myriadTrialTreatment___block_invoke;
  v59[3] = &unk_1E7349638;
  userCopy = user;
  v60 = identifierCopy;
  v61 = userIdentifierCopy;
  v62 = idsIdentifierCopy;
  v63 = uniqueIdentifierCopy;
  v64 = effectiveIdentifierCopy;
  v65 = accessoryIdentifierCopy;
  v66 = systemIdentifierCopy;
  v67 = routeIdentifierCopy;
  deviceCopy = device;
  v68 = nameCopy;
  v69 = v28;
  v70 = typeCopy;
  v71 = versionCopy;
  v72 = idiomCopy;
  v73 = aceVersionCopy;
  sharingDeviceCopy = sharingDevice;
  enabledCopy = enabled;
  v74 = treatmentCopy;
  v53 = treatmentCopy;
  v52 = aceVersionCopy;
  v51 = idiomCopy;
  v50 = versionCopy;
  v48 = typeCopy;
  v47 = v28;
  v46 = nameCopy;
  v45 = routeIdentifierCopy;
  v44 = systemIdentifierCopy;
  v42 = accessoryIdentifierCopy;
  v33 = effectiveIdentifierCopy;
  v34 = uniqueIdentifierCopy;
  v35 = idsIdentifierCopy;
  v36 = userIdentifierCopy;
  v37 = identifierCopy;
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

- (AFPeerInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v54.receiver = self;
  v54.super_class = AFPeerInfo;
  v5 = [(AFPeerInfo *)&v54 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFPeerInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFPeerInfoMutation *)v7 isDirty])
    {
      v6->_isDeviceOwnedByCurrentUser = [(_AFPeerInfoMutation *)v7 getIsDeviceOwnedByCurrentUser];
      getAssistantIdentifier = [(_AFPeerInfoMutation *)v7 getAssistantIdentifier];
      v9 = [getAssistantIdentifier copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v9;

      getSharedUserIdentifier = [(_AFPeerInfoMutation *)v7 getSharedUserIdentifier];
      v12 = [getSharedUserIdentifier copy];
      sharedUserIdentifier = v6->_sharedUserIdentifier;
      v6->_sharedUserIdentifier = v12;

      getIdsIdentifier = [(_AFPeerInfoMutation *)v7 getIdsIdentifier];
      v15 = [getIdsIdentifier copy];
      idsIdentifier = v6->_idsIdentifier;
      v6->_idsIdentifier = v15;

      getIdsDeviceUniqueIdentifier = [(_AFPeerInfoMutation *)v7 getIdsDeviceUniqueIdentifier];
      v18 = [getIdsDeviceUniqueIdentifier copy];
      idsDeviceUniqueIdentifier = v6->_idsDeviceUniqueIdentifier;
      v6->_idsDeviceUniqueIdentifier = v18;

      getRapportEffectiveIdentifier = [(_AFPeerInfoMutation *)v7 getRapportEffectiveIdentifier];
      v21 = [getRapportEffectiveIdentifier copy];
      rapportEffectiveIdentifier = v6->_rapportEffectiveIdentifier;
      v6->_rapportEffectiveIdentifier = v21;

      getHomeKitAccessoryIdentifier = [(_AFPeerInfoMutation *)v7 getHomeKitAccessoryIdentifier];
      v24 = [getHomeKitAccessoryIdentifier copy];
      homeKitAccessoryIdentifier = v6->_homeKitAccessoryIdentifier;
      v6->_homeKitAccessoryIdentifier = v24;

      getMediaSystemIdentifier = [(_AFPeerInfoMutation *)v7 getMediaSystemIdentifier];
      v27 = [getMediaSystemIdentifier copy];
      mediaSystemIdentifier = v6->_mediaSystemIdentifier;
      v6->_mediaSystemIdentifier = v27;

      getMediaRouteIdentifier = [(_AFPeerInfoMutation *)v7 getMediaRouteIdentifier];
      v30 = [getMediaRouteIdentifier copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v30;

      v6->_isCommunalDevice = [(_AFPeerInfoMutation *)v7 getIsCommunalDevice];
      getRoomName = [(_AFPeerInfoMutation *)v7 getRoomName];
      v33 = [getRoomName copy];
      roomName = v6->_roomName;
      v6->_roomName = v33;

      getName = [(_AFPeerInfoMutation *)v7 getName];
      v36 = [getName copy];
      name = v6->_name;
      v6->_name = v36;

      getProductType = [(_AFPeerInfoMutation *)v7 getProductType];
      v39 = [getProductType copy];
      productType = v6->_productType;
      v6->_productType = v39;

      getBuildVersion = [(_AFPeerInfoMutation *)v7 getBuildVersion];
      v42 = [getBuildVersion copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v42;

      getUserInterfaceIdiom = [(_AFPeerInfoMutation *)v7 getUserInterfaceIdiom];
      v45 = [getUserInterfaceIdiom copy];
      userInterfaceIdiom = v6->_userInterfaceIdiom;
      v6->_userInterfaceIdiom = v45;

      getAceVersion = [(_AFPeerInfoMutation *)v7 getAceVersion];
      v48 = [getAceVersion copy];
      aceVersion = v6->_aceVersion;
      v6->_aceVersion = v48;

      v6->_isLocationSharingDevice = [(_AFPeerInfoMutation *)v7 getIsLocationSharingDevice];
      v6->_isSiriCloudSyncEnabled = [(_AFPeerInfoMutation *)v7 getIsSiriCloudSyncEnabled];
      getMyriadTrialTreatment = [(_AFPeerInfoMutation *)v7 getMyriadTrialTreatment];
      v51 = [getMyriadTrialTreatment copy];
      myriadTrialTreatment = v6->_myriadTrialTreatment;
      v6->_myriadTrialTreatment = v51;
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
    v5 = [[_AFPeerInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFPeerInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFPeerInfo);
      v6->_isDeviceOwnedByCurrentUser = [(_AFPeerInfoMutation *)v5 getIsDeviceOwnedByCurrentUser];
      getAssistantIdentifier = [(_AFPeerInfoMutation *)v5 getAssistantIdentifier];
      v8 = [getAssistantIdentifier copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v8;

      getSharedUserIdentifier = [(_AFPeerInfoMutation *)v5 getSharedUserIdentifier];
      v11 = [getSharedUserIdentifier copy];
      sharedUserIdentifier = v6->_sharedUserIdentifier;
      v6->_sharedUserIdentifier = v11;

      getIdsIdentifier = [(_AFPeerInfoMutation *)v5 getIdsIdentifier];
      v14 = [getIdsIdentifier copy];
      idsIdentifier = v6->_idsIdentifier;
      v6->_idsIdentifier = v14;

      getIdsDeviceUniqueIdentifier = [(_AFPeerInfoMutation *)v5 getIdsDeviceUniqueIdentifier];
      v17 = [getIdsDeviceUniqueIdentifier copy];
      idsDeviceUniqueIdentifier = v6->_idsDeviceUniqueIdentifier;
      v6->_idsDeviceUniqueIdentifier = v17;

      getRapportEffectiveIdentifier = [(_AFPeerInfoMutation *)v5 getRapportEffectiveIdentifier];
      v20 = [getRapportEffectiveIdentifier copy];
      rapportEffectiveIdentifier = v6->_rapportEffectiveIdentifier;
      v6->_rapportEffectiveIdentifier = v20;

      getHomeKitAccessoryIdentifier = [(_AFPeerInfoMutation *)v5 getHomeKitAccessoryIdentifier];
      v23 = [getHomeKitAccessoryIdentifier copy];
      homeKitAccessoryIdentifier = v6->_homeKitAccessoryIdentifier;
      v6->_homeKitAccessoryIdentifier = v23;

      getMediaSystemIdentifier = [(_AFPeerInfoMutation *)v5 getMediaSystemIdentifier];
      v26 = [getMediaSystemIdentifier copy];
      mediaSystemIdentifier = v6->_mediaSystemIdentifier;
      v6->_mediaSystemIdentifier = v26;

      getMediaRouteIdentifier = [(_AFPeerInfoMutation *)v5 getMediaRouteIdentifier];
      v29 = [getMediaRouteIdentifier copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v29;

      v6->_isCommunalDevice = [(_AFPeerInfoMutation *)v5 getIsCommunalDevice];
      getRoomName = [(_AFPeerInfoMutation *)v5 getRoomName];
      v32 = [getRoomName copy];
      roomName = v6->_roomName;
      v6->_roomName = v32;

      getName = [(_AFPeerInfoMutation *)v5 getName];
      v35 = [getName copy];
      name = v6->_name;
      v6->_name = v35;

      getProductType = [(_AFPeerInfoMutation *)v5 getProductType];
      v38 = [getProductType copy];
      productType = v6->_productType;
      v6->_productType = v38;

      getBuildVersion = [(_AFPeerInfoMutation *)v5 getBuildVersion];
      v41 = [getBuildVersion copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v41;

      getUserInterfaceIdiom = [(_AFPeerInfoMutation *)v5 getUserInterfaceIdiom];
      v44 = [getUserInterfaceIdiom copy];
      userInterfaceIdiom = v6->_userInterfaceIdiom;
      v6->_userInterfaceIdiom = v44;

      getAceVersion = [(_AFPeerInfoMutation *)v5 getAceVersion];
      v47 = [getAceVersion copy];
      aceVersion = v6->_aceVersion;
      v6->_aceVersion = v47;

      v6->_isLocationSharingDevice = [(_AFPeerInfoMutation *)v5 getIsLocationSharingDevice];
      v6->_isSiriCloudSyncEnabled = [(_AFPeerInfoMutation *)v5 getIsSiriCloudSyncEnabled];
      getMyriadTrialTreatment = [(_AFPeerInfoMutation *)v5 getMyriadTrialTreatment];
      v50 = [getMyriadTrialTreatment copy];
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