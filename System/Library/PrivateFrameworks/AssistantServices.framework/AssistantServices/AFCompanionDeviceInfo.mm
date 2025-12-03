@interface AFCompanionDeviceInfo
+ (id)newWithBuilder:(id)builder;
- (AFCompanionDeviceInfo)initWithAssistantID:(id)d speechID:(id)iD idsIdentifier:(id)identifier productPrefix:(id)prefix aceHost:(id)host syncMetadata:(id)metadata syncMetadataCapability:(BOOL)capability peerToPeerHandoffCapability:(BOOL)self0 muxSupportCapability:(BOOL)self1 meDevice:(BOOL)self2 siriLanguage:(id)self3 companionName:(id)self4;
- (AFCompanionDeviceInfo)initWithBuilder:(id)builder;
- (AFCompanionDeviceInfo)initWithCoder:(id)coder;
- (AFCompanionDeviceInfo)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFCompanionDeviceInfo)initWithDictionaryRepresentation:(id)representation
{
  v54 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"assistantID"];
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

    bOOLValue = [v24 BOOLValue];
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

    bOOLValue2 = [v27 BOOLValue];
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

    bOOLValue3 = [v30 BOOLValue];
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

    bOOLValue4 = [v33 BOOLValue];
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

    BYTE3(v41) = bOOLValue4;
    BYTE2(v41) = bOOLValue3;
    BYTE1(v41) = bOOLValue2;
    LOBYTE(v41) = bOOLValue;
    self = [AFCompanionDeviceInfo initWithAssistantID:"initWithAssistantID:speechID:idsIdentifier:productPrefix:aceHost:syncMetadata:syncMetadataCapability:peerToPeerHandoffCapability:muxSupportCapability:meDevice:siriLanguage:companionName:" speechID:v48 idsIdentifier:v47 productPrefix:v46 aceHost:v45 syncMetadata:v44 syncMetadataCapability:v22 peerToPeerHandoffCapability:v41 muxSupportCapability:v36 meDevice:v38 siriLanguage:? companionName:?];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  assistantID = self->_assistantID;
  coderCopy = coder;
  [coderCopy encodeObject:assistantID forKey:@"AFCompanionDeviceInfo::assistantID"];
  [coderCopy encodeObject:self->_speechID forKey:@"AFCompanionDeviceInfo::speechID"];
  [coderCopy encodeObject:self->_idsIdentifier forKey:@"AFCompanionDeviceInfo::idsIdentifier"];
  [coderCopy encodeObject:self->_productPrefix forKey:@"AFCompanionDeviceInfo::productPrefix"];
  [coderCopy encodeObject:self->_aceHost forKey:@"AFCompanionDeviceInfo::aceHost"];
  [coderCopy encodeObject:self->_syncMetadata forKey:@"AFCompanionDeviceInfo::syncMetadata"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_syncMetadataCapability];
  [coderCopy encodeObject:v5 forKey:@"AFCompanionDeviceInfo::syncMetadataCapability"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_peerToPeerHandoffCapability];
  [coderCopy encodeObject:v6 forKey:@"AFCompanionDeviceInfo::peerToPeerHandoffCapability"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_muxSupportCapability];
  [coderCopy encodeObject:v7 forKey:@"AFCompanionDeviceInfo::muxSupportCapability"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_meDevice];
  [coderCopy encodeObject:v8 forKey:@"AFCompanionDeviceInfo::meDevice"];

  [coderCopy encodeObject:self->_siriLanguage forKey:@"AFCompanionDeviceInfo::siriLanguage"];
  [coderCopy encodeObject:self->_companionName forKey:@"AFCompanionDeviceInfo::companionName"];
}

