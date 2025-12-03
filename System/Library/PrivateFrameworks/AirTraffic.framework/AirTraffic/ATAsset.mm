@interface ATAsset
+ (id)assetWithSerializedAsset:(id)asset;
+ (id)downloadAssetWithIdentifier:(id)identifier dataclass:(id)dataclass prettyName:(id)name;
+ (id)iCloudRestoreAssetWithIdentifier:(id)identifier dataclass:(id)dataclass assetType:(id)type restorePath:(id)path displayName:(id)name;
+ (id)uploadAssetWithIdentifier:(id)identifier dataclass:(id)dataclass sourcePath:(id)path prettyName:(id)name;
- (ATAsset)init;
- (ATAsset)initWithCoder:(id)coder;
- (ATAsset)initWithIdentifier:(id)identifier dataclass:(id)dataclass prettyName:(id)name;
- (BOOL)isEqual:(id)equal;
- (id)_ATAssetTypeFromDataClass:(id)class;
- (id)_variantDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serializedAsset;
- (id)shortDescription;
- (unint64_t)assetParts;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATAsset

- (id)_ATAssetTypeFromDataClass:(id)class
{
  classCopy = class;
  if (_ATAssetTypeFromDataClass__onceToken != -1)
  {
    dispatch_once(&_ATAssetTypeFromDataClass__onceToken, &__block_literal_global_601);
  }

  v4 = [_ATAssetTypeFromDataClass__dataClassByKind objectForKeyedSubscript:classCopy];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

uint64_t __37__ATAsset__ATAssetTypeFromDataClass___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _ATAssetTypeFromDataClass__dataClassByKind;
  _ATAssetTypeFromDataClass__dataClassByKind = v0;

  [_ATAssetTypeFromDataClass__dataClassByKind setObject:@"Application" forKeyedSubscript:@"Application"];
  [_ATAssetTypeFromDataClass__dataClassByKind setObject:@"EBook" forKeyedSubscript:@"Book"];
  [_ATAssetTypeFromDataClass__dataClassByKind setObject:@"Media" forKeyedSubscript:@"Media"];
  [_ATAssetTypeFromDataClass__dataClassByKind setObject:@"Photo" forKeyedSubscript:@"Photo"];
  v2 = _ATAssetTypeFromDataClass__dataClassByKind;

  return [v2 setObject:@"Podcast" forKeyedSubscript:@"Podcasts"];
}

