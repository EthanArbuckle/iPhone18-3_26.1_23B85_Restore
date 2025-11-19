@interface AFCompanionDeviceInfo
+ (id)newWithBuilder:(id)a3;
- (AFCompanionDeviceInfo)initWithAssistantID:(id)a3 speechID:(id)a4 idsIdentifier:(id)a5 productPrefix:(id)a6 aceHost:(id)a7 syncMetadata:(id)a8 syncMetadataCapability:(BOOL)a9 peerToPeerHandoffCapability:(BOOL)a10 muxSupportCapability:(BOOL)a11 meDevice:(BOOL)a12 siriLanguage:(id)a13 companionName:(id)a14;
- (AFCompanionDeviceInfo)initWithBuilder:(id)a3;
- (AFCompanionDeviceInfo)initWithCoder:(id)a3;
- (AFCompanionDeviceInfo)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFCompanionDeviceInfo

- (id)buildDictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  assistantID = self->_assistantID;
  if (assistantID)
  {
    [v3 setObject:assistantID forKey:@"assistantID"];
  }

  speechID = self->_speechID;
  if (speechID)
  {
    [v4 setObject:speechID forKey:@"speechID"];
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    [v4 setObject:idsIdentifier forKey:@"idsIdentifier"];
  }

  productPrefix = self->_productPrefix;
  if (productPrefix)
  {
    [v4 setObject:productPrefix forKey:@"productPrefix"];
  }

  aceHost = self->_aceHost;
  if (aceHost)
  {
    [v4 setObject:aceHost forKey:@"aceHost"];
  }

  if (self->_syncMetadata)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_syncMetadata, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = self->_syncMetadata;
    v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [(NSDictionary *)self->_syncMetadata objectForKey:v16, v28];
          [v10 setObject:v17 forKey:v16];
        }

        v13 = [(NSDictionary *)v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v18 = [v10 copy];
    [v4 setObject:v18 forKey:@"syncMetadata"];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{self->_syncMetadataCapability, v28}];
  [v4 setObject:v19 forKey:@"syncMetadataCapability"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_peerToPeerHandoffCapability];
  [v4 setObject:v20 forKey:@"peerToPeerHandoffCapability"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_muxSupportCapability];
  [v4 setObject:v21 forKey:@"muxSupportCapability"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_meDevice];
  [v4 setObject:v22 forKey:@"meDevice"];

  siriLanguage = self->_siriLanguage;
  if (siriLanguage)
  {
    [v4 setObject:siriLanguage forKey:@"siriLanguage"];
  }

  companionName = self->_companionName;
  if (companionName)
  {
    [v4 setObject:companionName forKey:@"companionName"];
  }

  v25 = [v4 copy];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (AFCompanionDeviceInfo)initWithDictionaryRepresentation:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"assistantID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v6;
    }

    else
    {
      v48 = 0;
    }

    v8 = [v5 objectForKey:@"speechID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v8;
    }

    else
    {
      v47 = 0;
    }

    v9 = [v5 objectForKey:@"idsIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v9;
    }

    else
    {
      v46 = 0;
    }

    v10 = [v5 objectForKey:@"productPrefix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v10;
    }

    else
    {
      v45 = 0;
    }

    v11 = [v5 objectForKey:@"aceHost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v11;
    }

    else
    {
      v44 = 0;
    }

    v12 = [v5 objectForKey:@"syncMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v5;
      v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v42 = v12;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v50;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v50 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v49 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [v14 objectForKey:v19];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v20;

                if (v21)
                {
                  [v13 setObject:v21 forKey:v19];
                }
              }

              else
              {

                v21 = 0;
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v16);
      }

      v22 = [v13 copy];
      v12 = v42;
      v5 = v43;
    }

    else
    {
      v22 = 0;
    }

    v23 = [v5 objectForKey:@"syncMetadataCapability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = [v24 BOOLValue];
    v26 = [v5 objectForKey:@"peerToPeerHandoffCapability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = [v27 BOOLValue];
    v29 = [v5 objectForKey:@"muxSupportCapability"];
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
    v32 = [v5 objectForKey:@"meDevice"];
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
    v35 = [v5 objectForKey:@"siriLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = [v5 objectForKey:@"companionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    BYTE3(v41) = v34;
    BYTE2(v41) = v31;
    BYTE1(v41) = v28;
    LOBYTE(v41) = v25;
    self = [AFCompanionDeviceInfo initWithAssistantID:"initWithAssistantID:speechID:idsIdentifier:productPrefix:aceHost:syncMetadata:syncMetadataCapability:peerToPeerHandoffCapability:muxSupportCapability:meDevice:siriLanguage:companionName:" speechID:v48 idsIdentifier:v47 productPrefix:v46 aceHost:v45 syncMetadata:v44 syncMetadataCapability:v22 peerToPeerHandoffCapability:v41 muxSupportCapability:v36 meDevice:v38 siriLanguage:? companionName:?];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  assistantID = self->_assistantID;
  v9 = a3;
  [v9 encodeObject:assistantID forKey:@"AFCompanionDeviceInfo::assistantID"];
  [v9 encodeObject:self->_speechID forKey:@"AFCompanionDeviceInfo::speechID"];
  [v9 encodeObject:self->_idsIdentifier forKey:@"AFCompanionDeviceInfo::idsIdentifier"];
  [v9 encodeObject:self->_productPrefix forKey:@"AFCompanionDeviceInfo::productPrefix"];
  [v9 encodeObject:self->_aceHost forKey:@"AFCompanionDeviceInfo::aceHost"];
  [v9 encodeObject:self->_syncMetadata forKey:@"AFCompanionDeviceInfo::syncMetadata"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_syncMetadataCapability];
  [v9 encodeObject:v5 forKey:@"AFCompanionDeviceInfo::syncMetadataCapability"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_peerToPeerHandoffCapability];
  [v9 encodeObject:v6 forKey:@"AFCompanionDeviceInfo::peerToPeerHandoffCapability"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_muxSupportCapability];
  [v9 encodeObject:v7 forKey:@"AFCompanionDeviceInfo::muxSupportCapability"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_meDevice];
  [v9 encodeObject:v8 forKey:@"AFCompanionDeviceInfo::meDevice"];

  [v9 encodeObject:self->_siriLanguage forKey:@"AFCompanionDeviceInfo::siriLanguage"];
  [v9 encodeObject:self->_companionName forKey:@"AFCompanionDeviceInfo::companionName"];
}

- (AFCompanionDeviceInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v26 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::assistantID"];
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::speechID"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::idsIdentifier"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::productPrefix"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::aceHost"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"AFCompanionDeviceInfo::syncMetadata"];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::syncMetadataCapability"];
  LOBYTE(v6) = [v13 BOOLValue];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::peerToPeerHandoffCapability"];
  LOBYTE(v7) = [v14 BOOLValue];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::muxSupportCapability"];
  LOBYTE(v4) = [v15 BOOLValue];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::meDevice"];
  LOBYTE(v9) = [v16 BOOLValue];

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::siriLanguage"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::companionName"];

  BYTE3(v21) = v9;
  BYTE2(v21) = v4;
  BYTE1(v21) = v7;
  LOBYTE(v21) = v6;
  v19 = [AFCompanionDeviceInfo initWithAssistantID:"initWithAssistantID:speechID:idsIdentifier:productPrefix:aceHost:syncMetadata:syncMetadataCapability:peerToPeerHandoffCapability:muxSupportCapability:meDevice:siriLanguage:companionName:" speechID:v26 idsIdentifier:v25 productPrefix:v24 aceHost:v23 syncMetadata:v22 syncMetadataCapability:v12 peerToPeerHandoffCapability:v21 muxSupportCapability:v17 meDevice:v18 siriLanguage:? companionName:?];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      syncMetadataCapability = self->_syncMetadataCapability;
      if (syncMetadataCapability == [(AFCompanionDeviceInfo *)v5 syncMetadataCapability]&& (peerToPeerHandoffCapability = self->_peerToPeerHandoffCapability, peerToPeerHandoffCapability == [(AFCompanionDeviceInfo *)v5 peerToPeerHandoffCapability]) && (muxSupportCapability = self->_muxSupportCapability, muxSupportCapability == [(AFCompanionDeviceInfo *)v5 muxSupportCapability]) && (meDevice = self->_meDevice, meDevice == [(AFCompanionDeviceInfo *)v5 meDevice]))
      {
        v10 = [(AFCompanionDeviceInfo *)v5 assistantID];
        assistantID = self->_assistantID;
        if (assistantID == v10 || [(NSString *)assistantID isEqual:v10])
        {
          v12 = [(AFCompanionDeviceInfo *)v5 speechID];
          speechID = self->_speechID;
          if (speechID == v12 || [(NSString *)speechID isEqual:v12])
          {
            v14 = [(AFCompanionDeviceInfo *)v5 idsIdentifier];
            idsIdentifier = self->_idsIdentifier;
            if (idsIdentifier == v14 || [(NSString *)idsIdentifier isEqual:v14])
            {
              v16 = [(AFCompanionDeviceInfo *)v5 productPrefix];
              productPrefix = self->_productPrefix;
              if (productPrefix == v16 || [(NSString *)productPrefix isEqual:v16])
              {
                v18 = [(AFCompanionDeviceInfo *)v5 aceHost];
                aceHost = self->_aceHost;
                if (aceHost == v18 || [(NSString *)aceHost isEqual:v18])
                {
                  v20 = [(AFCompanionDeviceInfo *)v5 syncMetadata];
                  syncMetadata = self->_syncMetadata;
                  if (syncMetadata == v20 || [(NSDictionary *)syncMetadata isEqual:v20])
                  {
                    v22 = [(AFCompanionDeviceInfo *)v5 siriLanguage];
                    siriLanguage = self->_siriLanguage;
                    if (siriLanguage == v22 || [(NSString *)siriLanguage isEqual:v22])
                    {
                      v28 = v22;
                      v24 = [(AFCompanionDeviceInfo *)v5 companionName];
                      companionName = self->_companionName;
                      v26 = companionName == v24 || [(NSString *)companionName isEqual:v24];

                      v22 = v28;
                    }

                    else
                    {
                      v26 = 0;
                    }
                  }

                  else
                  {
                    v26 = 0;
                  }
                }

                else
                {
                  v26 = 0;
                }
              }

              else
              {
                v26 = 0;
              }
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assistantID hash];
  v4 = [(NSString *)self->_speechID hash]^ v3;
  v5 = [(NSString *)self->_idsIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_productPrefix hash];
  v7 = [(NSString *)self->_aceHost hash];
  v8 = v6 ^ v7 ^ [(NSDictionary *)self->_syncMetadata hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_syncMetadataCapability];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_peerToPeerHandoffCapability];
  v12 = v8 ^ v10 ^ [v11 hash];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_muxSupportCapability];
  v14 = [v13 hash];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_meDevice];
  v16 = v14 ^ [v15 hash];
  v17 = v12 ^ v16 ^ [(NSString *)self->_siriLanguage hash];
  v18 = [(NSString *)self->_companionName hash];

  return v17 ^ v18;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = AFCompanionDeviceInfo;
  v5 = [(AFCompanionDeviceInfo *)&v13 description];
  v6 = v5;
  v7 = @"NO";
  if (self->_syncMetadataCapability)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_peerToPeerHandoffCapability)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_muxSupportCapability)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_meDevice)
  {
    v7 = @"YES";
  }

  v11 = [v4 initWithFormat:@"%@ {assistantID = %@, speechID = %@, idsIdentifier = %@, productPrefix = %@, aceHost = %@, syncMetadata = %@, syncMetadataCapability = %@, peerToPeerHandoffCapability = %@, muxSupportCapability = %@, meDevice = %@, siriLanguage = %@, companionName = %@}", v5, *&self->_assistantID, *&self->_idsIdentifier, self->_aceHost, self->_syncMetadata, v8, v9, v10, v7, self->_siriLanguage, self->_companionName];

  return v11;
}