- (AFCompanionDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::assistantID"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::speechID"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::idsIdentifier"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::productPrefix"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::aceHost"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"AFCompanionDeviceInfo::syncMetadata"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::syncMetadataCapability"];
  LOBYTE(v6) = [v13 BOOLValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::peerToPeerHandoffCapability"];
  LOBYTE(v7) = [v14 BOOLValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::muxSupportCapability"];
  LOBYTE(v4) = [v15 BOOLValue];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::meDevice"];
  LOBYTE(v9) = [v16 BOOLValue];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::siriLanguage"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCompanionDeviceInfo::companionName"];

  BYTE3(v21) = v9;
  BYTE2(v21) = v4;
  BYTE1(v21) = v7;
  LOBYTE(v21) = v6;
  v19 = [AFCompanionDeviceInfo initWithAssistantID:"initWithAssistantID:speechID:idsIdentifier:productPrefix:aceHost:syncMetadata:syncMetadataCapability:peerToPeerHandoffCapability:muxSupportCapability:meDevice:siriLanguage:companionName:" speechID:v26 idsIdentifier:v25 productPrefix:v24 aceHost:v23 syncMetadata:v22 syncMetadataCapability:v12 peerToPeerHandoffCapability:v21 muxSupportCapability:v17 meDevice:v18 siriLanguage:? companionName:?];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      syncMetadataCapability = self->_syncMetadataCapability;
      if (syncMetadataCapability == [(AFCompanionDeviceInfo *)v5 syncMetadataCapability]&& (peerToPeerHandoffCapability = self->_peerToPeerHandoffCapability, peerToPeerHandoffCapability == [(AFCompanionDeviceInfo *)v5 peerToPeerHandoffCapability]) && (muxSupportCapability = self->_muxSupportCapability, muxSupportCapability == [(AFCompanionDeviceInfo *)v5 muxSupportCapability]) && (meDevice = self->_meDevice, meDevice == [(AFCompanionDeviceInfo *)v5 meDevice]))
      {
        assistantID = [(AFCompanionDeviceInfo *)v5 assistantID];
        assistantID = self->_assistantID;
        if (assistantID == assistantID || [(NSString *)assistantID isEqual:assistantID])
        {
          speechID = [(AFCompanionDeviceInfo *)v5 speechID];
          speechID = self->_speechID;
          if (speechID == speechID || [(NSString *)speechID isEqual:speechID])
          {
            idsIdentifier = [(AFCompanionDeviceInfo *)v5 idsIdentifier];
            idsIdentifier = self->_idsIdentifier;
            if (idsIdentifier == idsIdentifier || [(NSString *)idsIdentifier isEqual:idsIdentifier])
            {
              productPrefix = [(AFCompanionDeviceInfo *)v5 productPrefix];
              productPrefix = self->_productPrefix;
              if (productPrefix == productPrefix || [(NSString *)productPrefix isEqual:productPrefix])
              {
                aceHost = [(AFCompanionDeviceInfo *)v5 aceHost];
                aceHost = self->_aceHost;
                if (aceHost == aceHost || [(NSString *)aceHost isEqual:aceHost])
                {
                  syncMetadata = [(AFCompanionDeviceInfo *)v5 syncMetadata];
                  syncMetadata = self->_syncMetadata;
                  if (syncMetadata == syncMetadata || [(NSDictionary *)syncMetadata isEqual:syncMetadata])
                  {
                    siriLanguage = [(AFCompanionDeviceInfo *)v5 siriLanguage];
                    siriLanguage = self->_siriLanguage;
                    if (siriLanguage == siriLanguage || [(NSString *)siriLanguage isEqual:siriLanguage])
                    {
                      v28 = siriLanguage;
                      companionName = [(AFCompanionDeviceInfo *)v5 companionName];
                      companionName = self->_companionName;
                      v26 = companionName == companionName || [(NSString *)companionName isEqual:companionName];

                      siriLanguage = v28;
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFCompanionDeviceInfo)initWithAssistantID:(id)d speechID:(id)iD idsIdentifier:(id)identifier productPrefix:(id)prefix aceHost:(id)host syncMetadata:(id)metadata syncMetadataCapability:(BOOL)capability peerToPeerHandoffCapability:(BOOL)self0 muxSupportCapability:(BOOL)self1 meDevice:(BOOL)self2 siriLanguage:(id)self3 companionName:(id)self4
{
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  prefixCopy = prefix;
  hostCopy = host;
  metadataCopy = metadata;
  languageCopy = language;
  nameCopy = name;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __211__AFCompanionDeviceInfo_initWithAssistantID_speechID_idsIdentifier_productPrefix_aceHost_syncMetadata_syncMetadataCapability_peerToPeerHandoffCapability_muxSupportCapability_meDevice_siriLanguage_companionName___block_invoke;
  v38[3] = &unk_1E7348448;
  v39 = dCopy;
  v40 = iDCopy;
  v41 = identifierCopy;
  v42 = prefixCopy;
  v43 = hostCopy;
  v44 = metadataCopy;
  capabilityCopy = capability;
  handoffCapabilityCopy = handoffCapability;
  supportCapabilityCopy = supportCapability;
  deviceCopy = device;
  v45 = languageCopy;
  v46 = nameCopy;
  v27 = nameCopy;
  v28 = languageCopy;
  v29 = metadataCopy;
  v30 = hostCopy;
  v31 = prefixCopy;
  v32 = identifierCopy;
  v33 = iDCopy;
  v34 = dCopy;
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

- (AFCompanionDeviceInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v33.receiver = self;
  v33.super_class = AFCompanionDeviceInfo;
  v5 = [(AFCompanionDeviceInfo *)&v33 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFCompanionDeviceInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFCompanionDeviceInfoMutation *)v7 isDirty])
    {
      getAssistantID = [(_AFCompanionDeviceInfoMutation *)v7 getAssistantID];
      v9 = [getAssistantID copy];
      assistantID = v6->_assistantID;
      v6->_assistantID = v9;

      getSpeechID = [(_AFCompanionDeviceInfoMutation *)v7 getSpeechID];
      v12 = [getSpeechID copy];
      speechID = v6->_speechID;
      v6->_speechID = v12;

      getIdsIdentifier = [(_AFCompanionDeviceInfoMutation *)v7 getIdsIdentifier];
      v15 = [getIdsIdentifier copy];
      idsIdentifier = v6->_idsIdentifier;
      v6->_idsIdentifier = v15;

      getProductPrefix = [(_AFCompanionDeviceInfoMutation *)v7 getProductPrefix];
      v18 = [getProductPrefix copy];
      productPrefix = v6->_productPrefix;
      v6->_productPrefix = v18;

      getAceHost = [(_AFCompanionDeviceInfoMutation *)v7 getAceHost];
      v21 = [getAceHost copy];
      aceHost = v6->_aceHost;
      v6->_aceHost = v21;

      getSyncMetadata = [(_AFCompanionDeviceInfoMutation *)v7 getSyncMetadata];
      v24 = [getSyncMetadata copy];
      syncMetadata = v6->_syncMetadata;
      v6->_syncMetadata = v24;

      v6->_syncMetadataCapability = [(_AFCompanionDeviceInfoMutation *)v7 getSyncMetadataCapability];
      v6->_peerToPeerHandoffCapability = [(_AFCompanionDeviceInfoMutation *)v7 getPeerToPeerHandoffCapability];
      v6->_muxSupportCapability = [(_AFCompanionDeviceInfoMutation *)v7 getMuxSupportCapability];
      v6->_meDevice = [(_AFCompanionDeviceInfoMutation *)v7 getMeDevice];
      getSiriLanguage = [(_AFCompanionDeviceInfoMutation *)v7 getSiriLanguage];
      v27 = [getSiriLanguage copy];
      siriLanguage = v6->_siriLanguage;
      v6->_siriLanguage = v27;

      getCompanionName = [(_AFCompanionDeviceInfoMutation *)v7 getCompanionName];
      v30 = [getCompanionName copy];
      companionName = v6->_companionName;
      v6->_companionName = v30;
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
    v5 = [[_AFCompanionDeviceInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFCompanionDeviceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFCompanionDeviceInfo);
      getAssistantID = [(_AFCompanionDeviceInfoMutation *)v5 getAssistantID];
      v8 = [getAssistantID copy];
      assistantID = v6->_assistantID;
      v6->_assistantID = v8;

      getSpeechID = [(_AFCompanionDeviceInfoMutation *)v5 getSpeechID];
      v11 = [getSpeechID copy];
      speechID = v6->_speechID;
      v6->_speechID = v11;

      getIdsIdentifier = [(_AFCompanionDeviceInfoMutation *)v5 getIdsIdentifier];
      v14 = [getIdsIdentifier copy];
      idsIdentifier = v6->_idsIdentifier;
      v6->_idsIdentifier = v14;

      getProductPrefix = [(_AFCompanionDeviceInfoMutation *)v5 getProductPrefix];
      v17 = [getProductPrefix copy];
      productPrefix = v6->_productPrefix;
      v6->_productPrefix = v17;

      getAceHost = [(_AFCompanionDeviceInfoMutation *)v5 getAceHost];
      v20 = [getAceHost copy];
      aceHost = v6->_aceHost;
      v6->_aceHost = v20;

      getSyncMetadata = [(_AFCompanionDeviceInfoMutation *)v5 getSyncMetadata];
      v23 = [getSyncMetadata copy];
      syncMetadata = v6->_syncMetadata;
      v6->_syncMetadata = v23;

      v6->_syncMetadataCapability = [(_AFCompanionDeviceInfoMutation *)v5 getSyncMetadataCapability];
      v6->_peerToPeerHandoffCapability = [(_AFCompanionDeviceInfoMutation *)v5 getPeerToPeerHandoffCapability];
      v6->_muxSupportCapability = [(_AFCompanionDeviceInfoMutation *)v5 getMuxSupportCapability];
      v6->_meDevice = [(_AFCompanionDeviceInfoMutation *)v5 getMeDevice];
      getSiriLanguage = [(_AFCompanionDeviceInfoMutation *)v5 getSiriLanguage];
      v26 = [getSiriLanguage copy];
      siriLanguage = v6->_siriLanguage;
      v6->_siriLanguage = v26;

      getCompanionName = [(_AFCompanionDeviceInfoMutation *)v5 getCompanionName];
      v29 = [getCompanionName copy];
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