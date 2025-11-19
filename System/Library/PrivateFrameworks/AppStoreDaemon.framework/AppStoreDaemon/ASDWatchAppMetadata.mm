@interface ASDWatchAppMetadata
+ (id)metadataFromStoreMetadata:(id)a3;
- (ASDWatchAppMetadata)initWithCoder:(id)a3;
- (ASDWatchAppMetadata)initWithItemID:(id)a3 externalVersionID:(id)a4;
- (ASDWatchAppMetadata)initWithStoreMetadata:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDWatchAppMetadata

+ (id)metadataFromStoreMetadata:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStoreMetadata:v4];

  return v5;
}

- (ASDWatchAppMetadata)initWithItemID:(id)a3 externalVersionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASDWatchAppMetadata;
  v8 = [(ASDWatchAppMetadata *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    itemID = v8->_itemID;
    v8->_itemID = v9;

    v11 = [v7 copy];
    externalVersionID = v8->_externalVersionID;
    v8->_externalVersionID = v11;
  }

  return v8;
}

- (ASDWatchAppMetadata)initWithStoreMetadata:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ASDWatchAppMetadata;
  v5 = [(ASDWatchAppMetadata *)&v23 init];
  if (v5)
  {
    v6 = [v4 altDSID];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [v4 appleID];
    appleID = v5->_appleID;
    v5->_appleID = v8;

    v10 = [v4 softwareVersionBundleID];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [v4 downloaderID];
    downloaderID = v5->_downloaderID;
    v5->_downloaderID = v12;

    v14 = [v4 softwareVersionExternalIdentifier];
    externalVersionID = v5->_externalVersionID;
    v5->_externalVersionID = v14;

    v16 = [v4 itemID];
    itemID = v5->_itemID;
    v5->_itemID = v16;

    v18 = [v4 purchaserID];
    purchaserID = v5->_purchaserID;
    v5->_purchaserID = v18;

    v20 = [v4 redownloadParams];
    redownloadParams = v5->_redownloadParams;
    v5->_redownloadParams = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDWatchAppMetadata allocWithZone:](ASDWatchAppMetadata init];
  v6 = [(NSString *)self->_altDSID copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setAltDSID:v6];

  v7 = [(NSString *)self->_appleID copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setAppleID:v7];

  v8 = [(NSString *)self->_bundleID copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setBundleID:v8];

  v9 = [(NSNumber *)self->_downloaderID copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setDownloaderID:v9];

  v10 = [(NSNumber *)self->_externalVersionID copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setExternalVersionID:v10];

  v11 = [(NSNumber *)self->_itemID copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setItemID:v11];

  v12 = [(NSNumber *)self->_previousExternalVersionID copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setPreviousExternalVersionID:v12];

  v13 = [(NSString *)self->_previousVariantID copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setPreviousVariantID:v13];

  v14 = [(NSNumber *)self->_purchaserID copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setPurchaserID:v14];

  v15 = [(NSString *)self->_redownloadParams copyWithZone:a3];
  [(ASDWatchAppMetadata *)v5 setRedownloadParams:v15];

  [(ASDWatchAppMetadata *)v5 setSkipIfInstalled:self->_skipIfInstalled];
  [(ASDWatchAppMetadata *)v5 setUserInitiated:self->_userInitiated];
  return v5;
}

- (ASDWatchAppMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = ASDWatchAppMetadata;
  v5 = [(ASDWatchAppMetadata *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AD"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AI"];
    appleID = v5->_appleID;
    v5->_appleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BI"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DI"];
    downloaderID = v5->_downloaderID;
    v5->_downloaderID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EV"];
    externalVersionID = v5->_externalVersionID;
    v5->_externalVersionID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ID"];
    itemID = v5->_itemID;
    v5->_itemID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PE"];
    previousExternalVersionID = v5->_previousExternalVersionID;
    v5->_previousExternalVersionID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PV"];
    previousVariantID = v5->_previousVariantID;
    v5->_previousVariantID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PI"];
    purchaserID = v5->_purchaserID;
    v5->_purchaserID = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BP"];
    redownloadParams = v5->_redownloadParams;
    v5->_redownloadParams = v24;

    v5->_skipIfInstalled = [v4 decodeBoolForKey:@"SK"];
    v5->_userInitiated = [v4 decodeBoolForKey:@"UI"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  altDSID = self->_altDSID;
  v5 = a3;
  [v5 encodeObject:altDSID forKey:@"AD"];
  [v5 encodeObject:self->_appleID forKey:@"AI"];
  [v5 encodeObject:self->_bundleID forKey:@"BI"];
  [v5 encodeObject:self->_downloaderID forKey:@"DI"];
  [v5 encodeObject:self->_externalVersionID forKey:@"EV"];
  [v5 encodeObject:self->_itemID forKey:@"ID"];
  [v5 encodeObject:self->_previousExternalVersionID forKey:@"PE"];
  [v5 encodeObject:self->_previousVariantID forKey:@"PV"];
  [v5 encodeObject:self->_purchaserID forKey:@"PI"];
  [v5 encodeObject:self->_redownloadParams forKey:@"BP"];
  [v5 encodeBool:self->_skipIfInstalled forKey:@"SK"];
  [v5 encodeBool:self->_userInitiated forKey:@"UI"];
}

@end