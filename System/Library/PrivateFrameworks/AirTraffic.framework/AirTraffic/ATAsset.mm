@interface ATAsset
+ (id)assetWithSerializedAsset:(id)a3;
+ (id)downloadAssetWithIdentifier:(id)a3 dataclass:(id)a4 prettyName:(id)a5;
+ (id)iCloudRestoreAssetWithIdentifier:(id)a3 dataclass:(id)a4 assetType:(id)a5 restorePath:(id)a6 displayName:(id)a7;
+ (id)uploadAssetWithIdentifier:(id)a3 dataclass:(id)a4 sourcePath:(id)a5 prettyName:(id)a6;
- (ATAsset)init;
- (ATAsset)initWithCoder:(id)a3;
- (ATAsset)initWithIdentifier:(id)a3 dataclass:(id)a4 prettyName:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_ATAssetTypeFromDataClass:(id)a3;
- (id)_variantDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)serializedAsset;
- (id)shortDescription;
- (unint64_t)assetParts;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATAsset

- (id)_ATAssetTypeFromDataClass:(id)a3
{
  v3 = a3;
  if (_ATAssetTypeFromDataClass__onceToken != -1)
  {
    dispatch_once(&_ATAssetTypeFromDataClass__onceToken, &__block_literal_global_601);
  }

  v4 = [_ATAssetTypeFromDataClass__dataClassByKind objectForKeyedSubscript:v3];
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
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = v3;
  if (self->_variantOptions)
  {
    [v3 appendString:@"{"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ATAsset *)self storeInfo];
  v7 = [v6 copyWithZone:a3];
  [v5 setStoreInfo:v7];

  v8 = [(ATAsset *)self identifier];
  [v5 setIdentifier:v8];

  v9 = [(ATAsset *)self dataclass];
  [v5 setDataclass:v9];

  v10 = [(ATAsset *)self assetType];
  [v5 setAssetType:v10];

  v11 = [(ATAsset *)self variantOptions];
  [v5 setVariantOptions:v11];

  v12 = [(ATAsset *)self path];
  [v5 setPath:v12];

  v13 = [(ATAsset *)self icon];
  [v5 setIcon:v13];

  v14 = [(ATAsset *)self prettyName];
  [v5 setPrettyName:v14];

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
  v15 = [(ATAsset *)self storePlist];
  [v5 setStorePlist:v15];

  v16 = [(ATAsset *)self infoPlist];
  [v5 setInfoPlist:v16];

  v17 = [(ATAsset *)self error];
  [v5 setError:v17];

  v18 = [(ATAsset *)self clientParams];
  [v5 setClientParams:v18];

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
  v19 = [(ATAsset *)self downloadSourceContainerId];
  [v5 setDownloadSourceContainerId:v19];

  return v5;
}

