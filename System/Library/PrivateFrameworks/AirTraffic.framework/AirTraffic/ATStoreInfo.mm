@interface ATStoreInfo
- (ATStoreInfo)init;
- (ATStoreInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setAdamID:(id)d;
- (void)setAppleID:(id)d;
- (void)setCloudDSID:(id)d;
- (void)setCollectionID:(id)d;
- (void)setDSID:(id)d;
- (void)setDimensions:(id)dimensions;
- (void)setDrmFree:(id)free;
- (void)setEndpointType:(id)type;
- (void)setFlavor:(id)flavor;
- (void)setMatchStatus:(id)status;
- (void)setPodcastEpisodeGUID:(id)d;
- (void)setRedownloadParams:(id)params;
- (void)setRedownloadStatus:(id)status;
- (void)setSagaID:(id)d;
- (void)setStorefrontID:(id)d;
- (void)setSubscriptionID:(id)d;
- (void)setSyncID:(id)d;
- (void)setVersionID:(id)d;
- (void)setXID:(id)d;
@end

@implementation ATStoreInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  adamID = [(ATStoreInfo *)self adamID];
  [v4 setAdamID:adamID];

  dSID = [(ATStoreInfo *)self DSID];
  [v4 setDSID:dSID];

  cloudDSID = [(ATStoreInfo *)self cloudDSID];
  [v4 setCloudDSID:cloudDSID];

  collectionID = [(ATStoreInfo *)self collectionID];
  [v4 setCollectionID:collectionID];

  versionID = [(ATStoreInfo *)self versionID];
  [v4 setVersionID:versionID];

  drmFree = [(ATStoreInfo *)self drmFree];
  [v4 setDrmFree:drmFree];

  sagaID = [(ATStoreInfo *)self sagaID];
  [v4 setSagaID:sagaID];

  subscriptionID = [(ATStoreInfo *)self subscriptionID];
  [v4 setSubscriptionID:subscriptionID];

  matchStatus = [(ATStoreInfo *)self matchStatus];
  [v4 setMatchStatus:matchStatus];

  redownloadStatus = [(ATStoreInfo *)self redownloadStatus];
  [v4 setRedownloadStatus:redownloadStatus];

  endpointType = [(ATStoreInfo *)self endpointType];
  [v4 setEndpointType:endpointType];

  appleID = [(ATStoreInfo *)self appleID];
  [v4 setAppleID:appleID];

  syncID = [(ATStoreInfo *)self syncID];
  [v4 setSyncID:syncID];

  storefrontID = [(ATStoreInfo *)self storefrontID];
  [v4 setStorefrontID:storefrontID];

  v19 = [(ATStoreInfo *)self XID];
  [v4 setXID:v19];

  flavor = [(ATStoreInfo *)self flavor];
  [v4 setFlavor:flavor];

  dimensions = [(ATStoreInfo *)self dimensions];
  [v4 setDimensions:dimensions];

  podcastEpisodeGUID = [(ATStoreInfo *)self podcastEpisodeGUID];
  [v4 setPodcastEpisodeGUID:podcastEpisodeGUID];

  redownloadParams = [(ATStoreInfo *)self redownloadParams];
  [v4 setRedownloadParams:redownloadParams];

  return v4;
}

- (ATStoreInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"downloadDictionary"];
    downloadDictionary = v5->_downloadDictionary;
    v5->_downloadDictionary = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"assetDictionary"];
    assetDictionary = v5->_assetDictionary;
    v5->_assetDictionary = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  downloadDictionary = self->_downloadDictionary;
  coderCopy = coder;
  [coderCopy encodeObject:downloadDictionary forKey:@"downloadDictionary"];
  [coderCopy encodeObject:self->_assetDictionary forKey:@"assetDictionary"];
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

- (void)setDrmFree:(id)free
{
  assetDictionary = self->_assetDictionary;
  if (free)
  {
    [(NSMutableDictionary *)assetDictionary setObject:free forKey:*MEMORY[0x277D69E50]];
  }

  else
  {
    [(NSMutableDictionary *)assetDictionary removeObjectForKey:*MEMORY[0x277D69E50]];
  }
}

- (void)setDimensions:(id)dimensions
{
  assetDictionary = self->_assetDictionary;
  if (dimensions)
  {
    [(NSMutableDictionary *)assetDictionary setObject:dimensions forKey:*MEMORY[0x277D69E60]];
  }

  else
  {
    [(NSMutableDictionary *)assetDictionary removeObjectForKey:*MEMORY[0x277D69E60]];
  }
}

- (void)setFlavor:(id)flavor
{
  assetDictionary = self->_assetDictionary;
  if (flavor)
  {
    [(NSMutableDictionary *)assetDictionary setObject:flavor forKey:*MEMORY[0x277D69E58]];
  }

  else
  {
    [(NSMutableDictionary *)assetDictionary removeObjectForKey:*MEMORY[0x277D69E58]];
  }
}

- (void)setEndpointType:(id)type
{
  downloadDictionary = self->_downloadDictionary;
  if (type)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:type forKey:@"ATAssetStoreInfoEndpointType"];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:@"ATAssetStoreInfoEndpointType"];
  }
}

- (void)setRedownloadParams:(id)params
{
  downloadDictionary = self->_downloadDictionary;
  if (params)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:params forKey:*MEMORY[0x277D6A098]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A098]];
  }
}

- (void)setPodcastEpisodeGUID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:*MEMORY[0x277D6A028]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A028]];
  }
}

- (void)setRedownloadStatus:(id)status
{
  downloadDictionary = self->_downloadDictionary;
  if (status)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:status forKey:*MEMORY[0x277D6A0A0]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A0A0]];
  }
}

- (void)setMatchStatus:(id)status
{
  downloadDictionary = self->_downloadDictionary;
  if (status)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:status forKey:*MEMORY[0x277D6A088]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A088]];
  }
}

- (void)setSagaID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:*MEMORY[0x277D6A0A8]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A0A8]];
  }
}

- (void)setAppleID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:*MEMORY[0x277D6A058]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A058]];
  }
}

- (void)setXID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:*MEMORY[0x277D6A0C0]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A0C0]];
  }
}

- (void)setStorefrontID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:*MEMORY[0x277D6A078]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A078]];
  }
}

- (void)setVersionID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:*MEMORY[0x277D6A0B0]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A0B0]];
  }
}

- (void)setCloudDSID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:@"ATAssetStoreInfoCloudDSID"];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:@"ATAssetStoreInfoCloudDSID"];
  }
}

- (void)setSubscriptionID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:@"ATAssetStoreInfoSubscriptionItemID"];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:@"ATAssetStoreInfoSubscriptionItemID"];
  }
}

- (void)setSyncID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:@"ATLegacyAssetSyncID"];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:@"ATLegacyAssetSyncID"];
  }
}

- (void)setCollectionID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:*MEMORY[0x277D6A070]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A070]];
  }
}

- (void)setDSID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:*MEMORY[0x277D6A060]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A060]];
  }
}

- (void)setAdamID:(id)d
{
  downloadDictionary = self->_downloadDictionary;
  if (d)
  {
    [(NSMutableDictionary *)downloadDictionary setObject:d forKey:*MEMORY[0x277D6A080]];
  }

  else
  {
    [(NSMutableDictionary *)downloadDictionary removeObjectForKey:*MEMORY[0x277D6A080]];
  }
}

@end