- (AFCompanionDeviceInfo)initWithAssistantID:(id)a3 speechID:(id)a4 idsIdentifier:(id)a5 productPrefix:(id)a6 aceHost:(id)a7 syncMetadata:(id)a8 syncMetadataCapability:(BOOL)a9 peerToPeerHandoffCapability:(BOOL)a10 muxSupportCapability:(BOOL)a11 meDevice:(BOOL)a12 siriLanguage:(id)a13 companionName:(id)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a13;
  v26 = a14;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __211__AFCompanionDeviceInfo_initWithAssistantID_speechID_idsIdentifier_productPrefix_aceHost_syncMetadata_syncMetadataCapability_peerToPeerHandoffCapability_muxSupportCapability_meDevice_siriLanguage_companionName___block_invoke;
  v38[3] = &unk_1E7348448;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v47 = a9;
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v45 = v25;
  v46 = v26;
  v27 = v26;
  v28 = v25;
  v29 = v24;
  v30 = v23;
  v31 = v22;
  v32 = v21;
  v33 = v20;
  v34 = v19;
  v35 = [(AFCompanionDeviceInfo *)self initWithBuilder:v38];

  return v35;
}

void __211__AFCompanionDeviceInfo_initWithAssistantID_speechID_idsIdentifier_productPrefix_aceHost_syncMetadata_syncMetadataCapability_peerToPeerHandoffCapability_muxSupportCapability_meDevice_siriLanguage_companionName___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAssistantID:v3];
  [v4 setSpeechID:*(a1 + 40)];
  [v4 setIdsIdentifier:*(a1 + 48)];
  [v4 setProductPrefix:*(a1 + 56)];
  [v4 setAceHost:*(a1 + 64)];
  [v4 setSyncMetadata:*(a1 + 72)];
  [v4 setSyncMetadataCapability:*(a1 + 96)];
  [v4 setPeerToPeerHandoffCapability:*(a1 + 97)];
  [v4 setMuxSupportCapability:*(a1 + 98)];
  [v4 setMeDevice:*(a1 + 99)];
  [v4 setSiriLanguage:*(a1 + 80)];
  [v4 setCompanionName:*(a1 + 88)];
}