- (ATAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = ATAsset;
  v5 = [(ATAsset *)&v44 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataclass"];
    dataclass = v5->_dataclass;
    v5->_dataclass = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"variantOptions"];
    variantOptions = v5->_variantOptions;
    v5->_variantOptions = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    localPath = v5->_localPath;
    v5->_localPath = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prettyName"];
    prettyName = v5->_prettyName;
    v5->_prettyName = v21;

    v5->_isDownload = [v4 decodeBoolForKey:@"isDownload"];
    v5->_downloadOnly = [v4 decodeBoolForKey:@"downloadOnly"];
    v5->_isRestore = [v4 decodeBoolForKey:@"isRestore"];
    v5->_bypassStore = [v4 decodeBoolForKey:@"bypassStore"];
    v5->_isPrioritized = [v4 decodeBoolForKey:@"prioritize"];
    v5->_isForeground = [v4 decodeBoolForKey:@"isForeground"];
    v5->_lyricsEmbeddedInAsset = [v4 decodeBoolForKey:@"lyricsEmbeddedInAsset"];
    [v4 decodeFloatForKey:@"downloadProgress"];
    v5->_downloadProgress = v23;
    [v4 decodeFloatForKey:@"installProgress"];
    v5->_installProgress = v24;
    v25 = MEMORY[0x277CBEBC0];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    v27 = [v25 URLWithString:v26];
    icon = v5->_icon;
    v5->_icon = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeInfo"];
    storeInfo = v5->_storeInfo;
    v5->_storeInfo = v29;

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v31 setWithObjects:{v32, v33, v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"clientParams"];
    clientParams = v5->_clientParams;
    v5->_clientParams = v36;

    v5->_assetState = [v4 decodeIntegerForKey:@"assetState"];
    v5->_powerRequired = [v4 decodeBoolForKey:@"powerRequired"];
    v5->_canUseCellularData = [v4 decodeBoolForKey:@"canUseCellularData"];
    v5->_protectionType = [v4 decodeIntForKey:@"protectionType"];
    v5->_enqueueSource = [v4 decodeIntForKey:@"enqueueSource"];
    v5->_allowDownloadOnConstrainedNetwork = [v4 decodeBoolForKey:@"allowDownloadOnConstrainedNetwork"];
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadPausedReason"];
    v5->_downloadPauseReason = [v38 unsignedIntegerValue];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadSourceContainerId"];
    downloadSourceContainerId = v5->_downloadSourceContainerId;
    v5->_downloadSourceContainerId = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v41;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  v6 = [(NSString *)identifier copy];
  [v5 encodeObject:v6 forKey:@"identifier"];

  v7 = [(NSString *)self->_dataclass copy];
  [v5 encodeObject:v7 forKey:@"dataclass"];

  v8 = [(NSString *)self->_assetType copy];
  [v5 encodeObject:v8 forKey:@"assetType"];

  v9 = [(NSDictionary *)self->_variantOptions copy];
  [v5 encodeObject:v9 forKey:@"variantOptions"];

  v10 = [(NSString *)self->_localPath copy];
  [v5 encodeObject:v10 forKey:@"path"];

  v11 = [(NSString *)self->_prettyName copy];
  [v5 encodeObject:v11 forKey:@"prettyName"];

  [v5 encodeBool:self->_isDownload forKey:@"isDownload"];
  [v5 encodeBool:self->_downloadOnly forKey:@"downloadOnly"];
  [v5 encodeBool:self->_isRestore forKey:@"isRestore"];
  [v5 encodeBool:self->_bypassStore forKey:@"bypassStore"];
  [v5 encodeBool:self->_isPrioritized forKey:@"prioritize"];
  [v5 encodeBool:self->_isForeground forKey:@"isForeground"];
  [v5 encodeBool:self->_lyricsEmbeddedInAsset forKey:@"lyricsEmbeddedInAsset"];
  *&v12 = self->_downloadProgress;
  [v5 encodeFloat:@"downloadProgress" forKey:v12];
  *&v13 = self->_installProgress;
  [v5 encodeFloat:@"installProgress" forKey:v13];
  v14 = [(NSURL *)self->_icon path];
  v15 = [v14 copy];
  [v5 encodeObject:v15 forKey:@"icon"];

  v16 = [(ATStoreInfo *)self->_storeInfo copy];
  [v5 encodeObject:v16 forKey:@"storeInfo"];

  v17 = [(NSDictionary *)self->_clientParams copy];
  [v5 encodeObject:v17 forKey:@"clientParams"];

  [v5 encodeInteger:self->_assetState forKey:@"assetState"];
  [v5 encodeBool:self->_powerRequired forKey:@"powerRequired"];
  [v5 encodeBool:self->_canUseCellularData forKey:@"canUseCellularData"];
  [v5 encodeInteger:self->_protectionType forKey:@"protectionType"];
  [v5 encodeInteger:self->_enqueueSource forKey:@"enqueueSource"];
  [v5 encodeBool:self->_allowDownloadOnConstrainedNetwork forKey:@"allowDownloadOnConstrainedNetwork"];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_downloadPauseReason];
  [v5 encodeObject:v18 forKey:@"downloadPausedReason"];

  v19 = [(NSNumber *)self->_downloadSourceContainerId copy];
  [v5 encodeObject:v19 forKey:@"downloadSourceContainerId"];

  v21 = [(NSError *)self->_error copy];
  v20 = [v21 msv_errorByRemovingUnsafeUserInfo];
  [v5 encodeObject:v20 forKey:@"error"];
}

