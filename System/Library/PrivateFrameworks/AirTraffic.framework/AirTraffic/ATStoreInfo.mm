@interface ATStoreInfo
- (ATStoreInfo)init;
- (ATStoreInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAdamID:(id)a3;
- (void)setAppleID:(id)a3;
- (void)setCloudDSID:(id)a3;
- (void)setCollectionID:(id)a3;
- (void)setDSID:(id)a3;
- (void)setDimensions:(id)a3;
- (void)setDrmFree:(id)a3;
- (void)setEndpointType:(id)a3;
- (void)setFlavor:(id)a3;
- (void)setMatchStatus:(id)a3;
- (void)setPodcastEpisodeGUID:(id)a3;
- (void)setRedownloadParams:(id)a3;
- (void)setRedownloadStatus:(id)a3;
- (void)setSagaID:(id)a3;
- (void)setStorefrontID:(id)a3;
- (void)setSubscriptionID:(id)a3;
- (void)setSyncID:(id)a3;
- (void)setVersionID:(id)a3;
- (void)setXID:(id)a3;
@end

@implementation ATStoreInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(ATStoreInfo *)self adamID];
  [v4 setAdamID:v5];

  v6 = [(ATStoreInfo *)self DSID];
  [v4 setDSID:v6];

  v7 = [(ATStoreInfo *)self cloudDSID];
  [v4 setCloudDSID:v7];

  v8 = [(ATStoreInfo *)self collectionID];
  [v4 setCollectionID:v8];

  v9 = [(ATStoreInfo *)self versionID];
  [v4 setVersionID:v9];

  v10 = [(ATStoreInfo *)self drmFree];
  [v4 setDrmFree:v10];

  v11 = [(ATStoreInfo *)self sagaID];
  [v4 setSagaID:v11];

  v12 = [(ATStoreInfo *)self subscriptionID];
  [v4 setSubscriptionID:v12];

  v13 = [(ATStoreInfo *)self matchStatus];
  [v4 setMatchStatus:v13];

  v14 = [(ATStoreInfo *)self redownloadStatus];
  [v4 setRedownloadStatus:v14];

  v15 = [(ATStoreInfo *)self endpointType];
  [v4 setEndpointType:v15];

  v16 = [(ATStoreInfo *)self appleID];
  [v4 setAppleID:v16];

  v17 = [(ATStoreInfo *)self syncID];
  [v4 setSyncID:v17];

  v18 = [(ATStoreInfo *)self storefrontID];
  [v4 setStorefrontID:v18];

  v19 = [(ATStoreInfo *)self XID];
  [v4 setXID:v19];

  v20 = [(ATStoreInfo *)self flavor];
  [v4 setFlavor:v20];

  v21 = [(ATStoreInfo *)self dimensions];
  [v4 setDimensions:v21];

  v22 = [(ATStoreInfo *)self podcastEpisodeGUID];
  [v4 setPodcastEpisodeGUID:v22];

  v23 = [(ATStoreInfo *)self redownloadParams];
  [v4 setRedownloadParams:v23];

  return v4;
}

- (ATStoreInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ATStoreInfo;
  v5 = [(ATStoreInfo *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"downloadDictionary"];
    downloadDictionary = v5->_downloadDictionary;
    v5->_downloadDictionary = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"assetDictionary"];
    assetDictionary = v5->_assetDictionary;
    v5->_assetDictionary = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  v5 = a3;
  [v5 encodeObject:downloadDictionary forKey:@"downloadDictionary"];
  [v5 encodeObject:self->_assetDictionary forKey:@"assetDictionary"];
}

- (ATStoreInfo)init
{
  v9.receiver = self;
  v9.super_class = ATStoreInfo;
  v2 = [(ATStoreInfo *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    downloadDictionary = v2->_downloadDictionary;
    v2->_downloadDictionary = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetDictionary = v2->_assetDictionary;
    v2->_assetDictionary = v5;

    storeMediaResponseItem = v2->_storeMediaResponseItem;
    v2->_storeMediaResponseItem = 0;
  }

  return v2;
}

- (void)setDrmFree:(id)a3
{
  assetDictionary = self->_assetDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)assetDictionary setObject:a3 forKey:*MEMORY[0x277D69E50]];
  }

  else
  {
    [(NSMutableDictionary *)assetDictionary removeObjectForKey:*MEMORY[0x277D69E50]];
  }
}

- (void)setDimensions:(id)a3
{
  assetDictionary = self->_assetDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)assetDictionary setObject:a3 forKey:*MEMORY[0x277D69E60]];
  }

  else
  {
    [(NSMutableDictionary *)assetDictionary removeObjectForKey:*MEMORY[0x277D69E60]];
  }
}

- (void)setFlavor:(id)a3
{
  assetDictionary = self->_assetDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)assetDictionary setObject:a3 forKey:*MEMORY[0x277D69E58]];
  }

  else
  {
    [(NSMutableDictionary *)assetDictionary removeObjectForKey:*MEMORY[0x277D69E58]];
  }
}

- (void)setEndpointType:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:@"ATAssetStoreInfoEndpointType"];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:@"ATAssetStoreInfoEndpointType"];
  }
}

- (void)setRedownloadParams:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A098]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A098]];
  }
}

- (void)setPodcastEpisodeGUID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A028]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A028]];
  }
}

- (void)setRedownloadStatus:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A0A0]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A0A0]];
  }
}

- (void)setMatchStatus:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A088]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A088]];
  }
}

- (void)setSagaID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A0A8]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A0A8]];
  }
}

- (void)setAppleID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A058]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A058]];
  }
}

- (void)setXID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A0C0]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A0C0]];
  }
}

- (void)setStorefrontID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A078]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A078]];
  }
}

- (void)setVersionID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A0B0]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A0B0]];
  }
}

- (void)setCloudDSID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:@"ATAssetStoreInfoCloudDSID"];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:@"ATAssetStoreInfoCloudDSID"];
  }
}

- (void)setSubscriptionID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:@"ATAssetStoreInfoSubscriptionItemID"];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:@"ATAssetStoreInfoSubscriptionItemID"];
  }
}

- (void)setSyncID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:@"ATLegacyAssetSyncID"];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:@"ATLegacyAssetSyncID"];
  }
}

- (void)setCollectionID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A070]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A070]];
  }
}

- (void)setDSID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A060]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A060]];
  }
}

- (void)setAdamID:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:a3 forKey:*MEMORY[0x277D6A080]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A080]];
  }
}

@end