- (id)_variantDescription
{
  v24 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  if (self->_variantOptions)
  {
    [string appendString:@"{"];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [(NSDictionary *)self->_variantOptions allKeys];
    v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          if ([v4 length] >= 2)
          {
            [v4 appendString:{@", "}];
          }

          v10 = [v9 isEqualToString:@"Dimensions"];
          v11 = [(NSDictionary *)self->_variantOptions valueForKey:v9];
          v12 = v11;
          if (v10)
          {
            v13 = [v11 objectAtIndexedSubscript:0];
            v14 = [v12 objectAtIndexedSubscript:1];
            [v4 appendFormat:@"%@=[%@x%@]", v9, v13, v14];
          }

          else
          {
            [v4 appendFormat:@"%@=%@", v9, v11];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    v15 = @"}";
  }

  else
  {
    v15 = @"(null)";
  }

  [v4 appendString:v15];
  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  storeInfo = [(ATAsset *)self storeInfo];
  v7 = [storeInfo copyWithZone:zone];
  [v5 setStoreInfo:v7];

  identifier = [(ATAsset *)self identifier];
  [v5 setIdentifier:identifier];

  dataclass = [(ATAsset *)self dataclass];
  [v5 setDataclass:dataclass];

  assetType = [(ATAsset *)self assetType];
  [v5 setAssetType:assetType];

  variantOptions = [(ATAsset *)self variantOptions];
  [v5 setVariantOptions:variantOptions];

  path = [(ATAsset *)self path];
  [v5 setPath:path];

  icon = [(ATAsset *)self icon];
  [v5 setIcon:icon];

  prettyName = [(ATAsset *)self prettyName];
  [v5 setPrettyName:prettyName];

  [v5 setIsDownload:{-[ATAsset isDownload](self, "isDownload")}];
  [v5 setIsRestore:{-[ATAsset isRestore](self, "isRestore")}];
  [v5 setBypassStore:{-[ATAsset bypassStore](self, "bypassStore")}];
  [v5 setInstallOnly:{-[ATAsset installOnly](self, "installOnly")}];
  [v5 setReadyForStore:{-[ATAsset readyForStore](self, "readyForStore")}];
  [v5 setIsPrioritized:{-[ATAsset isPrioritized](self, "isPrioritized")}];
  [v5 setIsForeground:{-[ATAsset isForeground](self, "isForeground")}];
  [v5 setLyricsEmbeddedInAsset:{-[ATAsset lyricsEmbeddedInAsset](self, "lyricsEmbeddedInAsset")}];
  [v5 setStorePID:{-[ATAsset storePID](self, "storePID")}];
  [v5 setPriority:{-[ATAsset priority](self, "priority")}];
  [(ATAsset *)self downloadProgress];
  [v5 setDownloadProgress:?];
  [(ATAsset *)self installProgress];
  [v5 setInstallProgress:?];
  storePlist = [(ATAsset *)self storePlist];
  [v5 setStorePlist:storePlist];

  infoPlist = [(ATAsset *)self infoPlist];
  [v5 setInfoPlist:infoPlist];

  error = [(ATAsset *)self error];
  [v5 setError:error];

  clientParams = [(ATAsset *)self clientParams];
  [v5 setClientParams:clientParams];

  [(ATAsset *)self transferStartTime];
  [v5 setTransferStartTime:?];
  [(ATAsset *)self transferDuration];
  [v5 setTransferDuration:?];
  [(ATAsset *)self queueStartTime];
  [v5 setQueueStartTime:?];
  [(ATAsset *)self queueDuration];
  [v5 setQueueDuration:?];
  [v5 setLegacy:{-[ATAsset isLegacy](self, "isLegacy")}];
  [v5 setCompletedAssetParts:{-[ATAsset completedAssetParts](self, "completedAssetParts")}];
  [v5 setInstalled:{-[ATAsset isInstalled](self, "isInstalled")}];
  [v5 setPowerRequired:{-[ATAsset powerRequired](self, "powerRequired")}];
  [v5 setCanUseCellularData:{-[ATAsset canUseCellularData](self, "canUseCellularData")}];
  [v5 setProtectionType:{-[ATAsset protectionType](self, "protectionType")}];
  [v5 setEnqueueSource:{-[ATAsset enqueueSource](self, "enqueueSource")}];
  [v5 setAllowDownloadOnConstrainedNetwork:{-[ATAsset allowDownloadOnConstrainedNetwork](self, "allowDownloadOnConstrainedNetwork")}];
  [v5 setDownloadPauseReason:{-[ATAsset downloadPauseReason](self, "downloadPauseReason")}];
  downloadSourceContainerId = [(ATAsset *)self downloadSourceContainerId];
  [v5 setDownloadSourceContainerId:downloadSourceContainerId];

  return v5;
}

- (ATAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = ATAsset;
  v5 = [(ATAsset *)&v44 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataclass"];
    dataclass = v5->_dataclass;
    v5->_dataclass = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"variantOptions"];
    variantOptions = v5->_variantOptions;
    v5->_variantOptions = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    localPath = v5->_localPath;
    v5->_localPath = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prettyName"];
    prettyName = v5->_prettyName;
    v5->_prettyName = v21;

    v5->_isDownload = [coderCopy decodeBoolForKey:@"isDownload"];
    v5->_downloadOnly = [coderCopy decodeBoolForKey:@"downloadOnly"];
    v5->_isRestore = [coderCopy decodeBoolForKey:@"isRestore"];
    v5->_bypassStore = [coderCopy decodeBoolForKey:@"bypassStore"];
    v5->_isPrioritized = [coderCopy decodeBoolForKey:@"prioritize"];
    v5->_isForeground = [coderCopy decodeBoolForKey:@"isForeground"];
    v5->_lyricsEmbeddedInAsset = [coderCopy decodeBoolForKey:@"lyricsEmbeddedInAsset"];
    [coderCopy decodeFloatForKey:@"downloadProgress"];
    v5->_downloadProgress = v23;
    [coderCopy decodeFloatForKey:@"installProgress"];
    v5->_installProgress = v24;
    v25 = MEMORY[0x277CBEBC0];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    v27 = [v25 URLWithString:v26];
    icon = v5->_icon;
    v5->_icon = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeInfo"];
    storeInfo = v5->_storeInfo;
    v5->_storeInfo = v29;

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v31 setWithObjects:{v32, v33, v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"clientParams"];
    clientParams = v5->_clientParams;
    v5->_clientParams = v36;

    v5->_assetState = [coderCopy decodeIntegerForKey:@"assetState"];
    v5->_powerRequired = [coderCopy decodeBoolForKey:@"powerRequired"];
    v5->_canUseCellularData = [coderCopy decodeBoolForKey:@"canUseCellularData"];
    v5->_protectionType = [coderCopy decodeIntForKey:@"protectionType"];
    v5->_enqueueSource = [coderCopy decodeIntForKey:@"enqueueSource"];
    v5->_allowDownloadOnConstrainedNetwork = [coderCopy decodeBoolForKey:@"allowDownloadOnConstrainedNetwork"];
    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadPausedReason"];
    v5->_downloadPauseReason = [v38 unsignedIntegerValue];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadSourceContainerId"];
    downloadSourceContainerId = v5->_downloadSourceContainerId;
    v5->_downloadSourceContainerId = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v41;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  v6 = [(NSString *)identifier copy];
  [coderCopy encodeObject:v6 forKey:@"identifier"];

  v7 = [(NSString *)self->_dataclass copy];
  [coderCopy encodeObject:v7 forKey:@"dataclass"];

  v8 = [(NSString *)self->_assetType copy];
  [coderCopy encodeObject:v8 forKey:@"assetType"];

  v9 = [(NSDictionary *)self->_variantOptions copy];
  [coderCopy encodeObject:v9 forKey:@"variantOptions"];

  v10 = [(NSString *)self->_localPath copy];
  [coderCopy encodeObject:v10 forKey:@"path"];

  v11 = [(NSString *)self->_prettyName copy];
  [coderCopy encodeObject:v11 forKey:@"prettyName"];

  [coderCopy encodeBool:self->_isDownload forKey:@"isDownload"];
  [coderCopy encodeBool:self->_downloadOnly forKey:@"downloadOnly"];
  [coderCopy encodeBool:self->_isRestore forKey:@"isRestore"];
  [coderCopy encodeBool:self->_bypassStore forKey:@"bypassStore"];
  [coderCopy encodeBool:self->_isPrioritized forKey:@"prioritize"];
  [coderCopy encodeBool:self->_isForeground forKey:@"isForeground"];
  [coderCopy encodeBool:self->_lyricsEmbeddedInAsset forKey:@"lyricsEmbeddedInAsset"];
  *&v12 = self->_downloadProgress;
  [coderCopy encodeFloat:@"downloadProgress" forKey:v12];
  *&v13 = self->_installProgress;
  [coderCopy encodeFloat:@"installProgress" forKey:v13];
  path = [(NSURL *)self->_icon path];
  v15 = [path copy];
  [coderCopy encodeObject:v15 forKey:@"icon"];

  v16 = [(ATStoreInfo *)self->_storeInfo copy];
  [coderCopy encodeObject:v16 forKey:@"storeInfo"];

  v17 = [(NSDictionary *)self->_clientParams copy];
  [coderCopy encodeObject:v17 forKey:@"clientParams"];

  [coderCopy encodeInteger:self->_assetState forKey:@"assetState"];
  [coderCopy encodeBool:self->_powerRequired forKey:@"powerRequired"];
  [coderCopy encodeBool:self->_canUseCellularData forKey:@"canUseCellularData"];
  [coderCopy encodeInteger:self->_protectionType forKey:@"protectionType"];
  [coderCopy encodeInteger:self->_enqueueSource forKey:@"enqueueSource"];
  [coderCopy encodeBool:self->_allowDownloadOnConstrainedNetwork forKey:@"allowDownloadOnConstrainedNetwork"];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_downloadPauseReason];
  [coderCopy encodeObject:v18 forKey:@"downloadPausedReason"];

  v19 = [(NSNumber *)self->_downloadSourceContainerId copy];
  [coderCopy encodeObject:v19 forKey:@"downloadSourceContainerId"];

  v21 = [(NSError *)self->_error copy];
  msv_errorByRemovingUnsafeUserInfo = [v21 msv_errorByRemovingUnsafeUserInfo];
  [coderCopy encodeObject:msv_errorByRemovingUnsafeUserInfo forKey:@"error"];
}