- (unint64_t)assetParts
{
  v2 = [(ATAsset *)self variantOptions];
  v3 = [v2 objectForKey:@"AssetParts"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)serializedAsset
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  identifier = self->_identifier;
  if (identifier)
  {
    v5 = [(NSString *)identifier copy];
    [v3 setObject:v5 forKey:@"identifier"];
  }

  dataclass = self->_dataclass;
  if (dataclass)
  {
    v7 = [(NSString *)dataclass copy];
    [v3 setObject:v7 forKey:@"dataclass"];
  }

  assetType = self->_assetType;
  if (assetType)
  {
    v9 = [(NSString *)assetType copy];
    [v3 setObject:v9 forKey:@"assetType"];
  }

  variantOptions = self->_variantOptions;
  if (variantOptions)
  {
    v11 = [(NSDictionary *)variantOptions copy];
    [v3 setObject:v11 forKey:@"variantOptions"];
  }

  localPath = self->_localPath;
  if (localPath)
  {
    v13 = [(NSString *)localPath copy];
    [v3 setObject:v13 forKey:@"path"];
  }

  prettyName = self->_prettyName;
  if (prettyName)
  {
    v15 = [(NSString *)prettyName copy];
    [v3 setObject:v15 forKey:@"prettyName"];
  }

  clientParams = self->_clientParams;
  if (clientParams)
  {
    v17 = [(NSDictionary *)clientParams copy];
    [v3 setObject:v17 forKey:@"clientParams"];
  }

  downloadSourceContainerId = self->_downloadSourceContainerId;
  if (downloadSourceContainerId)
  {
    v19 = [(NSNumber *)downloadSourceContainerId copy];
    [v3 setObject:v19 forKey:@"downloadSourceContainerId"];
  }

  error = self->_error;
  if (error)
  {
    v21 = [(NSError *)error copy];
    [v3 setObject:v21 forKey:@"error"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDownload];
  [v3 setObject:v22 forKey:@"isDownload"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRestore];
  [v3 setObject:v23 forKey:@"isRestore"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_bypassStore];
  [v3 setObject:v24 forKey:@"bypassStore"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPrioritized];
  [v3 setObject:v25 forKey:@"prioritize"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_isForeground];
  [v3 setObject:v26 forKey:@"isForeground"];

  *&v27 = self->_downloadProgress;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  [v3 setObject:v28 forKey:@"downloadProgress"];

  *&v29 = self->_installProgress;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  [v3 setObject:v30 forKey:@"installProgress"];

  v31 = [MEMORY[0x277CCABB0] numberWithInteger:self->_assetState];
  [v3 setObject:v31 forKey:@"assetState"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadOnly];
  [v3 setObject:v32 forKey:@"downloadOnly"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_lyricsEmbeddedInAsset];
  [v3 setObject:v33 forKey:@"lyricsEmbeddedInAsset"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_powerRequired];
  [v3 setObject:v34 forKey:@"powerRequired"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_canUseCellularData];
  [v3 setObject:v35 forKey:@"canUseCellularData"];

  v36 = [MEMORY[0x277CCABB0] numberWithInteger:self->_protectionType];
  [v3 setObject:v36 forKey:@"protectionType"];

  v37 = [MEMORY[0x277CCABB0] numberWithInteger:self->_enqueueSource];
  [v3 setObject:v37 forKey:@"enqueueSource"];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowDownloadOnConstrainedNetwork];
  [v3 setObject:v38 forKey:@"allowDownloadOnConstrainedNetwork"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_downloadPauseReason];
  [v3 setObject:v39 forKey:@"downloadPausedReason"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_dataclass hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  return v4 ^ [(ATAsset *)self assetParts];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      dataclass = self->_dataclass;
      v7 = [(ATAsset *)v5 dataclass];
      if ([(NSString *)dataclass isEqualToString:v7])
      {
        identifier = self->_identifier;
        v9 = [(ATAsset *)v5 identifier];
        if ([(NSString *)identifier isEqualToString:v9])
        {
          v10 = [(ATAsset *)self assetParts];
          v11 = v10 == [(ATAsset *)v5 assetParts];
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

- (ATAsset)initWithIdentifier:(id)a3 dataclass:(id)a4 prettyName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ATAsset *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_dataclass, a4);
    objc_storeStrong(&v13->_prettyName, a5);
    v13->_downloadPauseReason = 0;
    v14 = [(ATAsset *)v13 _ATAssetTypeFromDataClass:v10];
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
    v7 = [(ATStoreInfo *)self->_storeInfo syncID];
    v8 = [(ATStoreInfo *)self->_storeInfo adamID];
    v9 = [(ATStoreInfo *)self->_storeInfo sagaID];
    v10 = [(NSNumber *)self->_downloadSourceContainerId longLongValue];
    v11 = [(ATStoreInfo *)self->_storeInfo endpointType];
    v12 = [(ATAsset *)self _variantDescription];
    downloadPauseReason = self->_downloadPauseReason;
    v14 = [v3 stringByAppendingFormat:@"[%@%@, %@, %@, id=%@, syncid=%@, adamID=%@, sagaID=%@, downloadSourceContainerId=%lld, endpointType=%@, var=%@, path=%@, pid=%lld, bypassStore=%d, prioritized=%d, foreground=%d, installOnly=%d, allowDownloadOnConstrainedNetwork=%d, downloadPauseReason=%d, %@]", v17, v5, v16, identifier, v7, v8, v9, v10, v11, v12, self->_localPath, self->_storePID, self->_bypassStore, self->_isPrioritized, self->_isForeground, self->_installOnly, self->_allowDownloadOnConstrainedNetwork, downloadPauseReason, self->_prettyName];
  }

  return v14;
}

+ (id)assetWithSerializedAsset:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ATAsset);
  v5 = [v3 objectForKey:@"identifier"];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [v3 objectForKey:@"dataclass"];
  dataclass = v4->_dataclass;
  v4->_dataclass = v7;

  v9 = [v3 objectForKey:@"assetType"];
  assetType = v4->_assetType;
  v4->_assetType = v9;

  v11 = [v3 objectForKey:@"variantOptions"];
  variantOptions = v4->_variantOptions;
  v4->_variantOptions = v11;

  v13 = [v3 objectForKey:@"path"];
  localPath = v4->_localPath;
  v4->_localPath = v13;

  v15 = [v3 objectForKey:@"prettyName"];
  prettyName = v4->_prettyName;
  v4->_prettyName = v15;

  v17 = [v3 objectForKey:@"isDownload"];
  v4->_isDownload = [v17 BOOLValue];

  v18 = [v3 objectForKey:@"isRestore"];
  v4->_isRestore = [v18 BOOLValue];

  v19 = [v3 objectForKey:@"bypassStore"];
  v4->_bypassStore = [v19 BOOLValue];

  v20 = [v3 objectForKey:@"prioritize"];
  v4->_isPrioritized = [v20 BOOLValue];

  v21 = [v3 objectForKey:@"isForeground"];
  v4->_isForeground = [v21 BOOLValue];

  v22 = [v3 objectForKey:@"downloadProgress"];
  [v22 floatValue];
  v4->_downloadProgress = v23;

  v24 = [v3 objectForKey:@"installProgress"];
  [v24 floatValue];
  v4->_installProgress = v25;

  v26 = [v3 objectForKey:@"clientParams"];
  clientParams = v4->_clientParams;
  v4->_clientParams = v26;

  v28 = [v3 objectForKey:@"assetState"];
  v4->_assetState = [v28 integerValue];

  v29 = [v3 objectForKey:@"downloadOnly"];
  v4->_downloadOnly = [v29 BOOLValue];

  v30 = [v3 objectForKey:@"lyricsEmbeddedInAsset"];
  v4->_lyricsEmbeddedInAsset = [v30 BOOLValue];

  v31 = [v3 objectForKey:@"powerRequired"];
  v4->_powerRequired = [v31 BOOLValue];

  v32 = [v3 objectForKey:@"canUseCellularData"];
  v4->_canUseCellularData = [v32 BOOLValue];

  v33 = [v3 objectForKey:@"protectionType"];
  v4->_protectionType = [v33 intValue];

  v34 = [v3 objectForKey:@"enqueueSource"];
  v4->_enqueueSource = [v34 intValue];

  v35 = [v3 objectForKey:@"allowDownloadOnConstrainedNetwork"];
  v4->_allowDownloadOnConstrainedNetwork = [v35 BOOLValue];

  v36 = [v3 objectForKey:@"downloadPausedReason"];
  v4->_downloadPauseReason = [v36 unsignedIntegerValue];

  v37 = [v3 objectForKey:@"downloadSourceContainerId"];
  downloadSourceContainerId = v4->_downloadSourceContainerId;
  v4->_downloadSourceContainerId = v37;

  v39 = [v3 objectForKey:@"error"];

  error = v4->_error;
  v4->_error = v39;

  return v4;
}

+ (id)iCloudRestoreAssetWithIdentifier:(id)a3 dataclass:(id)a4 assetType:(id)a5 restorePath:(id)a6 displayName:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a4;
  v15 = a3;
  v16 = [[ATAsset alloc] initWithIdentifier:v15 dataclass:v14 prettyName:v13];

  assetType = v16->_assetType;
  v16->_assetType = v11;
  v18 = v11;

  localPath = v16->_localPath;
  v16->_localPath = v12;

  *&v16->_isRestore = 257;
  v16->_legacy = 1;

  return v16;
}

+ (id)uploadAssetWithIdentifier:(id)a3 dataclass:(id)a4 sourcePath:(id)a5 prettyName:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[ATAsset alloc] initWithIdentifier:v12 dataclass:v11 prettyName:v10];

  localPath = v13->_localPath;
  v13->_localPath = v9;

  v13->_isDownload = 0;
  v13->_legacy = 1;

  return v13;
}

+ (id)downloadAssetWithIdentifier:(id)a3 dataclass:(id)a4 prettyName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[ATAsset alloc] initWithIdentifier:v9 dataclass:v8 prettyName:v7];

  v10->_legacy = 1;

  return v10;
}

@end