- (AFCompanionDeviceInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = AFCompanionDeviceInfo;
  v5 = [(AFCompanionDeviceInfo *)&v33 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFCompanionDeviceInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFCompanionDeviceInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFCompanionDeviceInfoMutation *)v7 getAssistantID];
      v9 = [v8 copy];
      assistantID = v6->_assistantID;
      v6->_assistantID = v9;

      v11 = [(_AFCompanionDeviceInfoMutation *)v7 getSpeechID];
      v12 = [v11 copy];
      speechID = v6->_speechID;
      v6->_speechID = v12;

      v14 = [(_AFCompanionDeviceInfoMutation *)v7 getIdsIdentifier];
      v15 = [v14 copy];
      idsIdentifier = v6->_idsIdentifier;
      v6->_idsIdentifier = v15;

      v17 = [(_AFCompanionDeviceInfoMutation *)v7 getProductPrefix];
      v18 = [v17 copy];
      productPrefix = v6->_productPrefix;
      v6->_productPrefix = v18;

      v20 = [(_AFCompanionDeviceInfoMutation *)v7 getAceHost];
      v21 = [v20 copy];
      aceHost = v6->_aceHost;
      v6->_aceHost = v21;

      v23 = [(_AFCompanionDeviceInfoMutation *)v7 getSyncMetadata];
      v24 = [v23 copy];
      syncMetadata = v6->_syncMetadata;
      v6->_syncMetadata = v24;

      v6->_syncMetadataCapability = [(_AFCompanionDeviceInfoMutation *)v7 getSyncMetadataCapability];
      v6->_peerToPeerHandoffCapability = [(_AFCompanionDeviceInfoMutation *)v7 getPeerToPeerHandoffCapability];
      v6->_muxSupportCapability = [(_AFCompanionDeviceInfoMutation *)v7 getMuxSupportCapability];
      v6->_meDevice = [(_AFCompanionDeviceInfoMutation *)v7 getMeDevice];
      v26 = [(_AFCompanionDeviceInfoMutation *)v7 getSiriLanguage];
      v27 = [v26 copy];
      siriLanguage = v6->_siriLanguage;
      v6->_siriLanguage = v27;

      v29 = [(_AFCompanionDeviceInfoMutation *)v7 getCompanionName];
      v30 = [v29 copy];
      companionName = v6->_companionName;
      v6->_companionName = v30;
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
    v5 = [[_AFCompanionDeviceInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFCompanionDeviceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFCompanionDeviceInfo);
      v7 = [(_AFCompanionDeviceInfoMutation *)v5 getAssistantID];
      v8 = [v7 copy];
      assistantID = v6->_assistantID;
      v6->_assistantID = v8;

      v10 = [(_AFCompanionDeviceInfoMutation *)v5 getSpeechID];
      v11 = [v10 copy];
      speechID = v6->_speechID;
      v6->_speechID = v11;

      v13 = [(_AFCompanionDeviceInfoMutation *)v5 getIdsIdentifier];
      v14 = [v13 copy];
      idsIdentifier = v6->_idsIdentifier;
      v6->_idsIdentifier = v14;

      v16 = [(_AFCompanionDeviceInfoMutation *)v5 getProductPrefix];
      v17 = [v16 copy];
      productPrefix = v6->_productPrefix;
      v6->_productPrefix = v17;

      v19 = [(_AFCompanionDeviceInfoMutation *)v5 getAceHost];
      v20 = [v19 copy];
      aceHost = v6->_aceHost;
      v6->_aceHost = v20;

      v22 = [(_AFCompanionDeviceInfoMutation *)v5 getSyncMetadata];
      v23 = [v22 copy];
      syncMetadata = v6->_syncMetadata;
      v6->_syncMetadata = v23;

      v6->_syncMetadataCapability = [(_AFCompanionDeviceInfoMutation *)v5 getSyncMetadataCapability];
      v6->_peerToPeerHandoffCapability = [(_AFCompanionDeviceInfoMutation *)v5 getPeerToPeerHandoffCapability];
      v6->_muxSupportCapability = [(_AFCompanionDeviceInfoMutation *)v5 getMuxSupportCapability];
      v6->_meDevice = [(_AFCompanionDeviceInfoMutation *)v5 getMeDevice];
      v25 = [(_AFCompanionDeviceInfoMutation *)v5 getSiriLanguage];
      v26 = [v25 copy];
      siriLanguage = v6->_siriLanguage;
      v6->_siriLanguage = v26;

      v28 = [(_AFCompanionDeviceInfoMutation *)v5 getCompanionName];
      v29 = [v28 copy];
      companionName = v6->_companionName;
      v6->_companionName = v29;
    }

    else
    {
      v6 = [(AFCompanionDeviceInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFCompanionDeviceInfo *)self copy];
  }

  return v6;
}

@end