- (unint64_t)assetParts
{
  variantOptions = [(ATAsset *)self variantOptions];
  v3 = [variantOptions objectForKey:@"AssetParts"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)serializedAsset
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = self->_identifier;
  if (identifier)
  {
    v5 = [(NSString *)identifier copy];
    [dictionary setObject:v5 forKey:@"identifier"];
  }

  dataclass = self->_dataclass;
  if (dataclass)
  {
    v7 = [(NSString *)dataclass copy];
    [dictionary setObject:v7 forKey:@"dataclass"];
  }

  assetType = self->_assetType;
  if (assetType)
  {
    v9 = [(NSString *)assetType copy];
    [dictionary setObject:v9 forKey:@"assetType"];
  }

  variantOptions = self->_variantOptions;
  if (variantOptions)
  {
    v11 = [(NSDictionary *)variantOptions copy];
    [dictionary setObject:v11 forKey:@"variantOptions"];
  }

  localPath = self->_localPath;
  if (localPath)
  {
    v13 = [(NSString *)localPath copy];
    [dictionary setObject:v13 forKey:@"path"];
  }

  prettyName = self->_prettyName;
  if (prettyName)
  {
    v15 = [(NSString *)prettyName copy];
    [dictionary setObject:v15 forKey:@"prettyName"];
  }

  clientParams = self->_clientParams;
  if (clientParams)
  {
    v17 = [(NSDictionary *)clientParams copy];
    [dictionary setObject:v17 forKey:@"clientParams"];
  }

  downloadSourceContainerId = self->_downloadSourceContainerId;
  if (downloadSourceContainerId)
  {
    v19 = [(NSNumber *)downloadSourceContainerId copy];
    [dictionary setObject:v19 forKey:@"downloadSourceContainerId"];
  }

  error = self->_error;
  if (error)
  {
    v21 = [(NSError *)error copy];
    [dictionary setObject:v21 forKey:@"error"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDownload];
  [dictionary setObject:v22 forKey:@"isDownload"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRestore];
  [dictionary setObject:v23 forKey:@"isRestore"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_bypassStore];
  [dictionary setObject:v24 forKey:@"bypassStore"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPrioritized];
  [dictionary setObject:v25 forKey:@"prioritize"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_isForeground];
  [dictionary setObject:v26 forKey:@"isForeground"];

  *&v27 = self->_downloadProgress;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  [dictionary setObject:v28 forKey:@"downloadProgress"];

  *&v29 = self->_installProgress;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  [dictionary setObject:v30 forKey:@"installProgress"];

  v31 = [MEMORY[0x277CCABB0] numberWithInteger:self->_assetState];
  [dictionary setObject:v31 forKey:@"assetState"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadOnly];
  [dictionary setObject:v32 forKey:@"downloadOnly"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_lyricsEmbeddedInAsset];
  [dictionary setObject:v33 forKey:@"lyricsEmbeddedInAsset"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_powerRequired];
  [dictionary setObject:v34 forKey:@"powerRequired"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_canUseCellularData];
  [dictionary setObject:v35 forKey:@"canUseCellularData"];

  v36 = [MEMORY[0x277CCABB0] numberWithInteger:self->_protectionType];
  [dictionary setObject:v36 forKey:@"protectionType"];

  v37 = [MEMORY[0x277CCABB0] numberWithInteger:self->_enqueueSource];
  [dictionary setObject:v37 forKey:@"enqueueSource"];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowDownloadOnConstrainedNetwork];
  [dictionary setObject:v38 forKey:@"allowDownloadOnConstrainedNetwork"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_downloadPauseReason];
  [dictionary setObject:v39 forKey:@"downloadPausedReason"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_dataclass hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  return v4 ^ [(ATAsset *)self assetParts];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dataclass = self->_dataclass;
      dataclass = [(ATAsset *)v5 dataclass];
      if ([(NSString *)dataclass isEqualToString:dataclass])
      {
        identifier = self->_identifier;
        identifier = [(ATAsset *)v5 identifier];
        if ([(NSString *)identifier isEqualToString:identifier])
        {
          assetParts = [(ATAsset *)self assetParts];
          v11 = assetParts == [(ATAsset *)v5 assetParts];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (ATAsset)initWithIdentifier:(id)identifier dataclass:(id)dataclass prettyName:(id)name
{
  identifierCopy = identifier;
  dataclassCopy = dataclass;
  nameCopy = name;
  v12 = [(ATAsset *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_dataclass, dataclass);
    objc_storeStrong(&v13->_prettyName, name);
    v13->_downloadPauseReason = 0;
    v14 = [(ATAsset *)v13 _ATAssetTypeFromDataClass:dataclassCopy];
    assetType = v13->_assetType;
    v13->_assetType = v14;
  }

  return v13;
}

- (ATAsset)init
{
  v7.receiver = self;
  v7.super_class = ATAsset;
  v2 = [(ATAsset *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2[64] = 1;
    v2[221] = 0;
    *(v2 + 69) = 0;
    v2[216] = 0;
    *(v2 + 28) = 0;
    v2[71] = 0;
    *(v2 + 46) = 256;
    *(v2 + 24) = 0;
    *(v2 + 23) = 0;
    v2[192] = 0;
    v4 = *(v2 + 26);
    *(v2 + 25) = 0;
    *(v2 + 26) = &unk_28515C8A0;

    assetType = v3->_assetType;
    v3->_assetType = @"Unknown";
  }

  return v3;
}

- (id)shortDescription
{
  if (MSVDeviceIsWatch() && (MSVDeviceOSIsInternalInstall() & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = ATAsset;
    v8 = [(ATAsset *)&v11 description];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ATAsset;
    v3 = [(ATAsset *)&v10 description];
    v4 = v3;
    if (self->_isRestore)
    {
      v5 = @"Restore ";
    }

    else
    {
      v5 = @"Sync ";
    }

    v6 = @"Upload";
    if (self->_isDownload)
    {
      v6 = @"Download";
    }

    identifier = self->_identifier;
    v8 = [v3 stringByAppendingFormat:@"[%@%@, %@, id=%@, %@]", v5, v6, self->_dataclass, identifier, self->_prettyName];
  }

  return v8;
}

- (id)description
{
  if (MSVDeviceIsWatch() && (MSVDeviceOSIsInternalInstall() & 1) == 0)
  {
    v19.receiver = self;
    v19.super_class = ATAsset;
    v14 = [(ATAsset *)&v19 description];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = ATAsset;
    v3 = [(ATAsset *)&v18 description];
    if (self->_isRestore)
    {
      v4 = @"Restore ";
    }

    else
    {
      v4 = @"Sync ";
    }

    v17 = v4;
    if (self->_isDownload)
    {
      v5 = @"Download";
    }

    else
    {
      v5 = @"Upload";
    }

    v16 = *&self->_dataclass;
    identifier = self->_identifier;
    syncID = [(ATStoreInfo *)self->_storeInfo syncID];
    adamID = [(ATStoreInfo *)self->_storeInfo adamID];
    sagaID = [(ATStoreInfo *)self->_storeInfo sagaID];
    longLongValue = [(NSNumber *)self->_downloadSourceContainerId longLongValue];
    endpointType = [(ATStoreInfo *)self->_storeInfo endpointType];
    _variantDescription = [(ATAsset *)self _variantDescription];
    downloadPauseReason = self->_downloadPauseReason;
    v14 = [v3 stringByAppendingFormat:@"[%@%@, %@, %@, id=%@, syncid=%@, adamID=%@, sagaID=%@, downloadSourceContainerId=%lld, endpointType=%@, var=%@, path=%@, pid=%lld, bypassStore=%d, prioritized=%d, foreground=%d, installOnly=%d, allowDownloadOnConstrainedNetwork=%d, downloadPauseReason=%d, %@]", v17, v5, v16, identifier, syncID, adamID, sagaID, longLongValue, endpointType, _variantDescription, self->_localPath, self->_storePID, self->_bypassStore, self->_isPrioritized, self->_isForeground, self->_installOnly, self->_allowDownloadOnConstrainedNetwork, downloadPauseReason, self->_prettyName];
  }

  return v14;
}

+ (id)assetWithSerializedAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_alloc_init(ATAsset);
  v5 = [assetCopy objectForKey:@"identifier"];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [assetCopy objectForKey:@"dataclass"];
  dataclass = v4->_dataclass;
  v4->_dataclass = v7;

  v9 = [assetCopy objectForKey:@"assetType"];
  assetType = v4->_assetType;
  v4->_assetType = v9;

  v11 = [assetCopy objectForKey:@"variantOptions"];
  variantOptions = v4->_variantOptions;
  v4->_variantOptions = v11;

  v13 = [assetCopy objectForKey:@"path"];
  localPath = v4->_localPath;
  v4->_localPath = v13;

  v15 = [assetCopy objectForKey:@"prettyName"];
  prettyName = v4->_prettyName;
  v4->_prettyName = v15;

  v17 = [assetCopy objectForKey:@"isDownload"];
  v4->_isDownload = [v17 BOOLValue];

  v18 = [assetCopy objectForKey:@"isRestore"];
  v4->_isRestore = [v18 BOOLValue];

  v19 = [assetCopy objectForKey:@"bypassStore"];
  v4->_bypassStore = [v19 BOOLValue];

  v20 = [assetCopy objectForKey:@"prioritize"];
  v4->_isPrioritized = [v20 BOOLValue];

  v21 = [assetCopy objectForKey:@"isForeground"];
  v4->_isForeground = [v21 BOOLValue];

  v22 = [assetCopy objectForKey:@"downloadProgress"];
  [v22 floatValue];
  v4->_downloadProgress = v23;

  v24 = [assetCopy objectForKey:@"installProgress"];
  [v24 floatValue];
  v4->_installProgress = v25;

  v26 = [assetCopy objectForKey:@"clientParams"];
  clientParams = v4->_clientParams;
  v4->_clientParams = v26;

  v28 = [assetCopy objectForKey:@"assetState"];
  v4->_assetState = [v28 integerValue];

  v29 = [assetCopy objectForKey:@"downloadOnly"];
  v4->_downloadOnly = [v29 BOOLValue];

  v30 = [assetCopy objectForKey:@"lyricsEmbeddedInAsset"];
  v4->_lyricsEmbeddedInAsset = [v30 BOOLValue];

  v31 = [assetCopy objectForKey:@"powerRequired"];
  v4->_powerRequired = [v31 BOOLValue];

  v32 = [assetCopy objectForKey:@"canUseCellularData"];
  v4->_canUseCellularData = [v32 BOOLValue];

  v33 = [assetCopy objectForKey:@"protectionType"];
  v4->_protectionType = [v33 intValue];

  v34 = [assetCopy objectForKey:@"enqueueSource"];
  v4->_enqueueSource = [v34 intValue];

  v35 = [assetCopy objectForKey:@"allowDownloadOnConstrainedNetwork"];
  v4->_allowDownloadOnConstrainedNetwork = [v35 BOOLValue];

  v36 = [assetCopy objectForKey:@"downloadPausedReason"];
  v4->_downloadPauseReason = [v36 unsignedIntegerValue];

  v37 = [assetCopy objectForKey:@"downloadSourceContainerId"];
  downloadSourceContainerId = v4->_downloadSourceContainerId;
  v4->_downloadSourceContainerId = v37;

  v39 = [assetCopy objectForKey:@"error"];

  error = v4->_error;
  v4->_error = v39;

  return v4;
}

+ (id)iCloudRestoreAssetWithIdentifier:(id)identifier dataclass:(id)dataclass assetType:(id)type restorePath:(id)path displayName:(id)name
{
  typeCopy = type;
  pathCopy = path;
  nameCopy = name;
  dataclassCopy = dataclass;
  identifierCopy = identifier;
  v16 = [[ATAsset alloc] initWithIdentifier:identifierCopy dataclass:dataclassCopy prettyName:nameCopy];

  assetType = v16->_assetType;
  v16->_assetType = typeCopy;
  v18 = typeCopy;

  localPath = v16->_localPath;
  v16->_localPath = pathCopy;

  *&v16->_isRestore = 257;
  v16->_legacy = 1;

  return v16;
}

+ (id)uploadAssetWithIdentifier:(id)identifier dataclass:(id)dataclass sourcePath:(id)path prettyName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  dataclassCopy = dataclass;
  identifierCopy = identifier;
  v13 = [[ATAsset alloc] initWithIdentifier:identifierCopy dataclass:dataclassCopy prettyName:nameCopy];

  localPath = v13->_localPath;
  v13->_localPath = pathCopy;

  v13->_isDownload = 0;
  v13->_legacy = 1;

  return v13;
}

+ (id)downloadAssetWithIdentifier:(id)identifier dataclass:(id)dataclass prettyName:(id)name
{
  nameCopy = name;
  dataclassCopy = dataclass;
  identifierCopy = identifier;
  v10 = [[ATAsset alloc] initWithIdentifier:identifierCopy dataclass:dataclassCopy prettyName:nameCopy];

  v10->_legacy = 1;

  return v10;
}

@end